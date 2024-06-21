################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Core/Inc/tensorflow/lite/core/api/error_reporter.cc \
../Core/Inc/tensorflow/lite/core/api/flatbuffer_conversions.cc \
../Core/Inc/tensorflow/lite/core/api/tensor_utils.cc 

CC_DEPS += \
./Core/Inc/tensorflow/lite/core/api/error_reporter.d \
./Core/Inc/tensorflow/lite/core/api/flatbuffer_conversions.d \
./Core/Inc/tensorflow/lite/core/api/tensor_utils.d 

OBJS += \
./Core/Inc/tensorflow/lite/core/api/error_reporter.o \
./Core/Inc/tensorflow/lite/core/api/flatbuffer_conversions.o \
./Core/Inc/tensorflow/lite/core/api/tensor_utils.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/tensorflow/lite/core/api/%.o Core/Inc/tensorflow/lite/core/api/%.su Core/Inc/tensorflow/lite/core/api/%.cyclo: ../Core/Inc/tensorflow/lite/core/api/%.cc Core/Inc/tensorflow/lite/core/api/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -DTF_LITE_STATIC_MEMORY -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -I../Core/Inc/person_detection -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-tensorflow-2f-lite-2f-core-2f-api

clean-Core-2f-Inc-2f-tensorflow-2f-lite-2f-core-2f-api:
	-$(RM) ./Core/Inc/tensorflow/lite/core/api/error_reporter.cyclo ./Core/Inc/tensorflow/lite/core/api/error_reporter.d ./Core/Inc/tensorflow/lite/core/api/error_reporter.o ./Core/Inc/tensorflow/lite/core/api/error_reporter.su ./Core/Inc/tensorflow/lite/core/api/flatbuffer_conversions.cyclo ./Core/Inc/tensorflow/lite/core/api/flatbuffer_conversions.d ./Core/Inc/tensorflow/lite/core/api/flatbuffer_conversions.o ./Core/Inc/tensorflow/lite/core/api/flatbuffer_conversions.su ./Core/Inc/tensorflow/lite/core/api/tensor_utils.cyclo ./Core/Inc/tensorflow/lite/core/api/tensor_utils.d ./Core/Inc/tensorflow/lite/core/api/tensor_utils.o ./Core/Inc/tensorflow/lite/core/api/tensor_utils.su

.PHONY: clean-Core-2f-Inc-2f-tensorflow-2f-lite-2f-core-2f-api

