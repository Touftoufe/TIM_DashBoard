################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/examples/widgets/chart/lv_example_chart_1.c \
../Core/lvgl/examples/widgets/chart/lv_example_chart_2.c \
../Core/lvgl/examples/widgets/chart/lv_example_chart_3.c \
../Core/lvgl/examples/widgets/chart/lv_example_chart_4.c \
../Core/lvgl/examples/widgets/chart/lv_example_chart_5.c \
../Core/lvgl/examples/widgets/chart/lv_example_chart_6.c \
../Core/lvgl/examples/widgets/chart/lv_example_chart_7.c \
../Core/lvgl/examples/widgets/chart/lv_example_chart_8.c \
../Core/lvgl/examples/widgets/chart/lv_example_chart_9.c 

OBJS += \
./Core/lvgl/examples/widgets/chart/lv_example_chart_1.o \
./Core/lvgl/examples/widgets/chart/lv_example_chart_2.o \
./Core/lvgl/examples/widgets/chart/lv_example_chart_3.o \
./Core/lvgl/examples/widgets/chart/lv_example_chart_4.o \
./Core/lvgl/examples/widgets/chart/lv_example_chart_5.o \
./Core/lvgl/examples/widgets/chart/lv_example_chart_6.o \
./Core/lvgl/examples/widgets/chart/lv_example_chart_7.o \
./Core/lvgl/examples/widgets/chart/lv_example_chart_8.o \
./Core/lvgl/examples/widgets/chart/lv_example_chart_9.o 

C_DEPS += \
./Core/lvgl/examples/widgets/chart/lv_example_chart_1.d \
./Core/lvgl/examples/widgets/chart/lv_example_chart_2.d \
./Core/lvgl/examples/widgets/chart/lv_example_chart_3.d \
./Core/lvgl/examples/widgets/chart/lv_example_chart_4.d \
./Core/lvgl/examples/widgets/chart/lv_example_chart_5.d \
./Core/lvgl/examples/widgets/chart/lv_example_chart_6.d \
./Core/lvgl/examples/widgets/chart/lv_example_chart_7.d \
./Core/lvgl/examples/widgets/chart/lv_example_chart_8.d \
./Core/lvgl/examples/widgets/chart/lv_example_chart_9.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/examples/widgets/chart/%.o: ../Core/lvgl/examples/widgets/chart/%.c Core/lvgl/examples/widgets/chart/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"D:/Projects/stm32cubeIDE/lvgl_f103/Core/lvgl" -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-examples-2f-widgets-2f-chart

clean-Core-2f-lvgl-2f-examples-2f-widgets-2f-chart:
	-$(RM) ./Core/lvgl/examples/widgets/chart/lv_example_chart_1.d ./Core/lvgl/examples/widgets/chart/lv_example_chart_1.o ./Core/lvgl/examples/widgets/chart/lv_example_chart_2.d ./Core/lvgl/examples/widgets/chart/lv_example_chart_2.o ./Core/lvgl/examples/widgets/chart/lv_example_chart_3.d ./Core/lvgl/examples/widgets/chart/lv_example_chart_3.o ./Core/lvgl/examples/widgets/chart/lv_example_chart_4.d ./Core/lvgl/examples/widgets/chart/lv_example_chart_4.o ./Core/lvgl/examples/widgets/chart/lv_example_chart_5.d ./Core/lvgl/examples/widgets/chart/lv_example_chart_5.o ./Core/lvgl/examples/widgets/chart/lv_example_chart_6.d ./Core/lvgl/examples/widgets/chart/lv_example_chart_6.o ./Core/lvgl/examples/widgets/chart/lv_example_chart_7.d ./Core/lvgl/examples/widgets/chart/lv_example_chart_7.o ./Core/lvgl/examples/widgets/chart/lv_example_chart_8.d ./Core/lvgl/examples/widgets/chart/lv_example_chart_8.o ./Core/lvgl/examples/widgets/chart/lv_example_chart_9.d ./Core/lvgl/examples/widgets/chart/lv_example_chart_9.o

.PHONY: clean-Core-2f-lvgl-2f-examples-2f-widgets-2f-chart

