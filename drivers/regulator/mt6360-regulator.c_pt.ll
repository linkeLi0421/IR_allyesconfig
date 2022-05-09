; ModuleID = '/llk/IR_all_yes/drivers/regulator/mt6360-regulator.c_pt.bc'
source_filename = "../drivers/regulator/mt6360-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt6360_regulator_desc = type { %struct.regulator_desc, i32, i32, i32, i32, ptr, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.mt6360_irq_mapping = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.mt6360_regulator_data = type { ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_mt6360_regulator__288_453_mt6360_regulator_driver_init6 = internal global ptr @mt6360_regulator_driver_init, section ".initcall6.init", align 4
@mt6360_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6360_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt6360_regulator_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6360_regulator_driver_exit = internal global ptr @mt6360_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [58 x i8] c"mt6360_regulator.author=Gene Chen <gene_chen@richtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [53 x i8] c"mt6360_regulator.description=MT6360 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"mt6360_regulator.file=drivers/regulator/mt6360-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [32 x i8] c"mt6360_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt6360-regulator\00", [47 x i8] zeroinitializer }, align 32
@mt6360_regulator_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mt6360-regulator\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt6360_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get parent regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt6360_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/mt6360-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6360_regulator_probe._entry_ptr = internal global ptr @mt6360_regulator_probe._entry, section ".printk_index", align 4
@mt6360_regulator_descs = internal constant { [8 x %struct.mt6360_regulator_desc], [512 x i8] } { [8 x %struct.mt6360_regulator_desc] [%struct.mt6360_regulator_desc { %struct.regulator_desc { ptr @.str.12, ptr @.str.13, ptr @.str.12, i8 0, ptr @.str.14, ptr null, i32 0, i8 0, i32 256, i32 0, ptr @mt6360_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_vout_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 272, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 279, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6360_regulator_of_map_mode }, i32 279, i32 48, i32 279, i32 4, ptr @buck1_irq_tbls, i32 4 }, %struct.mt6360_regulator_desc { %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.15, i8 0, ptr @.str.14, ptr null, i32 1, i8 0, i32 256, i32 0, ptr @mt6360_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_vout_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 288, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 295, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6360_regulator_of_map_mode }, i32 295, i32 48, i32 295, i32 4, ptr @buck2_irq_tbls, i32 4 }, %struct.mt6360_regulator_desc { %struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.14, ptr null, i32 2, i8 0, i32 256, i32 0, ptr @mt6360_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ldo_vout_ranges1, ptr null, i32 32, ptr null, ptr null, i32 0, i32 0, i32 315, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 311, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6360_regulator_of_map_mode }, i32 311, i32 48, i32 311, i32 4, ptr @ldo6_irq_tbls, i32 2 }, %struct.mt6360_regulator_desc { %struct.regulator_desc { ptr @.str.19, ptr @.str.18, ptr @.str.19, i8 0, ptr @.str.14, ptr null, i32 3, i8 0, i32 256, i32 0, ptr @mt6360_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ldo_vout_ranges1, ptr null, i32 32, ptr null, ptr null, i32 0, i32 0, i32 309, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 305, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6360_regulator_of_map_mode }, i32 305, i32 48, i32 305, i32 4, ptr @ldo7_irq_tbls, i32 2 }, %struct.mt6360_regulator_desc { %struct.regulator_desc { ptr @.str.20, ptr @.str.21, ptr @.str.20, i8 0, ptr @.str.14, ptr null, i32 4, i8 0, i32 256, i32 0, ptr @mt6360_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ldo_vout_ranges2, ptr null, i32 32, ptr null, ptr null, i32 0, i32 0, i32 539, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 535, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6360_regulator_of_map_mode }, i32 535, i32 48, i32 535, i32 4, ptr @ldo1_irq_tbls, i32 2 }, %struct.mt6360_regulator_desc { %struct.regulator_desc { ptr @.str.22, ptr @.str.21, ptr @.str.22, i8 0, ptr @.str.14, ptr null, i32 5, i8 0, i32 256, i32 0, ptr @mt6360_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ldo_vout_ranges2, ptr null, i32 32, ptr null, ptr null, i32 0, i32 0, i32 533, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 529, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @mt6360_regulator_of_map_mode }, i32 529, i32 48, i32 529, i32 4, ptr @ldo2_irq_tbls, i32 2 }, %struct.mt6360_regulator_desc { %struct.regulator_desc { ptr @.str.23, ptr @.str.21, ptr @.str.23, i8 0, ptr @.str.14, ptr null, i32 6, i8 0, i32 256, i32 0, ptr @mt6360_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ldo_vout_ranges2, ptr null, i32 32, ptr null, ptr null, i32 0, i32 0, i32 521, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 517, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 100, i32 0, ptr @mt6360_regulator_of_map_mode }, i32 517, i32 48, i32 517, i32 4, ptr @ldo3_irq_tbls, i32 2 }, %struct.mt6360_regulator_desc { %struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr @.str.24, i8 0, ptr @.str.14, ptr null, i32 7, i8 0, i32 128, i32 0, ptr @mt6360_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ldo_vout_ranges3, ptr null, i32 16, ptr null, ptr null, i32 0, i32 0, i32 527, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 523, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 100, i32 0, ptr @mt6360_regulator_of_map_mode }, i32 523, i32 48, i32 523, i32 4, ptr @ldo5_irq_tbls, i32 2 }], [512 x i8] zeroinitializer }, align 32
@mt6360_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register  %d regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@mt6360_regulator_probe._entry_ptr.8 = internal global ptr @mt6360_regulator_probe._entry.6, section ".printk_index", align 4
@mt6360_regulator_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 432, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to register  %d regulator irqs\0A\00", [57 x i8] zeroinitializer }, align 32
@mt6360_regulator_probe._entry_ptr.11 = internal global ptr @mt6360_regulator_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BUCK1_VIN\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"regulator\00", [22 x i8] zeroinitializer }, align 32
@mt6360_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @mt6360_regulator_set_mode, ptr @mt6360_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6360_regulator_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@buck_vout_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 300000, i32 0, i32 199, i32 5000 }, %struct.linear_range { i32 1300000, i32 200, i32 255, i32 0 }], [32 x i8] zeroinitializer }, align 32
@buck1_irq_tbls = internal constant { [4 x %struct.mt6360_irq_mapping], [32 x i8] } { [4 x %struct.mt6360_irq_mapping] [%struct.mt6360_irq_mapping { ptr @.str.28, ptr @mt6360_pgb_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.29, ptr @mt6360_oc_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.30, ptr @mt6360_ov_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.31, ptr @mt6360_uv_event_handler }], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BUCK2_VIN\00", [22 x i8] zeroinitializer }, align 32
@buck2_irq_tbls = internal constant { [4 x %struct.mt6360_irq_mapping], [32 x i8] } { [4 x %struct.mt6360_irq_mapping] [%struct.mt6360_irq_mapping { ptr @.str.32, ptr @mt6360_pgb_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.33, ptr @mt6360_oc_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.34, ptr @mt6360_ov_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.35, ptr @mt6360_uv_event_handler }], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_VIN3\00", [23 x i8] zeroinitializer }, align 32
@ldo_vout_ranges1 = internal constant { [32 x %struct.linear_range], [128 x i8] } { [32 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 9, i32 10000 }, %struct.linear_range { i32 600000, i32 10, i32 16, i32 0 }, %struct.linear_range { i32 610000, i32 17, i32 25, i32 10000 }, %struct.linear_range { i32 700000, i32 26, i32 32, i32 0 }, %struct.linear_range { i32 710000, i32 33, i32 41, i32 10000 }, %struct.linear_range { i32 800000, i32 42, i32 48, i32 0 }, %struct.linear_range { i32 810000, i32 49, i32 57, i32 10000 }, %struct.linear_range { i32 900000, i32 58, i32 64, i32 0 }, %struct.linear_range { i32 910000, i32 65, i32 73, i32 10000 }, %struct.linear_range { i32 1000000, i32 74, i32 80, i32 0 }, %struct.linear_range { i32 1010000, i32 81, i32 89, i32 10000 }, %struct.linear_range { i32 1100000, i32 90, i32 96, i32 0 }, %struct.linear_range { i32 1110000, i32 97, i32 105, i32 10000 }, %struct.linear_range { i32 1200000, i32 106, i32 112, i32 0 }, %struct.linear_range { i32 1210000, i32 113, i32 121, i32 10000 }, %struct.linear_range { i32 1300000, i32 122, i32 128, i32 0 }, %struct.linear_range { i32 1310000, i32 129, i32 137, i32 10000 }, %struct.linear_range { i32 1400000, i32 138, i32 144, i32 0 }, %struct.linear_range { i32 1410000, i32 145, i32 153, i32 10000 }, %struct.linear_range { i32 1500000, i32 154, i32 160, i32 0 }, %struct.linear_range { i32 1510000, i32 161, i32 169, i32 10000 }, %struct.linear_range { i32 1600000, i32 170, i32 176, i32 0 }, %struct.linear_range { i32 1610000, i32 177, i32 185, i32 10000 }, %struct.linear_range { i32 1700000, i32 186, i32 192, i32 0 }, %struct.linear_range { i32 1710000, i32 193, i32 201, i32 10000 }, %struct.linear_range { i32 1800000, i32 202, i32 208, i32 0 }, %struct.linear_range { i32 1810000, i32 209, i32 217, i32 10000 }, %struct.linear_range { i32 1900000, i32 218, i32 224, i32 0 }, %struct.linear_range { i32 1910000, i32 225, i32 233, i32 10000 }, %struct.linear_range { i32 2000000, i32 234, i32 240, i32 0 }, %struct.linear_range { i32 2010000, i32 241, i32 249, i32 10000 }, %struct.linear_range { i32 2100000, i32 250, i32 255, i32 0 }], [128 x i8] zeroinitializer }, align 32
@ldo6_irq_tbls = internal constant { [2 x %struct.mt6360_irq_mapping], [16 x i8] } { [2 x %struct.mt6360_irq_mapping] [%struct.mt6360_irq_mapping { ptr @.str.36, ptr @mt6360_pgb_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.37, ptr @mt6360_oc_event_handler }], [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@ldo7_irq_tbls = internal constant { [2 x %struct.mt6360_irq_mapping], [16 x i8] } { [2 x %struct.mt6360_irq_mapping] [%struct.mt6360_irq_mapping { ptr @.str.38, ptr @mt6360_pgb_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.39, ptr @mt6360_oc_event_handler }], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_VIN1\00", [23 x i8] zeroinitializer }, align 32
@ldo_vout_ranges2 = internal constant { [32 x %struct.linear_range], [128 x i8] } { [32 x %struct.linear_range] [%struct.linear_range { i32 1200000, i32 0, i32 9, i32 10000 }, %struct.linear_range { i32 1300000, i32 10, i32 16, i32 0 }, %struct.linear_range { i32 1310000, i32 17, i32 25, i32 10000 }, %struct.linear_range { i32 1400000, i32 26, i32 31, i32 0 }, %struct.linear_range { i32 1500000, i32 32, i32 41, i32 10000 }, %struct.linear_range { i32 1600000, i32 42, i32 47, i32 0 }, %struct.linear_range { i32 1700000, i32 48, i32 57, i32 10000 }, %struct.linear_range { i32 1800000, i32 58, i32 64, i32 0 }, %struct.linear_range { i32 1810000, i32 65, i32 73, i32 10000 }, %struct.linear_range { i32 1900000, i32 74, i32 79, i32 0 }, %struct.linear_range { i32 2000000, i32 80, i32 89, i32 10000 }, %struct.linear_range { i32 2100000, i32 90, i32 96, i32 0 }, %struct.linear_range { i32 2110000, i32 97, i32 105, i32 10000 }, %struct.linear_range { i32 2200000, i32 106, i32 111, i32 0 }, %struct.linear_range { i32 2500000, i32 112, i32 121, i32 10000 }, %struct.linear_range { i32 2600000, i32 122, i32 127, i32 0 }, %struct.linear_range { i32 2700000, i32 128, i32 137, i32 10000 }, %struct.linear_range { i32 2800000, i32 138, i32 144, i32 0 }, %struct.linear_range { i32 2810000, i32 145, i32 153, i32 10000 }, %struct.linear_range { i32 2900000, i32 154, i32 160, i32 0 }, %struct.linear_range { i32 2910000, i32 161, i32 169, i32 10000 }, %struct.linear_range { i32 3000000, i32 170, i32 176, i32 0 }, %struct.linear_range { i32 3010000, i32 177, i32 185, i32 10000 }, %struct.linear_range { i32 3100000, i32 186, i32 192, i32 0 }, %struct.linear_range { i32 3110000, i32 193, i32 201, i32 10000 }, %struct.linear_range { i32 3200000, i32 202, i32 207, i32 0 }, %struct.linear_range { i32 3300000, i32 208, i32 217, i32 10000 }, %struct.linear_range { i32 3400000, i32 218, i32 224, i32 0 }, %struct.linear_range { i32 3410000, i32 225, i32 233, i32 10000 }, %struct.linear_range { i32 3500000, i32 234, i32 240, i32 0 }, %struct.linear_range { i32 3510000, i32 241, i32 249, i32 10000 }, %struct.linear_range { i32 3600000, i32 250, i32 255, i32 0 }], [128 x i8] zeroinitializer }, align 32
@ldo1_irq_tbls = internal constant { [2 x %struct.mt6360_irq_mapping], [16 x i8] } { [2 x %struct.mt6360_irq_mapping] [%struct.mt6360_irq_mapping { ptr @.str.40, ptr @mt6360_pgb_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.41, ptr @mt6360_oc_event_handler }], [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@ldo2_irq_tbls = internal constant { [2 x %struct.mt6360_irq_mapping], [16 x i8] } { [2 x %struct.mt6360_irq_mapping] [%struct.mt6360_irq_mapping { ptr @.str.42, ptr @mt6360_pgb_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.43, ptr @mt6360_oc_event_handler }], [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@ldo3_irq_tbls = internal constant { [2 x %struct.mt6360_irq_mapping], [16 x i8] } { [2 x %struct.mt6360_irq_mapping] [%struct.mt6360_irq_mapping { ptr @.str.44, ptr @mt6360_pgb_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.45, ptr @mt6360_oc_event_handler }], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO_VIN2\00", [23 x i8] zeroinitializer }, align 32
@ldo_vout_ranges3 = internal constant { [16 x %struct.linear_range], [64 x i8] } { [16 x %struct.linear_range] [%struct.linear_range { i32 2700000, i32 0, i32 9, i32 10000 }, %struct.linear_range { i32 2800000, i32 10, i32 16, i32 0 }, %struct.linear_range { i32 2810000, i32 17, i32 25, i32 10000 }, %struct.linear_range { i32 2900000, i32 26, i32 32, i32 0 }, %struct.linear_range { i32 2910000, i32 33, i32 41, i32 10000 }, %struct.linear_range { i32 3000000, i32 42, i32 48, i32 0 }, %struct.linear_range { i32 3010000, i32 49, i32 57, i32 10000 }, %struct.linear_range { i32 3100000, i32 58, i32 64, i32 0 }, %struct.linear_range { i32 3110000, i32 65, i32 73, i32 10000 }, %struct.linear_range { i32 3200000, i32 74, i32 79, i32 0 }, %struct.linear_range { i32 3300000, i32 80, i32 89, i32 10000 }, %struct.linear_range { i32 3400000, i32 90, i32 96, i32 0 }, %struct.linear_range { i32 3410000, i32 97, i32 105, i32 10000 }, %struct.linear_range { i32 3500000, i32 106, i32 112, i32 0 }, %struct.linear_range { i32 3510000, i32 113, i32 121, i32 10000 }, %struct.linear_range { i32 3600000, i32 122, i32 127, i32 0 }], [64 x i8] zeroinitializer }, align 32
@ldo5_irq_tbls = internal constant { [2 x %struct.mt6360_irq_mapping], [16 x i8] } { [2 x %struct.mt6360_irq_mapping] [%struct.mt6360_irq_mapping { ptr @.str.46, ptr @mt6360_pgb_event_handler }, %struct.mt6360_irq_mapping { ptr @.str.47, ptr @mt6360_oc_event_handler }], [16 x i8] zeroinitializer }, align 32
@mt6360_regulator_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: fail (%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt6360_regulator_set_mode\00", [38 x i8] zeroinitializer }, align 32
@mt6360_regulator_set_mode._entry_ptr = internal global ptr @mt6360_regulator_set_mode._entry, section ".printk_index", align 4
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"buck1_pgb_evt\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buck1_oc_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buck1_ov_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buck1_uv_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"buck2_pgb_evt\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buck2_oc_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buck2_ov_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buck2_uv_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldo6_pgb_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldo6_oc_evt\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldo7_pgb_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldo7_oc_evt\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldo1_pgb_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldo1_oc_evt\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldo2_pgb_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldo2_oc_evt\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldo3_pgb_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldo3_oc_evt\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ldo5_pgb_evt\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ldo5_oc_evt\00", [20 x i8] zeroinitializer }, align 32
@mt6360_regulator_irq_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Fail to request %s irq\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mt6360_regulator_irq_register\00", [34 x i8] zeroinitializer }, align 32
@mt6360_regulator_irq_register._entry_ptr = internal global ptr @mt6360_regulator_irq_register._entry, section ".printk_index", align 4
@switch.table.mt6360_regulator_of_map_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 0, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.mt6360_regulator_get_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 -22, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@___asan_gen_.50 = private unnamed_addr constant [24 x i8] c"mt6360_regulator_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 446, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 448, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [26 x i8] c"mt6360_regulator_id_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 440, i32 40 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 411, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"mt6360_regulator_descs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 353, i32 43 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 425, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 432, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 354, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"mt6360_regulator_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 296, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"buck_vout_ranges\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 126, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"buck1_irq_tbls\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 82, i32 40 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 356, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"buck2_irq_tbls\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 89, i32 40 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 358, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"ldo_vout_ranges1\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 131, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"ldo6_irq_tbls\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 96, i32 40 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 360, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"ldo7_irq_tbls\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 101, i32 40 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 362, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"ldo_vout_ranges2\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 166, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"ldo1_irq_tbls\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 106, i32 40 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 364, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"ldo2_irq_tbls\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 111, i32 40 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 366, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [14 x i8] c"ldo3_irq_tbls\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 116, i32 40 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 368, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"ldo_vout_ranges3\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 201, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant [14 x i8] c"ldo5_irq_tbls\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 121, i32 40 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 245, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 83, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 84, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 85, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 86, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 90, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 91, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 92, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 93, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 97, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 98, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 102, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 103, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 107, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 108, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 112, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 113, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 117, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 118, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 122, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 123, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [40 x i8] c"../drivers/regulator/mt6360-regulator.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 389, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [42 x i8] c"switch.table.mt6360_regulator_of_map_mode\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [39 x i8] c"switch.table.mt6360_regulator_get_mode\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mt6360_regulator_driver_exit, ptr @__initcall__kmod_mt6360_regulator__288_453_mt6360_regulator_driver_init6, ptr @mt6360_regulator_driver_exit, ptr @mt6360_regulator_irq_register._entry, ptr @mt6360_regulator_irq_register._entry_ptr, ptr @mt6360_regulator_probe._entry, ptr @mt6360_regulator_probe._entry.6, ptr @mt6360_regulator_probe._entry.9, ptr @mt6360_regulator_probe._entry_ptr, ptr @mt6360_regulator_probe._entry_ptr.11, ptr @mt6360_regulator_probe._entry_ptr.8, ptr @mt6360_regulator_set_mode._entry, ptr @mt6360_regulator_set_mode._entry_ptr, ptr @mt6360_regulator_driver, ptr @.str, ptr @mt6360_regulator_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mt6360_regulator_descs, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mt6360_regulator_ops, ptr @buck_vout_ranges, ptr @buck1_irq_tbls, ptr @.str.15, ptr @.str.16, ptr @buck2_irq_tbls, ptr @.str.17, ptr @.str.18, ptr @ldo_vout_ranges1, ptr @ldo6_irq_tbls, ptr @.str.19, ptr @ldo7_irq_tbls, ptr @.str.20, ptr @.str.21, ptr @ldo_vout_ranges2, ptr @ldo1_irq_tbls, ptr @.str.22, ptr @ldo2_irq_tbls, ptr @.str.23, ptr @ldo3_irq_tbls, ptr @.str.24, ptr @.str.25, ptr @ldo_vout_ranges3, ptr @ldo5_irq_tbls, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @switch.table.mt6360_regulator_of_map_mode, ptr @switch.table.mt6360_regulator_get_mode], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_regulator_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_regulator_descs to i32), i32 2144, i32 2656, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_regulator_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_vout_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck1_irq_tbls to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck2_irq_tbls to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vout_ranges1 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo6_irq_tbls to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo7_irq_tbls to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vout_ranges2 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo1_irq_tbls to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo2_irq_tbls to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo3_irq_tbls to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vout_ranges3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo5_irq_tbls to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_regulator_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_regulator_irq_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt6360_regulator_of_map_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt6360_regulator_get_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6360_regulator_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6360_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6360_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup34_crit_edge, label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %call4 = tail call ptr @dev_get_regmap(ptr noundef %4, ptr noundef null) #7
  %regmap = getelementptr inbounds %struct.mt6360_regulator_data, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %regmap, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup34

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap14 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %10 = ptrtoint ptr %regmap14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4, ptr %regmap14, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9
  %i.076 = phi i32 [ 0, %if.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.mt6360_regulator_desc, ptr @mt6360_regulator_descs, i32 %i.076
  %call16 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %add.ptr, ptr noundef nonnull %config) #7
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end21, label %if.end24

do.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %i.076) #10
  %11 = ptrtoint ptr %call16 to i32
  br label %cleanup34

if.end24:                                         ; preds = %for.body
  %irq_tables = getelementptr %struct.mt6360_regulator_desc, ptr @mt6360_regulator_descs, i32 %i.076, i32 5
  %12 = ptrtoint ptr %irq_tables to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_tables, align 4
  %irq_table_size = getelementptr %struct.mt6360_regulator_desc, ptr @mt6360_regulator_descs, i32 %i.076, i32 6
  %14 = ptrtoint ptr %irq_table_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp23.i = icmp sgt i32 %15, 0
  br i1 %cmp23.i, label %if.end24.for.body.i_crit_edge, label %if.end24.for.inc_crit_edge

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end24.for.body.i_crit_edge:                    ; preds = %if.end24
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.cond.i.for.inc_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end24.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end24.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.mt6360_irq_mapping, ptr %13, i32 %i.024.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %call.i60 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp1.i = icmp slt i32 %call.i60, 0
  br i1 %cmp1.i, label %for.body.i.do.end30_crit_edge, label %if.end.i

for.body.i.do.end30_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

if.end.i:                                         ; preds = %for.body.i
  %handler.i = getelementptr %struct.mt6360_irq_mapping, ptr %13, i32 %i.024.i, i32 1
  %18 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler.i, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %call3.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i60, ptr noundef null, ptr noundef %19, i32 noundef 0, ptr noundef %21, ptr noundef %call16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef %23) #10
  br label %do.end30

do.end30:                                         ; preds = %do.end.i, %for.body.i.do.end30_crit_edge
  %retval.2.i = phi i32 [ %call3.i, %do.end.i ], [ %call.i60, %for.body.i.do.end30_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %i.076) #10
  br label %cleanup34

for.inc:                                          ; preds = %for.cond.i.for.inc_crit_edge, %if.end24.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup34_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

cleanup34:                                        ; preds = %for.inc.cleanup34_crit_edge, %do.end30, %do.end21, %do.end, %entry.cleanup34_crit_edge
  %retval.2 = phi i32 [ -19, %do.end ], [ -12, %entry.cleanup34_crit_edge ], [ %retval.2.i, %do.end30 ], [ %11, %do.end21 ], [ 0, %for.inc.cleanup34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt6360_regulator_of_map_mode(i32 noundef %hw_mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %hw_mode)
  %0 = icmp ult i32 %hw_mode, 4
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mt6360_regulator_of_map_mode, i32 0, i32 %hw_mode
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_regulator_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %call = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #7
  %mode_mask = getelementptr inbounds %struct.mt6360_regulator_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_mask, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true), !range !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %iszero = icmp eq i32 %3, 0
  %sub = select i1 %iszero, i32 -1, i32 %4
  %5 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb1
    i32 4, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 2, %sw.bb2 ], [ 3, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %mode_reg = getelementptr inbounds %struct.mt6360_regulator_desc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_reg, align 4
  %shl = shl i32 %val.0, %sub
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %7, i32 noundef %3, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_regulator_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %call = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #7
  %mode_mask = getelementptr inbounds %struct.mt6360_regulator_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !142
  %mode_reg = getelementptr inbounds %struct.mt6360_regulator_desc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %call, i32 noundef %6, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = call i32 @llvm.cttz.i32(i32 %3, i1 true), !range !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %iszero = icmp eq i32 %3, 0
  %sub = select i1 %iszero, i32 -1, i32 %7
  %8 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode_mask, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and = and i32 %11, %9
  %shr = lshr i32 %and, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %12 = icmp ult i32 %shr, 4
  br i1 %12, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mt6360_regulator_get_mode, i32 0, i32 %shr
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_regulator_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %call = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !142
  %state_reg = getelementptr inbounds %struct.mt6360_regulator_desc, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %state_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %call, i32 noundef %4, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %state_mask = getelementptr inbounds %struct.mt6360_regulator_desc, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %state_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state_mask, align 4
  %and = and i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  %. = zext i1 %tobool2.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_pgb_event_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_notifier_call_chain(ptr noundef %data, i32 noundef 8, ptr noundef null) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_oc_event_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_notifier_call_chain(ptr noundef %data, i32 noundef 2, ptr noundef null) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_ov_event_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_notifier_call_chain(ptr noundef %data, i32 noundef 4, ptr noundef null) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_uv_event_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_notifier_call_chain(ptr noundef %data, i32 noundef 1, ptr noundef null) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !44, !45, !47, !49, !51, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__initcall__kmod_mt6360_regulator__288_453_mt6360_regulator_driver_init6, !1, !"__initcall__kmod_mt6360_regulator__288_453_mt6360_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/mt6360-regulator.c", i32 453, i32 1}
!2 = !{ptr @__exitcall_mt6360_regulator_driver_exit, !1, !"__exitcall_mt6360_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/mt6360-regulator.c", i32 455, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/mt6360-regulator.c", i32 456, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/mt6360-regulator.c", i32 457, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/mt6360-regulator.c", i32 448, i32 11}
!12 = !{ptr @mt6360_regulator_driver, !13, !"mt6360_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/mt6360-regulator.c", i32 446, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/mt6360-regulator.c", i32 411, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt6360_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt6360_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/mt6360-regulator.c", i32 425, i32 4}
!24 = !{ptr @mt6360_regulator_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt6360_regulator_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/mt6360-regulator.c", i32 432, i32 4}
!28 = !{ptr @mt6360_regulator_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mt6360_regulator_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/mt6360-regulator.c", i32 354, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/mt6360-regulator.c", i32 356, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/mt6360-regulator.c", i32 358, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/mt6360-regulator.c", i32 360, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/mt6360-regulator.c", i32 362, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/mt6360-regulator.c", i32 364, i32 2}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/mt6360-regulator.c", i32 366, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/mt6360-regulator.c", i32 368, i32 2}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mt6360_regulator_descs, !53, !"mt6360_regulator_descs", i1 false, i1 false}
!53 = !{!"../drivers/regulator/mt6360-regulator.c", i32 353, i32 43}
!54 = !{ptr @mt6360_regulator_ops, !55, !"mt6360_regulator_ops", i1 false, i1 false}
!55 = !{!"../drivers/regulator/mt6360-regulator.c", i32 296, i32 35}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/mt6360-regulator.c", i32 245, i32 3}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mt6360_regulator_set_mode._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mt6360_regulator_set_mode._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @buck_vout_ranges, !62, !"buck_vout_ranges", i1 false, i1 false}
!62 = !{!"../drivers/regulator/mt6360-regulator.c", i32 126, i32 34}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/mt6360-regulator.c", i32 83, i32 4}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/mt6360-regulator.c", i32 84, i32 4}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/mt6360-regulator.c", i32 85, i32 4}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/mt6360-regulator.c", i32 86, i32 4}
!71 = !{ptr @buck1_irq_tbls, !72, !"buck1_irq_tbls", i1 false, i1 false}
!72 = !{!"../drivers/regulator/mt6360-regulator.c", i32 82, i32 40}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/mt6360-regulator.c", i32 90, i32 4}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/mt6360-regulator.c", i32 91, i32 4}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/mt6360-regulator.c", i32 92, i32 4}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/mt6360-regulator.c", i32 93, i32 4}
!81 = !{ptr @buck2_irq_tbls, !82, !"buck2_irq_tbls", i1 false, i1 false}
!82 = !{!"../drivers/regulator/mt6360-regulator.c", i32 89, i32 40}
!83 = !{ptr @ldo_vout_ranges1, !84, !"ldo_vout_ranges1", i1 false, i1 false}
!84 = !{!"../drivers/regulator/mt6360-regulator.c", i32 131, i32 34}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/mt6360-regulator.c", i32 97, i32 4}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/mt6360-regulator.c", i32 98, i32 4}
!89 = !{ptr @ldo6_irq_tbls, !90, !"ldo6_irq_tbls", i1 false, i1 false}
!90 = !{!"../drivers/regulator/mt6360-regulator.c", i32 96, i32 40}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/mt6360-regulator.c", i32 102, i32 4}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/mt6360-regulator.c", i32 103, i32 4}
!95 = !{ptr @ldo7_irq_tbls, !96, !"ldo7_irq_tbls", i1 false, i1 false}
!96 = !{!"../drivers/regulator/mt6360-regulator.c", i32 101, i32 40}
!97 = !{ptr @ldo_vout_ranges2, !98, !"ldo_vout_ranges2", i1 false, i1 false}
!98 = !{!"../drivers/regulator/mt6360-regulator.c", i32 166, i32 34}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/mt6360-regulator.c", i32 107, i32 4}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/mt6360-regulator.c", i32 108, i32 4}
!103 = !{ptr @ldo1_irq_tbls, !104, !"ldo1_irq_tbls", i1 false, i1 false}
!104 = !{!"../drivers/regulator/mt6360-regulator.c", i32 106, i32 40}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/regulator/mt6360-regulator.c", i32 112, i32 4}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/mt6360-regulator.c", i32 113, i32 4}
!109 = !{ptr @ldo2_irq_tbls, !110, !"ldo2_irq_tbls", i1 false, i1 false}
!110 = !{!"../drivers/regulator/mt6360-regulator.c", i32 111, i32 40}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/regulator/mt6360-regulator.c", i32 117, i32 4}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/regulator/mt6360-regulator.c", i32 118, i32 4}
!115 = !{ptr @ldo3_irq_tbls, !116, !"ldo3_irq_tbls", i1 false, i1 false}
!116 = !{!"../drivers/regulator/mt6360-regulator.c", i32 116, i32 40}
!117 = !{ptr @ldo_vout_ranges3, !118, !"ldo_vout_ranges3", i1 false, i1 false}
!118 = !{!"../drivers/regulator/mt6360-regulator.c", i32 201, i32 34}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/mt6360-regulator.c", i32 122, i32 4}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/mt6360-regulator.c", i32 123, i32 4}
!123 = !{ptr @ldo5_irq_tbls, !124, !"ldo5_irq_tbls", i1 false, i1 false}
!124 = !{!"../drivers/regulator/mt6360-regulator.c", i32 121, i32 40}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/mt6360-regulator.c", i32 389, i32 4}
!127 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @mt6360_regulator_irq_register._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @mt6360_regulator_irq_register._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @mt6360_regulator_id_table, !131, !"mt6360_regulator_id_table", i1 false, i1 false}
!131 = !{!"../drivers/regulator/mt6360-regulator.c", i32 440, i32 40}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i32 0, i32 33}
!142 = !{!"auto-init"}
