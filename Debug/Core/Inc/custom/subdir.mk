################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/custom/debug.c \
../Core/Inc/custom/inner_main.c 

C_DEPS += \
./Core/Inc/custom/debug.d \
./Core/Inc/custom/inner_main.d 

OBJS += \
./Core/Inc/custom/debug.o \
./Core/Inc/custom/inner_main.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/custom/%.o Core/Inc/custom/%.su Core/Inc/custom/%.cyclo: ../Core/Inc/custom/%.c Core/Inc/custom/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-custom

clean-Core-2f-Inc-2f-custom:
	-$(RM) ./Core/Inc/custom/debug.cyclo ./Core/Inc/custom/debug.d ./Core/Inc/custom/debug.o ./Core/Inc/custom/debug.su ./Core/Inc/custom/inner_main.cyclo ./Core/Inc/custom/inner_main.d ./Core/Inc/custom/inner_main.o ./Core/Inc/custom/inner_main.su

.PHONY: clean-Core-2f-Inc-2f-custom

