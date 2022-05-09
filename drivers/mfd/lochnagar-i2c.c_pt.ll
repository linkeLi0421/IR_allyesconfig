; ModuleID = '/llk/IR_all_yes/drivers/mfd/lochnagar-i2c.c_pt.bc'
source_filename = "../drivers/mfd/lochnagar-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lochnagar_update_config\22, \22a\22\09"
module asm "\09.weak\09__crc_lochnagar_update_config\09\09\09\09"
module asm "\09.long\09__crc_lochnagar_update_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lochnagar_update_config:\09\09\09\09\09"
module asm "\09.asciz \09\22lochnagar_update_config\22\09\09\09\09\09"
module asm "__kstrtabns_lochnagar_update_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lochnagar_config = type { i32, ptr, i32, ptr, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.lochnagar = type { i32, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mfd/lochnagar-i2c.c\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_lochnagar_update_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_lochnagar_update_config = external dso_local constant [0 x i8], align 1
@__ksymtab_lochnagar_update_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lochnagar_update_config to i32), ptr @__kstrtab_lochnagar_update_config, ptr @__kstrtabns_lochnagar_update_config }, section "___ksymtab_gpl+lochnagar_update_config", align 4
@__initcall__kmod_lochnagar_i2c__288_398_lochnagar_i2c_init4 = internal global ptr @lochnagar_i2c_init, section ".initcall4.init", align 4
@lochnagar_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @lochnagar_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @lochnagar_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@lochnagar_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Failed to register Lochnagar driver: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lochnagar_i2c_init\00", [45 x i8] zeroinitializer }, align 32
@lochnagar_i2c_init._entry_ptr = internal global ptr @lochnagar_i2c_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lochnagar\00", [22 x i8] zeroinitializer }, align 32
@lochnagar_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,lochnagar1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lochnagar_configs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,lochnagar2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @lochnagar_configs, i64 24) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&lochnagar->analogue_config_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 299, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get reset GPIO: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lochnagar_i2c_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry_ptr = internal global ptr @lochnagar_i2c_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"present\00", [24 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str, i32 306, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get present GPIO: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry_ptr.13 = internal global ptr @lochnagar_i2c_probe._entry.11, section ".printk_index", align 4
@lochnagar_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"lochnagar_i2c:319:(config->regmap)->lock\00", [55 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str, i32 322, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry_ptr.17 = internal global ptr @lochnagar_i2c_probe._entry.15, section ".printk_index", align 4
@lochnagar_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str, i32 329, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read device ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry_ptr.20 = internal global ptr @lochnagar_i2c_probe._entry.18, section ".printk_index", align 4
@lochnagar_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str, i32 339, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ID does not match %s (expected 0x%x got 0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry_ptr.23 = internal global ptr @lochnagar_i2c_probe._entry.21, section ".printk_index", align 4
@lochnagar_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str, i32 346, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read firmware id 1: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry_ptr.26 = internal global ptr @lochnagar_i2c_probe._entry.24, section ".printk_index", align 4
@lochnagar_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.7, ptr @.str, i32 354, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read firmware id 2: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry_ptr.29 = internal global ptr @lochnagar_i2c_probe._entry.27, section ".printk_index", align 4
@lochnagar_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.7, ptr @.str, i32 361, ptr @.str.32, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Found %s (0x%x) revision %u firmware 0x%.6x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry_ptr.33 = internal global ptr @lochnagar_i2c_probe._entry.30, section ".printk_index", align 4
@lochnagar_i2c_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.7, ptr @.str, i32 366, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register patch: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry_ptr.36 = internal global ptr @lochnagar_i2c_probe._entry.34, section ".printk_index", align 4
@lochnagar_i2c_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.7, ptr @.str, i32 372, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to populate child nodes: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@lochnagar_i2c_probe._entry_ptr.39 = internal global ptr @lochnagar_i2c_probe._entry.37, section ".printk_index", align 4
@lochnagar_configs = internal global { [2 x %struct.lochnagar_config], [48 x i8] } { [2 x %struct.lochnagar_config] [%struct.lochnagar_config { i32 80, ptr @.str.40, i32 0, ptr @lochnagar1_i2c_regmap, ptr @lochnagar1_patch, i32 3 }, %struct.lochnagar_config { i32 52056, ptr @.str.41, i32 1, ptr @lochnagar2_i2c_regmap, ptr @lochnagar2_patch, i32 1 }], [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lochnagar1\00", [21 x i8] zeroinitializer }, align 32
@lochnagar1_i2c_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @lochnagar1_readable_register, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 80, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lochnagar1_patch = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 64, i32 131, i32 0 }, %struct.reg_sequence { i32 71, i32 24, i32 0 }, %struct.reg_sequence { i32 80, i32 0, i32 0 }], [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lochnagar2\00", [21 x i8] zeroinitializer }, align 32
@lochnagar2_i2c_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @lochnagar2_readable_register, ptr @lochnagar2_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 7967, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lochnagar2_patch = internal constant { [1 x %struct.reg_sequence], [20 x i8] } { [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 238, i32 0, i32 0 }], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [35 x i64] [i64 33, i64 32, i64 0, i64 1, i64 2, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 28, i64 29, i64 30, i64 31, i64 32, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 70]
@__sancov_gen_cov_switch_values.42 = internal global [168 x i64] [i64 166, i64 32, i64 0, i64 1, i64 2, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 124, i64 125, i64 126, i64 127, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 223, i64 227, i64 228, i64 240, i64 254, i64 264, i64 265, i64 266, i64 267, i64 268, i64 269, i64 278, i64 281, i64 283, i64 286, i64 288, i64 384]
@__sancov_gen_cov_switch_values.43 = internal global [23 x i64] [i64 21, i64 32, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 227, i64 266, i64 267, i64 268, i64 269]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 239, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"lochnagar_i2c_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 379, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 394, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 381, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"lochnagar_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 201, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 292, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 296, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 299, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 303, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 306, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 319, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 322, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 329, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 337, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 346, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 354, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 360, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 366, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 372, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"lochnagar_configs\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 182, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 185, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant [22 x i8] c"lochnagar1_i2c_regmap\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 61, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"lochnagar1_patch\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 76, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 193, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"lochnagar2_i2c_regmap\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 156, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"lochnagar2_patch\00", align 1
@___asan_gen_.174 = private constant [31 x i8] c"../drivers/mfd/lochnagar-i2c.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 169, i32 34 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__initcall__kmod_lochnagar_i2c__288_398_lochnagar_i2c_init4, ptr @__ksymtab_lochnagar_update_config, ptr @lochnagar_i2c_init._entry, ptr @lochnagar_i2c_init._entry_ptr, ptr @lochnagar_i2c_probe._entry, ptr @lochnagar_i2c_probe._entry.11, ptr @lochnagar_i2c_probe._entry.15, ptr @lochnagar_i2c_probe._entry.18, ptr @lochnagar_i2c_probe._entry.21, ptr @lochnagar_i2c_probe._entry.24, ptr @lochnagar_i2c_probe._entry.27, ptr @lochnagar_i2c_probe._entry.30, ptr @lochnagar_i2c_probe._entry.34, ptr @lochnagar_i2c_probe._entry.37, ptr @lochnagar_i2c_probe._entry_ptr, ptr @lochnagar_i2c_probe._entry_ptr.13, ptr @lochnagar_i2c_probe._entry_ptr.17, ptr @lochnagar_i2c_probe._entry_ptr.20, ptr @lochnagar_i2c_probe._entry_ptr.23, ptr @lochnagar_i2c_probe._entry_ptr.26, ptr @lochnagar_i2c_probe._entry_ptr.29, ptr @lochnagar_i2c_probe._entry_ptr.33, ptr @lochnagar_i2c_probe._entry_ptr.36, ptr @lochnagar_i2c_probe._entry_ptr.39, ptr @.str, ptr @lochnagar_i2c_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @lochnagar_of_match, ptr @lochnagar_i2c_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @lochnagar_i2c_probe._key, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @lochnagar_configs, ptr @.str.40, ptr @lochnagar1_i2c_regmap, ptr @lochnagar1_patch, ptr @.str.41, ptr @lochnagar2_i2c_regmap, ptr @lochnagar2_patch], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_i2c_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_configs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_i2c_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar1_patch to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_i2c_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar2_patch to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lochnagar_update_config(ptr noundef %lochnagar) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.lochnagar, ptr %lochnagar, i32 0, i32 2
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.lochnagar, ptr %lochnagar, i32 0, i32 3, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !94

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %lochnagar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lochnagar, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp25.not = icmp eq i32 %5, 1
  br i1 %cmp25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %call28 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 227, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %call32 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 227, i32 noundef 32768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call36, 3500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 261) #7
  %call51112 = call i32 @regmap_read(ptr noundef %1, i32 noundef 227, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51112)
  %tobool52.not113 = icmp eq i32 %call51112, 0
  br i1 %tobool52.not113, label %if.end35.lor.lhs.false_crit_edge, label %if.end35.lor.end_crit_edge

if.end35.lor.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.end35.lor.lhs.false_crit_edge:                 ; preds = %if.end35
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then65.lor.lhs.false_crit_edge, %if.end35.lor.lhs.false_crit_edge
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call57 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call57, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call57, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then65

if.then65:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %call51 = call i32 @regmap_read(ptr noundef %1, i32 noundef 227, ptr noundef nonnull %val) #7
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then65.lor.lhs.false_crit_edge, label %if.then65.lor.end_crit_edge

if.then65.lor.end_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.then65.lor.lhs.false_crit_edge:                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call62 = call i32 @regmap_read(ptr noundef %1, i32 noundef 227, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool68.not = icmp eq i32 %call62, 0
  br i1 %tobool68.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and69 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %phi.sel = select i1 %tobool70.not, i32 -110, i32 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then65.lor.end_crit_edge, %if.end35.lor.end_crit_edge
  %tobool68.not105 = phi i32 [ %call62, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call51112, %if.end35.lor.end_crit_edge ], [ %call51, %if.then65.lor.end_crit_edge ]
  %10 = call i32 @llvm.smin.i32(i32 %tobool68.not105, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %10, %lor.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_i2c_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lochnagar_i2c_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_i2c_probe(ptr noundef %i2c) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !95
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 104, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @lochnagar_of_match, ptr noundef %dev1) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %dev6 = getelementptr inbounds %struct.lochnagar, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev6, align 4
  %analogue_config_lock = getelementptr inbounds %struct.lochnagar, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %analogue_config_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @lochnagar_i2c_probe.__key) #7
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call7 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef 3) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %5) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %call15 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 7) #7
  %cmp.i160 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %6) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  tail call void @msleep(i32 noundef 20) #7
  tail call void @gpiod_set_value_cansleep(ptr noundef %call7, i32 noundef 1) #7
  %type = getelementptr inbounds %struct.lochnagar_config, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call.i, align 4
  %regmap = getelementptr inbounds %struct.lochnagar_config, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call24 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef %11, ptr noundef nonnull @lochnagar_i2c_probe._key, ptr noundef nonnull @.str.14) #7
  %regmap25 = getelementptr inbounds %struct.lochnagar, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %regmap25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call24, ptr %regmap25, align 4
  %cmp.i161 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %13) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %call36 = call fastcc i32 @lochnagar_wait_for_boot(ptr noundef %call24, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call36) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and = and i32 %15, 65532
  %and42 = and i32 %15, 3
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %17)
  %cmp43.not = icmp eq i32 %and, %17
  br i1 %cmp43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.lochnagar_config, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef %19, i32 noundef %17, i32 noundef %and) #10
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %20 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap25, align 4
  %call51 = call i32 @regmap_read(ptr noundef %21, i32 noundef 1, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.end56, label %if.end57

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call51) #10
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %24 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap25, align 4
  %call59 = call i32 @regmap_read(ptr noundef %25, i32 noundef 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end65

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call59) #10
  br label %cleanup

if.end65:                                         ; preds = %if.end57
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %val_bits = getelementptr inbounds %struct.regmap_config, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val_bits, align 4
  %shl = shl i32 %27, %31
  %or = or i32 %shl, %23
  %name70 = getelementptr inbounds %struct.lochnagar_config, ptr %2, i32 0, i32 1
  %32 = ptrtoint ptr %name70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name70, align 4
  %add = add nuw nsw i32 %and42, 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef %33, i32 noundef %and, i32 noundef %add, i32 noundef %or) #10
  %34 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap25, align 4
  %patch = getelementptr inbounds %struct.lochnagar_config, ptr %2, i32 0, i32 4
  %36 = ptrtoint ptr %patch to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %patch, align 4
  %npatch = getelementptr inbounds %struct.lochnagar_config, ptr %2, i32 0, i32 5
  %38 = ptrtoint ptr %npatch to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %npatch, align 4
  %call72 = call i32 @regmap_register_patch(ptr noundef %35, ptr noundef %37, i32 noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end77, label %if.end78

do.end77:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call72) #10
  br label %cleanup

if.end78:                                         ; preds = %if.end65
  %call79 = call i32 @devm_of_platform_populate(ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end84, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %call79) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.end78.cleanup_crit_edge, %do.end77, %do.end64, %do.end56, %do.end47, %do.end40, %if.then28, %if.then17, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then9 ], [ %6, %if.then17 ], [ %13, %if.then28 ], [ %call36, %do.end40 ], [ -19, %do.end47 ], [ %call51, %do.end56 ], [ %call59, %do.end64 ], [ %call72, %do.end77 ], [ %call79, %do.end84 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call79, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lochnagar_wait_for_boot(ptr noundef %regmap, ptr noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 350) #7
  %call = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %entry
  tail call void @msleep(i32 noundef 350) #7
  %call.1 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  tail call void @msleep(i32 noundef 350) #7
  %call.2 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  tail call void @msleep(i32 noundef 350) #7
  %call.3 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  tail call void @msleep(i32 noundef 350) #7
  %call.4 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  tail call void @msleep(i32 noundef 350) #7
  %call.5 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  tail call void @msleep(i32 noundef 350) #7
  %call.6 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  tail call void @msleep(i32 noundef 350) #7
  %call.7 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  tail call void @msleep(i32 noundef 350) #7
  %call.8 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 350) #7
  %call.9 = tail call i32 @regmap_read(ptr noundef %regmap, i32 noundef 0, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool.not.9 = icmp eq i32 %call.9, 0
  %spec.select = select i1 %tobool.not.9, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.cond.8, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ 0, %for.cond.3.cleanup_crit_edge ], [ 0, %for.cond.4.cleanup_crit_edge ], [ 0, %for.cond.5.cleanup_crit_edge ], [ 0, %for.cond.6.cleanup_crit_edge ], [ 0, %for.cond.7.cleanup_crit_edge ], [ %spec.select, %for.cond.8 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lochnagar1_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 15, label %entry.return_crit_edge19
    i32 18, label %entry.return_crit_edge20
    i32 19, label %entry.return_crit_edge21
    i32 22, label %entry.return_crit_edge22
    i32 25, label %entry.return_crit_edge23
    i32 30, label %entry.return_crit_edge24
    i32 41, label %entry.return_crit_edge25
    i32 70, label %entry.return_crit_edge26
    i32 42, label %entry.return_crit_edge27
    i32 43, label %entry.return_crit_edge28
    i32 38, label %entry.return_crit_edge29
    i32 39, label %entry.return_crit_edge30
    i32 40, label %entry.return_crit_edge31
    i32 31, label %entry.return_crit_edge32
    i32 32, label %entry.return_crit_edge33
    i32 28, label %entry.return_crit_edge34
    i32 29, label %entry.return_crit_edge35
    i32 23, label %entry.return_crit_edge36
    i32 24, label %entry.return_crit_edge37
    i32 20, label %entry.return_crit_edge38
    i32 21, label %entry.return_crit_edge39
    i32 16, label %entry.return_crit_edge40
    i32 17, label %entry.return_crit_edge41
    i32 13, label %entry.return_crit_edge42
    i32 14, label %entry.return_crit_edge43
    i32 11, label %entry.return_crit_edge44
    i32 12, label %entry.return_crit_edge45
    i32 8, label %entry.return_crit_edge46
    i32 9, label %entry.return_crit_edge47
    i32 10, label %entry.return_crit_edge48
    i32 1, label %entry.return_crit_edge49
    i32 2, label %entry.return_crit_edge50
  ]

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lochnagar2_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 24, label %entry.return_crit_edge45
    i32 27, label %entry.return_crit_edge46
    i32 32, label %entry.return_crit_edge47
    i32 35, label %entry.return_crit_edge48
    i32 38, label %entry.return_crit_edge49
    i32 39, label %entry.return_crit_edge50
    i32 122, label %entry.return_crit_edge51
    i32 146, label %entry.return_crit_edge52
    i32 149, label %entry.return_crit_edge53
    i32 154, label %entry.return_crit_edge54
    i32 223, label %entry.return_crit_edge55
    i32 240, label %entry.return_crit_edge56
    i32 254, label %entry.return_crit_edge57
    i32 278, label %entry.return_crit_edge58
    i32 281, label %entry.return_crit_edge59
    i32 283, label %entry.return_crit_edge60
    i32 286, label %entry.return_crit_edge61
    i32 288, label %entry.return_crit_edge62
    i32 384, label %entry.return_crit_edge63
    i32 268, label %entry.return_crit_edge64
    i32 269, label %entry.return_crit_edge65
    i32 264, label %entry.return_crit_edge66
    i32 265, label %entry.return_crit_edge67
    i32 266, label %entry.return_crit_edge68
    i32 267, label %entry.return_crit_edge69
    i32 227, label %entry.return_crit_edge70
    i32 228, label %entry.return_crit_edge71
    i32 185, label %entry.return_crit_edge72
    i32 186, label %entry.return_crit_edge73
    i32 187, label %entry.return_crit_edge74
    i32 188, label %entry.return_crit_edge75
    i32 189, label %entry.return_crit_edge76
    i32 190, label %entry.return_crit_edge77
    i32 191, label %entry.return_crit_edge78
    i32 192, label %entry.return_crit_edge79
    i32 193, label %entry.return_crit_edge80
    i32 194, label %entry.return_crit_edge81
    i32 195, label %entry.return_crit_edge82
    i32 196, label %entry.return_crit_edge83
    i32 197, label %entry.return_crit_edge84
    i32 198, label %entry.return_crit_edge85
    i32 199, label %entry.return_crit_edge86
    i32 200, label %entry.return_crit_edge87
    i32 152, label %entry.return_crit_edge88
    i32 153, label %entry.return_crit_edge89
    i32 150, label %entry.return_crit_edge90
    i32 151, label %entry.return_crit_edge91
    i32 147, label %entry.return_crit_edge92
    i32 148, label %entry.return_crit_edge93
    i32 140, label %entry.return_crit_edge94
    i32 141, label %entry.return_crit_edge95
    i32 142, label %entry.return_crit_edge96
    i32 143, label %entry.return_crit_edge97
    i32 144, label %entry.return_crit_edge98
    i32 145, label %entry.return_crit_edge99
    i32 136, label %entry.return_crit_edge100
    i32 137, label %entry.return_crit_edge101
    i32 138, label %entry.return_crit_edge102
    i32 139, label %entry.return_crit_edge103
    i32 128, label %entry.return_crit_edge104
    i32 129, label %entry.return_crit_edge105
    i32 130, label %entry.return_crit_edge106
    i32 131, label %entry.return_crit_edge107
    i32 132, label %entry.return_crit_edge108
    i32 133, label %entry.return_crit_edge109
    i32 134, label %entry.return_crit_edge110
    i32 135, label %entry.return_crit_edge111
    i32 124, label %entry.return_crit_edge112
    i32 125, label %entry.return_crit_edge113
    i32 126, label %entry.return_crit_edge114
    i32 127, label %entry.return_crit_edge115
    i32 120, label %entry.return_crit_edge116
    i32 121, label %entry.return_crit_edge117
    i32 116, label %entry.return_crit_edge118
    i32 117, label %entry.return_crit_edge119
    i32 118, label %entry.return_crit_edge120
    i32 119, label %entry.return_crit_edge121
    i32 108, label %entry.return_crit_edge122
    i32 109, label %entry.return_crit_edge123
    i32 110, label %entry.return_crit_edge124
    i32 111, label %entry.return_crit_edge125
    i32 112, label %entry.return_crit_edge126
    i32 113, label %entry.return_crit_edge127
    i32 114, label %entry.return_crit_edge128
    i32 115, label %entry.return_crit_edge129
    i32 100, label %entry.return_crit_edge130
    i32 101, label %entry.return_crit_edge131
    i32 102, label %entry.return_crit_edge132
    i32 103, label %entry.return_crit_edge133
    i32 104, label %entry.return_crit_edge134
    i32 105, label %entry.return_crit_edge135
    i32 106, label %entry.return_crit_edge136
    i32 107, label %entry.return_crit_edge137
    i32 92, label %entry.return_crit_edge138
    i32 93, label %entry.return_crit_edge139
    i32 94, label %entry.return_crit_edge140
    i32 95, label %entry.return_crit_edge141
    i32 96, label %entry.return_crit_edge142
    i32 97, label %entry.return_crit_edge143
    i32 98, label %entry.return_crit_edge144
    i32 99, label %entry.return_crit_edge145
    i32 84, label %entry.return_crit_edge146
    i32 85, label %entry.return_crit_edge147
    i32 86, label %entry.return_crit_edge148
    i32 87, label %entry.return_crit_edge149
    i32 88, label %entry.return_crit_edge150
    i32 89, label %entry.return_crit_edge151
    i32 90, label %entry.return_crit_edge152
    i32 91, label %entry.return_crit_edge153
    i32 72, label %entry.return_crit_edge154
    i32 73, label %entry.return_crit_edge155
    i32 74, label %entry.return_crit_edge156
    i32 75, label %entry.return_crit_edge157
    i32 76, label %entry.return_crit_edge158
    i32 77, label %entry.return_crit_edge159
    i32 78, label %entry.return_crit_edge160
    i32 79, label %entry.return_crit_edge161
    i32 80, label %entry.return_crit_edge162
    i32 81, label %entry.return_crit_edge163
    i32 82, label %entry.return_crit_edge164
    i32 83, label %entry.return_crit_edge165
    i32 69, label %entry.return_crit_edge166
    i32 70, label %entry.return_crit_edge167
    i32 71, label %entry.return_crit_edge168
    i32 63, label %entry.return_crit_edge169
    i32 64, label %entry.return_crit_edge170
    i32 65, label %entry.return_crit_edge171
    i32 66, label %entry.return_crit_edge172
    i32 67, label %entry.return_crit_edge173
    i32 68, label %entry.return_crit_edge174
    i32 55, label %entry.return_crit_edge175
    i32 56, label %entry.return_crit_edge176
    i32 57, label %entry.return_crit_edge177
    i32 58, label %entry.return_crit_edge178
    i32 59, label %entry.return_crit_edge179
    i32 60, label %entry.return_crit_edge180
    i32 61, label %entry.return_crit_edge181
    i32 62, label %entry.return_crit_edge182
    i32 49, label %entry.return_crit_edge183
    i32 50, label %entry.return_crit_edge184
    i32 51, label %entry.return_crit_edge185
    i32 52, label %entry.return_crit_edge186
    i32 53, label %entry.return_crit_edge187
    i32 54, label %entry.return_crit_edge188
    i32 36, label %entry.return_crit_edge189
    i32 37, label %entry.return_crit_edge190
    i32 33, label %entry.return_crit_edge191
    i32 34, label %entry.return_crit_edge192
    i32 30, label %entry.return_crit_edge193
    i32 31, label %entry.return_crit_edge194
    i32 25, label %entry.return_crit_edge195
    i32 26, label %entry.return_crit_edge196
    i32 22, label %entry.return_crit_edge197
    i32 23, label %entry.return_crit_edge198
    i32 20, label %entry.return_crit_edge199
    i32 21, label %entry.return_crit_edge200
    i32 18, label %entry.return_crit_edge201
    i32 19, label %entry.return_crit_edge202
    i32 16, label %entry.return_crit_edge203
    i32 17, label %entry.return_crit_edge204
    i32 13, label %entry.return_crit_edge205
    i32 14, label %entry.return_crit_edge206
    i32 15, label %entry.return_crit_edge207
    i32 1, label %entry.return_crit_edge208
    i32 2, label %entry.return_crit_edge209
  ]

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lochnagar2_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %reg, label %sw.default [
    i32 227, label %entry.return_crit_edge
    i32 268, label %entry.return_crit_edge4
    i32 269, label %entry.return_crit_edge5
    i32 266, label %entry.return_crit_edge6
    i32 267, label %entry.return_crit_edge7
    i32 185, label %entry.return_crit_edge8
    i32 186, label %entry.return_crit_edge9
    i32 187, label %entry.return_crit_edge10
    i32 188, label %entry.return_crit_edge11
    i32 189, label %entry.return_crit_edge12
    i32 190, label %entry.return_crit_edge13
    i32 191, label %entry.return_crit_edge14
    i32 192, label %entry.return_crit_edge15
    i32 193, label %entry.return_crit_edge16
    i32 194, label %entry.return_crit_edge17
    i32 195, label %entry.return_crit_edge18
    i32 196, label %entry.return_crit_edge19
    i32 197, label %entry.return_crit_edge20
    i32 198, label %entry.return_crit_edge21
    i32 199, label %entry.return_crit_edge22
    i32 200, label %entry.return_crit_edge23
  ]

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 239, i32 2}
!2 = !{ptr @__ksymtab_lochnagar_update_config, !3, !"__ksymtab_lochnagar_update_config", i1 false, i1 false}
!3 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 267, i32 1}
!4 = !{ptr @__initcall__kmod_lochnagar_i2c__288_398_lochnagar_i2c_init4, !5, !"__initcall__kmod_lochnagar_i2c__288_398_lochnagar_i2c_init4", i1 false, i1 false}
!5 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 398, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 394, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @lochnagar_i2c_init._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @lochnagar_i2c_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 381, i32 11}
!13 = !{ptr @lochnagar_i2c_driver, !14, !"lochnagar_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 379, i32 26}
!15 = !{ptr @lochnagar_i2c_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 292, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 296, i32 30}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 299, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lochnagar_i2c_probe._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @lochnagar_i2c_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 303, i32 41}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 306, i32 3}
!31 = !{ptr @lochnagar_i2c_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @lochnagar_i2c_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @lochnagar_i2c_probe._key, !34, !"_key", i1 false, i1 false}
!34 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 319, i32 22}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 322, i32 3}
!38 = !{ptr @lochnagar_i2c_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @lochnagar_i2c_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 329, i32 3}
!42 = !{ptr @lochnagar_i2c_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lochnagar_i2c_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 337, i32 3}
!46 = !{ptr @lochnagar_i2c_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @lochnagar_i2c_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 346, i32 3}
!50 = !{ptr @lochnagar_i2c_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @lochnagar_i2c_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 354, i32 3}
!54 = !{ptr @lochnagar_i2c_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @lochnagar_i2c_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 360, i32 2}
!58 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @lochnagar_i2c_probe._entry.30, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @lochnagar_i2c_probe._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 366, i32 3}
!63 = !{ptr @lochnagar_i2c_probe._entry.34, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @lochnagar_i2c_probe._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 372, i32 3}
!67 = !{ptr @lochnagar_i2c_probe._entry.37, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @lochnagar_i2c_probe._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @lochnagar_of_match, !70, !"lochnagar_of_match", i1 false, i1 false}
!70 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 201, i32 34}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 185, i32 11}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 193, i32 11}
!75 = !{ptr @lochnagar_configs, !76, !"lochnagar_configs", i1 false, i1 false}
!76 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 182, i32 32}
!77 = !{ptr @lochnagar1_i2c_regmap, !78, !"lochnagar1_i2c_regmap", i1 false, i1 false}
!78 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 61, i32 35}
!79 = !{ptr @lochnagar1_patch, !80, !"lochnagar1_patch", i1 false, i1 false}
!80 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 76, i32 34}
!81 = !{ptr @lochnagar2_i2c_regmap, !82, !"lochnagar2_i2c_regmap", i1 false, i1 false}
!82 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 156, i32 35}
!83 = !{ptr @lochnagar2_patch, !84, !"lochnagar2_patch", i1 false, i1 false}
!84 = !{!"../drivers/mfd/lochnagar-i2c.c", i32 169, i32 34}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"branch_weights", i32 1, i32 2000}
!95 = !{!"auto-init"}
