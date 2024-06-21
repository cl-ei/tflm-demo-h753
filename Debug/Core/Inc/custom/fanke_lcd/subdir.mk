################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/custom/fanke_lcd/lcd_fonts.c \
../Core/Inc/custom/fanke_lcd/lcd_image.c \
../Core/Inc/custom/fanke_lcd/lcd_spi_200.c 

C_DEPS += \
./Core/Inc/custom/fanke_lcd/lcd_fonts.d \
./Core/Inc/custom/fanke_lcd/lcd_image.d \
./Core/Inc/custom/fanke_lcd/lcd_spi_200.d 

OBJS += \
./Core/Inc/custom/fanke_lcd/lcd_fonts.o \
./Core/Inc/custom/fanke_lcd/lcd_image.o \
./Core/Inc/custom/fanke_lcd/lcd_spi_200.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/custom/fanke_lcd/%.o Core/Inc/custom/fanke_lcd/%.su Core/Inc/custom/fanke_lcd/%.cyclo: ../Core/Inc/custom/fanke_lcd/%.c Core/Inc/custom/fanke_lcd/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-custom-2f-fanke_lcd

clean-Core-2f-Inc-2f-custom-2f-fanke_lcd:
	-$(RM) ./Core/Inc/custom/fanke_lcd/lcd_fonts.cyclo ./Core/Inc/custom/fanke_lcd/lcd_fonts.d ./Core/Inc/custom/fanke_lcd/lcd_fonts.o ./Core/Inc/custom/fanke_lcd/lcd_fonts.su ./Core/Inc/custom/fanke_lcd/lcd_image.cyclo ./Core/Inc/custom/fanke_lcd/lcd_image.d ./Core/Inc/custom/fanke_lcd/lcd_image.o ./Core/Inc/custom/fanke_lcd/lcd_image.su ./Core/Inc/custom/fanke_lcd/lcd_spi_200.cyclo ./Core/Inc/custom/fanke_lcd/lcd_spi_200.d ./Core/Inc/custom/fanke_lcd/lcd_spi_200.o ./Core/Inc/custom/fanke_lcd/lcd_spi_200.su

.PHONY: clean-Core-2f-Inc-2f-custom-2f-fanke_lcd

