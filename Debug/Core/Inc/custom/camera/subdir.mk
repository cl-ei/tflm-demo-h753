################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/custom/camera/camera.c \
../Core/Inc/custom/camera/ov2640.c \
../Core/Inc/custom/camera/ov2640_regs.c \
../Core/Inc/custom/camera/ov5640.c \
../Core/Inc/custom/camera/ov5640_regs.c \
../Core/Inc/custom/camera/ov7670.c \
../Core/Inc/custom/camera/ov7670_regs.c \
../Core/Inc/custom/camera/ov7725.c \
../Core/Inc/custom/camera/ov7725_regs.c 

C_DEPS += \
./Core/Inc/custom/camera/camera.d \
./Core/Inc/custom/camera/ov2640.d \
./Core/Inc/custom/camera/ov2640_regs.d \
./Core/Inc/custom/camera/ov5640.d \
./Core/Inc/custom/camera/ov5640_regs.d \
./Core/Inc/custom/camera/ov7670.d \
./Core/Inc/custom/camera/ov7670_regs.d \
./Core/Inc/custom/camera/ov7725.d \
./Core/Inc/custom/camera/ov7725_regs.d 

OBJS += \
./Core/Inc/custom/camera/camera.o \
./Core/Inc/custom/camera/ov2640.o \
./Core/Inc/custom/camera/ov2640_regs.o \
./Core/Inc/custom/camera/ov5640.o \
./Core/Inc/custom/camera/ov5640_regs.o \
./Core/Inc/custom/camera/ov7670.o \
./Core/Inc/custom/camera/ov7670_regs.o \
./Core/Inc/custom/camera/ov7725.o \
./Core/Inc/custom/camera/ov7725_regs.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/custom/camera/%.o Core/Inc/custom/camera/%.su Core/Inc/custom/camera/%.cyclo: ../Core/Inc/custom/camera/%.c Core/Inc/custom/camera/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H753xx -c -I../Core/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Device/ST/STM32H7xx/Include -IC:/Users/Administrator/STM32Cube/Repository/STM32Cube_FW_H7_V1.11.1/Drivers/CMSIS/Include -I../Core/Inc/kissfft -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-custom-2f-camera

clean-Core-2f-Inc-2f-custom-2f-camera:
	-$(RM) ./Core/Inc/custom/camera/camera.cyclo ./Core/Inc/custom/camera/camera.d ./Core/Inc/custom/camera/camera.o ./Core/Inc/custom/camera/camera.su ./Core/Inc/custom/camera/ov2640.cyclo ./Core/Inc/custom/camera/ov2640.d ./Core/Inc/custom/camera/ov2640.o ./Core/Inc/custom/camera/ov2640.su ./Core/Inc/custom/camera/ov2640_regs.cyclo ./Core/Inc/custom/camera/ov2640_regs.d ./Core/Inc/custom/camera/ov2640_regs.o ./Core/Inc/custom/camera/ov2640_regs.su ./Core/Inc/custom/camera/ov5640.cyclo ./Core/Inc/custom/camera/ov5640.d ./Core/Inc/custom/camera/ov5640.o ./Core/Inc/custom/camera/ov5640.su ./Core/Inc/custom/camera/ov5640_regs.cyclo ./Core/Inc/custom/camera/ov5640_regs.d ./Core/Inc/custom/camera/ov5640_regs.o ./Core/Inc/custom/camera/ov5640_regs.su ./Core/Inc/custom/camera/ov7670.cyclo ./Core/Inc/custom/camera/ov7670.d ./Core/Inc/custom/camera/ov7670.o ./Core/Inc/custom/camera/ov7670.su ./Core/Inc/custom/camera/ov7670_regs.cyclo ./Core/Inc/custom/camera/ov7670_regs.d ./Core/Inc/custom/camera/ov7670_regs.o ./Core/Inc/custom/camera/ov7670_regs.su ./Core/Inc/custom/camera/ov7725.cyclo ./Core/Inc/custom/camera/ov7725.d ./Core/Inc/custom/camera/ov7725.o ./Core/Inc/custom/camera/ov7725.su ./Core/Inc/custom/camera/ov7725_regs.cyclo ./Core/Inc/custom/camera/ov7725_regs.d ./Core/Inc/custom/camera/ov7725_regs.o ./Core/Inc/custom/camera/ov7725_regs.su

.PHONY: clean-Core-2f-Inc-2f-custom-2f-camera

