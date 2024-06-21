#include "lcd_spi_200.h"
#include <string.h>

extern SPI_HandleTypeDef hspi2;	      // SPI_HandleTypeDef 结构体变量
#define  LCD_SPI hspi2           // SPI局部宏，方便修改和移植

typedef struct {
	int8_t flushLayer;
	int8_t drawLayer;

    // 刷新的区域。0代表上半区，1代表下半区
    // 由于硬件限制，单次无法传输完1帧画面，因此分为两次，先传上半部分，再传输下半部分
	int8_t flushPart;

	// -1: 未初始化;
	//  0: 空闲;
	//  1: 已提交;  将 draw 写入到 flush
	//  2: 刷新上半区;
	//  3: 刷新下半区; -> 回到0
	int8_t status;
} LCDTypeDef;

LCDTypeDef hlcd = {-1, -1, 0, -1};

// 采用双缓冲，一个图层用于绘制，另外一个图层用于传输（前景层），交替进行
static uint16_t LCD_GRAM[LCD_WIDTH*LCD_HEIGHT*2];

// 保存两个图层的首地址
uint8_t *LCD_LayerAddr[2] = {LCD_GRAM, &(LCD_GRAM[LCD_WIDTH*LCD_HEIGHT])};


// TE 信号中断，用于触发帧传输
int8_t LCD_OnTE() {
	if (hlcd.status == 1) {
		// 在空闲状态， 启动传输，将前景层数据写入屏幕
		hlcd.flushPart = 0; // 初始化刷新区域
		hlcd.status = 2; // 开始刷新上半区
		return HAL_SPI_Transmit_DMA(&LCD_SPI, LCD_LayerAddr[hlcd.flushLayer], LCD_WIDTH*LCD_HEIGHT/2);
	}
	return 1;
}

// 单次传输完成回调
void LCD_SPI_TxCallback(SPI_HandleTypeDef *hspi) {
	if (hlcd.status == 2){
		// 上次 SPI 传输的是上半部分，此时需要启动下半部分的传输
        hlcd.status = 3;
		HAL_SPI_Transmit_DMA(&LCD_SPI, LCD_LayerAddr[hlcd.flushLayer] + LCD_WIDTH*LCD_HEIGHT, LCD_WIDTH*LCD_HEIGHT/2);
	} else if (hlcd.status == 3) {
		// 下半部分的传输已经完成，重置标记
		hlcd.status = 0;
	}
}

// 获取绘制层 GRAM 首地址
uint16_t* LCD_GetBackGRAMAddr() {
	uint8_t layer = 0;
	if (hlcd.drawLayer >= 0) {
		layer = hlcd.drawLayer;
	} else {
		layer = (hlcd.flushLayer == 0) ? 1 : 0;
		hlcd.drawLayer = layer;
	}
    return (uint16_t *) LCD_LayerAddr[layer];
}


void LCD_ResetGram(uint16_t value) {
    for (uint32_t i = 0; i < LCD_WIDTH*LCD_HEIGHT*2; i++){
    	((uint16_t *)LCD_GRAM)[i] = value;
    }
}

// 执行 LCD 刷新。在更新完GRAM之后调用此函数
void LCD_Flush() {
    // 等待刷新完成
	if (hlcd.drawLayer < 0) {
		return;
	}
	while (hlcd.status != 0);
	hlcd.flushLayer = hlcd.drawLayer;
	hlcd.drawLayer = -1;
    // 清除旧帧标记，在下一次进入 LCD_OnTE 时，就会触发 SPI 传输从而刷新画面
    hlcd.status = 1;
}


void  LCD_WriteCommand(uint8_t lcd_command) {
	LCD_DC_Command;     // 数据指令选择 引脚输出低电平，代表本次传输 指令
	HAL_SPI_Transmit(&LCD_SPI, &lcd_command, 1, 1000); // 启动SPI传输
}

void  LCD_WriteData_8bit(uint8_t lcd_data) {
   LCD_DC_Data;     // 数据指令选择 引脚输出高电平，代表本次传输 数据

   HAL_SPI_Transmit(&LCD_SPI, &lcd_data, 1, 1000) ; // 启动SPI传输
}

void  LCD_WriteData_16bit(uint16_t lcd_data) {
   uint8_t lcd_data_buff[2];    // 数据发送区
   LCD_DC_Data;      // 数据指令选择 引脚输出高电平，代表本次传输 数据
 
   lcd_data_buff[0] = lcd_data>>8;  // 将数据拆分
   lcd_data_buff[1] = lcd_data;
		
	HAL_SPI_Transmit(&LCD_SPI, lcd_data_buff, 2, 1000) ;   // 启动SPI传输
}

void LCD_SetAddress(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2) {
	LCD_WriteCommand(0x2a);			//	列地址设置，即X坐标
	LCD_WriteData_16bit(x1);
	LCD_WriteData_16bit(x2);

	LCD_WriteCommand(0x2b);			//	行地址设置，即Y坐标
	LCD_WriteData_16bit(y1);
	LCD_WriteData_16bit(y2);

	LCD_WriteCommand(0x2c);			//	开始写入显存，即要显示的颜色数据
}

void LCD_SetAddrGlobal(){
	LCD_SPI.Init.DataSize = SPI_DATASIZE_8BIT;
	HAL_SPI_Init(&LCD_SPI);
	LCD_SetAddress(0, 0, LCD_WIDTH - 1, LCD_HEIGHT - 1);

	LCD_DC_Data;
	LCD_SPI.Init.DataSize = SPI_DATASIZE_16BIT;
	HAL_SPI_Init(&LCD_SPI);
}

void SPI_LCD_Init(void) {
	if (hlcd.status > -1) {
		return;
	}

	HAL_Delay(10);               	// 屏幕刚完成复位时（包括上电复位），需要等待至少5ms才能发送指令

 	LCD_WriteCommand(0x36);       // 显存访问控制 指令，用于设置访问显存的方式
	LCD_WriteData_8bit(0x00);     // 配置成 从上到下、从左到右，RGB像素格式

	LCD_WriteCommand(0x3A);			// 接口像素格式 指令，用于设置使用 12位、16位还是18位色
	LCD_WriteData_8bit(0x05);     // 此处配置成 16位 像素格式

	// 接下来很多都是电压设置指令，直接使用厂家给设定值
 	LCD_WriteCommand(0xB2);			
	LCD_WriteData_8bit(0x0C);
	LCD_WriteData_8bit(0x0C); 
	LCD_WriteData_8bit(0x00); 
	LCD_WriteData_8bit(0x33); 
	LCD_WriteData_8bit(0x33); 			
	LCD_WriteCommand(0xB7);		   // 栅极电压设置指令
	LCD_WriteData_8bit(0x35);     // VGH = 13.26V，VGL = -10.43V
	LCD_WriteCommand(0xBB);			// 公共电压设置指令
	LCD_WriteData_8bit(0x19);     // VCOM = 1.35V
	LCD_WriteCommand(0xC0);
	LCD_WriteData_8bit(0x2C);
	LCD_WriteCommand(0xC2);       // VDV 和 VRH 来源设置
	LCD_WriteData_8bit(0x01);     // VDV 和 VRH 由用户自由配置
	LCD_WriteCommand(0xC3);			// VRH电压 设置指令
	LCD_WriteData_8bit(0x12);     // VRH电压 = 4.6+( vcom+vcom offset+vdv)
	LCD_WriteCommand(0xC4);		   // VDV电压 设置指令
	LCD_WriteData_8bit(0x20);     // VDV电压 = 0v
	LCD_WriteCommand(0xC6); 		// 正常模式的帧率控制指令
	LCD_WriteData_8bit(0x0F);   	// 设置屏幕控制器的刷新帧率为60帧
	LCD_WriteCommand(0xD0);			// 电源控制指令
	LCD_WriteData_8bit(0xA4);     // 无效数据，固定写入0xA4
	LCD_WriteData_8bit(0xA1);     // AVDD = 6.8V ，AVDD = -4.8V ，VDS = 2.3V
	LCD_WriteCommand(0xE0);       // 正极电压伽马值设定
	LCD_WriteData_8bit(0xD0);
	LCD_WriteData_8bit(0x04);
	LCD_WriteData_8bit(0x0D);
	LCD_WriteData_8bit(0x11);
	LCD_WriteData_8bit(0x13);
	LCD_WriteData_8bit(0x2B);
	LCD_WriteData_8bit(0x3F);
	LCD_WriteData_8bit(0x54);
	LCD_WriteData_8bit(0x4C);
	LCD_WriteData_8bit(0x18);
	LCD_WriteData_8bit(0x0D);
	LCD_WriteData_8bit(0x0B);
	LCD_WriteData_8bit(0x1F);
	LCD_WriteData_8bit(0x23);
	LCD_WriteCommand(0xE1);      // 负极电压伽马值设定
	LCD_WriteData_8bit(0xD0);
	LCD_WriteData_8bit(0x04);
	LCD_WriteData_8bit(0x0C);
	LCD_WriteData_8bit(0x11);
	LCD_WriteData_8bit(0x13);
	LCD_WriteData_8bit(0x2C);
	LCD_WriteData_8bit(0x3F);
	LCD_WriteData_8bit(0x44);
	LCD_WriteData_8bit(0x51);
	LCD_WriteData_8bit(0x2F);
	LCD_WriteData_8bit(0x1F);
	LCD_WriteData_8bit(0x1F);
	LCD_WriteData_8bit(0x20);
	LCD_WriteData_8bit(0x23);

	// 打开反显，因为面板是常黑型，操作需要反过来
	LCD_WriteCommand(0x21);

	// 开启TE信号输出，V-Blanking模式
	LCD_WriteCommand(0x35);
	LCD_WriteData_8bit(0);

	// 退出休眠指令，LCD控制器在刚上电、复位时，会自动进入休眠模式 ，因此操作屏幕之前，需要退出休眠
	LCD_WriteCommand(0x11);       // 退出休眠 指令
	HAL_Delay(120);               // 需要等待120ms，让电源电压和时钟电路稳定下来

	// 打开显示指令，LCD控制器在刚上电、复位时，会自动关闭显示
	LCD_WriteCommand(0x29);       // 打开显示
	
	// 以下进行一些驱动的默认设置
    //	设置显示方向
    #define direction Direction_V
    if( direction == Direction_H ) {
        LCD_WriteCommand(0x36);    		// 显存访问控制 指令，用于设置访问显存的方式
        LCD_WriteData_8bit(0x70);        // 横屏显示
    } else if( direction == Direction_V ) {
        LCD_WriteCommand(0x36);    		// 显存访问控制 指令，用于设置访问显存的方式
        LCD_WriteData_8bit(0x00);        // 垂直显示
    } else if( direction == Direction_H_Flip ) {
        LCD_WriteCommand(0x36);   			 // 显存访问控制 指令，用于设置访问显存的方式
        LCD_WriteData_8bit(0xA0);         // 横屏显示，并上下翻转，RGB像素格式
    } else if( direction == Direction_V_Flip ) {
        LCD_WriteCommand(0x36);    		// 显存访问控制 指令，用于设置访问显存的方式
        LCD_WriteData_8bit(0xC0);        // 垂直显示 ，并上下翻转，RGB像素格式
    }

	LCD_SetAddrGlobal();

	// 修改状态
    hlcd.status = 0;

    // 将两页layer都刷成背景色
    LCD_ResetGram(0x91F1);

    LCD_Flush();

    // 全部设置完毕之后，打开背光
	LCD_Backlight_ON;
}
