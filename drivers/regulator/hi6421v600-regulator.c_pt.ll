; ModuleID = '/llk/IR_all_yes/drivers/regulator/hi6421v600-regulator.c_pt.bc'
source_filename = "../drivers/regulator/hi6421v600-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hi6421_spmi_reg_info = type { %struct.regulator_desc, i8, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_hi6421v600_regulator__288_290_hi6421_spmi_regulator_driver_init6 = internal global ptr @hi6421_spmi_regulator_driver_init, section ".initcall6.init", align 4
@hi6421_spmi_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi6421_spmi_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hi6421_spmi_regulator_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi6421_spmi_regulator_driver_exit = internal global ptr @hi6421_spmi_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [66 x i8] c"hi6421v600_regulator.description=Hi6421v600 SPMI regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [65 x i8] c"hi6421v600_regulator.file=drivers/regulator/hi6421v600-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [36 x i8] c"hi6421v600_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hi6421v600-regulator\00", [43 x i8] zeroinitializer }, align 32
@hi6421_spmi_regulator_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"hi6421v600-regulator", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/regulator/hi6421v600-regulator.c\00", [55 x i8] zeroinitializer }, align 32
@hi6421_spmi_regulator_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->enable_mutex\00", [44 x i8] zeroinitializer }, align 32
@regulator_info = internal global { [8 x %struct.hi6421_spmi_reg_info], [480 x i8] } { [8 x %struct.hi6421_spmi_reg_info] [%struct.hi6421_spmi_reg_info { %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr @.str.8, ptr null, i32 0, i8 0, i32 16, i32 0, ptr @hi6421_spmi_ldo_rops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 120, i32 0, ptr null, ptr null, i32 0, ptr @range_1v5_to_2v0, ptr null, i32 0, i32 0, i32 81, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 120, i32 20000, i32 0, ptr null }, i8 0, i32 0 }, %struct.hi6421_spmi_reg_info { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.8, ptr null, i32 1, i8 0, i32 8, i32 0, ptr @hi6421_spmi_ldo_rops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 120, i32 0, ptr null, ptr null, i32 0, ptr @range_1v725_to_1v9, ptr null, i32 0, i32 0, i32 82, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 23, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 120, i32 20000, i32 0, ptr null }, i8 16, i32 10000 }, %struct.hi6421_spmi_reg_info { %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.8, ptr null, i32 2, i8 0, i32 8, i32 0, ptr @hi6421_spmi_ldo_rops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 360, i32 0, ptr null, ptr null, i32 0, ptr @range_1v75_to_3v3, ptr null, i32 0, i32 0, i32 87, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 28, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 360, i32 20000, i32 0, ptr null }, i8 16, i32 10000 }, %struct.hi6421_spmi_reg_info { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.8, ptr null, i32 3, i8 0, i32 8, i32 0, ptr @hi6421_spmi_ldo_rops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 360, i32 0, ptr null, ptr null, i32 0, ptr @range_1v8_to_3v0, ptr null, i32 0, i32 0, i32 92, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 360, i32 20000, i32 0, ptr null }, i8 16, i32 10000 }, %struct.hi6421_spmi_reg_info { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.8, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @hi6421_spmi_ldo_rops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 360, i32 0, ptr null, ptr null, i32 0, ptr @range_1v8_to_3v0, ptr null, i32 0, i32 0, i32 93, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 360, i32 20000, i32 0, ptr null }, i8 16, i32 10000 }, %struct.hi6421_spmi_reg_info { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.8, ptr null, i32 5, i8 0, i32 8, i32 0, ptr @hi6421_spmi_ldo_rops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 120, i32 0, ptr null, ptr null, i32 0, ptr @range_2v5_to_3v3, ptr null, i32 0, i32 0, i32 94, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 120, i32 20000, i32 0, ptr null }, i8 16, i32 10000 }, %struct.hi6421_spmi_reg_info { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.8, ptr null, i32 6, i8 0, i32 8, i32 0, ptr @hi6421_spmi_ldo_rops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 120, i32 0, ptr null, ptr null, i32 0, ptr @range_2v5_to_3v3, ptr null, i32 0, i32 0, i32 109, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 120, i32 20000, i32 0, ptr null }, i8 0, i32 0 }, %struct.hi6421_spmi_reg_info { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.8, ptr null, i32 7, i8 0, i32 8, i32 0, ptr @hi6421_spmi_ldo_rops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 120, i32 0, ptr null, ptr null, i32 0, ptr @range_2v6_to_3v3, ptr null, i32 0, i32 0, i32 110, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 51, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 120, i32 20000, i32 0, ptr null }, i8 0, i32 0 }], [480 x i8] zeroinitializer }, align 32
@hi6421_spmi_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hi6421_spmi_regulator_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi6421_spmi_regulator_probe._entry_ptr = internal global ptr @hi6421_spmi_regulator_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@hi6421_spmi_ldo_rops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi6421_spmi_regulator_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @hi6421_spmi_regulator_set_mode, ptr @hi6421_spmi_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi6421_spmi_regulator_get_optimum_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@range_1v5_to_2v0 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1725000, i32 1750000, i32 1775000, i32 1800000, i32 1825000, i32 1850000, i32 1875000, i32 1900000, i32 1925000, i32 1950000, i32 2000000], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@range_1v725_to_1v9 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1725000, i32 1750000, i32 1775000, i32 1800000, i32 1825000, i32 1850000, i32 1875000, i32 1900000], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo9\00", [27 x i8] zeroinitializer }, align 32
@range_1v75_to_3v3 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1750000, i32 1800000, i32 1825000, i32 2800000, i32 2850000, i32 2950000, i32 3000000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo15\00", [26 x i8] zeroinitializer }, align 32
@range_1v8_to_3v0 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1800000, i32 1850000, i32 2400000, i32 2600000, i32 2700000, i32 2850000, i32 2950000, i32 3000000], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo16\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo17\00", [26 x i8] zeroinitializer }, align 32
@range_2v5_to_3v3 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 3000000, i32 3100000, i32 3200000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo33\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo34\00", [26 x i8] zeroinitializer }, align 32
@range_2v6_to_3v3 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3100000, i32 3200000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"hi6421_spmi_regulator_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 283, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 286, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"hi6421_spmi_regulator_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 277, i32 40 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 250, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 257, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"regulator_info\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 198, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 268, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 199, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"hi6421_spmi_ldo_rops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 173, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"range_1v5_to_2v0\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 30, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 203, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"range_1v725_to_1v9\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 37, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 207, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"range_1v75_to_3v3\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 42, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 211, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"range_1v8_to_3v0\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 47, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 215, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 219, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"range_2v5_to_3v3\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 52, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 223, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 227, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"range_2v6_to_3v3\00", align 1
@___asan_gen_.98 = private constant [44 x i8] c"../drivers/regulator/hi6421v600-regulator.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 57, i32 27 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_hi6421_spmi_regulator_driver_exit, ptr @__initcall__kmod_hi6421v600_regulator__288_290_hi6421_spmi_regulator_driver_init6, ptr @hi6421_spmi_regulator_driver_exit, ptr @hi6421_spmi_regulator_probe._entry, ptr @hi6421_spmi_regulator_probe._entry_ptr, ptr @hi6421_spmi_regulator_driver, ptr @.str, ptr @hi6421_spmi_regulator_table, ptr @.str.1, ptr @hi6421_spmi_regulator_probe.__key, ptr @.str.2, ptr @regulator_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @hi6421_spmi_ldo_rops, ptr @range_1v5_to_2v0, ptr @.str.9, ptr @range_1v725_to_1v9, ptr @.str.10, ptr @range_1v75_to_3v3, ptr @.str.11, ptr @range_1v8_to_3v0, ptr @.str.12, ptr @.str.13, ptr @range_2v5_to_3v3, ptr @.str.14, ptr @.str.15, ptr @range_2v6_to_3v3], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421_spmi_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421_spmi_regulator_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421_spmi_regulator_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_info to i32), i32 2016, i32 2496, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421_spmi_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6421_spmi_ldo_rops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_1v5_to_2v0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_1v725_to_1v9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_1v75_to_3v3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_1v8_to_3v0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_2v5_to_3v3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_2v6_to_3v3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6421_spmi_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi6421_spmi_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi6421_spmi_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi6421_spmi_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6421_spmi_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %2 = getelementptr inbounds i8, ptr %config, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !68

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 250, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end25:                                         ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 92, i32 noundef 3520) #6
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %do.body30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body30:                                        ; preds = %if.end25
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @hi6421_spmi_regulator_probe.__key) #6
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %regmap36 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %config, align 4
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data, align 4
  %10 = ptrtoint ptr %regmap36 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %5, ptr %regmap36, align 4
  %call37 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @regulator_info, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body30.do.end42_crit_edge, label %for.cond

do.body30.do.end42_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

for.cond:                                         ; preds = %do.body30
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %config, align 4
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data, align 4
  %15 = ptrtoint ptr %regmap36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %regmap36, align 4
  %call37.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 1), ptr noundef nonnull %config) #6
  %cmp.i.1 = icmp ugt ptr %call37.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.cond.do.end42_crit_edge, label %for.cond.1

for.cond.do.end42_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

for.cond.1:                                       ; preds = %for.cond
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %18 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %config, align 4
  %19 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data, align 4
  %20 = ptrtoint ptr %regmap36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %5, ptr %regmap36, align 4
  %call37.2 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 2), ptr noundef nonnull %config) #6
  %cmp.i.2 = icmp ugt ptr %call37.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.cond.1.do.end42_crit_edge, label %for.cond.2

for.cond.1.do.end42_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

for.cond.2:                                       ; preds = %for.cond.1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 8
  %23 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %config, align 4
  %24 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data, align 4
  %25 = ptrtoint ptr %regmap36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %5, ptr %regmap36, align 4
  %call37.3 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 3), ptr noundef nonnull %config) #6
  %cmp.i.3 = icmp ugt ptr %call37.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.cond.2.do.end42_crit_edge, label %for.cond.3

for.cond.2.do.end42_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

for.cond.3:                                       ; preds = %for.cond.2
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  %28 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %config, align 4
  %29 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data, align 4
  %30 = ptrtoint ptr %regmap36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %5, ptr %regmap36, align 4
  %call37.4 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 4), ptr noundef nonnull %config) #6
  %cmp.i.4 = icmp ugt ptr %call37.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.cond.3.do.end42_crit_edge, label %for.cond.4

for.cond.3.do.end42_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

for.cond.4:                                       ; preds = %for.cond.3
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 8
  %33 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %config, align 4
  %34 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data, align 4
  %35 = ptrtoint ptr %regmap36 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %5, ptr %regmap36, align 4
  %call37.5 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 5), ptr noundef nonnull %config) #6
  %cmp.i.5 = icmp ugt ptr %call37.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %for.cond.4.do.end42_crit_edge, label %for.cond.5

for.cond.4.do.end42_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

for.cond.5:                                       ; preds = %for.cond.4
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 8
  %38 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %config, align 4
  %39 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data, align 4
  %40 = ptrtoint ptr %regmap36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %5, ptr %regmap36, align 4
  %call37.6 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 6), ptr noundef nonnull %config) #6
  %cmp.i.6 = icmp ugt ptr %call37.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6, label %for.cond.5.do.end42_crit_edge, label %for.cond.6

for.cond.5.do.end42_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

for.cond.6:                                       ; preds = %for.cond.5
  %41 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent, align 8
  %43 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %config, align 4
  %44 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data, align 4
  %45 = ptrtoint ptr %regmap36 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %5, ptr %regmap36, align 4
  %call37.7 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 7), ptr noundef nonnull %config) #6
  %cmp.i.7 = icmp ugt ptr %call37.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.7, label %for.cond.6.do.end42_crit_edge, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.6.do.end42_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

do.end42:                                         ; preds = %for.cond.6.do.end42_crit_edge, %for.cond.5.do.end42_crit_edge, %for.cond.4.do.end42_crit_edge, %for.cond.3.do.end42_crit_edge, %for.cond.2.do.end42_crit_edge, %for.cond.1.do.end42_crit_edge, %for.cond.do.end42_crit_edge, %do.body30.do.end42_crit_edge
  %arrayidx.lcssa = phi ptr [ @regulator_info, %do.body30.do.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 1), %for.cond.do.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 2), %for.cond.1.do.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 3), %for.cond.2.do.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 4), %for.cond.3.do.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 5), %for.cond.4.do.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 6), %for.cond.5.do.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.hi6421_spmi_reg_info], ptr @regulator_info, i32 0, i32 7), %for.cond.6.do.end42_crit_edge ]
  %call37.lcssa = phi ptr [ %call37, %do.body30.do.end42_crit_edge ], [ %call37.1, %for.cond.do.end42_crit_edge ], [ %call37.2, %for.cond.1.do.end42_crit_edge ], [ %call37.3, %for.cond.2.do.end42_crit_edge ], [ %call37.4, %for.cond.3.do.end42_crit_edge ], [ %call37.5, %for.cond.4.do.end42_crit_edge ], [ %call37.6, %for.cond.5.do.end42_crit_edge ], [ %call37.7, %for.cond.6.do.end42_crit_edge ]
  %46 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %47) #9
  %48 = ptrtoint ptr %call37.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %for.cond.6.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %48, %do.end42 ], [ -12, %if.end25.cleanup_crit_edge ], [ 0, %for.cond.6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6421_spmi_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 35
  %6 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_mask, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  %off_on_delay = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 58
  %10 = ptrtoint ptr %off_on_delay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %off_on_delay, align 4
  %add = add i32 %11, 60
  tail call void @usleep_range_state(i32 noundef %11, i32 noundef %add, i32 noundef 2) #6
  tail call void @mutex_unlock(ptr noundef %call) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6421_spmi_regulator_set_mode(ptr nocapture noundef readonly %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %eco_mode_mask = getelementptr inbounds %struct.hi6421_spmi_reg_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %eco_mode_mask to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eco_mode_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %4 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 34
  %7 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable_reg, align 4
  %eco_mode_mask4 = getelementptr inbounds %struct.hi6421_spmi_reg_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %eco_mode_mask4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %eco_mode_mask4, align 4
  %conv5 = zext i8 %10 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef %conv5, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6421_spmi_regulator_get_mode(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #6
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !69
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rdev, align 8
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %5 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_reg, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg_val) #6
  %7 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_val, align 4
  %eco_mode_mask = getelementptr inbounds %struct.hi6421_spmi_reg_info, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %eco_mode_mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %eco_mode_mask, align 4
  %conv = zext i8 %10 to i32
  %and = and i32 %8, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #6
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hi6421_spmi_regulator_get_optimum_mode(ptr nocapture noundef readonly %rdev, i32 noundef %input_uV, i32 noundef %output_uV, i32 noundef %load_uA) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %eco_uA = getelementptr inbounds %struct.hi6421_spmi_reg_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %eco_uA to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eco_uA, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %load_uA)
  %cmp = icmp ult i32 %3, %load_uA
  %or.cond = or i1 %tobool.not, %cmp
  %retval.0 = select i1 %or.cond, i32 2, i32 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_hi6421v600_regulator__288_290_hi6421_spmi_regulator_driver_init6, !1, !"__initcall__kmod_hi6421v600_regulator__288_290_hi6421_spmi_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 290, i32 1}
!2 = !{ptr @__exitcall_hi6421_spmi_regulator_driver_exit, !1, !"__exitcall_hi6421_spmi_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 292, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 293, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 286, i32 11}
!10 = !{ptr @hi6421_spmi_regulator_driver, !11, !"hi6421_spmi_regulator_driver", i1 false, i1 false}
!11 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 283, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 250, i32 6}
!14 = !{ptr @hi6421_spmi_regulator_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 257, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 268, i32 4}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hi6421_spmi_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @hi6421_spmi_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 199, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 203, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 207, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 211, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 215, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 219, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 223, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 227, i32 2}
!41 = !{ptr @regulator_info, !42, !"regulator_info", i1 false, i1 false}
!42 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 198, i32 36}
!43 = !{ptr @hi6421_spmi_ldo_rops, !44, !"hi6421_spmi_ldo_rops", i1 false, i1 false}
!44 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 173, i32 35}
!45 = !{ptr @range_1v5_to_2v0, !46, !"range_1v5_to_2v0", i1 false, i1 false}
!46 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 30, i32 27}
!47 = !{ptr @range_1v725_to_1v9, !48, !"range_1v725_to_1v9", i1 false, i1 false}
!48 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 37, i32 27}
!49 = !{ptr @range_1v75_to_3v3, !50, !"range_1v75_to_3v3", i1 false, i1 false}
!50 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 42, i32 27}
!51 = !{ptr @range_1v8_to_3v0, !52, !"range_1v8_to_3v0", i1 false, i1 false}
!52 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 47, i32 27}
!53 = !{ptr @range_2v5_to_3v3, !54, !"range_2v5_to_3v3", i1 false, i1 false}
!54 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 52, i32 27}
!55 = !{ptr @range_2v6_to_3v3, !56, !"range_2v6_to_3v3", i1 false, i1 false}
!56 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 57, i32 27}
!57 = !{ptr @hi6421_spmi_regulator_table, !58, !"hi6421_spmi_regulator_table", i1 false, i1 false}
!58 = !{!"../drivers/regulator/hi6421v600-regulator.c", i32 277, i32 40}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{!"auto-init"}
