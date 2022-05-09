; ModuleID = '/llk/IR_all_yes/drivers/thermal/ti-soc-thermal/omap3-thermal-data.c_pt.bc'
source_filename = "../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.temp_sensor_data = type { i32, i32, i32, i32, i32, i32 }
%struct.temp_sensor_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ti_temp_sensor = type { ptr, ptr, ptr, i32, i32, ptr, ptr }

@omap34xx_adc_to_temp = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -39000, i32 -38000, i32 -36000, i32 -34000, i32 -32000, i32 -31000, i32 -29000, i32 -28000, i32 -26000, i32 -25000, i32 -24000, i32 -22000, i32 -21000, i32 -19000, i32 -18000, i32 -17000, i32 -15000, i32 -14000, i32 -12000, i32 -11000, i32 -9000, i32 -8000, i32 -7000, i32 -5000, i32 -4000, i32 -2000, i32 -1000, i32 0, i32 1000, i32 3000, i32 4000, i32 5000, i32 7000, i32 8000, i32 10000, i32 11000, i32 13000, i32 14000, i32 15000, i32 17000, i32 18000, i32 20000, i32 21000, i32 22000, i32 24000, i32 25000, i32 27000, i32 28000, i32 30000, i32 31000, i32 32000, i32 34000, i32 35000, i32 37000, i32 38000, i32 39000, i32 41000, i32 42000, i32 44000, i32 45000, i32 47000, i32 48000, i32 49000, i32 51000, i32 52000, i32 53000, i32 55000, i32 56000, i32 58000, i32 59000, i32 60000, i32 62000, i32 63000, i32 65000, i32 66000, i32 67000, i32 69000, i32 70000, i32 72000, i32 73000, i32 74000, i32 76000, i32 77000, i32 79000, i32 80000, i32 81000, i32 83000, i32 84000, i32 85000, i32 87000, i32 88000, i32 89000, i32 91000, i32 92000, i32 94000, i32 95000, i32 96000, i32 98000, i32 99000, i32 100000, i32 102000, i32 103000, i32 105000, i32 106000, i32 107000, i32 109000, i32 110000, i32 111000, i32 113000, i32 114000, i32 116000, i32 117000, i32 118000, i32 120000, i32 121000, i32 122000, i32 124000, i32 124000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000], [128 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ts_fck\00", [25 x i8] zeroinitializer }, align 32
@omap34xx_mpu_temp_sensor_data = internal global { %struct.temp_sensor_data, [40 x i8] } { %struct.temp_sensor_data { i32 0, i32 0, i32 0, i32 0, i32 32768, i32 32768 }, [40 x i8] zeroinitializer }, align 32
@omap34xx_mpu_temp_sensor_registers = internal global { %struct.temp_sensor_registers, [56 x i8] } { %struct.temp_sensor_registers { i32 0, i32 0, i32 256, i32 128, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 512, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@omap34xx_data = dso_local constant { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [1 x %struct.ti_temp_sensor] }, [60 x i8] } { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [1 x %struct.ti_temp_sensor] } { i32 2112, ptr @omap34xx_adc_to_temp, i32 0, i32 127, ptr @.str, ptr @.str, i32 1, ptr null, ptr @ti_thermal_expose_sensor, ptr @ti_thermal_remove_sensor, [1 x %struct.ti_temp_sensor] [%struct.ti_temp_sensor { ptr @omap34xx_mpu_temp_sensor_data, ptr @omap34xx_mpu_temp_sensor_registers, ptr @.str.1, i32 0, i32 20000, ptr null, ptr null }] }, [60 x i8] zeroinitializer }, align 32
@omap36xx_adc_to_temp = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -38000, i32 -35000, i32 -34000, i32 -32000, i32 -30000, i32 -28000, i32 -26000, i32 -24000, i32 -22000, i32 -20000, i32 -18500, i32 -17000, i32 -15000, i32 -13500, i32 -12000, i32 -10000, i32 -8000, i32 -6500, i32 -5000, i32 -3500, i32 -1500, i32 0, i32 2000, i32 3500, i32 5000, i32 6500, i32 8500, i32 10000, i32 12000, i32 13500, i32 15000, i32 17000, i32 19000, i32 21000, i32 23000, i32 25000, i32 27000, i32 28500, i32 30000, i32 32000, i32 33500, i32 35000, i32 37000, i32 38500, i32 40000, i32 42000, i32 43500, i32 45000, i32 47000, i32 48500, i32 50000, i32 52000, i32 53500, i32 55000, i32 57000, i32 58500, i32 60000, i32 62000, i32 64000, i32 66000, i32 68000, i32 70000, i32 71500, i32 73500, i32 75000, i32 77000, i32 78500, i32 80000, i32 82000, i32 83500, i32 85000, i32 87000, i32 88500, i32 90000, i32 92000, i32 93500, i32 95000, i32 97000, i32 98500, i32 100000, i32 102000, i32 103500, i32 105000, i32 107000, i32 109000, i32 111000, i32 113000, i32 115000, i32 117000, i32 118500, i32 120000, i32 122000, i32 123500, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000, i32 125000], [128 x i8] zeroinitializer }, align 32
@omap36xx_mpu_temp_sensor_data = internal global { %struct.temp_sensor_data, [40 x i8] } { %struct.temp_sensor_data { i32 0, i32 0, i32 0, i32 0, i32 32768, i32 32768 }, [40 x i8] zeroinitializer }, align 32
@omap36xx_mpu_temp_sensor_registers = internal global { %struct.temp_sensor_registers, [56 x i8] } { %struct.temp_sensor_registers { i32 0, i32 0, i32 512, i32 256, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@omap36xx_data = dso_local constant { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [1 x %struct.ti_temp_sensor] }, [60 x i8] } { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [1 x %struct.ti_temp_sensor] } { i32 2112, ptr @omap36xx_adc_to_temp, i32 0, i32 127, ptr @.str, ptr @.str, i32 1, ptr null, ptr @ti_thermal_expose_sensor, ptr @ti_thermal_remove_sensor, [1 x %struct.ti_temp_sensor] [%struct.ti_temp_sensor { ptr @omap36xx_mpu_temp_sensor_data, ptr @omap36xx_mpu_temp_sensor_registers, ptr @.str.1, i32 0, i32 20000, ptr null, ptr null }] }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [21 x i8] c"omap34xx_adc_to_temp\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 49, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 70, i32 17 }
@___asan_gen_.8 = private unnamed_addr constant [30 x i8] c"omap34xx_mpu_temp_sensor_data\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 40, i32 32 }
@___asan_gen_.11 = private unnamed_addr constant [35 x i8] c"omap34xx_mpu_temp_sensor_registers\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 29, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 82, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"omap34xx_data\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 68, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"omap36xx_adc_to_temp\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 117, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [30 x i8] c"omap36xx_mpu_temp_sensor_data\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 108, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [35 x i8] c"omap36xx_mpu_temp_sensor_registers\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 97, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"omap36xx_data\00", align 1
@___asan_gen_.30 = private constant [55 x i8] c"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 136, i32 30 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @omap34xx_adc_to_temp, ptr @.str, ptr @omap34xx_mpu_temp_sensor_data, ptr @omap34xx_mpu_temp_sensor_registers, ptr @.str.1, ptr @omap34xx_data, ptr @omap36xx_adc_to_temp, ptr @omap36xx_mpu_temp_sensor_data, ptr @omap36xx_mpu_temp_sensor_registers, ptr @omap36xx_data], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap34xx_adc_to_temp to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap34xx_mpu_temp_sensor_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap34xx_mpu_temp_sensor_registers to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap34xx_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap36xx_adc_to_temp to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap36xx_mpu_temp_sensor_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap36xx_mpu_temp_sensor_registers to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap36xx_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_expose_sensor(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_remove_sensor(ptr noundef, i32 noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c", i32 70, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c", i32 82, i32 13}
!4 = !{ptr @omap34xx_data, !5, !"omap34xx_data", i1 false, i1 false}
!5 = !{!"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c", i32 68, i32 30}
!6 = !{ptr @omap36xx_data, !7, !"omap36xx_data", i1 false, i1 false}
!7 = !{!"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c", i32 136, i32 30}
!8 = !{ptr @omap34xx_adc_to_temp, !9, !"omap34xx_adc_to_temp", i1 false, i1 false}
!9 = !{!"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c", i32 49, i32 1}
!10 = !{ptr @omap34xx_mpu_temp_sensor_data, !11, !"omap34xx_mpu_temp_sensor_data", i1 false, i1 false}
!11 = !{!"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c", i32 40, i32 32}
!12 = !{ptr @omap34xx_mpu_temp_sensor_registers, !13, !"omap34xx_mpu_temp_sensor_registers", i1 false, i1 false}
!13 = !{!"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c", i32 29, i32 1}
!14 = !{ptr @omap36xx_adc_to_temp, !15, !"omap36xx_adc_to_temp", i1 false, i1 false}
!15 = !{!"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c", i32 117, i32 1}
!16 = !{ptr @omap36xx_mpu_temp_sensor_data, !17, !"omap36xx_mpu_temp_sensor_data", i1 false, i1 false}
!17 = !{!"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c", i32 108, i32 32}
!18 = !{ptr @omap36xx_mpu_temp_sensor_registers, !19, !"omap36xx_mpu_temp_sensor_registers", i1 false, i1 false}
!19 = !{!"../drivers/thermal/ti-soc-thermal/omap3-thermal-data.c", i32 97, i32 1}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
