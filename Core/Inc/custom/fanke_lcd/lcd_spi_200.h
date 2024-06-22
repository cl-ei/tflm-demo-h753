#ifndef LCD_SPI_H
#define LCD_SPI_H

#include "stm32h7xx_hal.h"

/*----------------------------------------------- ������ -------------------------------------------*/

#define LCD_WIDTH     240
#define LCD_HEIGHT    320
#define LCD_GRAM_LEN ((uint32_t)(LCD_WIDTH*LCD_HEIGHT))

#define	Direction_H             (uint8_t)0U
#define	Direction_H_Flip        (uint8_t)1U
#define	Direction_V             (uint8_t)2U
#define	Direction_V_Flip        (uint8_t)3U

/*--------------------------------------------- LCD Configure -----------------------------------------------*/

#define    LCD_Backlight_PIN                GPIO_PIN_0
#define    LCD_Backlight_PORT               GPIOJ
#define    GPIO_LDC_Backlight_CLK_ENABLE    __HAL_RCC_GPIOJ_CLK_ENABLE()

#define    LCD_Backlight_OFF                HAL_GPIO_WritePin(LCD_Backlight_PORT, LCD_Backlight_PIN, GPIO_PIN_RESET);
#define    LCD_Backlight_ON                 HAL_GPIO_WritePin(LCD_Backlight_PORT, LCD_Backlight_PIN, GPIO_PIN_SET);

#define    LCD_DC_PIN                       GPIO_PIN_15
#define    LCD_DC_PORT                      GPIOJ
#define    GPIO_LDC_DC_CLK_ENABLE           __HAL_RCC_GPIOJ_CLK_ENABLE()

#define    LCD_DC_Command                   HAL_GPIO_WritePin(LCD_DC_PORT, LCD_DC_PIN, GPIO_PIN_RESET);
#define    LCD_DC_Data                      HAL_GPIO_WritePin(LCD_DC_PORT, LCD_DC_PIN, GPIO_PIN_SET);


/*---------------------------------------- ������ɫ ------------------------------------------------------

 */                                                  						
#define 	LCD_WHITE       0xFFFFFF	 // ����ɫ
#define 	LCD_BLACK       0x000000    // ����ɫ
                        
#define 	LCD_BLUE        0x0000FF	 //	����ɫ
#define 	LCD_GREEN       0x00FF00    //	����ɫ
#define 	LCD_RED         0xFF0000    //	����ɫ
#define 	LCD_CYAN        0x00FFFF    //	����ɫ
#define 	LCD_MAGENTA     0xFF00FF    //	�Ϻ�ɫ
#define 	LCD_YELLOW      0xFFFF00    //	��ɫ
#define 	LCD_GREY        0x2C2C2C    //	��ɫ
												
#define 	LIGHT_BLUE      0x8080FF    //	����ɫ
#define 	LIGHT_GREEN     0x80FF80    //	����ɫ
#define 	LIGHT_RED       0xFF8080    //	����ɫ
#define 	LIGHT_CYAN      0x80FFFF    //	������ɫ
#define 	LIGHT_MAGENTA   0xFF80FF    //	���Ϻ�ɫ
#define 	LIGHT_YELLOW    0xFFFF80    //	����ɫ
#define 	LIGHT_GREY      0xA3A3A3    //	����ɫ
												
#define 	DARK_BLUE       0x000080    //	����ɫ
#define 	DARK_GREEN      0x008000    //	����ɫ
#define 	DARK_RED        0x800000    //	����ɫ
#define 	DARK_CYAN       0x008080    //	������ɫ
#define 	DARK_MAGENTA    0x800080    //	���Ϻ�ɫ
#define 	DARK_YELLOW     0x808000    //	����ɫ
#define 	DARK_GREY       0x404040    //	����ɫ


void SPI_LCD_Init(void);
void LCD_SPI_TxCallback(SPI_HandleTypeDef *hspi);
int8_t LCD_OnTE();

uint16_t* LCD_GetBackGRAMAddr();
void LCD_Flush(uint8_t block);

#endif
