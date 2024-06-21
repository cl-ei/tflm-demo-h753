################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Core/Inc/tensorflow/lite/micro/debug_log.cc \
../Core/Inc/tensorflow/lite/micro/fake_micro_context.cc \
../Core/Inc/tensorflow/lite/micro/flatbuffer_utils.cc \
../Core/Inc/tensorflow/lite/micro/memory_helpers.cc \
../Core/Inc/tensorflow/lite/micro/micro_allocation_info.cc \
../Core/Inc/tensorflow/lite/micro/micro_allocator.cc \
../Core/Inc/tensorflow/lite/micro/micro_context.cc \
../Core/Inc/tensorflow/lite/micro/micro_interpreter.cc \
../Core/Inc/tensorflow/lite/micro/micro_interpreter_context.cc \
../Core/Inc/tensorflow/lite/micro/micro_interpreter_graph.cc \
../Core/Inc/tensorflow/lite/micro/micro_log.cc \
../Core/Inc/tensorflow/lite/micro/micro_op_resolver.cc \
../Core/Inc/tensorflow/lite/micro/micro_profiler.cc \
../Core/Inc/tensorflow/lite/micro/micro_resource_variable.cc \
../Core/Inc/tensorflow/lite/micro/micro_time.cc \
../Core/Inc/tensorflow/lite/micro/micro_utils.cc \
../Core/Inc/tensorflow/lite/micro/mock_micro_graph.cc \
../Core/Inc/tensorflow/lite/micro/recording_micro_allocator.cc \
../Core/Inc/tensorflow/lite/micro/system_setup.cc \
../Core/Inc/tensorflow/lite/micro/test_helper_custom_ops.cc \
../Core/Inc/tensorflow/lite/micro/test_helpers.cc 

CC_DEPS += \
./Core/Inc/tensorflow/lite/micro/debug_log.d \
./Core/Inc/tensorflow/lite/micro/fake_micro_context.d \
./Core/Inc/tensorflow/lite/micro/flatbuffer_utils.d \
./Core/Inc/tensorflow/lite/micro/memory_helpers.d \
./Core/Inc/tensorflow/lite/micro/micro_allocation_info.d \
./Core/Inc/tensorflow/lite/micro/micro_allocator.d \
./Core/Inc/tensorflow/lite/micro/micro_context.d \
./Core/Inc/tensorflow/lite/micro/micro_interpreter.d \
./Core/Inc/tensorflow/lite/micro/micro_interpreter_context.d \
./Core/Inc/tensorflow/lite/micro/micro_interpreter_graph.d \
./Core/Inc/tensorflow/lite/micro/micro_log.d \
./Core/Inc/tensorflow/lite/micro/micro_op_resolver.d \
./Core/Inc/tensorflow/lite/micro/micro_profiler.d \
./Core/Inc/tensorflow/lite/micro/micro_resource_variable.d \
./Core/Inc/tensorflow/lite/micro/micro_time.d \
./Core/Inc/tensorflow/lite/micro/micro_utils.d \
./Core/Inc/tensorflow/lite/micro/mock_micro_graph.d \
./Core/Inc/tensorflow/lite/micro/recording_micro_allocator.d \
./Core/Inc/tensorflow/lite/micro/system_setup.d \
./Core/Inc/tensorflow/lite/micro/test_helper_custom_ops.d \
./Core/Inc/tensorflow/lite/micro/test_helpers.d 

OBJS += \
./Core/Inc/tensorflow/lite/micro/debug_log.o \
./Core/Inc/tensorflow/lite/micro/fake_micro_context.o \
./Core/Inc/tensorflow/lite/micro/flatbuffer_utils.o \
./Core/Inc/tensorflow/lite/micro/memory_helpers.o \
./Core/Inc/tensorflow/lite/micro/micro_allocation_info.o \
./Core/Inc/tensorflow/lite/micro/micro_allocator.o \
./Core/Inc/tensorflow/lite/micro/micro_context.o \
./Core/Inc/tensorflow/lite/micro/micro_interpreter.o \
./Core/Inc/tensorflow/lite/micro/micro_interpreter_context.o \
./Core/Inc/tensorflow/lite/micro/micro_interpreter_graph.o \
./Core/Inc/tensorflow/lite/micro/micro_log.o \
./Core/Inc/tensorflow/lite/micro/micro_op_resolver.o \
./Core/Inc/tensorflow/lite/micro/micro_profiler.o \
./Core/Inc/tensorflow/lite/micro/micro_resource_variable.o \
./Core/Inc/tensorflow/lite/micro/micro_time.o \
./Core/Inc/tensorflow/lite/micro/micro_utils.o \
./Core/Inc/tensorflow/lite/micro/mock_micro_graph.o \
./Core/Inc/tensorflow/lite/micro/recording_micro_allocator.o \
./Core/Inc/tensorflow/lite/micro/system_setup.o \
./Core/Inc/tensorflow/lite/micro/test_helper_custom_ops.o \
./Core/Inc/tensorflow/lite/micro/test_helpers.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/tensorflow/lite/micro/%.o Core/Inc/tensorflow/lite/micro/%.su Core/Inc/tensorflow/lite/micro/%.cyclo: ../Core/Inc/tensorflow/lite/micro/%.cc Core/Inc/tensorflow/lite/micro/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -DTF_LITE_STATIC_MEMORY -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -I../Core/Inc/person_detection -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-tensorflow-2f-lite-2f-micro

clean-Core-2f-Inc-2f-tensorflow-2f-lite-2f-micro:
	-$(RM) ./Core/Inc/tensorflow/lite/micro/debug_log.cyclo ./Core/Inc/tensorflow/lite/micro/debug_log.d ./Core/Inc/tensorflow/lite/micro/debug_log.o ./Core/Inc/tensorflow/lite/micro/debug_log.su ./Core/Inc/tensorflow/lite/micro/fake_micro_context.cyclo ./Core/Inc/tensorflow/lite/micro/fake_micro_context.d ./Core/Inc/tensorflow/lite/micro/fake_micro_context.o ./Core/Inc/tensorflow/lite/micro/fake_micro_context.su ./Core/Inc/tensorflow/lite/micro/flatbuffer_utils.cyclo ./Core/Inc/tensorflow/lite/micro/flatbuffer_utils.d ./Core/Inc/tensorflow/lite/micro/flatbuffer_utils.o ./Core/Inc/tensorflow/lite/micro/flatbuffer_utils.su ./Core/Inc/tensorflow/lite/micro/memory_helpers.cyclo ./Core/Inc/tensorflow/lite/micro/memory_helpers.d ./Core/Inc/tensorflow/lite/micro/memory_helpers.o ./Core/Inc/tensorflow/lite/micro/memory_helpers.su ./Core/Inc/tensorflow/lite/micro/micro_allocation_info.cyclo ./Core/Inc/tensorflow/lite/micro/micro_allocation_info.d ./Core/Inc/tensorflow/lite/micro/micro_allocation_info.o ./Core/Inc/tensorflow/lite/micro/micro_allocation_info.su ./Core/Inc/tensorflow/lite/micro/micro_allocator.cyclo ./Core/Inc/tensorflow/lite/micro/micro_allocator.d ./Core/Inc/tensorflow/lite/micro/micro_allocator.o ./Core/Inc/tensorflow/lite/micro/micro_allocator.su ./Core/Inc/tensorflow/lite/micro/micro_context.cyclo ./Core/Inc/tensorflow/lite/micro/micro_context.d ./Core/Inc/tensorflow/lite/micro/micro_context.o ./Core/Inc/tensorflow/lite/micro/micro_context.su ./Core/Inc/tensorflow/lite/micro/micro_interpreter.cyclo ./Core/Inc/tensorflow/lite/micro/micro_interpreter.d ./Core/Inc/tensorflow/lite/micro/micro_interpreter.o ./Core/Inc/tensorflow/lite/micro/micro_interpreter.su ./Core/Inc/tensorflow/lite/micro/micro_interpreter_context.cyclo ./Core/Inc/tensorflow/lite/micro/micro_interpreter_context.d ./Core/Inc/tensorflow/lite/micro/micro_interpreter_context.o ./Core/Inc/tensorflow/lite/micro/micro_interpreter_context.su ./Core/Inc/tensorflow/lite/micro/micro_interpreter_graph.cyclo ./Core/Inc/tensorflow/lite/micro/micro_interpreter_graph.d ./Core/Inc/tensorflow/lite/micro/micro_interpreter_graph.o ./Core/Inc/tensorflow/lite/micro/micro_interpreter_graph.su ./Core/Inc/tensorflow/lite/micro/micro_log.cyclo ./Core/Inc/tensorflow/lite/micro/micro_log.d ./Core/Inc/tensorflow/lite/micro/micro_log.o ./Core/Inc/tensorflow/lite/micro/micro_log.su ./Core/Inc/tensorflow/lite/micro/micro_op_resolver.cyclo ./Core/Inc/tensorflow/lite/micro/micro_op_resolver.d ./Core/Inc/tensorflow/lite/micro/micro_op_resolver.o ./Core/Inc/tensorflow/lite/micro/micro_op_resolver.su ./Core/Inc/tensorflow/lite/micro/micro_profiler.cyclo ./Core/Inc/tensorflow/lite/micro/micro_profiler.d ./Core/Inc/tensorflow/lite/micro/micro_profiler.o ./Core/Inc/tensorflow/lite/micro/micro_profiler.su ./Core/Inc/tensorflow/lite/micro/micro_resource_variable.cyclo ./Core/Inc/tensorflow/lite/micro/micro_resource_variable.d ./Core/Inc/tensorflow/lite/micro/micro_resource_variable.o ./Core/Inc/tensorflow/lite/micro/micro_resource_variable.su ./Core/Inc/tensorflow/lite/micro/micro_time.cyclo ./Core/Inc/tensorflow/lite/micro/micro_time.d ./Core/Inc/tensorflow/lite/micro/micro_time.o ./Core/Inc/tensorflow/lite/micro/micro_time.su ./Core/Inc/tensorflow/lite/micro/micro_utils.cyclo ./Core/Inc/tensorflow/lite/micro/micro_utils.d ./Core/Inc/tensorflow/lite/micro/micro_utils.o ./Core/Inc/tensorflow/lite/micro/micro_utils.su ./Core/Inc/tensorflow/lite/micro/mock_micro_graph.cyclo ./Core/Inc/tensorflow/lite/micro/mock_micro_graph.d ./Core/Inc/tensorflow/lite/micro/mock_micro_graph.o ./Core/Inc/tensorflow/lite/micro/mock_micro_graph.su ./Core/Inc/tensorflow/lite/micro/recording_micro_allocator.cyclo ./Core/Inc/tensorflow/lite/micro/recording_micro_allocator.d ./Core/Inc/tensorflow/lite/micro/recording_micro_allocator.o ./Core/Inc/tensorflow/lite/micro/recording_micro_allocator.su ./Core/Inc/tensorflow/lite/micro/system_setup.cyclo ./Core/Inc/tensorflow/lite/micro/system_setup.d ./Core/Inc/tensorflow/lite/micro/system_setup.o ./Core/Inc/tensorflow/lite/micro/system_setup.su ./Core/Inc/tensorflow/lite/micro/test_helper_custom_ops.cyclo ./Core/Inc/tensorflow/lite/micro/test_helper_custom_ops.d ./Core/Inc/tensorflow/lite/micro/test_helper_custom_ops.o ./Core/Inc/tensorflow/lite/micro/test_helper_custom_ops.su ./Core/Inc/tensorflow/lite/micro/test_helpers.cyclo ./Core/Inc/tensorflow/lite/micro/test_helpers.d ./Core/Inc/tensorflow/lite/micro/test_helpers.o ./Core/Inc/tensorflow/lite/micro/test_helpers.su

.PHONY: clean-Core-2f-Inc-2f-tensorflow-2f-lite-2f-micro

