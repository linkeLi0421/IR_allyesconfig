; ModuleID = '/llk/IR_all_yes/drivers/thermal/amlogic_thermal.c_pt.bc'
source_filename = "../drivers/thermal/amlogic_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.amlogic_thermal_data = type { i32, ptr, ptr }
%struct.amlogic_thermal_soc_calib_data = type { i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.amlogic_thermal = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_amlogic_thermal__175_335_amlogic_thermal_driver_init6 = internal global ptr @amlogic_thermal_driver_init, section ".initcall6.init", align 4
@amlogic_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @amlogic_thermal_probe, ptr @amlogic_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_amlogic_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amlogic_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_amlogic_thermal_driver_exit = internal global ptr @amlogic_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author176 = internal constant [66 x i8] c"amlogic_thermal.author=Guillaume La Roque <glaroque@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [51 x i8] c"amlogic_thermal.description=Amlogic thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [53 x i8] c"amlogic_thermal.file=drivers/thermal/amlogic_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [31 x i8] c"amlogic_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amlogic_thermal\00", [16 x i8] zeroinitializer }, align 32
@of_amlogic_thermal_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-ddr-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @amlogic_thermal_g12a_ddr_param }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-cpu-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @amlogic_thermal_g12a_cpu_param }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@amlogic_thermal_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @amlogic_thermal_suspend, ptr @amlogic_thermal_resume, ptr @amlogic_thermal_suspend, ptr @amlogic_thermal_resume, ptr @amlogic_thermal_suspend, ptr @amlogic_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@amlogic_thermal_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amlogic_thermal:261:(pdata->data->regmap_config)->lock\00", [41 x i8] zeroinitializer }, align 32
@amlogic_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 268, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amlogic_thermal_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/thermal/amlogic_thermal.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amlogic_thermal_probe._entry_ptr = internal global ptr @amlogic_thermal_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amlogic,ao-secure\00", [46 x i8] zeroinitializer }, align 32
@amlogic_thermal_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 275, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"syscon regmap lookup failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@amlogic_thermal_probe._entry_ptr.10 = internal global ptr @amlogic_thermal_probe._entry.8, section ".printk_index", align 4
@amlogic_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @amlogic_thermal_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@amlogic_thermal_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 285, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register tsensor: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@amlogic_thermal_probe._entry_ptr.13 = internal global ptr @amlogic_thermal_probe._entry.11, section ".printk_index", align 4
@amlogic_thermal_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 290, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to add hwmon sysfs attributes\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@amlogic_thermal_probe._entry_ptr.17 = internal global ptr @amlogic_thermal_probe._entry.14, section ".printk_index", align 4
@amlogic_thermal_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"tsensor thermal calibration not supported: 0x%x!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amlogic_thermal_initialize\00", [37 x i8] zeroinitializer }, align 32
@amlogic_thermal_initialize._entry_ptr = internal global ptr @amlogic_thermal_initialize._entry, section ".printk_index", align 4
@amlogic_thermal_g12a_ddr_param = internal constant { %struct.amlogic_thermal_data, [20 x i8] } { %struct.amlogic_thermal_data { i32 240, ptr @amlogic_thermal_g12a, ptr @amlogic_thermal_regmap_config_g12a }, [20 x i8] zeroinitializer }, align 32
@amlogic_thermal_g12a_cpu_param = internal constant { %struct.amlogic_thermal_data, [20 x i8] } { %struct.amlogic_thermal_data { i32 296, ptr @amlogic_thermal_g12a, ptr @amlogic_thermal_regmap_config_g12a }, [20 x i8] zeroinitializer }, align 32
@amlogic_thermal_g12a = internal constant { %struct.amlogic_thermal_soc_calib_data, [16 x i8] } { %struct.amlogic_thermal_soc_calib_data { i32 9411, i32 3159, i32 424, i32 324 }, [16 x i8] zeroinitializer }, align 32
@amlogic_thermal_regmap_config_g12a = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 100, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"amlogic_thermal_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 325, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 327, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [25 x i8] c"of_amlogic_thermal_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 228, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"amlogic_thermal_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 322, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 260, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 268, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 273, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 275, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"amlogic_thermal_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 198, i32 48 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 285, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 290, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 151, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [31 x i8] c"amlogic_thermal_g12a_ddr_param\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 222, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"amlogic_thermal_g12a_cpu_param\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 216, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant [21 x i8] c"amlogic_thermal_g12a\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 209, i32 52 }
@___asan_gen_.101 = private unnamed_addr constant [35 x i8] c"amlogic_thermal_regmap_config_g12a\00", align 1
@___asan_gen_.102 = private constant [37 x i8] c"../drivers/thermal/amlogic_thermal.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 202, i32 35 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_amlogic_thermal_driver_exit, ptr @__initcall__kmod_amlogic_thermal__175_335_amlogic_thermal_driver_init6, ptr @amlogic_thermal_driver_exit, ptr @amlogic_thermal_initialize._entry, ptr @amlogic_thermal_initialize._entry_ptr, ptr @amlogic_thermal_probe._entry, ptr @amlogic_thermal_probe._entry.11, ptr @amlogic_thermal_probe._entry.14, ptr @amlogic_thermal_probe._entry.8, ptr @amlogic_thermal_probe._entry_ptr, ptr @amlogic_thermal_probe._entry_ptr.10, ptr @amlogic_thermal_probe._entry_ptr.13, ptr @amlogic_thermal_probe._entry_ptr.17, ptr @amlogic_thermal_driver, ptr @.str, ptr @of_amlogic_thermal_match, ptr @amlogic_thermal_pm_ops, ptr @amlogic_thermal_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @amlogic_thermal_ops, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @amlogic_thermal_g12a_ddr_param, ptr @amlogic_thermal_g12a_cpu_param, ptr @amlogic_thermal_g12a, ptr @amlogic_thermal_regmap_config_g12a], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_amlogic_thermal_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_g12a_ddr_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_g12a_cpu_param to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_g12a to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amlogic_thermal_regmap_config_g12a to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @amlogic_thermal_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amlogic_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @amlogic_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %data = getelementptr inbounds %struct.amlogic_thermal, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %data, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %regmap_config = getelementptr inbounds %struct.amlogic_thermal_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regmap_config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_config, align 4
  %call10 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call4, ptr noundef %7, ptr noundef nonnull @amlogic_thermal_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.amlogic_thermal, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %regmap, align 4
  %cmp.i106 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.amlogic_thermal, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %clk, align 4
  %cmp.i107 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end16
  %cmp.not = icmp eq ptr %call17, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then20.if.end24_crit_edge, label %do.end

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.then20.if.end24_crit_edge
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call29 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %15, ptr noundef nonnull @.str.7) #5
  %sec_ao_map = getelementptr inbounds %struct.amlogic_thermal, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %sec_ao_map to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %sec_ao_map, align 4
  %cmp.i108 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %17 = ptrtoint ptr %sec_ao_map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sec_ao_map, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %call40 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev1, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @amlogic_thermal_ops) #5
  %tzd = getelementptr inbounds %struct.amlogic_thermal, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %tzd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call40, ptr %tzd, align 4
  %cmp.i109 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %21) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end38
  %call51 = tail call i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %call40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end49.if.end58_crit_edge, label %do.end56

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.end49.if.end58_crit_edge
  %22 = ptrtoint ptr %sec_ao_map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sec_ao_map, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %trim_info.i = getelementptr inbounds %struct.amlogic_thermal, ptr %call.i, i32 0, i32 6
  %call.i110 = tail call i32 @regmap_read(ptr noundef %23, i32 noundef %27, ptr noundef %trim_info.i) #5
  %28 = ptrtoint ptr %trim_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %trim_info.i, align 4
  %30 = and i32 %29, -1946157056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i111 = icmp eq i32 %30, 0
  br i1 %cmp.i111, label %amlogic_thermal_initialize.exit, label %if.end62

amlogic_thermal_initialize.exit:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %29, 24
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %shr.i) #8
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end62
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %34) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 4, i32 noundef 1579, i32 noundef 1579, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then3.i.i, %if.end62.cleanup_crit_edge, %amlogic_thermal_initialize.exit, %if.then43, %do.end35, %if.end24, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %9, %if.then13 ], [ %13, %if.end24 ], [ %19, %do.end35 ], [ %21, %if.then43 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %amlogic_thermal_initialize.exit ], [ 0, %if.end.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.amlogic_thermal, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4, i32 noundef 1579, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %clk.i = getelementptr inbounds %struct.amlogic_thermal, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_get_temp(ptr noundef readonly %data, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %remainder.i39.i = alloca i32, align 4
  %remainder.i37.i = alloca i32, align 4
  %remainder.i35.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  %tval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tval) #5
  %0 = ptrtoint ptr %tval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tval, align 4, !annotation !68
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.amlogic_thermal, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 64, ptr noundef nonnull %tval) #5
  %3 = ptrtoint ptr %tval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tval, align 4
  %and = and i32 %4, 65535
  %data.i = getelementptr inbounds %struct.amlogic_thermal, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %calibration_parameters.i = getelementptr inbounds %struct.amlogic_thermal_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %calibration_parameters.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %calibration_parameters.i, align 4
  %trim_info.i = getelementptr inbounds %struct.amlogic_thermal, ptr %data, i32 0, i32 6
  %9 = ptrtoint ptr %trim_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %trim_info.i, align 4
  %and.i = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %10, 32767
  %add.i = sub nsw i32 0, %and2.i
  %cond.i = select i1 %tobool.not.i, i32 %and2.i, i32 %add.i
  %n.i = getelementptr inbounds %struct.amlogic_thermal_soc_calib_data, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n.i, align 4
  %mul.i = mul i32 %12, %and
  %conv5.i = sext i32 %mul.i to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #5
  %13 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !68
  %call.i.i = call i64 @div_s64_rem(i64 noundef %conv5.i, i32 noundef 100, ptr noundef nonnull %remainder.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #5
  %m.i = getelementptr inbounds %struct.amlogic_thermal_soc_calib_data, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m.i, align 4
  %mul6.i = mul i32 %15, %and
  %conv7.i = sext i32 %mul6.i to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i35.i) #5
  %16 = ptrtoint ptr %remainder.i35.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %remainder.i35.i, align 4, !annotation !68
  %call.i36.i = call i64 @div_s64_rem(i64 noundef %conv7.i, i32 noundef 100, ptr noundef nonnull %remainder.i35.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i35.i) #5
  %mul9.i = shl i64 %call.i36.i, 16
  %17 = trunc i64 %call.i.i to i32
  %conv11.i = add i32 %17, 65536
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i37.i) #5
  %18 = ptrtoint ptr %remainder.i37.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %remainder.i37.i, align 4, !annotation !68
  %call.i38.i = call i64 @div_s64_rem(i64 noundef %mul9.i, i32 noundef %conv11.i, ptr noundef nonnull %remainder.i37.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i37.i) #5
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %8, align 4
  %21 = trunc i64 %call.i38.i to i32
  %22 = add i32 %cond.i, %21
  %conv16.i = mul i32 %22, %20
  %conv17.i = sext i32 %conv16.i to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i39.i) #5
  %23 = ptrtoint ptr %remainder.i39.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %remainder.i39.i, align 4, !annotation !68
  %call.i40.i = call i64 @div_s64_rem(i64 noundef %conv17.i, i32 noundef 65536, ptr noundef nonnull %remainder.i39.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i39.i) #5
  %conv19.i = trunc i64 %call.i40.i to i32
  %B.i = getelementptr inbounds %struct.amlogic_thermal_soc_calib_data, ptr %8, i32 0, i32 1
  %24 = ptrtoint ptr %B.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %B.i, align 4
  %sub.i = sub i32 %conv19.i, %25
  %mul20.i = mul i32 %sub.i, 100
  %26 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul20.i, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tval) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.amlogic_thermal, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4, i32 noundef 1579, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %clk.i = getelementptr inbounds %struct.amlogic_thermal, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk.i = getelementptr inbounds %struct.amlogic_thermal, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.amlogic_thermal_enable.exit_crit_edge

entry.amlogic_thermal_enable.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %amlogic_thermal_enable.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %amlogic_thermal_enable.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %regmap.i = getelementptr inbounds %struct.amlogic_thermal, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef 1579, i32 noundef 1579, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %amlogic_thermal_enable.exit

amlogic_thermal_enable.exit:                      ; preds = %if.end.i, %if.then3.i.i, %entry.amlogic_thermal_enable.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %entry.amlogic_thermal_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_amlogic_thermal__175_335_amlogic_thermal_driver_init6, !1, !"__initcall__kmod_amlogic_thermal__175_335_amlogic_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/amlogic_thermal.c", i32 335, i32 1}
!2 = !{ptr @__exitcall_amlogic_thermal_driver_exit, !1, !"__exitcall_amlogic_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author176, !4, !"__UNIQUE_ID_author176", i1 false, i1 false}
!4 = !{!"../drivers/thermal/amlogic_thermal.c", i32 337, i32 1}
!5 = !{ptr @__UNIQUE_ID_description177, !6, !"__UNIQUE_ID_description177", i1 false, i1 false}
!6 = !{!"../drivers/thermal/amlogic_thermal.c", i32 338, i32 1}
!7 = !{ptr @__UNIQUE_ID_file178, !8, !"__UNIQUE_ID_file178", i1 false, i1 false}
!8 = !{!"../drivers/thermal/amlogic_thermal.c", i32 339, i32 1}
!9 = !{ptr @__UNIQUE_ID_license179, !8, !"__UNIQUE_ID_license179", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/amlogic_thermal.c", i32 327, i32 12}
!12 = !{ptr @amlogic_thermal_driver, !13, !"amlogic_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/amlogic_thermal.c", i32 325, i32 31}
!14 = !{ptr @amlogic_thermal_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/thermal/amlogic_thermal.c", i32 260, i32 18}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thermal/amlogic_thermal.c", i32 268, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @amlogic_thermal_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @amlogic_thermal_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/thermal/amlogic_thermal.c", i32 273, i32 23}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thermal/amlogic_thermal.c", i32 275, i32 3}
!29 = !{ptr @amlogic_thermal_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @amlogic_thermal_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thermal/amlogic_thermal.c", i32 285, i32 3}
!33 = !{ptr @amlogic_thermal_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @amlogic_thermal_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thermal/amlogic_thermal.c", i32 290, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @amlogic_thermal_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @amlogic_thermal_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @amlogic_thermal_ops, !41, !"amlogic_thermal_ops", i1 false, i1 false}
!41 = !{!"../drivers/thermal/amlogic_thermal.c", i32 198, i32 48}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/thermal/amlogic_thermal.c", i32 151, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @amlogic_thermal_initialize._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @amlogic_thermal_initialize._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @of_amlogic_thermal_match, !48, !"of_amlogic_thermal_match", i1 false, i1 false}
!48 = !{!"../drivers/thermal/amlogic_thermal.c", i32 228, i32 34}
!49 = !{ptr @amlogic_thermal_g12a_ddr_param, !50, !"amlogic_thermal_g12a_ddr_param", i1 false, i1 false}
!50 = !{!"../drivers/thermal/amlogic_thermal.c", i32 222, i32 42}
!51 = !{ptr @amlogic_thermal_g12a, !52, !"amlogic_thermal_g12a", i1 false, i1 false}
!52 = !{!"../drivers/thermal/amlogic_thermal.c", i32 209, i32 52}
!53 = !{ptr @amlogic_thermal_regmap_config_g12a, !54, !"amlogic_thermal_regmap_config_g12a", i1 false, i1 false}
!54 = !{!"../drivers/thermal/amlogic_thermal.c", i32 202, i32 35}
!55 = !{ptr @amlogic_thermal_g12a_cpu_param, !56, !"amlogic_thermal_g12a_cpu_param", i1 false, i1 false}
!56 = !{!"../drivers/thermal/amlogic_thermal.c", i32 216, i32 42}
!57 = !{ptr @amlogic_thermal_pm_ops, !58, !"amlogic_thermal_pm_ops", i1 false, i1 false}
!58 = !{!"../drivers/thermal/amlogic_thermal.c", i32 322, i32 8}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
