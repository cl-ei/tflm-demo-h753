################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Core/Inc/signal/micro/kernels/delay.cc \
../Core/Inc/signal/micro/kernels/energy.cc \
../Core/Inc/signal/micro/kernels/fft_auto_scale_common.cc \
../Core/Inc/signal/micro/kernels/fft_auto_scale_kernel.cc \
../Core/Inc/signal/micro/kernels/filter_bank.cc \
../Core/Inc/signal/micro/kernels/filter_bank_log.cc \
../Core/Inc/signal/micro/kernels/filter_bank_spectral_subtraction.cc \
../Core/Inc/signal/micro/kernels/filter_bank_square_root.cc \
../Core/Inc/signal/micro/kernels/filter_bank_square_root_common.cc \
../Core/Inc/signal/micro/kernels/framer.cc \
../Core/Inc/signal/micro/kernels/irfft.cc \
../Core/Inc/signal/micro/kernels/overlap_add.cc \
../Core/Inc/signal/micro/kernels/pcan.cc \
../Core/Inc/signal/micro/kernels/rfft.cc \
../Core/Inc/signal/micro/kernels/stacker.cc \
../Core/Inc/signal/micro/kernels/window.cc 

CC_DEPS += \
./Core/Inc/signal/micro/kernels/delay.d \
./Core/Inc/signal/micro/kernels/energy.d \
./Core/Inc/signal/micro/kernels/fft_auto_scale_common.d \
./Core/Inc/signal/micro/kernels/fft_auto_scale_kernel.d \
./Core/Inc/signal/micro/kernels/filter_bank.d \
./Core/Inc/signal/micro/kernels/filter_bank_log.d \
./Core/Inc/signal/micro/kernels/filter_bank_spectral_subtraction.d \
./Core/Inc/signal/micro/kernels/filter_bank_square_root.d \
./Core/Inc/signal/micro/kernels/filter_bank_square_root_common.d \
./Core/Inc/signal/micro/kernels/framer.d \
./Core/Inc/signal/micro/kernels/irfft.d \
./Core/Inc/signal/micro/kernels/overlap_add.d \
./Core/Inc/signal/micro/kernels/pcan.d \
./Core/Inc/signal/micro/kernels/rfft.d \
./Core/Inc/signal/micro/kernels/stacker.d \
./Core/Inc/signal/micro/kernels/window.d 

OBJS += \
./Core/Inc/signal/micro/kernels/delay.o \
./Core/Inc/signal/micro/kernels/energy.o \
./Core/Inc/signal/micro/kernels/fft_auto_scale_common.o \
./Core/Inc/signal/micro/kernels/fft_auto_scale_kernel.o \
./Core/Inc/signal/micro/kernels/filter_bank.o \
./Core/Inc/signal/micro/kernels/filter_bank_log.o \
./Core/Inc/signal/micro/kernels/filter_bank_spectral_subtraction.o \
./Core/Inc/signal/micro/kernels/filter_bank_square_root.o \
./Core/Inc/signal/micro/kernels/filter_bank_square_root_common.o \
./Core/Inc/signal/micro/kernels/framer.o \
./Core/Inc/signal/micro/kernels/irfft.o \
./Core/Inc/signal/micro/kernels/overlap_add.o \
./Core/Inc/signal/micro/kernels/pcan.o \
./Core/Inc/signal/micro/kernels/rfft.o \
./Core/Inc/signal/micro/kernels/stacker.o \
./Core/Inc/signal/micro/kernels/window.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/signal/micro/kernels/%.o Core/Inc/signal/micro/kernels/%.su Core/Inc/signal/micro/kernels/%.cyclo: ../Core/Inc/signal/micro/kernels/%.cc Core/Inc/signal/micro/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -DTF_LITE_STATIC_MEMORY -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -I../Core/Inc/person_detection -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-signal-2f-micro-2f-kernels

clean-Core-2f-Inc-2f-signal-2f-micro-2f-kernels:
	-$(RM) ./Core/Inc/signal/micro/kernels/delay.cyclo ./Core/Inc/signal/micro/kernels/delay.d ./Core/Inc/signal/micro/kernels/delay.o ./Core/Inc/signal/micro/kernels/delay.su ./Core/Inc/signal/micro/kernels/energy.cyclo ./Core/Inc/signal/micro/kernels/energy.d ./Core/Inc/signal/micro/kernels/energy.o ./Core/Inc/signal/micro/kernels/energy.su ./Core/Inc/signal/micro/kernels/fft_auto_scale_common.cyclo ./Core/Inc/signal/micro/kernels/fft_auto_scale_common.d ./Core/Inc/signal/micro/kernels/fft_auto_scale_common.o ./Core/Inc/signal/micro/kernels/fft_auto_scale_common.su ./Core/Inc/signal/micro/kernels/fft_auto_scale_kernel.cyclo ./Core/Inc/signal/micro/kernels/fft_auto_scale_kernel.d ./Core/Inc/signal/micro/kernels/fft_auto_scale_kernel.o ./Core/Inc/signal/micro/kernels/fft_auto_scale_kernel.su ./Core/Inc/signal/micro/kernels/filter_bank.cyclo ./Core/Inc/signal/micro/kernels/filter_bank.d ./Core/Inc/signal/micro/kernels/filter_bank.o ./Core/Inc/signal/micro/kernels/filter_bank.su ./Core/Inc/signal/micro/kernels/filter_bank_log.cyclo ./Core/Inc/signal/micro/kernels/filter_bank_log.d ./Core/Inc/signal/micro/kernels/filter_bank_log.o ./Core/Inc/signal/micro/kernels/filter_bank_log.su ./Core/Inc/signal/micro/kernels/filter_bank_spectral_subtraction.cyclo ./Core/Inc/signal/micro/kernels/filter_bank_spectral_subtraction.d ./Core/Inc/signal/micro/kernels/filter_bank_spectral_subtraction.o ./Core/Inc/signal/micro/kernels/filter_bank_spectral_subtraction.su ./Core/Inc/signal/micro/kernels/filter_bank_square_root.cyclo ./Core/Inc/signal/micro/kernels/filter_bank_square_root.d ./Core/Inc/signal/micro/kernels/filter_bank_square_root.o ./Core/Inc/signal/micro/kernels/filter_bank_square_root.su ./Core/Inc/signal/micro/kernels/filter_bank_square_root_common.cyclo ./Core/Inc/signal/micro/kernels/filter_bank_square_root_common.d ./Core/Inc/signal/micro/kernels/filter_bank_square_root_common.o ./Core/Inc/signal/micro/kernels/filter_bank_square_root_common.su ./Core/Inc/signal/micro/kernels/framer.cyclo ./Core/Inc/signal/micro/kernels/framer.d ./Core/Inc/signal/micro/kernels/framer.o ./Core/Inc/signal/micro/kernels/framer.su ./Core/Inc/signal/micro/kernels/irfft.cyclo ./Core/Inc/signal/micro/kernels/irfft.d ./Core/Inc/signal/micro/kernels/irfft.o ./Core/Inc/signal/micro/kernels/irfft.su ./Core/Inc/signal/micro/kernels/overlap_add.cyclo ./Core/Inc/signal/micro/kernels/overlap_add.d ./Core/Inc/signal/micro/kernels/overlap_add.o ./Core/Inc/signal/micro/kernels/overlap_add.su ./Core/Inc/signal/micro/kernels/pcan.cyclo ./Core/Inc/signal/micro/kernels/pcan.d ./Core/Inc/signal/micro/kernels/pcan.o ./Core/Inc/signal/micro/kernels/pcan.su ./Core/Inc/signal/micro/kernels/rfft.cyclo ./Core/Inc/signal/micro/kernels/rfft.d ./Core/Inc/signal/micro/kernels/rfft.o ./Core/Inc/signal/micro/kernels/rfft.su ./Core/Inc/signal/micro/kernels/stacker.cyclo ./Core/Inc/signal/micro/kernels/stacker.d ./Core/Inc/signal/micro/kernels/stacker.o ./Core/Inc/signal/micro/kernels/stacker.su ./Core/Inc/signal/micro/kernels/window.cyclo ./Core/Inc/signal/micro/kernels/window.d ./Core/Inc/signal/micro/kernels/window.o ./Core/Inc/signal/micro/kernels/window.su

.PHONY: clean-Core-2f-Inc-2f-signal-2f-micro-2f-kernels

