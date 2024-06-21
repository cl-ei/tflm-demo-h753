################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Core/Inc/person_detection/detection_responder.cc \
../Core/Inc/person_detection/image_provider.cc \
../Core/Inc/person_detection/main_functions.cc \
../Core/Inc/person_detection/model_settings.cc 

CC_DEPS += \
./Core/Inc/person_detection/detection_responder.d \
./Core/Inc/person_detection/image_provider.d \
./Core/Inc/person_detection/main_functions.d \
./Core/Inc/person_detection/model_settings.d 

OBJS += \
./Core/Inc/person_detection/detection_responder.o \
./Core/Inc/person_detection/image_provider.o \
./Core/Inc/person_detection/main_functions.o \
./Core/Inc/person_detection/model_settings.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/person_detection/%.o Core/Inc/person_detection/%.su Core/Inc/person_detection/%.cyclo: ../Core/Inc/person_detection/%.cc Core/Inc/person_detection/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -DTF_LITE_STATIC_MEMORY -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -I../Core/Inc/person_detection -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-person_detection

clean-Core-2f-Inc-2f-person_detection:
	-$(RM) ./Core/Inc/person_detection/detection_responder.cyclo ./Core/Inc/person_detection/detection_responder.d ./Core/Inc/person_detection/detection_responder.o ./Core/Inc/person_detection/detection_responder.su ./Core/Inc/person_detection/image_provider.cyclo ./Core/Inc/person_detection/image_provider.d ./Core/Inc/person_detection/image_provider.o ./Core/Inc/person_detection/image_provider.su ./Core/Inc/person_detection/main_functions.cyclo ./Core/Inc/person_detection/main_functions.d ./Core/Inc/person_detection/main_functions.o ./Core/Inc/person_detection/main_functions.su ./Core/Inc/person_detection/model_settings.cyclo ./Core/Inc/person_detection/model_settings.d ./Core/Inc/person_detection/model_settings.o ./Core/Inc/person_detection/model_settings.su

.PHONY: clean-Core-2f-Inc-2f-person_detection

