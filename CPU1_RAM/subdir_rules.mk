################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/ccs/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu0 -Ooff --include_path="D:/ccs/280045project/sci_ex1_loopback" --include_path="D:/ccs/280045project/sci_ex1_loopback/device" --include_path="D:/ti/c2000/C2000Ware_3_04_00_00/driverlib/f28004x/driverlib" --include_path="D:/ccs/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --define=DEBUG --define=CPU1 --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="D:/ccs/280045project/sci_ex1_loopback/CPU1_RAM/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-408296801: ../sci_ex1_loopback.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"D:/ccs/ccs1010/ccs/utils/sysconfig_1.5.0/sysconfig_cli.bat" -d "F28004x" -s "D:/ti/c2000/C2000Ware_3_04_00_00/.metadata/sdk.json" -o "syscfg" --package F28004x_100PZ --part F28004x_100PZ "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-408296801 ../sci_ex1_loopback.syscfg
syscfg/board.h: build-408296801
syscfg/pinmux.csv: build-408296801
syscfg/: build-408296801

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"D:/ccs/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu0 -Ooff --include_path="D:/ccs/280045project/sci_ex1_loopback" --include_path="D:/ccs/280045project/sci_ex1_loopback/device" --include_path="D:/ti/c2000/C2000Ware_3_04_00_00/driverlib/f28004x/driverlib" --include_path="D:/ccs/ccs1010/ccs/tools/compiler/ti-cgt-c2000_20.2.1.LTS/include" --define=DEBUG --define=CPU1 --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="D:/ccs/280045project/sci_ex1_loopback/CPU1_RAM/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


