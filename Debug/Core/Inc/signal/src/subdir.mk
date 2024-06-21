################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Core/Inc/signal/src/circular_buffer.cc \
../Core/Inc/signal/src/energy.cc \
../Core/Inc/signal/src/fft_auto_scale.cc \
../Core/Inc/signal/src/filter_bank.cc \
../Core/Inc/signal/src/filter_bank_log.cc \
../Core/Inc/signal/src/filter_bank_spectral_subtraction.cc \
../Core/Inc/signal/src/filter_bank_square_root.cc \
../Core/Inc/signal/src/irfft_float.cc \
../Core/Inc/signal/src/irfft_int16.cc \
../Core/Inc/signal/src/irfft_int32.cc \
../Core/Inc/signal/src/log.cc \
../Core/Inc/signal/src/max_abs.cc \
../Core/Inc/signal/src/msb_32.cc \
../Core/Inc/signal/src/msb_64.cc \
../Core/Inc/signal/src/overlap_add.cc \
../Core/Inc/signal/src/pcan_argc_fixed.cc \
../Core/Inc/signal/src/rfft_float.cc \
../Core/Inc/signal/src/rfft_int16.cc \
../Core/Inc/signal/src/rfft_int32.cc \
../Core/Inc/signal/src/square_root_32.cc \
../Core/Inc/signal/src/square_root_64.cc \
../Core/Inc/signal/src/window.cc 

CC_DEPS += \
./Core/Inc/signal/src/circular_buffer.d \
./Core/Inc/signal/src/energy.d \
./Core/Inc/signal/src/fft_auto_scale.d \
./Core/Inc/signal/src/filter_bank.d \
./Core/Inc/signal/src/filter_bank_log.d \
./Core/Inc/signal/src/filter_bank_spectral_subtraction.d \
./Core/Inc/signal/src/filter_bank_square_root.d \
./Core/Inc/signal/src/irfft_float.d \
./Core/Inc/signal/src/irfft_int16.d \
./Core/Inc/signal/src/irfft_int32.d \
./Core/Inc/signal/src/log.d \
./Core/Inc/signal/src/max_abs.d \
./Core/Inc/signal/src/msb_32.d \
./Core/Inc/signal/src/msb_64.d \
./Core/Inc/signal/src/overlap_add.d \
./Core/Inc/signal/src/pcan_argc_fixed.d \
./Core/Inc/signal/src/rfft_float.d \
./Core/Inc/signal/src/rfft_int16.d \
./Core/Inc/signal/src/rfft_int32.d \
./Core/Inc/signal/src/square_root_32.d \
./Core/Inc/signal/src/square_root_64.d \
./Core/Inc/signal/src/window.d 

OBJS += \
./Core/Inc/signal/src/circular_buffer.o \
./Core/Inc/signal/src/energy.o \
./Core/Inc/signal/src/fft_auto_scale.o \
./Core/Inc/signal/src/filter_bank.o \
./Core/Inc/signal/src/filter_bank_log.o \
./Core/Inc/signal/src/filter_bank_spectral_subtraction.o \
./Core/Inc/signal/src/filter_bank_square_root.o \
./Core/Inc/signal/src/irfft_float.o \
./Core/Inc/signal/src/irfft_int16.o \
./Core/Inc/signal/src/irfft_int32.o \
./Core/Inc/signal/src/log.o \
./Core/Inc/signal/src/max_abs.o \
./Core/Inc/signal/src/msb_32.o \
./Core/Inc/signal/src/msb_64.o \
./Core/Inc/signal/src/overlap_add.o \
./Core/Inc/signal/src/pcan_argc_fixed.o \
./Core/Inc/signal/src/rfft_float.o \
./Core/Inc/signal/src/rfft_int16.o \
./Core/Inc/signal/src/rfft_int32.o \
./Core/Inc/signal/src/square_root_32.o \
./Core/Inc/signal/src/square_root_64.o \
./Core/Inc/signal/src/window.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/signal/src/%.o Core/Inc/signal/src/%.su Core/Inc/signal/src/%.cyclo: ../Core/Inc/signal/src/%.cc Core/Inc/signal/src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -DTF_LITE_STATIC_MEMORY -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -I../Core/Inc/person_detection -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-signal-2f-src

clean-Core-2f-Inc-2f-signal-2f-src:
	-$(RM) ./Core/Inc/signal/src/circular_buffer.cyclo ./Core/Inc/signal/src/circular_buffer.d ./Core/Inc/signal/src/circular_buffer.o ./Core/Inc/signal/src/circular_buffer.su ./Core/Inc/signal/src/energy.cyclo ./Core/Inc/signal/src/energy.d ./Core/Inc/signal/src/energy.o ./Core/Inc/signal/src/energy.su ./Core/Inc/signal/src/fft_auto_scale.cyclo ./Core/Inc/signal/src/fft_auto_scale.d ./Core/Inc/signal/src/fft_auto_scale.o ./Core/Inc/signal/src/fft_auto_scale.su ./Core/Inc/signal/src/filter_bank.cyclo ./Core/Inc/signal/src/filter_bank.d ./Core/Inc/signal/src/filter_bank.o ./Core/Inc/signal/src/filter_bank.su ./Core/Inc/signal/src/filter_bank_log.cyclo ./Core/Inc/signal/src/filter_bank_log.d ./Core/Inc/signal/src/filter_bank_log.o ./Core/Inc/signal/src/filter_bank_log.su ./Core/Inc/signal/src/filter_bank_spectral_subtraction.cyclo ./Core/Inc/signal/src/filter_bank_spectral_subtraction.d ./Core/Inc/signal/src/filter_bank_spectral_subtraction.o ./Core/Inc/signal/src/filter_bank_spectral_subtraction.su ./Core/Inc/signal/src/filter_bank_square_root.cyclo ./Core/Inc/signal/src/filter_bank_square_root.d ./Core/Inc/signal/src/filter_bank_square_root.o ./Core/Inc/signal/src/filter_bank_square_root.su ./Core/Inc/signal/src/irfft_float.cyclo ./Core/Inc/signal/src/irfft_float.d ./Core/Inc/signal/src/irfft_float.o ./Core/Inc/signal/src/irfft_float.su ./Core/Inc/signal/src/irfft_int16.cyclo ./Core/Inc/signal/src/irfft_int16.d ./Core/Inc/signal/src/irfft_int16.o ./Core/Inc/signal/src/irfft_int16.su ./Core/Inc/signal/src/irfft_int32.cyclo ./Core/Inc/signal/src/irfft_int32.d ./Core/Inc/signal/src/irfft_int32.o ./Core/Inc/signal/src/irfft_int32.su ./Core/Inc/signal/src/log.cyclo ./Core/Inc/signal/src/log.d ./Core/Inc/signal/src/log.o ./Core/Inc/signal/src/log.su ./Core/Inc/signal/src/max_abs.cyclo ./Core/Inc/signal/src/max_abs.d ./Core/Inc/signal/src/max_abs.o ./Core/Inc/signal/src/max_abs.su ./Core/Inc/signal/src/msb_32.cyclo ./Core/Inc/signal/src/msb_32.d ./Core/Inc/signal/src/msb_32.o ./Core/Inc/signal/src/msb_32.su ./Core/Inc/signal/src/msb_64.cyclo ./Core/Inc/signal/src/msb_64.d ./Core/Inc/signal/src/msb_64.o ./Core/Inc/signal/src/msb_64.su ./Core/Inc/signal/src/overlap_add.cyclo ./Core/Inc/signal/src/overlap_add.d ./Core/Inc/signal/src/overlap_add.o ./Core/Inc/signal/src/overlap_add.su ./Core/Inc/signal/src/pcan_argc_fixed.cyclo ./Core/Inc/signal/src/pcan_argc_fixed.d ./Core/Inc/signal/src/pcan_argc_fixed.o ./Core/Inc/signal/src/pcan_argc_fixed.su ./Core/Inc/signal/src/rfft_float.cyclo ./Core/Inc/signal/src/rfft_float.d ./Core/Inc/signal/src/rfft_float.o ./Core/Inc/signal/src/rfft_float.su ./Core/Inc/signal/src/rfft_int16.cyclo ./Core/Inc/signal/src/rfft_int16.d ./Core/Inc/signal/src/rfft_int16.o ./Core/Inc/signal/src/rfft_int16.su ./Core/Inc/signal/src/rfft_int32.cyclo ./Core/Inc/signal/src/rfft_int32.d ./Core/Inc/signal/src/rfft_int32.o ./Core/Inc/signal/src/rfft_int32.su ./Core/Inc/signal/src/square_root_32.cyclo ./Core/Inc/signal/src/square_root_32.d ./Core/Inc/signal/src/square_root_32.o ./Core/Inc/signal/src/square_root_32.su ./Core/Inc/signal/src/square_root_64.cyclo ./Core/Inc/signal/src/square_root_64.d ./Core/Inc/signal/src/square_root_64.o ./Core/Inc/signal/src/square_root_64.su ./Core/Inc/signal/src/window.cyclo ./Core/Inc/signal/src/window.d ./Core/Inc/signal/src/window.o ./Core/Inc/signal/src/window.su

.PHONY: clean-Core-2f-Inc-2f-signal-2f-src

