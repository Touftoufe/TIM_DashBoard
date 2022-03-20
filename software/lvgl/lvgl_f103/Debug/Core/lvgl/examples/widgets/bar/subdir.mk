################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/examples/widgets/bar/lv_example_bar_1.c \
../Core/lvgl/examples/widgets/bar/lv_example_bar_2.c \
../Core/lvgl/examples/widgets/bar/lv_example_bar_3.c \
../Core/lvgl/examples/widgets/bar/lv_example_bar_4.c \
../Core/lvgl/examples/widgets/bar/lv_example_bar_5.c \
../Core/lvgl/examples/widgets/bar/lv_example_bar_6.c 

OBJS += \
./Core/lvgl/examples/widgets/bar/lv_example_bar_1.o \
./Core/lvgl/examples/widgets/bar/lv_example_bar_2.o \
./Core/lvgl/examples/widgets/bar/lv_example_bar_3.o \
./Core/lvgl/examples/widgets/bar/lv_example_bar_4.o \
./Core/lvgl/examples/widgets/bar/lv_example_bar_5.o \
./Core/lvgl/examples/widgets/bar/lv_example_bar_6.o 

C_DEPS += \
./Core/lvgl/examples/widgets/bar/lv_example_bar_1.d \
./Core/lvgl/examples/widgets/bar/lv_example_bar_2.d \
./Core/lvgl/examples/widgets/bar/lv_example_bar_3.d \
./Core/lvgl/examples/widgets/bar/lv_example_bar_4.d \
./Core/lvgl/examples/widgets/bar/lv_example_bar_5.d \
./Core/lvgl/examples/widgets/bar/lv_example_bar_6.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/examples/widgets/bar/%.o: ../Core/lvgl/examples/widgets/bar/%.c Core/lvgl/examples/widgets/bar/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-examples-2f-widgets-2f-bar

clean-Core-2f-lvgl-2f-examples-2f-widgets-2f-bar:
	-$(RM) ./Core/lvgl/examples/widgets/bar/lv_example_bar_1.d ./Core/lvgl/examples/widgets/bar/lv_example_bar_1.o ./Core/lvgl/examples/widgets/bar/lv_example_bar_2.d ./Core/lvgl/examples/widgets/bar/lv_example_bar_2.o ./Core/lvgl/examples/widgets/bar/lv_example_bar_3.d ./Core/lvgl/examples/widgets/bar/lv_example_bar_3.o ./Core/lvgl/examples/widgets/bar/lv_example_bar_4.d ./Core/lvgl/examples/widgets/bar/lv_example_bar_4.o ./Core/lvgl/examples/widgets/bar/lv_example_bar_5.d ./Core/lvgl/examples/widgets/bar/lv_example_bar_5.o ./Core/lvgl/examples/widgets/bar/lv_example_bar_6.d ./Core/lvgl/examples/widgets/bar/lv_example_bar_6.o

.PHONY: clean-Core-2f-lvgl-2f-examples-2f-widgets-2f-bar
