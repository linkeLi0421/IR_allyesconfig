; ModuleID = '/llk/IR_all_yes/drivers/thermal/ti-soc-thermal/omap4-thermal-data.c_pt.bc'
source_filename = "../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.temp_sensor_data = type { i32, i32, i32, i32, i32, i32 }
%struct.temp_sensor_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ti_temp_sensor = type { ptr, ptr, ptr, i32, i32, ptr, ptr }

@omap4430_adc_to_temp = internal constant { [95 x i32], [68 x i8] } { [95 x i32] [i32 -40000, i32 -38000, i32 -35000, i32 -34000, i32 -32000, i32 -30000, i32 -28000, i32 -26000, i32 -24000, i32 -22000, i32 -20000, i32 -18500, i32 -17000, i32 -15000, i32 -13500, i32 -12000, i32 -10000, i32 -8000, i32 -6500, i32 -5000, i32 -3500, i32 -1500, i32 0, i32 2000, i32 3500, i32 5000, i32 6500, i32 8500, i32 10000, i32 12000, i32 13500, i32 15000, i32 17000, i32 19000, i32 21000, i32 23000, i32 25000, i32 27000, i32 28500, i32 30000, i32 32000, i32 33500, i32 35000, i32 37000, i32 38500, i32 40000, i32 42000, i32 43500, i32 45000, i32 47000, i32 48500, i32 50000, i32 52000, i32 53500, i32 55000, i32 57000, i32 58500, i32 60000, i32 62000, i32 64000, i32 66000, i32 68000, i32 70000, i32 71500, i32 73500, i32 75000, i32 77000, i32 78500, i32 80000, i32 82000, i32 83500, i32 85000, i32 87000, i32 88500, i32 90000, i32 92000, i32 93500, i32 95000, i32 97000, i32 98500, i32 100000, i32 102000, i32 103500, i32 105000, i32 107000, i32 109000, i32 111000, i32 113000, i32 115000, i32 117000, i32 118500, i32 120000, i32 122000, i32 123500, i32 125000], [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bandgap_fclk\00", [19 x i8] zeroinitializer }, align 32
@omap4430_mpu_temp_sensor_data = internal global { %struct.temp_sensor_data, [40 x i8] } { %struct.temp_sensor_data { i32 0, i32 0, i32 0, i32 0, i32 32768, i32 32768 }, [40 x i8] zeroinitializer }, align 32
@omap4430_mpu_temp_sensor_registers = internal global { %struct.temp_sensor_registers, [56 x i8] } { %struct.temp_sensor_registers { i32 204, i32 4096, i32 512, i32 256, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 204, i32 1024, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@omap4430_data = dso_local constant { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [1 x %struct.ti_temp_sensor] }, [60 x i8] } { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [1 x %struct.ti_temp_sensor] } { i32 4200, ptr @omap4430_adc_to_temp, i32 13, i32 107, ptr @.str, ptr @.str, i32 1, ptr null, ptr @ti_thermal_expose_sensor, ptr @ti_thermal_remove_sensor, [1 x %struct.ti_temp_sensor] [%struct.ti_temp_sensor { ptr @omap4430_mpu_temp_sensor_data, ptr @omap4430_mpu_temp_sensor_registers, ptr @.str.1, i32 0, i32 20000, ptr @ti_thermal_register_cpu_cooling, ptr @ti_thermal_unregister_cpu_cooling }] }, [60 x i8] zeroinitializer }, align 32
@omap4460_adc_to_temp = internal constant { [403 x i32], [404 x i8] } { [403 x i32] [i32 -40000, i32 -40000, i32 -40000, i32 -40000, i32 -39800, i32 -39400, i32 -39000, i32 -38600, i32 -38200, i32 -37800, i32 -37300, i32 -36800, i32 -36400, i32 -36000, i32 -35600, i32 -35200, i32 -34800, i32 -34300, i32 -33800, i32 -33400, i32 -33000, i32 -32600, i32 -32200, i32 -31800, i32 -31300, i32 -30800, i32 -30400, i32 -30000, i32 -29600, i32 -29200, i32 -28700, i32 -28200, i32 -27800, i32 -27400, i32 -27000, i32 -26600, i32 -26200, i32 -25700, i32 -25200, i32 -24800, i32 -24400, i32 -24000, i32 -23600, i32 -23200, i32 -22700, i32 -22200, i32 -21800, i32 -21400, i32 -21000, i32 -20600, i32 -20200, i32 -19700, i32 -19200, i32 -18800, i32 -18400, i32 -18000, i32 -17600, i32 -17200, i32 -16700, i32 -16200, i32 -15800, i32 -15400, i32 -15000, i32 -14600, i32 -14200, i32 -13700, i32 -13200, i32 -12800, i32 -12400, i32 -12000, i32 -11600, i32 -11200, i32 -10700, i32 -10200, i32 -9800, i32 -9400, i32 -9000, i32 -8600, i32 -8200, i32 -7700, i32 -7200, i32 -6800, i32 -6400, i32 -6000, i32 -5600, i32 -5200, i32 -4800, i32 -4300, i32 -3800, i32 -3400, i32 -3000, i32 -2600, i32 -2200, i32 -1800, i32 -1300, i32 -800, i32 -400, i32 0, i32 400, i32 800, i32 1200, i32 1600, i32 2100, i32 2600, i32 3000, i32 3400, i32 3800, i32 4200, i32 4600, i32 5100, i32 5600, i32 6000, i32 6400, i32 6800, i32 7200, i32 7600, i32 8000, i32 8500, i32 9000, i32 9400, i32 9800, i32 10200, i32 10600, i32 11000, i32 11400, i32 11900, i32 12400, i32 12800, i32 13200, i32 13600, i32 14000, i32 14400, i32 14800, i32 15300, i32 15800, i32 16200, i32 16600, i32 17000, i32 17400, i32 17800, i32 18200, i32 18700, i32 19200, i32 19600, i32 20000, i32 20400, i32 20800, i32 21200, i32 21600, i32 22100, i32 22600, i32 23000, i32 23400, i32 23800, i32 24200, i32 24600, i32 25000, i32 25400, i32 25900, i32 26400, i32 26800, i32 27200, i32 27600, i32 28000, i32 28400, i32 28800, i32 29300, i32 29800, i32 30200, i32 30600, i32 31000, i32 31400, i32 31800, i32 32200, i32 32600, i32 33100, i32 33600, i32 34000, i32 34400, i32 34800, i32 35200, i32 35600, i32 36000, i32 36400, i32 36800, i32 37300, i32 37800, i32 38200, i32 38600, i32 39000, i32 39400, i32 39800, i32 40200, i32 40600, i32 41100, i32 41600, i32 42000, i32 42400, i32 42800, i32 43200, i32 43600, i32 44000, i32 44400, i32 44800, i32 45300, i32 45800, i32 46200, i32 46600, i32 47000, i32 47400, i32 47800, i32 48200, i32 48600, i32 49000, i32 49500, i32 50000, i32 50400, i32 50800, i32 51200, i32 51600, i32 52000, i32 52400, i32 52800, i32 53200, i32 53700, i32 54200, i32 54600, i32 55000, i32 55400, i32 55800, i32 56200, i32 56600, i32 57000, i32 57400, i32 57800, i32 58200, i32 58700, i32 59200, i32 59600, i32 60000, i32 60400, i32 60800, i32 61200, i32 61600, i32 62000, i32 62400, i32 62800, i32 63300, i32 63800, i32 64200, i32 64600, i32 65000, i32 65400, i32 65800, i32 66200, i32 66600, i32 67000, i32 67400, i32 67800, i32 68200, i32 68700, i32 69200, i32 69600, i32 70000, i32 70400, i32 70800, i32 71200, i32 71600, i32 72000, i32 72400, i32 72800, i32 73200, i32 73600, i32 74100, i32 74600, i32 75000, i32 75400, i32 75800, i32 76200, i32 76600, i32 77000, i32 77400, i32 77800, i32 78200, i32 78600, i32 79000, i32 79400, i32 79800, i32 80300, i32 80800, i32 81200, i32 81600, i32 82000, i32 82400, i32 82800, i32 83200, i32 83600, i32 84000, i32 84400, i32 84800, i32 85200, i32 85600, i32 86000, i32 86400, i32 86800, i32 87300, i32 87800, i32 88200, i32 88600, i32 89000, i32 89400, i32 89800, i32 90200, i32 90600, i32 91000, i32 91400, i32 91800, i32 92200, i32 92600, i32 93000, i32 93400, i32 93800, i32 94200, i32 94600, i32 95000, i32 95500, i32 96000, i32 96400, i32 96800, i32 97200, i32 97600, i32 98000, i32 98400, i32 98800, i32 99200, i32 99600, i32 100000, i32 100400, i32 100800, i32 101200, i32 101600, i32 102000, i32 102400, i32 102800, i32 103200, i32 103600, i32 104000, i32 104400, i32 104800, i32 105200, i32 105600, i32 106100, i32 106600, i32 107000, i32 107400, i32 107800, i32 108200, i32 108600, i32 109000, i32 109400, i32 109800, i32 110200, i32 110600, i32 111000, i32 111400, i32 111800, i32 112200, i32 112600, i32 113000, i32 113400, i32 113800, i32 114200, i32 114600, i32 115000, i32 115400, i32 115800, i32 116200, i32 116600, i32 117000, i32 117400, i32 117800, i32 118200, i32 118600, i32 119000, i32 119400, i32 119800, i32 120200, i32 120600, i32 121000, i32 121400, i32 121800, i32 122200, i32 122600, i32 123000, i32 123400, i32 123800, i32 124200, i32 124600, i32 124900, i32 125000, i32 125000, i32 125000, i32 125000], [404 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bandgap_ts_fclk\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_ts_ck\00", [22 x i8] zeroinitializer }, align 32
@omap4460_mpu_temp_sensor_data = internal global { %struct.temp_sensor_data, [40 x i8] } { %struct.temp_sensor_data { i32 900, i32 895, i32 800, i32 795, i32 1000000, i32 1500000 }, [40 x i8] zeroinitializer }, align 32
@omap4460_mpu_temp_sensor_registers = internal global { %struct.temp_sensor_registers, [56 x i8] } { %struct.temp_sensor_registers { i32 204, i32 8192, i32 2048, i32 1024, i32 1023, i32 280, i32 2, i32 1, i32 0, i32 0, i32 280, i32 -2147483648, i32 284, i32 16777215, i32 288, i32 67043328, i32 1023, i32 292, i32 67043328, i32 1023, i32 296, i32 2, i32 1, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@omap4460_data = dso_local constant { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [1 x %struct.ti_temp_sensor] }, [60 x i8] } { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [1 x %struct.ti_temp_sensor] } { i32 127, ptr @omap4460_adc_to_temp, i32 530, i32 932, ptr @.str.2, ptr @.str.3, i32 1, ptr @ti_thermal_report_sensor_temperature, ptr @ti_thermal_expose_sensor, ptr @ti_thermal_remove_sensor, [1 x %struct.ti_temp_sensor] [%struct.ti_temp_sensor { ptr @omap4460_mpu_temp_sensor_data, ptr @omap4460_mpu_temp_sensor_registers, ptr @.str.1, i32 1142, i32 -393, ptr @ti_thermal_register_cpu_cooling, ptr @ti_thermal_unregister_cpu_cooling }] }, [60 x i8] zeroinitializer }, align 32
@omap4470_data = dso_local constant { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [1 x %struct.ti_temp_sensor] }, [60 x i8] } { { i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, [1 x %struct.ti_temp_sensor] } { i32 127, ptr @omap4460_adc_to_temp, i32 530, i32 932, ptr @.str.2, ptr @.str.3, i32 1, ptr @ti_thermal_report_sensor_temperature, ptr @ti_thermal_expose_sensor, ptr @ti_thermal_remove_sensor, [1 x %struct.ti_temp_sensor] [%struct.ti_temp_sensor { ptr @omap4460_mpu_temp_sensor_data, ptr @omap4460_mpu_temp_sensor_registers, ptr @.str.1, i32 1063, i32 -477, ptr @ti_thermal_register_cpu_cooling, ptr @ti_thermal_unregister_cpu_cooling }] }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"omap4430_adc_to_temp\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 44, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 63, i32 17 }
@___asan_gen_.10 = private unnamed_addr constant [30 x i8] c"omap4430_mpu_temp_sensor_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 33, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [35 x i8] c"omap4430_mpu_temp_sensor_registers\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 19, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 74, i32 13 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"omap4430_data\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 58, i32 30 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"omap4460_adc_to_temp\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 135, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 193, i32 17 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 194, i32 17 }
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"omap4460_mpu_temp_sensor_data\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 121, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [35 x i8] c"omap4460_mpu_temp_sensor_registers\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 88, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"omap4460_data\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 185, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"omap4470_data\00", align 1
@___asan_gen_.41 = private constant [55 x i8] c"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 216, i32 30 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @omap4430_adc_to_temp, ptr @.str, ptr @omap4430_mpu_temp_sensor_data, ptr @omap4430_mpu_temp_sensor_registers, ptr @.str.1, ptr @omap4430_data, ptr @omap4460_adc_to_temp, ptr @.str.2, ptr @.str.3, ptr @omap4460_mpu_temp_sensor_data, ptr @omap4460_mpu_temp_sensor_registers, ptr @omap4460_data, ptr @omap4470_data], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4430_adc_to_temp to i32), i32 380, i32 448, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4430_mpu_temp_sensor_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4430_mpu_temp_sensor_registers to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4430_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4460_adc_to_temp to i32), i32 1612, i32 2016, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4460_mpu_temp_sensor_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4460_mpu_temp_sensor_registers to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4460_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4470_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_expose_sensor(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_remove_sensor(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_register_cpu_cooling(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_unregister_cpu_cooling(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_thermal_report_sensor_temperature(ptr noundef, i32 noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 63, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 74, i32 13}
!4 = !{ptr @omap4430_data, !5, !"omap4430_data", i1 false, i1 false}
!5 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 58, i32 30}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 193, i32 17}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 194, i32 17}
!10 = !{ptr @omap4460_data, !11, !"omap4460_data", i1 false, i1 false}
!11 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 185, i32 30}
!12 = !{ptr @omap4470_data, !13, !"omap4470_data", i1 false, i1 false}
!13 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 216, i32 30}
!14 = !{ptr @omap4430_adc_to_temp, !15, !"omap4430_adc_to_temp", i1 false, i1 false}
!15 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 44, i32 1}
!16 = !{ptr @omap4430_mpu_temp_sensor_data, !17, !"omap4430_mpu_temp_sensor_data", i1 false, i1 false}
!17 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 33, i32 32}
!18 = !{ptr @omap4430_mpu_temp_sensor_registers, !19, !"omap4430_mpu_temp_sensor_registers", i1 false, i1 false}
!19 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 19, i32 1}
!20 = !{ptr @omap4460_adc_to_temp, !21, !"omap4460_adc_to_temp", i1 false, i1 false}
!21 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 135, i32 1}
!22 = !{ptr @omap4460_mpu_temp_sensor_data, !23, !"omap4460_mpu_temp_sensor_data", i1 false, i1 false}
!23 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 121, i32 32}
!24 = !{ptr @omap4460_mpu_temp_sensor_registers, !25, !"omap4460_mpu_temp_sensor_registers", i1 false, i1 false}
!25 = !{!"../drivers/thermal/ti-soc-thermal/omap4-thermal-data.c", i32 88, i32 1}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
