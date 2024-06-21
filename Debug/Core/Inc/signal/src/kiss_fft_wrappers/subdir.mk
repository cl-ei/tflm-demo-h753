################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_float.cc \
../Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int16.cc \
../Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int32.cc 

CC_DEPS += \
./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_float.d \
./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int16.d \
./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int32.d 

OBJS += \
./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_float.o \
./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int16.o \
./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int32.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/signal/src/kiss_fft_wrappers/%.o Core/Inc/signal/src/kiss_fft_wrappers/%.su Core/Inc/signal/src/kiss_fft_wrappers/%.cyclo: ../Core/Inc/signal/src/kiss_fft_wrappers/%.cc Core/Inc/signal/src/kiss_fft_wrappers/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -DTF_LITE_STATIC_MEMORY -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -I../Core/Inc/person_detection -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-signal-2f-src-2f-kiss_fft_wrappers

clean-Core-2f-Inc-2f-signal-2f-src-2f-kiss_fft_wrappers:
	-$(RM) ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_float.cyclo ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_float.d ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_float.o ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_float.su ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int16.cyclo ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int16.d ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int16.o ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int16.su ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int32.cyclo ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int32.d ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int32.o ./Core/Inc/signal/src/kiss_fft_wrappers/kiss_fft_int32.su

.PHONY: clean-Core-2f-Inc-2f-signal-2f-src-2f-kiss_fft_wrappers

