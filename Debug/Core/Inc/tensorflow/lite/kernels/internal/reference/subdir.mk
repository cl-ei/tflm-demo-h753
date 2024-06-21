################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Core/Inc/tensorflow/lite/kernels/internal/reference/comparisons.cc \
../Core/Inc/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc 

CC_DEPS += \
./Core/Inc/tensorflow/lite/kernels/internal/reference/comparisons.d \
./Core/Inc/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d 

OBJS += \
./Core/Inc/tensorflow/lite/kernels/internal/reference/comparisons.o \
./Core/Inc/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/tensorflow/lite/kernels/internal/reference/%.o Core/Inc/tensorflow/lite/kernels/internal/reference/%.su Core/Inc/tensorflow/lite/kernels/internal/reference/%.cyclo: ../Core/Inc/tensorflow/lite/kernels/internal/reference/%.cc Core/Inc/tensorflow/lite/kernels/internal/reference/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -DTF_LITE_STATIC_MEMORY -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -I../Core/Inc/person_detection -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference

clean-Core-2f-Inc-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference:
	-$(RM) ./Core/Inc/tensorflow/lite/kernels/internal/reference/comparisons.cyclo ./Core/Inc/tensorflow/lite/kernels/internal/reference/comparisons.d ./Core/Inc/tensorflow/lite/kernels/internal/reference/comparisons.o ./Core/Inc/tensorflow/lite/kernels/internal/reference/comparisons.su ./Core/Inc/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cyclo ./Core/Inc/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.d ./Core/Inc/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.o ./Core/Inc/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.su

.PHONY: clean-Core-2f-Inc-2f-tensorflow-2f-lite-2f-kernels-2f-internal-2f-reference

