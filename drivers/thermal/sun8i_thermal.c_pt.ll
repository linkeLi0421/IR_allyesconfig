; ModuleID = '/llk/IR_all_yes/drivers/thermal/sun8i_thermal.c_pt.bc'
source_filename = "../drivers/thermal/sun8i_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ths_thermal_chip = type { i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ths_device = type { ptr, ptr, ptr, ptr, ptr, ptr, [4 x %struct.tsensor] }
%struct.tsensor = type { ptr, ptr, i32 }

@__initcall__kmod_sun8i_thermal__187_651_ths_driver_init6 = internal global ptr @ths_driver_init, section ".initcall6.init", align 4
@ths_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun8i_ths_probe, ptr @sun8i_ths_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ths_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ths_driver_exit = internal global ptr @ths_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [66 x i8] c"sun8i_thermal.description=Thermal sensor driver for Allwinner SOC\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [49 x i8] c"sun8i_thermal.file=drivers/thermal/sun8i_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [29 x i8] c"sun8i_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sun8i-thermal\00", [18 x i8] zeroinitializer }, align 32
@of_ths_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-ths\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_ths }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-ths\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_ths }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-ths\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_ths }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-ths\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_ths }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a100-ths\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a100_ths }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-ths\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h5_ths }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-ths\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_ths }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ths\00", [28 x i8] zeroinitializer }, align 32
@sun8i_ths_resource_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sun8i_thermal:333:(&config)->lock\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"calibration\00", [20 x i8] zeroinitializer }, align 32
@ths_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @sun8i_ths_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sun8i_ths_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 480, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to add hwmon sysfs attributes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun8i_ths_register\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/thermal/sun8i_thermal.c\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ths_register._entry_ptr = internal global ptr @sun8i_ths_register._entry, section ".printk_index", align 4
@sun8i_a83t_ths = internal constant { %struct.ths_thermal_chip, [56 x i8] } { %struct.ths_thermal_chip { i8 0, i8 0, i32 3, i32 191668, i32 705, i32 0, i32 128, ptr @sun8i_h3_ths_calibrate, ptr @sun8i_h3_thermal_init, ptr @sun8i_h3_irq_ack, ptr @sun8i_ths_calc_temp }, [56 x i8] zeroinitializer }, align 32
@sun8i_h3_ths = internal constant { %struct.ths_thermal_chip, [56 x i8] } { %struct.ths_thermal_chip { i8 1, i8 1, i32 1, i32 217000, i32 1211, i32 0, i32 128, ptr @sun8i_h3_ths_calibrate, ptr @sun8i_h3_thermal_init, ptr @sun8i_h3_irq_ack, ptr @sun8i_ths_calc_temp }, [56 x i8] zeroinitializer }, align 32
@sun8i_r40_ths = internal constant { %struct.ths_thermal_chip, [56 x i8] } { %struct.ths_thermal_chip { i8 1, i8 1, i32 2, i32 251086, i32 1130, i32 0, i32 128, ptr @sun8i_h3_ths_calibrate, ptr @sun8i_h3_thermal_init, ptr @sun8i_h3_irq_ack, ptr @sun8i_ths_calc_temp }, [56 x i8] zeroinitializer }, align 32
@sun50i_a64_ths = internal constant { %struct.ths_thermal_chip, [56 x i8] } { %struct.ths_thermal_chip { i8 1, i8 1, i32 3, i32 260890, i32 1170, i32 0, i32 128, ptr @sun8i_h3_ths_calibrate, ptr @sun8i_h3_thermal_init, ptr @sun8i_h3_irq_ack, ptr @sun8i_ths_calc_temp }, [56 x i8] zeroinitializer }, align 32
@sun50i_a100_ths = internal constant { %struct.ths_thermal_chip, [56 x i8] } { %struct.ths_thermal_chip { i8 0, i8 1, i32 3, i32 187744, i32 672, i32 8000, i32 192, ptr @sun50i_h6_ths_calibrate, ptr @sun50i_h6_thermal_init, ptr @sun50i_h6_irq_ack, ptr @sun8i_ths_calc_temp }, [56 x i8] zeroinitializer }, align 32
@sun50i_h5_ths = internal constant { %struct.ths_thermal_chip, [56 x i8] } { %struct.ths_thermal_chip { i8 1, i8 1, i32 2, i32 0, i32 0, i32 0, i32 128, ptr @sun8i_h3_ths_calibrate, ptr @sun8i_h3_thermal_init, ptr @sun8i_h3_irq_ack, ptr @sun50i_h5_calc_temp }, [56 x i8] zeroinitializer }, align 32
@sun50i_h6_ths = internal constant { %struct.ths_thermal_chip, [56 x i8] } { %struct.ths_thermal_chip { i8 0, i8 1, i32 2, i32 187744, i32 672, i32 7000, i32 192, ptr @sun50i_h6_ths_calibrate, ptr @sun50i_h6_thermal_init, ptr @sun50i_h6_irq_ack, ptr @sun8i_ths_calc_temp }, [56 x i8] zeroinitializer }, align 32
@sun50i_h6_ths_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 267, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sensor%d is not calibrated.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun50i_h6_ths_calibrate\00", [40 x i8] zeroinitializer }, align 32
@sun50i_h6_ths_calibrate._entry_ptr = internal global ptr @sun50i_h6_ths_calibrate._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"ths_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 643, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 647, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"of_ths_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 631, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 526, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 142, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 333, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 342, i32 45 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 348, i32 45 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 289, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [8 x i8] c"ths_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 138, i32 48 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 479, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"sun8i_a83t_ths\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 544, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"sun8i_h3_ths\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 555, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"sun8i_r40_ths\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 568, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"sun50i_a64_ths\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 581, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"sun50i_a100_ths\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 594, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"sun50i_h5_ths\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 607, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"sun50i_h6_ths\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 618, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [35 x i8] c"../drivers/thermal/sun8i_thermal.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 267, i32 4 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_ths_driver_exit, ptr @__initcall__kmod_sun8i_thermal__187_651_ths_driver_init6, ptr @sun50i_h6_ths_calibrate._entry, ptr @sun50i_h6_ths_calibrate._entry_ptr, ptr @sun8i_ths_register._entry, ptr @sun8i_ths_register._entry_ptr, ptr @ths_driver_exit, ptr @ths_driver, ptr @.str, ptr @of_ths_match, ptr @.str.1, ptr @sun8i_ths_resource_init._key, ptr @config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ths_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sun8i_a83t_ths, ptr @sun8i_h3_ths, ptr @sun8i_r40_ths, ptr @sun50i_a64_ths, ptr @sun50i_a100_ths, ptr @sun50i_h5_ths, ptr @sun50i_h6_ths, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ths_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ths_resource_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ths_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ths_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_ths to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_ths to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r40_ths to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_ths to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a100_ths to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h5_ths to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_ths to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_ths_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ths_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ths_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ths_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ths_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ths_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.ths_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %call.i, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 -16
  %call.i55 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr.i, i32 noundef 0) #8
  %cmp.i.i = icmp ugt ptr %call.i55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end8.sun8i_ths_resource_init.exit_crit_edge, label %if.end.i

if.end8.sun8i_ths_resource_init.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun8i_ths_resource_init.exit

if.end.i:                                         ; preds = %if.end8
  %call5.i = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %call.i55, ptr noundef nonnull @config, ptr noundef nonnull @sun8i_ths_resource_init._key, ptr noundef nonnull @.str.2) #8
  %regmap.i = getelementptr inbounds %struct.ths_device, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i, ptr %regmap.i, align 4
  %cmp.i106.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106.i, label %if.end.i.sun8i_ths_resource_init.exit_crit_edge, label %if.end11.i

if.end.i.sun8i_ths_resource_init.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun8i_ths_resource_init.exit

if.end11.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %has_bus_clk_reset.i = getelementptr inbounds %struct.ths_thermal_chip, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %has_bus_clk_reset.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_bus_clk_reset.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end11.i.if.end28.i_crit_edge, label %if.then12.i

if.end11.i.if.end28.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then12.i:                                      ; preds = %if.end11.i
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %reset.i = getelementptr inbounds %struct.ths_device, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i.i, ptr %reset.i, align 4
  %cmp.i107.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107.i, label %if.then12.i.sun8i_ths_resource_init.exit_crit_edge, label %if.end19.i

if.then12.i.sun8i_ths_resource_init.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun8i_ths_resource_init.exit

if.end19.i:                                       ; preds = %if.then12.i
  %call21.i = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.3) #8
  %bus_clk.i = getelementptr inbounds %struct.ths_device, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21.i, ptr %bus_clk.i, align 4
  %cmp.i108.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.i, label %if.end19.i.sun8i_ths_resource_init.exit_crit_edge, label %if.end19.i.if.end28.i_crit_edge

if.end19.i.if.end28.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.end19.i.sun8i_ths_resource_init.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun8i_ths_resource_init.exit

if.end28.i:                                       ; preds = %if.end19.i.if.end28.i_crit_edge, %if.end11.i.if.end28.i_crit_edge
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not.i = icmp eq i8 %15, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end40.i_crit_edge, label %if.then31.i

if.end28.i.if.end40.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then31.i:                                      ; preds = %if.end28.i
  %call33.i = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.4) #8
  %mod_clk.i = getelementptr inbounds %struct.ths_device, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %mod_clk.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call33.i, ptr %mod_clk.i, align 4
  %cmp.i109.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109.i, label %if.then31.i.sun8i_ths_resource_init.exit_crit_edge, label %if.then31.i.if.end40.i_crit_edge

if.then31.i.if.end40.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then31.i.sun8i_ths_resource_init.exit_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sun8i_ths_resource_init.exit

if.end40.i:                                       ; preds = %if.then31.i.if.end40.i_crit_edge, %if.end28.i.if.end40.i_crit_edge
  %reset41.i = getelementptr inbounds %struct.ths_device, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %reset41.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset41.i, align 4
  %call42.i = tail call i32 @reset_control_deassert(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end40.i.cleanup_crit_edge

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45.i:                                       ; preds = %if.end40.i
  %bus_clk46.i = getelementptr inbounds %struct.ths_device, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %bus_clk46.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_clk46.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end45.i.assert_reset.i_crit_edge

if.end45.i.assert_reset.i_crit_edge:              ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %assert_reset.i

if.end.i.i:                                       ; preds = %if.end45.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end50.i, label %if.end.i.i.assert_reset.sink.split.i_crit_edge

if.end.i.i.assert_reset.sink.split.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %assert_reset.sink.split.i

if.end50.i:                                       ; preds = %if.end.i.i
  %mod_clk51.i = getelementptr inbounds %struct.ths_device, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %mod_clk51.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mod_clk51.i, align 4
  %call52.i = tail call i32 @clk_set_rate(ptr noundef %22, i32 noundef 24000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end50.i.bus_disable.i_crit_edge

if.end50.i.bus_disable.i_crit_edge:               ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bus_disable.i

if.end55.i:                                       ; preds = %if.end50.i
  %23 = ptrtoint ptr %mod_clk51.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mod_clk51.i, align 4
  %call57.i = tail call fastcc i32 @clk_prepare_enable(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end55.i.bus_disable.i_crit_edge

if.end55.i.bus_disable.i_crit_edge:               ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bus_disable.i

if.end60.i:                                       ; preds = %if.end55.i
  %call61.i = tail call fastcc i32 @sun8i_ths_calibrate(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end12, label %mod_disable.i

mod_disable.i:                                    ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %mod_clk51.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mod_clk51.i, align 4
  tail call void @clk_disable(ptr noundef %26) #8
  tail call void @clk_unprepare(ptr noundef %26) #8
  br label %bus_disable.i

bus_disable.i:                                    ; preds = %mod_disable.i, %if.end55.i.bus_disable.i_crit_edge, %if.end50.i.bus_disable.i_crit_edge
  %ret.0.i = phi i32 [ %call52.i, %if.end50.i.bus_disable.i_crit_edge ], [ %call57.i, %if.end55.i.bus_disable.i_crit_edge ], [ %call61.i, %mod_disable.i ]
  %27 = ptrtoint ptr %bus_clk46.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus_clk46.i, align 4
  tail call void @clk_disable(ptr noundef %28) #8
  br label %assert_reset.sink.split.i

assert_reset.sink.split.i:                        ; preds = %bus_disable.i, %if.end.i.i.assert_reset.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %28, %bus_disable.i ], [ %20, %if.end.i.i.assert_reset.sink.split.i_crit_edge ]
  %ret.1.ph.i = phi i32 [ %ret.0.i, %bus_disable.i ], [ %call1.i.i, %if.end.i.i.assert_reset.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #8
  br label %assert_reset.i

assert_reset.i:                                   ; preds = %assert_reset.sink.split.i, %if.end45.i.assert_reset.i_crit_edge
  %ret.1.i = phi i32 [ %call.i.i, %if.end45.i.assert_reset.i_crit_edge ], [ %ret.1.ph.i, %assert_reset.sink.split.i ]
  %29 = ptrtoint ptr %reset41.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reset41.i, align 4
  %call68.i = tail call i32 @reset_control_assert(ptr noundef %30) #8
  br label %cleanup

sun8i_ths_resource_init.exit:                     ; preds = %if.then31.i.sun8i_ths_resource_init.exit_crit_edge, %if.end19.i.sun8i_ths_resource_init.exit_crit_edge, %if.then12.i.sun8i_ths_resource_init.exit_crit_edge, %if.end.i.sun8i_ths_resource_init.exit_crit_edge, %if.end8.sun8i_ths_resource_init.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i55, %if.end8.sun8i_ths_resource_init.exit_crit_edge ], [ %call5.i, %if.end.i.sun8i_ths_resource_init.exit_crit_edge ], [ %call.i.i.i, %if.then12.i.sun8i_ths_resource_init.exit_crit_edge ], [ %call21.i, %if.end19.i.sun8i_ths_resource_init.exit_crit_edge ], [ %call33.i, %if.then31.i.sun8i_ths_resource_init.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end60.i
  %call13 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %init = getelementptr inbounds %struct.ths_thermal_chip, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init, align 4
  %call17 = tail call i32 %34(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %sensor_num43.i = getelementptr inbounds %struct.ths_thermal_chip, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %sensor_num43.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sensor_num43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp44.i = icmp sgt i32 %38, 0
  br i1 %cmp44.i, label %if.end20.for.body.i_crit_edge, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end20.for.body.i_crit_edge:                    ; preds = %if.end20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end20.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end20.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ths_device, ptr %call.i, i32 0, i32 6, i32 %i.045.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %id.i = getelementptr %struct.ths_device, ptr %call.i, i32 0, i32 6, i32 %i.045.i, i32 2
  %40 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %i.045.i, ptr %id.i, align 4
  %41 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev2, align 4
  %call.i56 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %42, i32 noundef %i.045.i, ptr noundef %arrayidx.i, ptr noundef nonnull @ths_ops) #8
  %tzd.i = getelementptr %struct.ths_device, ptr %call.i, i32 0, i32 6, i32 %i.045.i, i32 1
  %43 = ptrtoint ptr %tzd.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i56, ptr %tzd.i, align 4
  %cmp.i.i57 = icmp ugt ptr %call.i56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i57, label %sun8i_ths_register.exit, label %if.end.i60

if.end.i60:                                       ; preds = %for.body.i
  %call19.i = tail call i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %call.i56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not.i59 = icmp eq i32 %call19.i, 0
  br i1 %tobool.not.i59, label %if.end.i60.for.inc.i_crit_edge, label %do.end.i

if.end.i60.for.inc.i_crit_edge:                   ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.6) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %if.end.i60.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %sensor_num.i = getelementptr inbounds %struct.ths_thermal_chip, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %sensor_num.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sensor_num.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %49
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end24_crit_edge

for.inc.i.if.end24_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sun8i_ths_register.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %call.i56 to i32
  br label %cleanup

if.end24:                                         ; preds = %for.inc.i.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  %call25 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call13, ptr noundef null, ptr noundef nonnull @sun8i_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %sun8i_ths_register.exit, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sun8i_ths_resource_init.exit, %assert_reset.i, %if.end40.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i, %sun8i_ths_resource_init.exit ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ %50, %sun8i_ths_register.exit ], [ %call25, %if.end24 ], [ %call42.i, %if.end40.i.cleanup_crit_edge ], [ %ret.1.i, %assert_reset.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ths_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mod_clk = getelementptr inbounds %struct.ths_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %bus_clk = getelementptr inbounds %struct.ths_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %reset = getelementptr inbounds %struct.ths_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %irq_bitmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_bitmap) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %irq_ack = getelementptr inbounds %struct.ths_thermal_chip, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_ack, align 4
  %call = tail call i32 %3(ptr noundef %data) #8
  %4 = ptrtoint ptr %irq_bitmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %irq_bitmap, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %sensor_num = getelementptr inbounds %struct.ths_thermal_chip, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sensor_num, align 4
  %call2 = call i32 @_find_next_bit_be(ptr noundef nonnull %irq_bitmap, i32 noundef %8, i32 noundef 0) #8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %sensor_num415 = getelementptr inbounds %struct.ths_thermal_chip, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %sensor_num415 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sensor_num415, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %12)
  %cmp16 = icmp slt i32 %call2, %12
  br i1 %cmp16, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %call7, %for.body.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %tzd = getelementptr %struct.ths_device, ptr %data, i32 0, i32 6, i32 %i.017, i32 1
  %13 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tzd, align 4
  call void @thermal_zone_device_update(ptr noundef %14, i32 noundef 0) #8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %sensor_num6 = getelementptr inbounds %struct.ths_thermal_chip, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %sensor_num6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sensor_num6, align 4
  %add = add nsw i32 %i.017, 1
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %irq_bitmap, i32 noundef %18, i32 noundef %add) #8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %sensor_num4 = getelementptr inbounds %struct.ths_thermal_chip, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %sensor_num4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sensor_num4, align 4
  %cmp = icmp slt i32 %call7, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_bitmap) #8
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_ths_calibrate(ptr noundef %tmdev) unnamed_addr #2 align 64 {
entry:
  %callen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ths_device, ptr %tmdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %callen) #8
  %2 = ptrtoint ptr %callen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %callen, align 4, !annotation !66
  %call = tail call ptr @devm_nvmem_cell_get(ptr noundef %1, ptr noundef nonnull @.str.5) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = call ptr @nvmem_cell_read(ptr noundef %call, ptr noundef nonnull %callen) #8
  %cmp.i23 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call6 to i32
  br label %out

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmdev, align 4
  %calibrate = getelementptr inbounds %struct.ths_thermal_chip, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %calibrate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %calibrate, align 4
  %8 = ptrtoint ptr %callen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %callen, align 4
  %call11 = call i32 %7(ptr noundef %tmdev, ptr noundef %call6, i32 noundef %9) #8
  call void @kfree(ptr noundef %call6) #8
  br label %out

out:                                              ; preds = %if.end10, %if.then8, %if.then.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then.out_crit_edge ], [ %3, %if.then8 ], [ 0, %if.end10 ]
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -517, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %callen) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ths_get_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %regmap = getelementptr inbounds %struct.ths_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %temp_data_base = getelementptr inbounds %struct.ths_thermal_chip, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %temp_data_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp_data_base, align 4
  %id = getelementptr inbounds %struct.tsensor, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %mul = shl i32 %10, 2
  %add = add i32 %mul, %8
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %val) #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %calc_temp = getelementptr inbounds %struct.ths_thermal_chip, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %calc_temp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %calc_temp, align 4
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %call4 = call i32 %16(ptr noundef %1, i32 noundef %18, i32 noundef %12) #8
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call4, ptr %temp, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %ft_deviation = getelementptr inbounds %struct.ths_thermal_chip, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %ft_deviation to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ft_deviation, align 4
  %add6 = add i32 %23, %call4
  store i32 %add6, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_h3_ths_calibrate(ptr nocapture noundef readonly %tmdev, ptr nocapture noundef readonly %caldata, i32 noundef %callen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %caldata to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %caldata, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmdev, align 4
  %sensor_num = getelementptr inbounds %struct.ths_thermal_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sensor_num, align 4
  %mul = shl i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %callen)
  %cmp = icmp sgt i32 %mul, %callen
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmdev, align 4
  %sensor_num216 = getelementptr inbounds %struct.ths_thermal_chip, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %sensor_num216 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sensor_num216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp317 = icmp sgt i32 %9, 0
  br i1 %cmp317, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regmap = getelementptr inbounds %struct.ths_device, ptr %tmdev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %rem = shl i32 %i.018, 4
  %shl = and i32 %rem, 16
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = shl nuw i32 %i.018, 1
  %13 = add i32 %12, 116
  %add = and i32 %13, -4
  %shl5 = shl nuw nsw i32 4095, %shl
  %arrayidx6 = getelementptr i16, ptr %caldata, i32 %i.018
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx6, align 2
  %conv = zext i16 %15 to i32
  %shl7 = shl nuw i32 %conv, %shl
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add, i32 noundef %shl5, i32 noundef %shl7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %inc = add nuw nsw i32 %i.018, 1
  %16 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tmdev, align 4
  %sensor_num2 = getelementptr inbounds %struct.ths_thermal_chip, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %sensor_num2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sensor_num2, align 4
  %cmp3 = icmp slt i32 %inc, %19
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_h3_thermal_init(ptr nocapture noundef readonly %tmdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.ths_device, ptr %tmdev, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 112, i32 noundef 5) #8
  %2 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmdev, align 4
  %sensor_num = getelementptr inbounds %struct.ths_thermal_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sensor_num, align 4
  %sub = sub i32 24, %5
  %shr = lshr i32 -1, %sub
  %and = and i32 %shr, -1495296
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %or = or i32 %and, 1495040
  %call3 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 68, i32 noundef %or) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef 479) #8
  %10 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tmdev, align 4
  %sensor_num7 = getelementptr inbounds %struct.ths_thermal_chip, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %sensor_num7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sensor_num7, align 4
  %sub9 = sub i32 32, %13
  %shr10 = lshr i32 -1, %sub9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %or14 = or i32 %shr10, 31391744
  %call15 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 64, i32 noundef %or14) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_h3_irq_ack(ptr nocapture noundef readonly %tmdev) #2 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !66
  %regmap = getelementptr inbounds %struct.ths_device, ptr %tmdev, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 72, ptr noundef nonnull %state) #8
  %3 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tmdev, align 4
  %sensor_num13 = getelementptr inbounds %struct.ths_thermal_chip, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %sensor_num13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sensor_num13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp14 = icmp sgt i32 %6, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %or.i.i1215 = phi i32 [ %or.i.i11, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %shl = shl i32 256, %i.016
  %and = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_write(ptr noundef %10, i32 noundef 72, i32 noundef %shl) #8
  %rem.i.i = and i32 %i.016, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %or.i.i = or i32 %or.i.i1215, %shl.i.i
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %or.i.i11 = phi i32 [ %or.i.i1215, %for.body.for.inc_crit_edge ], [ %or.i.i, %if.then ]
  %inc = add nuw nsw i32 %i.016, 1
  %11 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tmdev, align 4
  %sensor_num = getelementptr inbounds %struct.ths_thermal_chip, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sensor_num, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %or.i.i12.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or.i.i11, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #8
  ret i32 %or.i.i12.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun8i_ths_calc_temp(ptr nocapture noundef readonly %tmdev, i32 noundef %id, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmdev, align 4
  %offset = getelementptr inbounds %struct.ths_thermal_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %scale = getelementptr inbounds %struct.ths_thermal_chip, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scale, align 4
  %mul = mul i32 %5, %reg
  %div.neg = sdiv i32 %mul, -10
  %sub = add i32 %div.neg, %3
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_h6_ths_calibrate(ptr noundef %tmdev, ptr nocapture noundef readonly %caldata, i32 noundef %callen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ths_device, ptr %tmdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %caldata to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %caldata, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup29_crit_edge, label %lor.lhs.false

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup29

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmdev, align 4
  %sensor_num = getelementptr inbounds %struct.ths_thermal_chip, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_num, align 4
  %mul = shl i32 %7, 1
  %add = add i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %callen)
  %cmp = icmp sgt i32 %add, %callen
  br i1 %cmp, label %lor.lhs.false.cleanup29_crit_edge, label %if.end

lor.lhs.false.cleanup29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup29

if.end:                                           ; preds = %lor.lhs.false
  %8 = and i16 %3, 4095
  %and = zext i16 %8 to i32
  %mul3.neg = mul nsw i32 %and, -100
  %9 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tmdev, align 4
  %sensor_num549 = getelementptr inbounds %struct.ths_thermal_chip, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %sensor_num549 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sensor_num549, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp650 = icmp sgt i32 %12, 0
  br i1 %cmp650, label %for.body.lr.ph, label %if.end.cleanup29_crit_edge

if.end.cleanup29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup29

for.body.lr.ph:                                   ; preds = %if.end
  %regmap = getelementptr inbounds %struct.ths_device, ptr %tmdev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %13 = phi ptr [ %10, %for.body.lr.ph ], [ %28, %cleanup.for.body_crit_edge ]
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %add8, %cleanup.for.body_crit_edge ]
  %add8 = add nuw nsw i32 %i.051, 1
  %arrayidx9 = getelementptr i16, ptr %caldata, i32 %add8
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx9, align 2
  %16 = and i16 %15, 4095
  %and11 = zext i16 %16 to i32
  %calc_temp = getelementptr inbounds %struct.ths_thermal_chip, ptr %13, i32 0, i32 10
  %17 = ptrtoint ptr %calc_temp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %calc_temp, align 4
  %call = tail call i32 %18(ptr noundef %tmdev, i32 noundef %i.051, i32 noundef %and11) #8
  %sub = add i32 %call, %mul3.neg
  %mul13 = mul i32 %sub, 10
  %19 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tmdev, align 4
  %scale = getelementptr inbounds %struct.ths_thermal_chip, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scale, align 4
  %div = sdiv i32 %mul13, %22
  %sub15 = sub i32 2048, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub15)
  %tobool17.not = icmp ult i32 %sub15, 4096
  br i1 %tobool17.not, label %if.end19, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %i.051) #11
  br label %cleanup

if.end19:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %rem = shl i32 %i.051, 4
  %mul20 = and i32 %rem, 16
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = shl nuw i32 %i.051, 1
  %26 = add i32 %25, 160
  %add23 = and i32 %26, -4
  %shl = shl nuw nsw i32 4095, %mul20
  %shl24 = shl nuw nsw i32 %sub15, %mul20
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %add23, i32 noundef %shl, i32 noundef %shl24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end
  %27 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tmdev, align 4
  %sensor_num5 = getelementptr inbounds %struct.ths_thermal_chip, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %sensor_num5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sensor_num5, align 4
  %cmp6 = icmp slt i32 %add8, %30
  br i1 %cmp6, label %cleanup.for.body_crit_edge, label %cleanup.cleanup29_crit_edge

cleanup.cleanup29_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup29

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup29:                                        ; preds = %cleanup.cleanup29_crit_edge, %if.end.cleanup29_crit_edge, %lor.lhs.false.cleanup29_crit_edge, %entry.cleanup29_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup29_crit_edge ], [ -22, %entry.cleanup29_crit_edge ], [ 0, %if.end.cleanup29_crit_edge ], [ 0, %cleanup.cleanup29_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_h6_thermal_init(ptr nocapture noundef readonly %tmdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.ths_device, ptr %tmdev, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 0, i32 noundef 31391791) #8
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 48, i32 noundef 5) #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 8, i32 noundef 1495040) #8
  %6 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmdev, align 4
  %sensor_num = getelementptr inbounds %struct.ths_thermal_chip, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sensor_num, align 4
  %sub5 = sub i32 32, %9
  %shr = lshr i32 -1, %sub5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 4, i32 noundef %shr) #8
  %12 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tmdev, align 4
  %sensor_num9 = getelementptr inbounds %struct.ths_thermal_chip, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %sensor_num9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sensor_num9, align 4
  %sub11 = sub i32 32, %15
  %shr12 = lshr i32 -1, %sub11
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 16, i32 noundef %shr12) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_h6_irq_ack(ptr nocapture noundef readonly %tmdev) #2 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #8
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !66
  %regmap = getelementptr inbounds %struct.ths_device, ptr %tmdev, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 32, ptr noundef nonnull %state) #8
  %3 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tmdev, align 4
  %sensor_num12 = getelementptr inbounds %struct.ths_thermal_chip, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %sensor_num12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sensor_num12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp13 = icmp sgt i32 %6, 0
  br i1 %cmp13, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %or.i.i1114 = phi i32 [ %or.i.i10, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %shl = shl nuw i32 1, %i.015
  %and = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_write(ptr noundef %10, i32 noundef 32, i32 noundef %shl) #8
  %rem.i.i = and i32 %i.015, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %or.i.i = or i32 %or.i.i1114, %shl.i.i
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %or.i.i10 = phi i32 [ %or.i.i1114, %for.body.for.inc_crit_edge ], [ %or.i.i, %if.then ]
  %inc = add nuw nsw i32 %i.015, 1
  %11 = ptrtoint ptr %tmdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tmdev, align 4
  %sensor_num = getelementptr inbounds %struct.ths_thermal_chip, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sensor_num, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %or.i.i11.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or.i.i10, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #8
  ret i32 %or.i.i11.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun50i_h5_calc_temp(ptr nocapture noundef readnone %tmdev, i32 noundef %id, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %reg)
  %cmp = icmp sgt i32 %reg, 1279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool.not = icmp eq i32 %id, 0
  %. = select i1 %tobool.not, i32 -1452, i32 -1590
  %.13 = select i1 %tobool.not, i32 259000, i32 276000
  %.sink12 = select i1 %cmp, i32 -1191, i32 %.
  %.sink = select i1 %cmp, i32 223000, i32 %.13
  %mul6 = mul i32 %.sink12, %reg
  %div7 = sdiv i32 %mul6, 10
  %add8 = add nsw i32 %div7, %.sink
  ret i32 %add8
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_sun8i_thermal__187_651_ths_driver_init6, !1, !"__initcall__kmod_sun8i_thermal__187_651_ths_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/sun8i_thermal.c", i32 651, i32 1}
!2 = !{ptr @__exitcall_ths_driver_exit, !1, !"__exitcall_ths_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/thermal/sun8i_thermal.c", i32 653, i32 1}
!5 = !{ptr @__UNIQUE_ID_file189, !6, !"__UNIQUE_ID_file189", i1 false, i1 false}
!6 = !{!"../drivers/thermal/sun8i_thermal.c", i32 654, i32 1}
!7 = !{ptr @__UNIQUE_ID_license190, !6, !"__UNIQUE_ID_license190", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/sun8i_thermal.c", i32 647, i32 11}
!10 = !{ptr @ths_driver, !11, !"ths_driver", i1 false, i1 false}
!11 = !{!"../drivers/thermal/sun8i_thermal.c", i32 643, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/sun8i_thermal.c", i32 526, i32 20}
!14 = !{ptr @sun8i_ths_resource_init._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/thermal/sun8i_thermal.c", i32 333, i32 18}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thermal/sun8i_thermal.c", i32 342, i32 45}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thermal/sun8i_thermal.c", i32 348, i32 45}
!21 = !{ptr @config, !22, !"config", i1 false, i1 false}
!22 = !{!"../drivers/thermal/sun8i_thermal.c", i32 142, i32 35}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/thermal/sun8i_thermal.c", i32 289, i32 37}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/thermal/sun8i_thermal.c", i32 479, i32 4}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sun8i_ths_register._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @sun8i_ths_register._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ths_ops, !34, !"ths_ops", i1 false, i1 false}
!34 = !{!"../drivers/thermal/sun8i_thermal.c", i32 138, i32 48}
!35 = !{ptr @of_ths_match, !36, !"of_ths_match", i1 false, i1 false}
!36 = !{!"../drivers/thermal/sun8i_thermal.c", i32 631, i32 34}
!37 = !{ptr @sun8i_a83t_ths, !38, !"sun8i_a83t_ths", i1 false, i1 false}
!38 = !{!"../drivers/thermal/sun8i_thermal.c", i32 544, i32 38}
!39 = !{ptr @sun8i_h3_ths, !40, !"sun8i_h3_ths", i1 false, i1 false}
!40 = !{!"../drivers/thermal/sun8i_thermal.c", i32 555, i32 38}
!41 = !{ptr @sun8i_r40_ths, !42, !"sun8i_r40_ths", i1 false, i1 false}
!42 = !{!"../drivers/thermal/sun8i_thermal.c", i32 568, i32 38}
!43 = !{ptr @sun50i_a64_ths, !44, !"sun50i_a64_ths", i1 false, i1 false}
!44 = !{!"../drivers/thermal/sun8i_thermal.c", i32 581, i32 38}
!45 = !{ptr @sun50i_a100_ths, !46, !"sun50i_a100_ths", i1 false, i1 false}
!46 = !{!"../drivers/thermal/sun8i_thermal.c", i32 594, i32 38}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/thermal/sun8i_thermal.c", i32 267, i32 4}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sun50i_h6_ths_calibrate._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @sun50i_h6_ths_calibrate._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @sun50i_h5_ths, !53, !"sun50i_h5_ths", i1 false, i1 false}
!53 = !{!"../drivers/thermal/sun8i_thermal.c", i32 607, i32 38}
!54 = !{ptr @sun50i_h6_ths, !55, !"sun50i_h6_ths", i1 false, i1 false}
!55 = !{!"../drivers/thermal/sun8i_thermal.c", i32 618, i32 38}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i8 0, i8 2}
!66 = !{!"auto-init"}
