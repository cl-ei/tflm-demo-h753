################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/kissfft/tools/kiss_fftr.c 

C_DEPS += \
./Core/Inc/kissfft/tools/kiss_fftr.d 

OBJS += \
./Core/Inc/kissfft/tools/kiss_fftr.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/kissfft/tools/%.o Core/Inc/kissfft/tools/%.su Core/Inc/kissfft/tools/%.cyclo: ../Core/Inc/kissfft/tools/%.c Core/Inc/kissfft/tools/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-kissfft-2f-tools

clean-Core-2f-Inc-2f-kissfft-2f-tools:
	-$(RM) ./Core/Inc/kissfft/tools/kiss_fftr.cyclo ./Core/Inc/kissfft/tools/kiss_fftr.d ./Core/Inc/kissfft/tools/kiss_fftr.o ./Core/Inc/kissfft/tools/kiss_fftr.su

.PHONY: clean-Core-2f-Inc-2f-kissfft-2f-tools

