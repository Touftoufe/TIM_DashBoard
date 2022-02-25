################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/widgets/lv_arc.c \
../Core/lvgl/src/widgets/lv_bar.c \
../Core/lvgl/src/widgets/lv_btn.c \
../Core/lvgl/src/widgets/lv_btnmatrix.c \
../Core/lvgl/src/widgets/lv_canvas.c \
../Core/lvgl/src/widgets/lv_checkbox.c \
../Core/lvgl/src/widgets/lv_dropdown.c \
../Core/lvgl/src/widgets/lv_img.c \
../Core/lvgl/src/widgets/lv_label.c \
../Core/lvgl/src/widgets/lv_line.c \
../Core/lvgl/src/widgets/lv_objx_templ.c \
../Core/lvgl/src/widgets/lv_roller.c \
../Core/lvgl/src/widgets/lv_slider.c \
../Core/lvgl/src/widgets/lv_switch.c \
../Core/lvgl/src/widgets/lv_table.c \
../Core/lvgl/src/widgets/lv_textarea.c 

OBJS += \
./Core/lvgl/src/widgets/lv_arc.o \
./Core/lvgl/src/widgets/lv_bar.o \
./Core/lvgl/src/widgets/lv_btn.o \
./Core/lvgl/src/widgets/lv_btnmatrix.o \
./Core/lvgl/src/widgets/lv_canvas.o \
./Core/lvgl/src/widgets/lv_checkbox.o \
./Core/lvgl/src/widgets/lv_dropdown.o \
./Core/lvgl/src/widgets/lv_img.o \
./Core/lvgl/src/widgets/lv_label.o \
./Core/lvgl/src/widgets/lv_line.o \
./Core/lvgl/src/widgets/lv_objx_templ.o \
./Core/lvgl/src/widgets/lv_roller.o \
./Core/lvgl/src/widgets/lv_slider.o \
./Core/lvgl/src/widgets/lv_switch.o \
./Core/lvgl/src/widgets/lv_table.o \
./Core/lvgl/src/widgets/lv_textarea.o 

C_DEPS += \
./Core/lvgl/src/widgets/lv_arc.d \
./Core/lvgl/src/widgets/lv_bar.d \
./Core/lvgl/src/widgets/lv_btn.d \
./Core/lvgl/src/widgets/lv_btnmatrix.d \
./Core/lvgl/src/widgets/lv_canvas.d \
./Core/lvgl/src/widgets/lv_checkbox.d \
./Core/lvgl/src/widgets/lv_dropdown.d \
./Core/lvgl/src/widgets/lv_img.d \
./Core/lvgl/src/widgets/lv_label.d \
./Core/lvgl/src/widgets/lv_line.d \
./Core/lvgl/src/widgets/lv_objx_templ.d \
./Core/lvgl/src/widgets/lv_roller.d \
./Core/lvgl/src/widgets/lv_slider.d \
./Core/lvgl/src/widgets/lv_switch.d \
./Core/lvgl/src/widgets/lv_table.d \
./Core/lvgl/src/widgets/lv_textarea.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/widgets/%.o: ../Core/lvgl/src/widgets/%.c Core/lvgl/src/widgets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I"/home/prince/Downloads/lvgl/lvgl_f103/Core/lvgl" -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-lvgl-2f-src-2f-widgets

clean-Core-2f-lvgl-2f-src-2f-widgets:
	-$(RM) ./Core/lvgl/src/widgets/lv_arc.d ./Core/lvgl/src/widgets/lv_arc.o ./Core/lvgl/src/widgets/lv_bar.d ./Core/lvgl/src/widgets/lv_bar.o ./Core/lvgl/src/widgets/lv_btn.d ./Core/lvgl/src/widgets/lv_btn.o ./Core/lvgl/src/widgets/lv_btnmatrix.d ./Core/lvgl/src/widgets/lv_btnmatrix.o ./Core/lvgl/src/widgets/lv_canvas.d ./Core/lvgl/src/widgets/lv_canvas.o ./Core/lvgl/src/widgets/lv_checkbox.d ./Core/lvgl/src/widgets/lv_checkbox.o ./Core/lvgl/src/widgets/lv_dropdown.d ./Core/lvgl/src/widgets/lv_dropdown.o ./Core/lvgl/src/widgets/lv_img.d ./Core/lvgl/src/widgets/lv_img.o ./Core/lvgl/src/widgets/lv_label.d ./Core/lvgl/src/widgets/lv_label.o ./Core/lvgl/src/widgets/lv_line.d ./Core/lvgl/src/widgets/lv_line.o ./Core/lvgl/src/widgets/lv_objx_templ.d ./Core/lvgl/src/widgets/lv_objx_templ.o ./Core/lvgl/src/widgets/lv_roller.d ./Core/lvgl/src/widgets/lv_roller.o ./Core/lvgl/src/widgets/lv_slider.d ./Core/lvgl/src/widgets/lv_slider.o ./Core/lvgl/src/widgets/lv_switch.d ./Core/lvgl/src/widgets/lv_switch.o ./Core/lvgl/src/widgets/lv_table.d ./Core/lvgl/src/widgets/lv_table.o ./Core/lvgl/src/widgets/lv_textarea.d ./Core/lvgl/src/widgets/lv_textarea.o

.PHONY: clean-Core-2f-lvgl-2f-src-2f-widgets

