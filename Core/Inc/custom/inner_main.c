#include <string.h>
#include "inner_main.h"
#include "stm32h7xx_hal.h"
#include "debug.h"
#include "fanke_lcd/lcd_spi_200.h"
#include "camera/camera.h"

#include "hello_world/hello_world_test.h"
#include "person_detection/main_functions.h"


extern I2C_HandleTypeDef hi2c2;
extern DCMI_HandleTypeDef hdcmi;

void setLed(int8_t state) {
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_13, state ? GPIO_PIN_SET : GPIO_PIN_RESET);
}
void toggleLed(){
	HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_13);
}

void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi) {
	// SPI 传输完成中断，触发 LCD 传输完成回调
	LCD_SPI_TxCallback(hspi);
}

int8_t lcdFps = 0;
int8_t keyMode = 0;

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {
	// TE 信号中断，触发帧传输 LCD 传输完成回调
	static uint32_t count = 0, tick = 0;

    if (GPIO_Pin == GPIO_PIN_4) {
        // show = 1;
    	keyMode += 1;

    } else if (GPIO_Pin == GPIO_PIN_6) {
    	if(LCD_OnTE() == 0){
    		count ++;
    	}

    	if(HAL_GetTick() - tick >= 1000) {
			tick = HAL_GetTick();
			lcdFps = count;
			count = 0;
		}
    }
}

#define CAM_WIDTH 128
#define CAM_HEIGHT 96

uint16_t camBuff[CAM_WIDTH][CAM_HEIGHT];
int8_t camBuffUpdated = 0;
uint32_t Camera_FPS = 0;

void HAL_DCMI_FrameEventCallback(DCMI_HandleTypeDef *hdcmi) {
	static uint32_t count = 0, tick = 0;
	camBuffUpdated = 1;

	if(HAL_GetTick() - tick >= 1000) {
		tick = HAL_GetTick();
		Camera_FPS = count;
		count = 0;
	}
	count ++;
}

uint16_t *distAddr;

void renderSineWave() {
	// 初始化模型
	LoadFloatModel();
	print("model loaded.");

	while (1) {
		for (uint16_t x = 0; x < 240; x++) {
			float_t input = (float)x / 240 * 2*3.14;
			float_t pred = Invoke(input);
			uint16_t y = (pred + 1.1) * 320 / 2.2;

			distAddr = LCD_GetBackGRAMAddr();
			*(distAddr + x + 240*y) = 0xFFFF;

			LCD_Flush();
		}
		HAL_Delay(300);
		LCD_ResetGram(0x91F1);
	}
}

__attribute__((section(".ram_d2"))) uint8_t grayData[96][96];

void renderCamera() {
	setup();
	print("person_detection inited.");

	// InvokePersonDetection();
	// OPEN POWER DN (Down n) for camera
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_RESET);
    DCMI_OV2640_Init(&hi2c2, CAM_WIDTH, CAM_HEIGHT);
	print("camera init finished. hcamera.manuf_id: %x", hcamera.manuf_id);

	HAL_DCMI_Start_DMA(&hdcmi, DCMI_MODE_CONTINUOUS, (uint32_t)&camBuff, CAM_WIDTH * CAM_HEIGHT * 2 / 4);
	uint32_t lastPrint = HAL_GetTick();

	uint16_t r, g, b, p;
	uint8_t gray;
	int8_t lastkeyMode = keyMode;
	setLed(0);

	while(1) {
		while(camBuffUpdated == 0);

		distAddr = LCD_GetBackGRAMAddr();
		for (uint32_t x = 0; x < CAM_WIDTH; x++) {
			for (uint32_t y = 0; y < CAM_HEIGHT; y++) {
				if (x >=16 && x < (CAM_WIDTH - 16)) {
					p = *((uint16_t *)camBuff + x + 128*y);

					// 转换为灰度图
					r = (p & 0xf800) >> 8;
					g = (p & 0x07e0) >> 3;
					b = (p & 0x001f) << 3;
					gray = (r*76 + g*150 + b*29) >> 8;

					grayData[x-16][y] = gray;

					// 转成rgb565
					r = gray >> 3;
					g = gray >> 2;
					b = gray >> 3;
					p = (r << 11) | (g << 5) | b;

					*(distAddr + (x + 56) + 240*(y + 100)) = p;
				}
			}
		}
		camBuffUpdated = 0;
//		LCD_Flush();

		if (lastkeyMode != keyMode) {
			lastkeyMode = keyMode;

			setLed(1);

			int8_t *result = InvokePersonDetection(grayData);
			setLed(0);

			print("invoke result: %d", *result);
			for(uint16_t x = 0; x < 240; x++) {
				if (x >= result[0]){
					break;
				}
				*(distAddr + x + 240*(309)) = 0xF000;
				*(distAddr + x + 240*(310)) = 0xF000;
				*(distAddr + x + 240*(311)) = 0xF000;
				*(distAddr + x + 240*(312)) = 0xF000;
				*(distAddr + x + 240*(313)) = 0xF000;
			}
			for(uint16_t x = 0; x < 240; x++) {
				if (x >= result[1]){
					break;
				}
				*(distAddr + x + 240*(315)) = 0x00FF;
				*(distAddr + x + 240*(316)) = 0x00FF;
			}
			LCD_Flush();
			while (lastkeyMode == keyMode);
			lastkeyMode = keyMode;
		} else {
			LCD_Flush();
		}

		if (HAL_GetTick() - lastPrint > 1000) {
			print("Camera_FPS fps: %d, lcdFps: %d l: %x", Camera_FPS, lcdFps, distAddr);
			lastPrint = HAL_GetTick();
		}
	}
}

void myMain() {
	print("enter inner main.");

	setLed(1);
	SPI_LCD_Init();
	print("lcd init complete.");

	HAL_Delay(1000);
	if (keyMode > 0) {
		// render sine
		renderSineWave();
	} else {
		renderCamera();
	}
}

