################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32H7xx_HAL_Driver/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include Core/Inc/tensorflow/lite/schema/subdir.mk
-include Core/Inc/tensorflow/lite/micro/tflite_bridge/subdir.mk
-include Core/Inc/tensorflow/lite/micro/models/subdir.mk
-include Core/Inc/tensorflow/lite/micro/memory_planner/subdir.mk
-include Core/Inc/tensorflow/lite/micro/kernels/subdir.mk
-include Core/Inc/tensorflow/lite/micro/arena_allocator/subdir.mk
-include Core/Inc/tensorflow/lite/micro/subdir.mk
-include Core/Inc/tensorflow/lite/kernels/internal/reference/subdir.mk
-include Core/Inc/tensorflow/lite/kernels/internal/subdir.mk
-include Core/Inc/tensorflow/lite/kernels/subdir.mk
-include Core/Inc/tensorflow/lite/core/c/subdir.mk
-include Core/Inc/tensorflow/lite/core/api/subdir.mk
-include Core/Inc/signal/src/kiss_fft_wrappers/subdir.mk
-include Core/Inc/signal/src/subdir.mk
-include Core/Inc/signal/micro/kernels/subdir.mk
-include Core/Inc/person_detection/subdir.mk
-include Core/Inc/kissfft/tools/subdir.mk
-include Core/Inc/kissfft/subdir.mk
-include Core/Inc/hello_world/models/subdir.mk
-include Core/Inc/hello_world/subdir.mk
-include Core/Inc/custom/fanke_lcd/subdir.mk
-include Core/Inc/custom/camera/subdir.mk
-include Core/Inc/custom/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(CCM_DEPS)),)
-include $(CCM_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CXXM_DEPS)),)
-include $(CXXM_DEPS)
endif
ifneq ($(strip $(C++M_DEPS)),)
-include $(C++M_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := H753_OV2640_lite
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
H753_OV2640_lite.elf \

MAP_FILES += \
H753_OV2640_lite.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
H753_OV2640_lite.list \


# All Target
all: main-build

# Main-build Target
main-build: H753_OV2640_lite.elf secondary-outputs

# Tool invocations
H753_OV2640_lite.elf H753_OV2640_lite.map: $(OBJS) $(USER_OBJS) C:\_PRIVATE_ROOT\code\stm32\H753_OV2640_lite\STM32H753XIHX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-g++ -o "H753_OV2640_lite.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"C:\_PRIVATE_ROOT\code\stm32\H753_OV2640_lite\STM32H753XIHX_FLASH.ld" --specs=nosys.specs -Wl,-Map="H753_OV2640_lite.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

H753_OV2640_lite.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "H753_OV2640_lite.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) H753_OV2640_lite.elf H753_OV2640_lite.list H753_OV2640_lite.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
