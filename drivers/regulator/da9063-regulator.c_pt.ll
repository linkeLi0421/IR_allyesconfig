; ModuleID = '/llk/IR_all_yes/drivers/regulator/da9063-regulator.c_pt.bc'
source_filename = "../drivers/regulator/da9063-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.da9063_dev_model = type { ptr, i32, i32 }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.da9063_regulator_info = type { %struct.regulator_desc, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, %struct.reg_field }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
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
%struct.da9063 = type { ptr, i32, i8, i32, ptr, i32, i32, ptr }
%struct.da9063_regulators_pdata = type { i32, ptr }
%struct.da9063_regulator_data = type { i32, ptr }
%struct.da9063_regulators = type { i32, [0 x %struct.da9063_regulator] }
%struct.da9063_regulator = type { %struct.regulator_desc, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_da9063_regulator__288_982_da9063_regulator_init4 = internal global ptr @da9063_regulator_init, section ".initcall4.init", align 4
@da9063_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9063_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9063_regulator_cleanup = internal global ptr @da9063_regulator_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [76 x i8] c"da9063_regulator.author=Krystian Garbaciak <krystian.garbaciak@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [54 x i8] c"da9063_regulator.description=DA9063 regulators driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"da9063_regulator.file=drivers/regulator/da9063-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"da9063_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [50 x i8] c"da9063_regulator.alias=platform:da9063-regulators\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da9063-regulators\00", [46 x i8] zeroinitializer }, align 32
@da9063_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 823, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No regulators defined for the platform\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9063_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/da9063-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9063_regulator_probe._entry_ptr = internal global ptr @da9063_regulator_probe._entry, section ".printk_index", align 4
@regulators_models = internal constant { [3 x %struct.da9063_dev_model], [60 x i8] } { [3 x %struct.da9063_dev_model] [%struct.da9063_dev_model { ptr @da9063_regulator_info, i32 19, i32 0 }, %struct.da9063_dev_model { ptr @da9063_regulator_info, i32 13, i32 1 }, %struct.da9063_dev_model zeroinitializer], [60 x i8] zeroinitializer }, align 32
@da9063_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 834, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Chip model not recognised (%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@da9063_regulator_probe._entry_ptr.8 = internal global ptr @da9063_regulator_probe._entry.6, section ".printk_index", align 4
@da9063_regulator_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 841, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error while reading BUCKs configuration\0A\00", [55 x i8] zeroinitializer }, align 32
@da9063_regulator_probe._entry_ptr.11 = internal global ptr @da9063_regulator_probe._entry.9, section ".printk_index", align 4
@da9063_regulator_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 949, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@da9063_regulator_probe._entry_ptr.14 = internal global ptr @da9063_regulator_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LDO_LIM\00", [24 x i8] zeroinitializer }, align 32
@da9063_regulator_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 966, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request LDO_LIM IRQ.\0A\00", [32 x i8] zeroinitializer }, align 32
@da9063_regulator_probe._entry_ptr.18 = internal global ptr @da9063_regulator_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@da9063_parse_regulators_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 768, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Regulators device node not found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"da9063_parse_regulators_dt\00", [37 x i8] zeroinitializer }, align 32
@da9063_parse_regulators_dt._entry_ptr = internal global ptr @da9063_parse_regulators_dt._entry, section ".printk_index", align 4
@da9063_matches = internal global { [19 x %struct.of_regulator_match], [68 x i8] } { [19 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.25, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.26, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.27, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.28, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.29, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.30, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.31, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.32, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.33, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.34, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.35, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.36, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.37, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.38, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.39, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.40, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.41, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.42, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.43, ptr null, ptr null, ptr null, ptr null }], [68 x i8] zeroinitializer }, align 32
@da9063_parse_regulators_dt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 776, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to match regulators\0A\00", [36 x i8] zeroinitializer }, align 32
@da9063_parse_regulators_dt._entry_ptr.24 = internal global ptr @da9063_parse_regulators_dt._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcore1\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcore2\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bpro\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bmem\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bio\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bperi\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcores-merged\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bmem-bio-merged\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo8\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo9\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo11\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo10\00", [26 x i8] zeroinitializer }, align 32
@da9063_regulator_info = internal constant { [19 x %struct.da9063_regulator_info], [1644 x i8] } { [19 x %struct.da9063_regulator_info] [%struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 16, ptr @da9063_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9063_buck_a_limits, i32 0, i32 0, i32 164, i32 127, i32 0, i32 156, i32 15, i32 0, i32 0, i32 33, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field { i32 158, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 33, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 164, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 181, i32 7, i32 7, i32 0, i32 0 }, i32 181, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 128, i32 16, ptr @da9063_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9063_buck_a_limits, i32 0, i32 0, i32 163, i32 127, i32 0, i32 156, i32 240, i32 0, i32 0, i32 32, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field { i32 157, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 163, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 180, i32 7, i32 7, i32 0, i32 0 }, i32 180, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 128, i32 16, ptr @da9063_buck_ops, i32 0, i32 0, ptr null, i32 530000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9063_buck_a_limits, i32 0, i32 0, i32 165, i32 127, i32 0, i32 155, i32 15, i32 0, i32 0, i32 34, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field { i32 159, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 34, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 165, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 182, i32 7, i32 7, i32 0, i32 0 }, i32 182, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 128, i32 16, ptr @da9063_buck_ops, i32 0, i32 0, ptr null, i32 800000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9063_buck_b_limits, i32 0, i32 0, i32 166, i32 127, i32 0, i32 154, i32 240, i32 0, i32 0, i32 35, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field { i32 161, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 35, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 166, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 183, i32 7, i32 7, i32 0, i32 0 }, i32 183, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 128, i32 16, ptr @da9063_buck_ops, i32 0, i32 0, ptr null, i32 800000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9063_buck_b_limits, i32 0, i32 0, i32 167, i32 127, i32 0, i32 154, i32 15, i32 0, i32 0, i32 36, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field { i32 160, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 36, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 167, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 184, i32 7, i32 7, i32 0, i32 0 }, i32 184, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 128, i32 16, ptr @da9063_buck_ops, i32 0, i32 0, ptr null, i32 800000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9063_buck_b_limits, i32 0, i32 0, i32 168, i32 127, i32 0, i32 155, i32 240, i32 0, i32 0, i32 37, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field { i32 162, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 37, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 168, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 185, i32 7, i32 7, i32 0, i32 0 }, i32 185, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 128, i32 16, ptr @da9063_buck_ops, i32 0, i32 0, ptr null, i32 300000, i32 10000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9063_bcores_merged_limits, i32 0, i32 0, i32 164, i32 127, i32 0, i32 156, i32 15, i32 0, i32 0, i32 33, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field { i32 158, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 33, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 164, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 181, i32 7, i32 7, i32 0, i32 0 }, i32 181, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 128, i32 16, ptr @da9063_buck_ops, i32 0, i32 0, ptr null, i32 800000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @da9063_bmem_bio_merged_limits, i32 0, i32 0, i32 166, i32 127, i32 0, i32 154, i32 240, i32 0, i32 0, i32 35, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field { i32 161, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 35, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 166, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 183, i32 7, i32 7, i32 0, i32 0 }, i32 183, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 128, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 171, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 40, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 171, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 188, i32 7, i32 7, i32 0, i32 0 }, i32 188, %struct.reg_field { i32 4, i32 3, i32 3, i32 0, i32 0 } }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 57, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 175, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 44, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 175, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 192, i32 7, i32 7, i32 0, i32 0 }, i32 192, %struct.reg_field { i32 4, i32 5, i32 5, i32 0, i32 0 } }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 57, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 176, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 45, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 45, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 176, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 193, i32 7, i32 7, i32 0, i32 0 }, i32 193, %struct.reg_field { i32 4, i32 6, i32 6, i32 0, i32 0 } }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.55, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 57, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 950000, i32 50000, i32 3, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 177, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 46, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 177, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 194, i32 7, i32 7, i32 0, i32 0 }, i32 194, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.56, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 57, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 179, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 48, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 179, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 196, i32 7, i32 7, i32 0, i32 0 }, i32 196, %struct.reg_field { i32 4, i32 7, i32 7, i32 0, i32 0 } }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 169, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 38, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 169, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 186, i32 7, i32 7, i32 0, i32 0 }, i32 186, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 170, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 39, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 170, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 187, i32 7, i32 7, i32 0, i32 0 }, i32 187, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.59, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 128, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 172, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 41, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 172, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 189, i32 7, i32 7, i32 0, i32 0 }, i32 189, %struct.reg_field { i32 4, i32 4, i32 4, i32 0, i32 0 } }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.60, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 57, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 173, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 42, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 42, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 173, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 190, i32 7, i32 7, i32 0, i32 0 }, i32 190, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.61, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 57, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 174, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 43, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 43, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 174, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 191, i32 7, i32 7, i32 0, i32 0 }, i32 191, %struct.reg_field zeroinitializer }, %struct.da9063_regulator_info { %struct.regulator_desc { ptr @.str.62, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 57, i32 0, ptr @da9063_ldo_ops, i32 0, i32 0, ptr null, i32 900000, i32 50000, i32 2, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 178, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 47, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 47, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 178, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 195, i32 7, i32 7, i32 0, i32 0 }, i32 195, %struct.reg_field zeroinitializer }], [1644 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DA9063_BCORE1\00", [18 x i8] zeroinitializer }, align 32
@da9063_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @da9063_buck_set_current_limit, ptr @da9063_buck_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @da9063_buck_set_mode, ptr @da9063_buck_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9063_buck_get_status, ptr null, ptr null, ptr null, ptr null, ptr @da9063_set_suspend_voltage, ptr @da9063_suspend_enable, ptr @da9063_suspend_disable, ptr @da9063_buck_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@da9063_buck_a_limits = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 500000, i32 600000, i32 700000, i32 800000, i32 900000, i32 1000000, i32 1100000, i32 1200000, i32 1300000, i32 1400000, i32 1500000, i32 1600000, i32 1700000, i32 1800000, i32 1900000, i32 2000000], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DA9063_BCORE2\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_BPRO\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_BMEM\00", [20 x i8] zeroinitializer }, align 32
@da9063_buck_b_limits = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1500000, i32 1600000, i32 1700000, i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000], [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DA9063_BIO\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9063_BPERI\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DA9063_BCORES_MERGED\00", [43 x i8] zeroinitializer }, align 32
@da9063_bcores_merged_limits = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1000000, i32 1200000, i32 1400000, i32 1600000, i32 1800000, i32 2000000, i32 2200000, i32 2400000, i32 2600000, i32 2800000, i32 3000000, i32 3200000, i32 3400000, i32 3600000, i32 3800000, i32 4000000], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DA9063_BMEM_BIO_MERGED\00", [41 x i8] zeroinitializer }, align 32
@da9063_bmem_bio_merged_limits = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 3000000, i32 3200000, i32 3400000, i32 3600000, i32 3800000, i32 4000000, i32 4200000, i32 4400000, i32 4600000, i32 4800000, i32 5000000, i32 5200000, i32 5400000, i32 5600000, i32 5800000, i32 6000000], [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_LDO3\00", [20 x i8] zeroinitializer }, align 32
@da9063_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @da9063_ldo_set_mode, ptr @da9063_ldo_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9063_ldo_get_status, ptr null, ptr null, ptr null, ptr null, ptr @da9063_set_suspend_voltage, ptr @da9063_suspend_enable, ptr @da9063_suspend_disable, ptr @da9063_ldo_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_LDO7\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_LDO8\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_LDO9\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9063_LDO11\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_LDO1\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_LDO2\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_LDO4\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_LDO5\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DA9063_LDO6\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DA9063_LDO10\00", [19 x i8] zeroinitializer }, align 32
@switch.table.da9063_buck_set_current_limit = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 64, i32 32, i32 16, i32 64, i32 64, i32 64, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.da9063_buck_get_current_limit = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 64, i32 32, i32 16, i32 64, i32 64, i32 64, i32 64], [36 x i8] zeroinitializer }, align 32
@switch.table.da9063_buck_get_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.da9063_buck_get_status = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.63 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"da9063_regulator_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 971, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 973, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 822, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"regulators_models\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 673, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 833, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 840, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 947, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 957, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 966, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 766, i32 57 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 768, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"da9063_matches\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 729, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 776, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 730, i32 43 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 731, i32 43 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 732, i32 43 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 733, i32 43 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 734, i32 43 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 735, i32 43 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 736, i32 43 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 737, i32 43 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 738, i32 43 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 739, i32 43 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 740, i32 43 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 741, i32 43 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 742, i32 43 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 744, i32 43 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 745, i32 43 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 746, i32 43 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 747, i32 43 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 748, i32 43 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 749, i32 43 }
@___asan_gen_.200 = private unnamed_addr constant [22 x i8] c"da9063_regulator_info\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 578, i32 43 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 580, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"da9063_buck_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 543, i32 35 }
@___asan_gen_.209 = private unnamed_addr constant [21 x i8] c"da9063_buck_a_limits\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 174, i32 27 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 586, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 592, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 598, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [21 x i8] c"da9063_buck_b_limits\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 183, i32 27 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 604, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 610, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 616, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [28 x i8] c"da9063_bcores_merged_limits\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 192, i32 27 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 623, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [30 x i8] c"da9063_bmem_bio_merged_limits\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 201, i32 27 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 630, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [15 x i8] c"da9063_ldo_ops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 561, i32 35 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 634, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 638, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 642, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 645, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 651, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 654, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 657, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 661, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 664, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [40 x i8] c"../drivers/regulator/da9063-regulator.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 668, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [43 x i8] c"switch.table.da9063_buck_set_current_limit\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [43 x i8] c"switch.table.da9063_buck_get_current_limit\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [34 x i8] c"switch.table.da9063_buck_get_mode\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [36 x i8] c"switch.table.da9063_buck_get_status\00", align 1
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_da9063_regulator_cleanup, ptr @__initcall__kmod_da9063_regulator__288_982_da9063_regulator_init4, ptr @da9063_parse_regulators_dt._entry, ptr @da9063_parse_regulators_dt._entry.22, ptr @da9063_parse_regulators_dt._entry_ptr, ptr @da9063_parse_regulators_dt._entry_ptr.24, ptr @da9063_regulator_cleanup, ptr @da9063_regulator_probe._entry, ptr @da9063_regulator_probe._entry.12, ptr @da9063_regulator_probe._entry.16, ptr @da9063_regulator_probe._entry.6, ptr @da9063_regulator_probe._entry.9, ptr @da9063_regulator_probe._entry_ptr, ptr @da9063_regulator_probe._entry_ptr.11, ptr @da9063_regulator_probe._entry_ptr.14, ptr @da9063_regulator_probe._entry_ptr.18, ptr @da9063_regulator_probe._entry_ptr.8, ptr @da9063_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @regulators_models, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @da9063_matches, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @da9063_regulator_info, ptr @.str.44, ptr @da9063_buck_ops, ptr @da9063_buck_a_limits, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @da9063_buck_b_limits, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @da9063_bcores_merged_limits, ptr @.str.51, ptr @da9063_bmem_bio_merged_limits, ptr @.str.52, ptr @da9063_ldo_ops, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @switch.table.da9063_buck_set_current_limit, ptr @switch.table.da9063_buck_get_current_limit, ptr @switch.table.da9063_buck_get_mode, ptr @switch.table.da9063_buck_get_status], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators_models to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_regulator_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_regulator_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_regulator_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_parse_regulators_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_matches to i32), i32 380, i32 448, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_parse_regulators_dt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_regulator_info to i32), i32 6612, i32 8256, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_buck_a_limits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_buck_b_limits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_bcores_merged_limits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_bmem_bio_merged_limits to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9063_buck_set_current_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9063_buck_get_current_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9063_buck_get_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9063_buck_get_status to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9063_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9063_regulator_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9063_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %4 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %5 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %6 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %7 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %8 = call ptr @memset(ptr %config, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val, align 4, !annotation !157
  %type.i = getelementptr inbounds %struct.da9063, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  %spec.select.i = select i1 %cmp.i, i32 13, i32 19
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call3.i = tail call ptr @of_get_child_by_name(ptr noundef %13, ptr noundef nonnull @.str.19) #6
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %do.end

if.end7.i:                                        ; preds = %entry
  %call9.i = tail call i32 @of_regulator_match(ptr noundef %dev, ptr noundef nonnull %call3.i, ptr noundef nonnull @da9063_matches, i32 noundef %spec.select.i) #6
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end14.i, label %if.end17.i

do.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %do.end

if.end17.i:                                       ; preds = %if.end7.i
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool20.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not.i, label %if.end17.i.do.end_crit_edge, label %if.end23.i

if.end17.i.do.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end23.i:                                       ; preds = %if.end17.i
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call9.i, i32 8) #6
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !158

devm_kcalloc.exit.thread.i:                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %regulator_data71.i = getelementptr inbounds %struct.da9063_regulators_pdata, ptr %call.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %regulator_data71.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %regulator_data71.i, align 4
  br label %do.end

devm_kcalloc.exit.i:                              ; preds = %if.end23.i
  %17 = extractvalue { i32, i1 } %14, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %17, i32 noundef 3520) #6
  %regulator_data.i = getelementptr inbounds %struct.da9063_regulators_pdata, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %regulator_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i.i, ptr %regulator_data.i, align 4
  %tobool27.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool27.not.i, label %devm_kcalloc.exit.i.do.end_crit_edge, label %if.end30.i

devm_kcalloc.exit.i.do.end_crit_edge:             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end30.i:                                       ; preds = %devm_kcalloc.exit.i
  %19 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call9.i, ptr %call.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end30.i
  %n.075.i = phi i32 [ 0, %if.end30.i ], [ %n.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.073.i = phi i32 [ 0, %if.end30.i ], [ %inc39.i, %for.inc.i.for.body.i_crit_edge ]
  %init_data.i = getelementptr [19 x %struct.of_regulator_match], ptr @da9063_matches, i32 0, i32 %i.073.i, i32 2
  %20 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_data.i, align 4
  %tobool32.not.i = icmp eq ptr %21, null
  br i1 %tobool32.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end34.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end34.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %regulator_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regulator_data.i, align 4
  %arrayidx36.i = getelementptr %struct.da9063_regulator_data, ptr %23, i32 %n.075.i
  %24 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.073.i, ptr %arrayidx36.i, align 4
  %25 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_data.i, align 4
  %initdata.i = getelementptr %struct.da9063_regulator_data, ptr %23, i32 %n.075.i, i32 1
  %27 = ptrtoint ptr %initdata.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %initdata.i, align 4
  %inc.i = add i32 %n.075.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end34.i, %for.body.i.for.inc.i_crit_edge
  %n.1.i = phi i32 [ %inc.i, %if.end34.i ], [ %n.075.i, %for.body.i.for.inc.i_crit_edge ]
  %inc39.i = add nuw nsw i32 %i.073.i, 1
  %exitcond.not.i = icmp eq i32 %inc39.i, %spec.select.i
  br i1 %exitcond.not.i, label %da9063_parse_regulators_dt.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

da9063_parse_regulators_dt.exit:                  ; preds = %for.inc.i
  %cmp.i320 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i320, label %da9063_parse_regulators_dt.exit.do.end_crit_edge, label %lor.lhs.false

da9063_parse_regulators_dt.exit.do.end_crit_edge: ; preds = %da9063_parse_regulators_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %da9063_parse_regulators_dt.exit
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %for.cond.preheader

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.preheader:                               ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %for.inc.1 [
    i32 0, label %for.cond.preheader.if.end17_crit_edge
    i32 1, label %if.end17.fold.split
  ]

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %da9063_parse_regulators_dt.exit.do.end_crit_edge, %devm_kcalloc.exit.i.do.end_crit_edge, %devm_kcalloc.exit.thread.i, %if.end17.i.do.end_crit_edge, %do.end14.i, %do.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

for.inc.1:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %34) #9
  br label %cleanup

if.end17.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %if.end17.fold.split, %for.cond.preheader.if.end17_crit_edge
  %model.0346.lcssa = phi ptr [ @regulators_models, %for.cond.preheader.if.end17_crit_edge ], [ getelementptr inbounds ([3 x %struct.da9063_dev_model], ptr @regulators_models, i32 0, i32 1), %if.end17.fold.split ]
  %regmap = getelementptr inbounds %struct.da9063, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_read(ptr noundef %36, i32 noundef 269, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %and = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  %and27 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %n_regulators30 = getelementptr inbounds %struct.da9063_dev_model, ptr %model.0346.lcssa, i32 0, i32 1
  %39 = ptrtoint ptr %n_regulators30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_regulators30, align 4
  %n_regulators.0.v = select i1 %tobool26.not, i32 -1, i32 -2
  %n_regulators.0 = add i32 %n_regulators.0.v, %40
  %n_regulators.1.v = select i1 %tobool28.not, i32 -1, i32 -2
  %n_regulators.1 = add i32 %n_regulators.0, %n_regulators.1.v
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_regulators.1, i32 272) #6
  %42 = extractvalue { i32, i1 } %41, 1
  %43 = extractvalue { i32, i1 } %41, 0
  %44 = or i32 %43, 4
  %retval.0.i321 = select i1 %42, i32 -1, i32 %44
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i321, i32 noundef 3520) #6
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %if.end25.cleanup_crit_edge, label %if.end45

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.end25
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %n_regulators.1, ptr %call.i, align 4
  %driver_data.i.i322 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i322 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i322, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_regulators.1)
  %cmp48348.not = icmp eq i32 %n_regulators.1, 0
  br i1 %cmp48348.not, label %if.end45.while.end_crit_edge, label %while.body.lr.ph.lr.ph

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %if.end45
  %47 = getelementptr inbounds i8, ptr %config, i32 4
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end164.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %n.0.ph350 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %inc166, %if.end164.while.body.lr.ph_crit_edge ]
  %id.0.ph349 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %inc165, %if.end164.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %while.body.lr.ph
  %id.0347 = phi i32 [ %id.0.ph349, %while.body.lr.ph ], [ %id.0347.be, %while.body.backedge ]
  %48 = zext i32 %id.0347 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %id.0347, label %while.body.sw.epilog_crit_edge [
    i32 0, label %while.body.sw.bb_crit_edge
    i32 1, label %while.body.sw.bb_crit_edge391
    i32 3, label %while.body.sw.bb52_crit_edge
    i32 4, label %while.body.sw.bb52_crit_edge392
    i32 6, label %sw.bb57
    i32 7, label %sw.bb62
  ]

while.body.sw.bb52_crit_edge392:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb52

while.body.sw.bb52_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb52

while.body.sw.bb_crit_edge391:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge391
  br i1 %tobool26.not, label %sw.bb.sw.epilog_crit_edge, label %if.then50

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then50:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nuw nsw i32 %id.0347, 1
  br label %while.body.backedge

while.body.backedge:                              ; preds = %sw.bb62.while.body.backedge_crit_edge, %sw.bb57.while.body.backedge_crit_edge, %if.then54, %if.then50
  %id.0347.be = phi i32 [ %inc55, %if.then54 ], [ %inc, %if.then50 ], [ 7, %sw.bb57.while.body.backedge_crit_edge ], [ 8, %sw.bb62.while.body.backedge_crit_edge ]
  br label %while.body

sw.bb52:                                          ; preds = %while.body.sw.bb52_crit_edge, %while.body.sw.bb52_crit_edge392
  br i1 %tobool28.not, label %sw.bb52.sw.epilog_crit_edge, label %if.then54

sw.bb52.sw.epilog_crit_edge:                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then54:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  %inc55 = add nuw nsw i32 %id.0347, 1
  br label %while.body.backedge

sw.bb57:                                          ; preds = %while.body
  br i1 %tobool26.not, label %sw.bb57.while.body.backedge_crit_edge, label %sw.bb57.sw.epilog_crit_edge

sw.bb57.sw.epilog_crit_edge:                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb57.while.body.backedge_crit_edge:            ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.backedge

sw.bb62:                                          ; preds = %while.body
  br i1 %tobool28.not, label %sw.bb62.while.body.backedge_crit_edge, label %sw.bb62.sw.epilog_crit_edge

sw.bb62.sw.epilog_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb62.while.body.backedge_crit_edge:            ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.backedge

sw.epilog:                                        ; preds = %sw.bb62.sw.epilog_crit_edge, %sw.bb57.sw.epilog_crit_edge, %sw.bb52.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge
  %arrayidx = getelementptr %struct.da9063_regulators, ptr %call.i, i32 0, i32 1, i32 %n.0.ph350
  %hw = getelementptr %struct.da9063_regulators, ptr %call.i, i32 0, i32 1, i32 %n.0.ph350, i32 2
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %3, ptr %hw, align 4
  %50 = ptrtoint ptr %model.0346.lcssa to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %model.0346.lcssa, align 4
  %arrayidx68 = getelementptr %struct.da9063_regulator_info, ptr %51, i32 %id.0347
  %info = getelementptr %struct.da9063_regulators, ptr %call.i, i32 0, i32 1, i32 %n.0.ph350, i32 3
  %52 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx68, ptr %info, align 4
  %53 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx68, i32 244)
  %type72 = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 12
  %54 = ptrtoint ptr %type72 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %type72, align 4
  %owner = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 13
  %55 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %owner, align 4
  %mode = getelementptr %struct.da9063_regulator_info, ptr %51, i32 %id.0347, i32 1
  %56 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool75.not = icmp eq i32 %57, 0
  br i1 %tobool75.not, label %sw.epilog.if.end89_crit_edge, label %if.then76

sw.epilog.if.end89_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then76:                                        ; preds = %sw.epilog
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %60 = insertvalue [5 x i32] undef, i32 %57, 0
  %.elt312 = getelementptr inbounds [5 x i32], ptr %mode, i32 0, i32 1
  %61 = ptrtoint ptr %.elt312 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack313 = load i32, ptr %.elt312, align 4
  %62 = insertvalue [5 x i32] %60, i32 %.unpack313, 1
  %.elt314 = getelementptr inbounds [5 x i32], ptr %mode, i32 0, i32 2
  %63 = ptrtoint ptr %.elt314 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack315 = load i32, ptr %.elt314, align 4
  %64 = insertvalue [5 x i32] %62, i32 %.unpack315, 2
  %.elt316 = getelementptr inbounds [5 x i32], ptr %mode, i32 0, i32 3
  %65 = ptrtoint ptr %.elt316 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack317 = load i32, ptr %.elt316, align 4
  %66 = insertvalue [5 x i32] %64, i32 %.unpack317, 3
  %.elt318 = getelementptr inbounds [5 x i32], ptr %mode, i32 0, i32 4
  %67 = ptrtoint ptr %.elt318 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack319 = load i32, ptr %.elt318, align 4
  %68 = insertvalue [5 x i32] %66, i32 %.unpack319, 4
  %call81 = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %59, [5 x i32] %68) #6
  %mode82 = getelementptr %struct.da9063_regulators, ptr %call.i, i32 0, i32 1, i32 %n.0.ph350, i32 4
  %69 = ptrtoint ptr %mode82 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call81, ptr %mode82, align 4
  %cmp.i323 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i323, label %if.then85, label %if.then76.if.end89_crit_edge

if.then76.if.end89_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then85:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %call81 to i32
  br label %cleanup

if.end89:                                         ; preds = %if.then76.if.end89_crit_edge, %sw.epilog.if.end89_crit_edge
  %71 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %info, align 4
  %suspend = getelementptr inbounds %struct.da9063_regulator_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool92.not = icmp eq i32 %74, 0
  br i1 %tobool92.not, label %if.end89.if.end106_crit_edge, label %if.then93

if.end89.if.end106_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then93:                                        ; preds = %if.end89
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %77 = insertvalue [5 x i32] undef, i32 %74, 0
  %.elt303 = getelementptr inbounds %struct.da9063_regulator_info, ptr %72, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %.elt303 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack304 = load i32, ptr %.elt303, align 4
  %79 = insertvalue [5 x i32] %77, i32 %.unpack304, 1
  %.elt305 = getelementptr inbounds %struct.da9063_regulator_info, ptr %72, i32 0, i32 2, i32 2
  %80 = ptrtoint ptr %.elt305 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack306 = load i32, ptr %.elt305, align 4
  %81 = insertvalue [5 x i32] %79, i32 %.unpack306, 2
  %.elt307 = getelementptr inbounds %struct.da9063_regulator_info, ptr %72, i32 0, i32 2, i32 3
  %82 = ptrtoint ptr %.elt307 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack308 = load i32, ptr %.elt307, align 4
  %83 = insertvalue [5 x i32] %81, i32 %.unpack308, 3
  %.elt309 = getelementptr inbounds %struct.da9063_regulator_info, ptr %72, i32 0, i32 2, i32 4
  %84 = ptrtoint ptr %.elt309 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack310 = load i32, ptr %.elt309, align 4
  %85 = insertvalue [5 x i32] %83, i32 %.unpack310, 4
  %call98 = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %76, [5 x i32] %85) #6
  %suspend99 = getelementptr %struct.da9063_regulators, ptr %call.i, i32 0, i32 1, i32 %n.0.ph350, i32 5
  %86 = ptrtoint ptr %suspend99 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call98, ptr %suspend99, align 4
  %cmp.i324 = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i324, label %if.then102, label %if.then93.if.end106_crit_edge

if.then93.if.end106_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then102:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %call98 to i32
  br label %cleanup

if.end106:                                        ; preds = %if.then93.if.end106_crit_edge, %if.end89.if.end106_crit_edge
  %88 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %info, align 4
  %sleep = getelementptr inbounds %struct.da9063_regulator_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool109.not = icmp eq i32 %91, 0
  br i1 %tobool109.not, label %if.end106.if.end123_crit_edge, label %if.then110

if.end106.if.end123_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then110:                                       ; preds = %if.end106
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %94 = insertvalue [5 x i32] undef, i32 %91, 0
  %.elt294 = getelementptr inbounds %struct.da9063_regulator_info, ptr %89, i32 0, i32 3, i32 1
  %95 = ptrtoint ptr %.elt294 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.unpack295 = load i32, ptr %.elt294, align 4
  %96 = insertvalue [5 x i32] %94, i32 %.unpack295, 1
  %.elt296 = getelementptr inbounds %struct.da9063_regulator_info, ptr %89, i32 0, i32 3, i32 2
  %97 = ptrtoint ptr %.elt296 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.unpack297 = load i32, ptr %.elt296, align 4
  %98 = insertvalue [5 x i32] %96, i32 %.unpack297, 2
  %.elt298 = getelementptr inbounds %struct.da9063_regulator_info, ptr %89, i32 0, i32 3, i32 3
  %99 = ptrtoint ptr %.elt298 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.unpack299 = load i32, ptr %.elt298, align 4
  %100 = insertvalue [5 x i32] %98, i32 %.unpack299, 3
  %.elt300 = getelementptr inbounds %struct.da9063_regulator_info, ptr %89, i32 0, i32 3, i32 4
  %101 = ptrtoint ptr %.elt300 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.unpack301 = load i32, ptr %.elt300, align 4
  %102 = insertvalue [5 x i32] %100, i32 %.unpack301, 4
  %call115 = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %93, [5 x i32] %102) #6
  %sleep116 = getelementptr %struct.da9063_regulators, ptr %call.i, i32 0, i32 1, i32 %n.0.ph350, i32 6
  %103 = ptrtoint ptr %sleep116 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call115, ptr %sleep116, align 4
  %cmp.i325 = icmp ugt ptr %call115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i325, label %if.then119, label %if.then110.if.end123_crit_edge

if.then110.if.end123_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then119:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %call115 to i32
  br label %cleanup

if.end123:                                        ; preds = %if.then110.if.end123_crit_edge, %if.end106.if.end123_crit_edge
  %105 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %info, align 4
  %suspend_sleep = getelementptr inbounds %struct.da9063_regulator_info, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %suspend_sleep to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %suspend_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool126.not = icmp eq i32 %108, 0
  br i1 %tobool126.not, label %if.end123.if.end140_crit_edge, label %if.then127

if.end123.if.end140_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

if.then127:                                       ; preds = %if.end123
  %109 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap, align 4
  %111 = insertvalue [5 x i32] undef, i32 %108, 0
  %.elt285 = getelementptr inbounds %struct.da9063_regulator_info, ptr %106, i32 0, i32 4, i32 1
  %112 = ptrtoint ptr %.elt285 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.unpack286 = load i32, ptr %.elt285, align 4
  %113 = insertvalue [5 x i32] %111, i32 %.unpack286, 1
  %.elt287 = getelementptr inbounds %struct.da9063_regulator_info, ptr %106, i32 0, i32 4, i32 2
  %114 = ptrtoint ptr %.elt287 to i32
  call void @__asan_load4_noabort(i32 %114)
  %.unpack288 = load i32, ptr %.elt287, align 4
  %115 = insertvalue [5 x i32] %113, i32 %.unpack288, 2
  %.elt289 = getelementptr inbounds %struct.da9063_regulator_info, ptr %106, i32 0, i32 4, i32 3
  %116 = ptrtoint ptr %.elt289 to i32
  call void @__asan_load4_noabort(i32 %116)
  %.unpack290 = load i32, ptr %.elt289, align 4
  %117 = insertvalue [5 x i32] %115, i32 %.unpack290, 3
  %.elt291 = getelementptr inbounds %struct.da9063_regulator_info, ptr %106, i32 0, i32 4, i32 4
  %118 = ptrtoint ptr %.elt291 to i32
  call void @__asan_load4_noabort(i32 %118)
  %.unpack292 = load i32, ptr %.elt291, align 4
  %119 = insertvalue [5 x i32] %117, i32 %.unpack292, 4
  %call132 = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %110, [5 x i32] %119) #6
  %suspend_sleep133 = getelementptr %struct.da9063_regulators, ptr %call.i, i32 0, i32 1, i32 %n.0.ph350, i32 7
  %120 = ptrtoint ptr %suspend_sleep133 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call132, ptr %suspend_sleep133, align 4
  %cmp.i326 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i326, label %if.then136, label %if.then127.if.end140_crit_edge

if.then127.if.end140_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

if.then136:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %call132 to i32
  br label %cleanup

if.end140:                                        ; preds = %if.then127.if.end140_crit_edge, %if.end123.if.end140_crit_edge
  %122 = call ptr @memset(ptr %47, i32 0, i32 20)
  %123 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %dev, ptr %config, align 4
  %124 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp11.not.i = icmp eq i32 %125, 0
  br i1 %cmp11.not.i, label %if.end140.if.end148_crit_edge, label %for.body.lr.ph.i

if.end140.if.end148_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

for.body.lr.ph.i:                                 ; preds = %if.end140
  %126 = ptrtoint ptr %regulator_data.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regulator_data.i, align 4
  br label %for.body.i328

for.body.i328:                                    ; preds = %for.inc.i332.for.body.i328_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i330, %for.inc.i332.for.body.i328_crit_edge ]
  %arrayidx.i = getelementptr %struct.da9063_regulator_data, ptr %127, i32 %i.012.i
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %id.0347)
  %cmp2.i = icmp eq i32 %129, %id.0347
  br i1 %cmp2.i, label %if.then.i, label %for.inc.i332

if.then.i:                                        ; preds = %for.body.i328
  call void @__sanitizer_cov_trace_pc() #8
  %initdata.i329 = getelementptr %struct.da9063_regulator_data, ptr %127, i32 %i.012.i, i32 1
  %130 = ptrtoint ptr %initdata.i329 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %initdata.i329, align 4
  br label %if.end148

for.inc.i332:                                     ; preds = %for.body.i328
  %inc.i330 = add nuw i32 %i.012.i, 1
  %exitcond.not.i331 = icmp eq i32 %inc.i330, %125
  br i1 %exitcond.not.i331, label %for.inc.i332.if.end148_crit_edge, label %for.inc.i332.for.body.i328_crit_edge

for.inc.i332.for.body.i328_crit_edge:             ; preds = %for.inc.i332
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i328

for.inc.i332.if.end148_crit_edge:                 ; preds = %for.inc.i332
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

if.end148:                                        ; preds = %for.inc.i332.if.end148_crit_edge, %if.then.i, %if.end140.if.end148_crit_edge
  %retval.0.i333 = phi ptr [ %131, %if.then.i ], [ null, %if.end140.if.end148_crit_edge ], [ null, %for.inc.i332.if.end148_crit_edge ]
  %132 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %retval.0.i333, ptr %4, align 4
  %133 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx, ptr %5, align 4
  %of_node = getelementptr %struct.of_regulator_match, ptr @da9063_matches, i32 %id.0347, i32 3
  %134 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %of_node, align 4
  %136 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %135, ptr %6, align 4
  %137 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap, align 4
  %139 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %7, align 4
  %call153 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #6
  %rdev = getelementptr %struct.da9063_regulators, ptr %call.i, i32 0, i32 1, i32 %n.0.ph350, i32 1
  %140 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call153, ptr %rdev, align 4
  %cmp.i334 = icmp ugt ptr %call153, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i334, label %do.end159, label %if.end164

do.end159:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  %141 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %142) #9
  %143 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rdev, align 4
  %145 = ptrtoint ptr %144 to i32
  br label %cleanup

if.end164:                                        ; preds = %if.end148
  %inc165 = add i32 %id.0347, 1
  %inc166 = add nuw i32 %n.0.ph350, 1
  %146 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %call.i, align 4
  %cmp48 = icmp ult i32 %inc166, %147
  br i1 %cmp48, label %if.end164.while.body.lr.ph_crit_edge, label %if.end164.while.end_crit_edge

if.end164.while.end_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end164.while.body.lr.ph_crit_edge:             ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.end164.while.end_crit_edge, %if.end45.while.end_crit_edge
  %call167 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %while.end.cleanup_crit_edge, label %if.end170

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end170:                                        ; preds = %while.end
  %call172 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call167, ptr noundef null, ptr noundef nonnull @da9063_ldo_lim_event, i32 noundef 8200, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end170.cleanup_crit_edge, label %do.end177

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end177:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end177, %if.end170.cleanup_crit_edge, %while.end.cleanup_crit_edge, %do.end159, %if.then136, %if.then119, %if.then102, %if.then85, %if.end25.cleanup_crit_edge, %do.end23, %for.inc.1, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call18, %do.end23 ], [ %70, %if.then85 ], [ %87, %if.then102 ], [ %104, %if.then119 ], [ %121, %if.then136 ], [ %145, %do.end159 ], [ -19, %for.inc.1 ], [ -12, %if.end25.cleanup_crit_edge ], [ %call167, %while.end.cleanup_crit_edge ], [ %call172, %do.end177 ], [ 0, %if.end170.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_ldo_lim_event(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.da9063_regulators, ptr %data, i32 63
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #6
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bits, align 4, !annotation !157
  %regmap = getelementptr inbounds %struct.da9063, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %bits) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %i.024 = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.024)
  %cmp225 = icmp sgt i32 %i.024, -1
  br i1 %cmp225, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.026 = phi i32 [ %i.0, %for.inc.for.body_crit_edge ], [ %i.024, %if.end.for.body_crit_edge ]
  %info = getelementptr %struct.da9063_regulators, ptr %data, i32 0, i32 1, i32 %i.026, i32 3
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %oc_event = getelementptr inbounds %struct.da9063_regulator_info, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %oc_event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oc_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp5.not = icmp eq i32 %10, 4
  br i1 %cmp5.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %lsb = getelementptr inbounds %struct.da9063_regulator_info, ptr %8, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lsb, align 4
  %shl = shl nuw i32 1, %12
  %13 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits, align 4
  %and = and i32 %shl, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.for.inc_crit_edge, label %if.then10

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %rdev = getelementptr %struct.da9063_regulators, ptr %data, i32 0, i32 1, i32 %i.026, i32 1
  %15 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rdev, align 4
  %call11 = call i32 @regulator_notifier_call_chain(ptr noundef %16, i32 noundef 2, ptr noundef null) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.026, -1
  %cmp2 = icmp sgt i32 %i.0, -1
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_buck_set_current_limit(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  %orig_limit.i = alloca i32, align 4
  %orig_overdrive.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %id.i = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %4 = icmp ult i32 %3, 7
  br i1 %4, label %switch.hole_check, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %3 to i8
  %switch.shifted = lshr i8 71, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end9_crit_edge, label %switch.lookup

switch.hole_check.if.end9_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.da9063_buck_set_current_limit, i32 0, i32 %3
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %n_current_limits = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %n_current_limits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_current_limits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %curr_table = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %curr_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curr_table, align 4
  %sub = add i32 %8, -1
  %arrayidx = getelementptr i32, ptr %10, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %max_uA)
  %cmp4 = icmp ult i32 %12, %max_uA
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig_overdrive.i) #6
  %13 = ptrtoint ptr %orig_overdrive.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %orig_overdrive.i, align 4, !annotation !157
  %hw.i = getelementptr inbounds %struct.da9063_regulator, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 4
  %regmap.i = getelementptr inbounds %struct.da9063, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %17, i32 noundef 269, ptr noundef nonnull %orig_overdrive.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then5.da9063_buck_set_limit_set_overdrive.exit_crit_edge, label %if.end.i

if.then5.da9063_buck_set_limit_set_overdrive.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9063_buck_set_limit_set_overdrive.exit

if.end.i:                                         ; preds = %if.then5
  %18 = ptrtoint ptr %orig_overdrive.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %orig_overdrive.i, align 4
  %and.i = and i32 %19, %switch.load
  store i32 %and.i, ptr %orig_overdrive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %20 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i, align 4
  %regmap5.i = getelementptr inbounds %struct.da9063, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap5.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 269, i32 noundef %switch.load, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %if.then3.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge, label %if.then3.i.if.end10.i_crit_edge

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then3.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9063_buck_set_limit_set_overdrive.exit

if.end10.i:                                       ; preds = %if.then3.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %div.i = sdiv i32 %min_uA, 2
  %div11.i = sdiv i32 %max_uA, 2
  %call12.i = call i32 @regulator_set_current_limit_regmap(ptr noundef %rdev, i32 noundef %div.i, i32 noundef %div11.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end10.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge

if.end10.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9063_buck_set_limit_set_overdrive.exit

land.lhs.true.i:                                  ; preds = %if.end10.i
  %24 = ptrtoint ptr %orig_overdrive.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %orig_overdrive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp14.i = icmp eq i32 %25, 0
  br i1 %cmp14.i, label %if.then15.i, label %land.lhs.true.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge

land.lhs.true.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9063_buck_set_limit_set_overdrive.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw.i, align 4
  %regmap17.i = getelementptr inbounds %struct.da9063, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %regmap17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap17.i, align 4
  %call.i32.i = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 269, i32 noundef %switch.load, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %da9063_buck_set_limit_set_overdrive.exit

da9063_buck_set_limit_set_overdrive.exit:         ; preds = %if.then15.i, %land.lhs.true.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge, %if.end10.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge, %if.then3.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge, %if.then5.da9063_buck_set_limit_set_overdrive.exit_crit_edge
  %retval.0.i25 = phi i32 [ %call1.i, %if.then5.da9063_buck_set_limit_set_overdrive.exit_crit_edge ], [ %call.i.i, %if.then3.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge ], [ %call12.i, %if.then15.i ], [ %call12.i, %land.lhs.true.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge ], [ %call12.i, %if.end10.i.da9063_buck_set_limit_set_overdrive.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig_overdrive.i) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig_limit.i) #6
  %30 = ptrtoint ptr %orig_limit.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %orig_limit.i, align 4, !annotation !157
  %regmap.i27 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %31 = ptrtoint ptr %regmap.i27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i27, align 4
  %33 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdev, align 8
  %csel_reg.i = getelementptr inbounds %struct.regulator_desc, ptr %34, i32 0, i32 30
  %35 = ptrtoint ptr %csel_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %csel_reg.i, align 4
  %call1.i28 = call i32 @regmap_read(ptr noundef %32, i32 noundef %36, ptr noundef nonnull %orig_limit.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %cmp.i29 = icmp slt i32 %call1.i28, 0
  br i1 %cmp.i29, label %if.end7.da9063_buck_set_limit_clear_overdrive.exit_crit_edge, label %if.end.i30

if.end7.da9063_buck_set_limit_clear_overdrive.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9063_buck_set_limit_clear_overdrive.exit

if.end.i30:                                       ; preds = %if.end7
  %call2.i = call i32 @regulator_set_current_limit_regmap(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i30.da9063_buck_set_limit_clear_overdrive.exit_crit_edge, label %if.end5.i

if.end.i30.da9063_buck_set_limit_clear_overdrive.exit_crit_edge: ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9063_buck_set_limit_clear_overdrive.exit

if.end5.i:                                        ; preds = %if.end.i30
  %hw.i31 = getelementptr inbounds %struct.da9063_regulator, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %hw.i31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw.i31, align 4
  %regmap6.i = getelementptr inbounds %struct.da9063, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %regmap6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap6.i, align 4
  %call.i.i32 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 269, i32 noundef %switch.load, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %cmp8.i = icmp slt i32 %call.i.i32, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end5.i.da9063_buck_set_limit_clear_overdrive.exit_crit_edge

if.end5.i.da9063_buck_set_limit_clear_overdrive.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da9063_buck_set_limit_clear_overdrive.exit

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %regmap.i27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i27, align 4
  %43 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rdev, align 8
  %csel_reg12.i = getelementptr inbounds %struct.regulator_desc, ptr %44, i32 0, i32 30
  %45 = ptrtoint ptr %csel_reg12.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %csel_reg12.i, align 4
  %47 = ptrtoint ptr %orig_limit.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %orig_limit.i, align 4
  %call13.i = call i32 @regmap_write(ptr noundef %42, i32 noundef %46, i32 noundef %48) #6
  br label %da9063_buck_set_limit_clear_overdrive.exit

da9063_buck_set_limit_clear_overdrive.exit:       ; preds = %if.then9.i, %if.end5.i.da9063_buck_set_limit_clear_overdrive.exit_crit_edge, %if.end.i30.da9063_buck_set_limit_clear_overdrive.exit_crit_edge, %if.end7.da9063_buck_set_limit_clear_overdrive.exit_crit_edge
  %retval.0.i33 = phi i32 [ %call1.i28, %if.end7.da9063_buck_set_limit_clear_overdrive.exit_crit_edge ], [ %call2.i, %if.end.i30.da9063_buck_set_limit_clear_overdrive.exit_crit_edge ], [ %call.i.i32, %if.then9.i ], [ %call.i.i32, %if.end5.i.da9063_buck_set_limit_clear_overdrive.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig_limit.i) #6
  br label %cleanup

if.end9:                                          ; preds = %switch.hole_check.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = tail call i32 @regulator_set_current_limit_regmap(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %da9063_buck_set_limit_clear_overdrive.exit, %da9063_buck_set_limit_set_overdrive.exit, %switch.lookup.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i25, %da9063_buck_set_limit_set_overdrive.exit ], [ %retval.0.i33, %da9063_buck_set_limit_clear_overdrive.exit ], [ %call10, %if.end9 ], [ -22, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_buck_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !157
  %call1 = tail call i32 @regulator_get_current_limit_regmap(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rdev, align 8
  %id.i = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %5 = icmp ult i32 %4, 7
  br i1 %5, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %4 to i8
  %switch.shifted = lshr i8 71, %switch.maskindex
  %6 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.lobit.not = icmp eq i8 %6, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.da9063_buck_get_current_limit, i32 0, i32 %4
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %hw = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %regmap = getelementptr inbounds %struct.da9063, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %11, i32 noundef 269, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %switch.lookup.cleanup_crit_edge, label %if.end7

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %and = and i32 %13, %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp ne i32 %and, 0
  %mul = zext i1 %tobool8.not to i32
  %spec.select = shl nuw i32 %call1, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call4, %switch.lookup.cleanup_crit_edge ], [ %spec.select, %if.end7 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_buck_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 8, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 1, %sw.bb2 ], [ 3, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ]
  %mode3 = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode3, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_buck_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !157
  %mode = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode, align 4
  %call1 = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %switch.tableidx = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 3
  br i1 %5, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %if.end
  %sleep = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep, align 4
  %call4 = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.epilog.cleanup_crit_edge, label %if.end7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %. = select i1 %tobool.not, i32 1, i32 8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.da9063_buck_get_mode, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end7, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %., %if.end7 ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_buck_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_is_enabled_regmap(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.end12_crit_edge, label %if.else

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then2:                                         ; preds = %if.else
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !157
  %mode.i = getelementptr inbounds %struct.da9063_regulator, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode.i, align 4
  %call1.i = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.else7, label %if.end.i

if.end.i:                                         ; preds = %if.then2
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %switch.tableidx = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 3
  br i1 %5, label %switch.lookup, label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i
  %sleep.i = getelementptr inbounds %struct.da9063_regulator, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %sleep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sleep.i, align 4
  %call4.i = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %11, label %if.end7.i

if.end7.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 8
  br label %if.then5

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.da9063_buck_get_status, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.then5

if.then5:                                         ; preds = %switch.lookup, %if.end7.i
  %retval.0.i.ph = phi i32 [ %..i, %if.end7.i ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call6 = call i32 @regulator_mode_to_status(i32 noundef %retval.0.i.ph) #6
  br label %if.end12

if.else7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end12

11:                                               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end12

if.end12:                                         ; preds = %11, %if.else7, %if.then5, %if.else.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call, %if.else.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ -5, %11 ], [ %call1.i, %if.else7 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %info = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call1 = tail call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_mask, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true), !range !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %iszero = icmp eq i32 %5, 0
  %sub = select i1 %iszero, i32 -1, i32 %6
  %shl = shl i32 %call1, %sub
  %hw = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %regmap = getelementptr inbounds %struct.da9063, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %suspend_vsel_reg = getelementptr inbounds %struct.da9063_regulator_info, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %suspend_vsel_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %suspend_vsel_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef %5, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_suspend_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %suspend = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suspend, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_suspend_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %suspend = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suspend, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_buck_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 8, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 1, %sw.bb2 ], [ 3, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ]
  %mode3 = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode3, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_mode_to_status(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_ldo_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %sleep = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sleep, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_ldo_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !157
  %sleep = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sleep, align 4
  %call1 = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i32 2, i32 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_ldo_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_is_enabled_regmap(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.end12_crit_edge, label %if.else

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then2:                                         ; preds = %if.else
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !157
  %sleep.i = getelementptr inbounds %struct.da9063_regulator, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %sleep.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sleep.i, align 4
  %call1.i = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %da9063_ldo_get_mode.exit, label %if.then5

da9063_ldo_get_mode.exit:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end12

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %..i = select i1 %tobool.not.i, i32 2, i32 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call6 = call i32 @regulator_mode_to_status(i32 noundef %..i) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %da9063_ldo_get_mode.exit, %if.else.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call, %if.else.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ -5, %da9063_ldo_get_mode.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_ldo_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %suspend_sleep = getelementptr inbounds %struct.da9063_regulator, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %suspend_sleep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %suspend_sleep, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__initcall__kmod_da9063_regulator__288_982_da9063_regulator_init4, !1, !"__initcall__kmod_da9063_regulator__288_982_da9063_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/da9063-regulator.c", i32 982, i32 1}
!2 = !{ptr @__exitcall_da9063_regulator_cleanup, !3, !"__exitcall_da9063_regulator_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/da9063-regulator.c", i32 988, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/da9063-regulator.c", i32 992, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/da9063-regulator.c", i32 993, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/da9063-regulator.c", i32 994, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/da9063-regulator.c", i32 995, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/da9063-regulator.c", i32 973, i32 11}
!15 = !{ptr @da9063_regulator_driver, !16, !"da9063_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/da9063-regulator.c", i32 971, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/da9063-regulator.c", i32 822, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @da9063_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @da9063_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/da9063-regulator.c", i32 833, i32 3}
!27 = !{ptr @da9063_regulator_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @da9063_regulator_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/da9063-regulator.c", i32 840, i32 3}
!31 = !{ptr @da9063_regulator_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9063_regulator_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/da9063-regulator.c", i32 947, i32 4}
!35 = !{ptr @da9063_regulator_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @da9063_regulator_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/da9063-regulator.c", i32 957, i32 38}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/da9063-regulator.c", i32 966, i32 3}
!41 = !{ptr @da9063_regulator_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @da9063_regulator_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/da9063-regulator.c", i32 766, i32 57}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/da9063-regulator.c", i32 768, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @da9063_parse_regulators_dt._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @da9063_parse_regulators_dt._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/da9063-regulator.c", i32 776, i32 3}
!52 = !{ptr @da9063_parse_regulators_dt._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @da9063_parse_regulators_dt._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/da9063-regulator.c", i32 730, i32 43}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/da9063-regulator.c", i32 731, i32 43}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/da9063-regulator.c", i32 732, i32 43}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/da9063-regulator.c", i32 733, i32 43}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/da9063-regulator.c", i32 734, i32 43}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/da9063-regulator.c", i32 735, i32 43}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/da9063-regulator.c", i32 736, i32 43}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/da9063-regulator.c", i32 737, i32 43}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/da9063-regulator.c", i32 738, i32 43}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/da9063-regulator.c", i32 739, i32 43}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/da9063-regulator.c", i32 740, i32 43}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/da9063-regulator.c", i32 741, i32 43}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/da9063-regulator.c", i32 742, i32 43}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/da9063-regulator.c", i32 744, i32 43}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/da9063-regulator.c", i32 745, i32 43}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/da9063-regulator.c", i32 746, i32 43}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/da9063-regulator.c", i32 747, i32 43}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/da9063-regulator.c", i32 748, i32 43}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/da9063-regulator.c", i32 749, i32 43}
!92 = !{ptr @da9063_matches, !93, !"da9063_matches", i1 false, i1 false}
!93 = !{!"../drivers/regulator/da9063-regulator.c", i32 729, i32 34}
!94 = !{ptr @regulators_models, !95, !"regulators_models", i1 false, i1 false}
!95 = !{!"../drivers/regulator/da9063-regulator.c", i32 673, i32 32}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/da9063-regulator.c", i32 580, i32 3}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/da9063-regulator.c", i32 586, i32 3}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/da9063-regulator.c", i32 592, i32 3}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/da9063-regulator.c", i32 598, i32 3}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/da9063-regulator.c", i32 604, i32 3}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/da9063-regulator.c", i32 610, i32 3}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/da9063-regulator.c", i32 616, i32 3}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/da9063-regulator.c", i32 623, i32 3}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/da9063-regulator.c", i32 630, i32 3}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/regulator/da9063-regulator.c", i32 634, i32 3}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/da9063-regulator.c", i32 638, i32 3}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/da9063-regulator.c", i32 642, i32 3}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/da9063-regulator.c", i32 645, i32 3}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/regulator/da9063-regulator.c", i32 651, i32 3}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/regulator/da9063-regulator.c", i32 654, i32 3}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/regulator/da9063-regulator.c", i32 657, i32 3}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/regulator/da9063-regulator.c", i32 661, i32 3}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/da9063-regulator.c", i32 664, i32 3}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/regulator/da9063-regulator.c", i32 668, i32 3}
!134 = !{ptr @da9063_regulator_info, !135, !"da9063_regulator_info", i1 false, i1 false}
!135 = !{!"../drivers/regulator/da9063-regulator.c", i32 578, i32 43}
!136 = !{ptr @da9063_buck_ops, !137, !"da9063_buck_ops", i1 false, i1 false}
!137 = !{!"../drivers/regulator/da9063-regulator.c", i32 543, i32 35}
!138 = !{ptr @da9063_buck_a_limits, !139, !"da9063_buck_a_limits", i1 false, i1 false}
!139 = !{!"../drivers/regulator/da9063-regulator.c", i32 174, i32 27}
!140 = !{ptr @da9063_buck_b_limits, !141, !"da9063_buck_b_limits", i1 false, i1 false}
!141 = !{!"../drivers/regulator/da9063-regulator.c", i32 183, i32 27}
!142 = !{ptr @da9063_bcores_merged_limits, !143, !"da9063_bcores_merged_limits", i1 false, i1 false}
!143 = !{!"../drivers/regulator/da9063-regulator.c", i32 192, i32 27}
!144 = !{ptr @da9063_bmem_bio_merged_limits, !145, !"da9063_bmem_bio_merged_limits", i1 false, i1 false}
!145 = !{!"../drivers/regulator/da9063-regulator.c", i32 201, i32 27}
!146 = !{ptr @da9063_ldo_ops, !147, !"da9063_ldo_ops", i1 false, i1 false}
!147 = !{!"../drivers/regulator/da9063-regulator.c", i32 561, i32 35}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"auto-init"}
!158 = !{!"branch_weights", i32 1, i32 2000}
!159 = !{i32 0, i32 33}
