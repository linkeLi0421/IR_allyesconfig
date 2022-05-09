; ModuleID = '/llk/IR_all_yes/drivers/thermal/ti-soc-thermal/omap5-thermal-data.c_pt.bc'
source_filename = "../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.temp_sensor_data = type { i32, i32, i32, i32, i32, i32 }
%struct.temp_sensor_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ti_temp_sensor = type { ptr, ptr, ptr, i32, i32, ptr, ptr }

@omap5430_adc_to_temp = internal global { [406 x i32], [392 x i8] } { [406 x i32] [i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -39800, i32 -39400, i32 -39000, i32 -38600, i32 -38200, i32 -37800, i32 -37400, i32 -37000, i32 -36600, i32 -36200, i32 -35800, i32 -35300, i32 -34700, i32 -34200, i32 -33800, i32 -33400, i32 -33000, i32 -32600, i32 -32200, i32 -31800, i32 -31400, i32 -31000, i32 -30600, i32 -30200, i32 -29800, i32 -29400, i32 -29000, i32 -28600, i32 -28200, i32 -27700, i32 -27100, i32 -26600, i32 -26200, i32 -25800, i32 -25400, i32 -25000, i32 -24600, i32 -24200, i32 -23800, i32 -23400, i32 -23000, i32 -22600, i32 -22200, i32 -21600, i32 -21400, i32 -21000, i32 -20500, i32 -19900, i32 -19400, i32 -19000, i32 -18600, i32 -18200, i32 -17800, i32 -17400, i32 -17000, i32 -16600, i32 -16200, i32 -15800, i32 -15400, i32 -15000, i32 -14600, i32 -14200, i32 -13800, i32 -13400, i32 -13000, i32 -12500, i32 -11900, i32 -11400, i32 -11000, i32 -10600, i32 -10200, i32 -9800, i32 -9400, i32 -9000, i32 -8600, i32 -8200, i32 -7800, i32 -7400, i32 -7000, i32 -6600, i32 -6200, i32 -5800, i32 -5400, i32 -5000, i32 -4500, i32 -3900, i32 -3400, i32 -3000, i32 -2600, i32 -2200, i32 -1800, i32 -1400, i32 -1000, i32 -600, i32 -200, i32 200, i32 600, i32 1000, i32 1400, i32 1800, i32 2200, i32 2600, i32 3000, i32 3400, i32 3900, i32 4500, i32 5000, i32 5400, i32 5800, i32 6200, i32 6600, i32 7000, i32 7400, i32 7800, i32 8200, i32 8600, i32 9000, i32 9400, i32 9800, i32 10200, i32 10600, i32 11000, i32 11400, i32 11800, i32 12200, i32 12700, i32 13300, i32 13800, i32 14200, i32 14600, i32 15000, i32 15400, i32 15800, i32 16200, i32 16600, i32 17000, i32 17400, i32 17800, i32 18200, i32 18600, i32 19000, i32 19400, i32 19800, i32 20200, i32 20600, i32 21100, i32 21400, i32 21900, i32 22500, i32 23000, i32 23400, i32 23800, i32 24200, i32 24600, i32 25000, i32 25400, i32 25800, i32 26200, i32 26600, i32 27000, i32 27400, i32 27800, i32 28200, i32 28600, i32 29000, i32 29400, i32 29800, i32 30200, i32 30600, i32 31000, i32 31400, i32 31900, i32 32500, i32 33000, i32 33400, i32 33800, i32 34200, i32 34600, i32 35000, i32 35400, i32 35800, i32 36200, i32 36600, i32 37000, i32 37400, i32 37800, i32 38200, i32 38600, i32 39000, i32 39400, i32 39800, i32 40200, i32 40600, i32 41000, i32 41400, i32 41800, i32 42200, i32 42600, i32 43100, i32 43700, i32 44200, i32 44600, i32 45000, i32 45400, i32 45800, i32 46200, i32 46600, i32 47000, i32 47400, i32 47800, i32 48200, i32 48600, i32 49000, i32 49400, i32 49800, i32 50200, i32 50600, i32 51000, i32 51400, i32 51800, i32 52200, i32 52600, i32 53000, i32 53400, i32 53800, i32 54200, i32 54600, i32 55000, i32 55400, i32 55900, i32 56500, i32 57000, i32 57400, i32 57800, i32 58200, i32 58600, i32 59000, i32 59400, i32 59800, i32 60200, i32 60600, i32 61000, i32 61400, i32 61800, i32 62200, i32 62600, i32 63000, i32 63400, i32 63800, i32 64200, i32 64600, i32 65000, i32 65400, i32 65800, i32 66200, i32 66600, i32 67000, i32 67400, i32 67800, i32 68200, i32 68600, i32 69000, i32 69400, i32 69800, i32 70200, i32 70600, i32 71000, i32 71500, i32 72100, i32 72600, i32 73000, i32 73400, i32 73800, i32 74200, i32 74600, i32 75000, i32 75400, i32 75800, i32 76200, i32 76600, i32 77000, i32 77400, i32 77800, i32 78200, i32 78600, i32 79000, i32 79400, i32 79800, i32 80200, i32 80600, i32 81000, i32 81400, i32 81800, i32 82200, i32 82600, i32 83000, i32 83400, i32 83800, i32 84200, i32 84600, i32 85000, i32 85400, i32 85800, i32 86200, i32 86600, i32 87000, i32 87400, i32 87800, i32 88200, i32 88600, i32 89000, i32 89400, i32 89800, i32 90200, i32 90600, i32 91000, i32 91400, i32 91800, i32 92200, i32 92600, i32 93000, i32 93400, i32 93800, i32 94200, i32 94600, i32 95000, i32 95400, i32 95800, i32 96200, i32 96600, i32 97000, i32 97500, i32 98100, i32 98600, i32 99000, i32 99400, i32 99800, i32 100200, i32 100600, i32 101000, i32 101400, i32 101800, i32 102200, i32 102600, i32 103000, i32 103400, i32 103800, i32 104200, i32 104600, i32 105000, i32 105400, i32 105800, i32 106200, i32 106600, i32 107000, i32 107400, i32 107800, i32 108200, i32 108600, i32 109000, i32 109400, i32 109800, i32 110200, i32 110600, i32 111000, i32 111400, i32 111800, i32 112200, i32 112600, i32 113000, i32 113400, i32 113800, i32 114200, i32 114600, i32 115000, i32 115400, i32 115800, i32 116200, i32 116600, i32 117000, i32 117400, i32 117800, i32 118200, i32 118600, i32 119000, i32 119400, i32 119800, i32 120200, i32 120600, i32 121000, i32 121400, i32 121800, i32 122400, i32 122600, i32 123000, i32 123400, i32 123800, i32 124200, i32 124600, i32 124900, i32 125000, i32 125000], [392 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l3instr_ts_gclk_div\00", [44 x i8] zeroinitializer }, align 32
@omap5430_mpu_temp_sensor_data = internal global { %struct.temp_sensor_data, [40 x i8] } { %struct.temp_sensor_data { i32 915, i32 900, i32 800, i32 795, i32 1000000, i32 1500000 }, [40 x i8] zeroinitializer }, align 32
@omap5430_mpu_temp_sensor_registers = internal global { %struct.temp_sensor_registers, [56 x i8] } { %struct.temp_sensor_registers { i32 332, i32 2048, i32 0, i32 1024, i32 1023, i32 416, i32 2, i32 1, i32 939524096, i32 2097152, i32 0, i32 0, i32 416, i32 16777215, i32 420, i32 67043328, i32 1023, i32 432, i32 67043328, i32 1023, i32 456, i32 2, i32 1, i32 484, i32 488, i32 4 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@omap5430_gpu_temp_sensor_data = internal global { %struct.temp_sensor_data, [40 x i8] } { %struct.temp_sensor_data { i32 915, i32 900, i32 800, i32 795, i32 1000000, i32 1500000 }, [40 x i8] zeroinitializer }, align 32
@omap5430_gpu_temp_sensor_registers = internal global { %struct.temp_sensor_registers, [56 x i8] } { %struct.temp_sensor_registers { i32 336, i32 2048, i32 0, i32 1024, i32 1023, i32 416, i32 8, i32 4, i32 939524096, i32 4194304, i32 0, i32 0, i32 416, i32 16777215, i32 424, i32 67043328, i32 1023, i32 436, i32 67043328, i32 1023, i32 456, i32 8, i32 4, i32 504, i32 508, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@omap5430_core_temp_sensor_data = internal global { %struct.temp_sensor_data, [40 x i8] } { %struct.temp_sensor_data { i32 915, i32 900, i32 800, i32 795, i32 1000000, i32 1500000 }, [40 x i8] zeroinitializer }, align 32
@omap5430_core_temp_sensor_registers = internal global { %struct.temp_sensor_registers, [56 x i8] } { %struct.temp_sensor_registers { i32 340, i32 2048, i32 0, i32 1024, i32 1023, i32 416, i32 32, i32 16, i32 939524096, i32 8388608, i32 0, i32 0, i32 416, i32 16777215, i32 428, i32 67043328, i32 1023, i32 440, i32 67043328, i32 1023, i32 456, i32 32, i32 16, i32 524, i32 528, i32 8 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@omap5430_data = dso_local constant { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [3 x %struct.ti_temp_sensor] }, [36 x i8] } { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [3 x %struct.ti_temp_sensor] } { i32 902, ptr @omap5430_adc_to_temp, i32 540, i32 945, ptr @.str, ptr @.str, i32 3, ptr @ti_thermal_report_sensor_temperature, ptr @ti_thermal_expose_sensor, ptr @ti_thermal_remove_sensor, [3 x %struct.ti_temp_sensor] [%struct.ti_temp_sensor { ptr @omap5430_mpu_temp_sensor_data, ptr @omap5430_mpu_temp_sensor_registers, ptr @.str.1, i32 100, i32 484, ptr @ti_thermal_register_cpu_cooling, ptr @ti_thermal_unregister_cpu_cooling }, %struct.ti_temp_sensor { ptr @omap5430_gpu_temp_sensor_data, ptr @omap5430_gpu_temp_sensor_registers, ptr @.str.2, i32 464, i32 -5102, ptr null, ptr null }, %struct.ti_temp_sensor { ptr @omap5430_core_temp_sensor_data, ptr @omap5430_core_temp_sensor_registers, ptr @.str.3, i32 0, i32 0, ptr null, ptr null }] }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"omap5430_adc_to_temp\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 164, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 271, i32 17 }
@___asan_gen_.10 = private unnamed_addr constant [30 x i8] c"omap5430_mpu_temp_sensor_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 130, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [35 x i8] c"omap5430_mpu_temp_sensor_registers\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 23, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 283, i32 13 }
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"omap5430_gpu_temp_sensor_data\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 140, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [35 x i8] c"omap5430_gpu_temp_sensor_registers\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 59, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 292, i32 13 }
@___asan_gen_.28 = private unnamed_addr constant [31 x i8] c"omap5430_core_temp_sensor_data\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 150, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [36 x i8] c"omap5430_core_temp_sensor_registers\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 96, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 299, i32 13 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"omap5430_data\00", align 1
@___asan_gen_.38 = private constant [55 x i8] c"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 265, i32 30 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @omap5430_adc_to_temp, ptr @.str, ptr @omap5430_mpu_temp_sensor_data, ptr @omap5430_mpu_temp_sensor_registers, ptr @.str.1, ptr @omap5430_gpu_temp_sensor_data, ptr @omap5430_gpu_temp_sensor_registers, ptr @.str.2, ptr @omap5430_core_temp_sensor_data, ptr @omap5430_core_temp_sensor_registers, ptr @.str.3, ptr @omap5430_data], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5430_adc_to_temp to i32), i32 1624, i32 2016, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5430_mpu_temp_sensor_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5430_mpu_temp_sensor_registers to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5430_gpu_temp_sensor_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5430_gpu_temp_sensor_registers to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5430_core_temp_sensor_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5430_core_temp_sensor_registers to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5430_data to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_report_sensor_temperature(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_expose_sensor(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_remove_sensor(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_register_cpu_cooling(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_unregister_cpu_cooling(ptr noundef, i32 noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 271, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 283, i32 13}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 292, i32 13}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 299, i32 13}
!8 = !{ptr @omap5430_data, !9, !"omap5430_data", i1 false, i1 false}
!9 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 265, i32 30}
!10 = !{ptr @omap5430_adc_to_temp, !11, !"omap5430_adc_to_temp", i1 false, i1 false}
!11 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 164, i32 1}
!12 = !{ptr @omap5430_mpu_temp_sensor_data, !13, !"omap5430_mpu_temp_sensor_data", i1 false, i1 false}
!13 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 130, i32 32}
!14 = !{ptr @omap5430_mpu_temp_sensor_registers, !15, !"omap5430_mpu_temp_sensor_registers", i1 false, i1 false}
!15 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 23, i32 1}
!16 = !{ptr @omap5430_gpu_temp_sensor_data, !17, !"omap5430_gpu_temp_sensor_data", i1 false, i1 false}
!17 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 140, i32 32}
!18 = !{ptr @omap5430_gpu_temp_sensor_registers, !19, !"omap5430_gpu_temp_sensor_registers", i1 false, i1 false}
!19 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 59, i32 1}
!20 = !{ptr @omap5430_core_temp_sensor_data, !21, !"omap5430_core_temp_sensor_data", i1 false, i1 false}
!21 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 150, i32 32}
!22 = !{ptr @omap5430_core_temp_sensor_registers, !23, !"omap5430_core_temp_sensor_registers", i1 false, i1 false}
!23 = !{!"../drivers/thermal/ti-soc-thermal/omap5-thermal-data.c", i32 96, i32 1}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
