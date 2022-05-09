; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/tsc200x-core.c_pt.bc'
source_filename = "../drivers/input/touchscreen/tsc200x-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tsc200x_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_tsc200x_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_tsc200x_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tsc200x_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22tsc200x_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_tsc200x_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tsc200x_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_tsc200x_probe\09\09\09\09"
module asm "\09.long\09__crc_tsc200x_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tsc200x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tsc200x_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tsc200x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tsc200x_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_tsc200x_remove\09\09\09\09"
module asm "\09.long\09__crc_tsc200x_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tsc200x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22tsc200x_remove\22\09\09\09\09\09"
module asm "__kstrtabns_tsc200x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tsc200x_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_tsc200x_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_tsc200x_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tsc200x_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22tsc200x_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_tsc200x_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_range = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.tsc200x = type { ptr, ptr, i16, ptr, [32 x i8], %struct.mutex, i32, i32, i32, i32, %struct.spinlock, %struct.timer_list, i32, %struct.delayed_work, i32, i32, i8, i8, i8, ptr, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.tsc200x_data = type { i16, i16, i16, i16 }

@tsc200x_writable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @tsc200x_writable_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@tsc200x_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 8, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 120, ptr @tsc200x_writable_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 1, i32 2, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_tsc200x_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_tsc200x_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_tsc200x_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tsc200x_regmap_config to i32), ptr @__kstrtab_tsc200x_regmap_config, ptr @__kstrtabns_tsc200x_regmap_config }, section "___ksymtab_gpl+tsc200x_regmap_config", align 4
@tsc200x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 451, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no irq\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsc200x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/touchscreen/tsc200x-core.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry_ptr = internal global ptr @tsc200x_probe._entry, section ".printk_index", align 4
@tsc200x_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no cmd function\0A\00", [47 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry_ptr.7 = internal global ptr @tsc200x_probe._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,x-plate-ohms\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ti,esd-recovery-timeout-ms\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error acquiring reset gpio: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry_ptr.13 = internal global ptr @tsc200x_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vio\00", [28 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 494, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error acquiring vio regulator: %d\00", [62 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry_ptr.17 = internal global ptr @tsc200x_probe._entry.15, section ".printk_index", align 4
@tsc200x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ts->mutex\00", [21 x i8] zeroinitializer }, align 32
@tsc200x_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ts->lock\00", [22 x i8] zeroinitializer }, align 32
@tsc200x_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&ts->penup_timer)\00", [45 x i8] zeroinitializer }, align 32
@tsc200x_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&ts->esd_work)->work)\00", [54 x i8] zeroinitializer }, align 32
@tsc200x_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&ts->esd_work)->timer\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s/input-ts\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TSC200X touchscreen\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TSC%04d touchscreen\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsc200x\00", [24 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 546, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request irq, err: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry_ptr.33 = internal global ptr @tsc200x_probe._entry.31, section ".printk_index", align 4
@tsc200x_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @tsc200x_attr_is_visible, ptr null, ptr @tsc200x_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 558, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to create sysfs attributes, err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry_ptr.36 = internal global ptr @tsc200x_probe._entry.34, section ".printk_index", align 4
@tsc200x_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 565, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to register input device, err: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@tsc200x_probe._entry_ptr.39 = internal global ptr @tsc200x_probe._entry.37, section ".printk_index", align 4
@__kstrtab_tsc200x_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tsc200x_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tsc200x_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tsc200x_probe to i32), ptr @__kstrtab_tsc200x_probe, ptr @__kstrtabns_tsc200x_probe }, section "___ksymtab_gpl+tsc200x_probe", align 4
@__kstrtab_tsc200x_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_tsc200x_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_tsc200x_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tsc200x_remove to i32), ptr @__kstrtab_tsc200x_remove, ptr @__kstrtabns_tsc200x_remove }, section "___ksymtab_gpl+tsc200x_remove", align 4
@tsc200x_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tsc200x_suspend, ptr @tsc200x_resume, ptr @tsc200x_suspend, ptr @tsc200x_resume, ptr @tsc200x_suspend, ptr @tsc200x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_tsc200x_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_tsc200x_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_tsc200x_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tsc200x_pm_ops to i32), ptr @__kstrtab_tsc200x_pm_ops, ptr @__kstrtabns_tsc200x_pm_ops }, section "___ksymtab_gpl+tsc200x_pm_ops", align 4
@__UNIQUE_ID_author289 = internal constant [64 x i8] c"tsc200x_core.author=Lauri Leukkunen <lauri.leukkunen@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"tsc200x_core.description=TSC200x Touchscreen Driver Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"tsc200x_core.file=drivers/input/touchscreen/tsc200x-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"tsc200x_core.license=GPL\00", section ".modinfo", align 1
@tsc200x_writable_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 64, i32 112 }], [24 x i8] zeroinitializer }, align 32
@tsc200x_update_pen_state.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsc200x_core\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tsc200x_update_pen_state\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"point(%4d,%4d), pressure (%4d)\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tsc200x_esd_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 389, ptr @.str.45, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TSC200X not responding - resetting\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsc200x_esd_work\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tsc200x_esd_work._entry_ptr = internal global ptr @tsc200x_esd_work._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tsc200x_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_selftest, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_selftest = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tsc200x_selftest_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"selftest\00", [23 x i8] zeroinitializer }, align 32
@tsc200x_selftest_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 275, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"selftest failed: read error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tsc200x_selftest_show\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tsc200x_selftest_show._entry_ptr = internal global ptr @tsc200x_selftest_show._entry, section ".printk_index", align 4
@tsc200x_selftest_show._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.2, i32 284, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"selftest failed: write error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tsc200x_selftest_show._entry_ptr.52 = internal global ptr @tsc200x_selftest_show._entry.50, section ".printk_index", align 4
@tsc200x_selftest_show._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.2, i32 292, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"selftest failed: read error %d after write\0A\00", [52 x i8] zeroinitializer }, align 32
@tsc200x_selftest_show._entry_ptr.55 = internal global ptr @tsc200x_selftest_show._entry.53, section ".printk_index", align 4
@tsc200x_selftest_show._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.48, ptr @.str.2, i32 299, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"selftest failed: %d != %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tsc200x_selftest_show._entry_ptr.58 = internal global ptr @tsc200x_selftest_show._entry.56, section ".printk_index", align 4
@tsc200x_selftest_show._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.48, ptr @.str.2, i32 313, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"selftest failed: read error %d after reset\0A\00", [52 x i8] zeroinitializer }, align 32
@tsc200x_selftest_show._entry_ptr.61 = internal global ptr @tsc200x_selftest_show._entry.59, section ".printk_index", align 4
@tsc200x_selftest_show._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.48, ptr @.str.2, i32 320, ptr @.str.49, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"selftest failed after reset: %d != %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tsc200x_selftest_show._entry_ptr.64 = internal global ptr @tsc200x_selftest_show._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.66 = private unnamed_addr constant [23 x i8] c"tsc200x_writable_table\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 49, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"tsc200x_regmap_config\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 54, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 451, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 459, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 477, i32 40 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 480, i32 40 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 484, i32 48 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 487, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 491, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 494, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 498, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 500, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 501, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 503, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 506, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 509, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 512, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 544, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 546, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [19 x i8] c"tsc200x_attr_group\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 353, i32 37 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 557, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 564, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [15 x i8] c"tsc200x_pm_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 622, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant [24 x i8] c"tsc200x_writable_ranges\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 45, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 131, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 389, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [14 x i8] c"tsc200x_attrs\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 333, i32 26 }
@___asan_gen_.213 = private unnamed_addr constant [18 x i8] c"dev_attr_selftest\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 331, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 275, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 284, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 291, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 298, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 312, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 319, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.262 = private constant [44 x i8] c"../drivers/input/touchscreen/tsc200x-core.c\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 328, i32 22 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__ksymtab_tsc200x_pm_ops, ptr @__ksymtab_tsc200x_probe, ptr @__ksymtab_tsc200x_regmap_config, ptr @__ksymtab_tsc200x_remove, ptr @tsc200x_esd_work._entry, ptr @tsc200x_esd_work._entry_ptr, ptr @tsc200x_probe._entry, ptr @tsc200x_probe._entry.11, ptr @tsc200x_probe._entry.15, ptr @tsc200x_probe._entry.31, ptr @tsc200x_probe._entry.34, ptr @tsc200x_probe._entry.37, ptr @tsc200x_probe._entry.5, ptr @tsc200x_probe._entry_ptr, ptr @tsc200x_probe._entry_ptr.13, ptr @tsc200x_probe._entry_ptr.17, ptr @tsc200x_probe._entry_ptr.33, ptr @tsc200x_probe._entry_ptr.36, ptr @tsc200x_probe._entry_ptr.39, ptr @tsc200x_probe._entry_ptr.7, ptr @tsc200x_selftest_show._entry, ptr @tsc200x_selftest_show._entry.50, ptr @tsc200x_selftest_show._entry.53, ptr @tsc200x_selftest_show._entry.56, ptr @tsc200x_selftest_show._entry.59, ptr @tsc200x_selftest_show._entry.62, ptr @tsc200x_selftest_show._entry_ptr, ptr @tsc200x_selftest_show._entry_ptr.52, ptr @tsc200x_selftest_show._entry_ptr.55, ptr @tsc200x_selftest_show._entry_ptr.58, ptr @tsc200x_selftest_show._entry_ptr.61, ptr @tsc200x_selftest_show._entry_ptr.64, ptr @tsc200x_writable_table, ptr @tsc200x_regmap_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @tsc200x_probe.__key, ptr @.str.18, ptr @tsc200x_probe.__key.19, ptr @.str.20, ptr @tsc200x_probe.__key.21, ptr @.str.22, ptr @tsc200x_probe.__key.23, ptr @.str.24, ptr @tsc200x_probe.__key.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @tsc200x_attr_group, ptr @.str.35, ptr @.str.38, ptr @tsc200x_pm_ops, ptr @tsc200x_writable_ranges, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @tsc200x_attrs, ptr @dev_attr_selftest, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_writable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_writable_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_esd_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_selftest to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_selftest_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_selftest_show._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_selftest_show._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_selftest_show._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_selftest_show._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsc200x_selftest_show._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tsc200x_probe(ptr noundef %dev, i32 noundef %irq, ptr nocapture noundef readonly %tsc_id, ptr noundef %regmap, ptr noundef %tsc200x_cmd) #0 align 64 {
entry:
  %x_plate_ohm = alloca i32, align 4
  %esd_timeout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_plate_ohm) #6
  %0 = ptrtoint ptr %x_plate_ohm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x_plate_ohm, align 4, !annotation !140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %esd_timeout) #6
  %1 = ptrtoint ptr %esd_timeout to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %esd_timeout, align 4, !annotation !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq)
  %cmp = icmp slt i32 %irq, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %regmap, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %regmap to i32
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %tsc200x_cmd, null
  br i1 %tobool.not, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 380, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %irq17 = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 22
  %3 = ptrtoint ptr %irq17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %irq, ptr %irq17, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %idev = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %idev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %idev, align 4
  %regmap19 = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %regmap, ptr %regmap19, align 4
  %tsc200x_cmd20 = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 21
  %7 = ptrtoint ptr %tsc200x_cmd20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tsc200x_cmd, ptr %tsc200x_cmd20, align 4
  %call.i221 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull %x_plate_ohm, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool22.not = icmp eq i32 %call.i221, 0
  br i1 %tobool22.not, label %cond.false, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %x_plate_ohm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %x_plate_ohm, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.false ], [ 280, %if.end16.cond.end_crit_edge ]
  %x_plate_ohm23 = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 15
  %10 = ptrtoint ptr %x_plate_ohm23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %x_plate_ohm23, align 4
  %call.i222 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %esd_timeout, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool25.not = icmp eq i32 %call.i222, 0
  br i1 %tobool25.not, label %cond.false27, label %cond.end.cond.end28_crit_edge

cond.end.cond.end28_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end28

cond.false27:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %esd_timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %esd_timeout, align 4
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.end.cond.end28_crit_edge
  %cond29 = phi i32 [ %12, %cond.false27 ], [ 0, %cond.end.cond.end28_crit_edge ]
  %esd_timeout30 = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 12
  %13 = ptrtoint ptr %esd_timeout30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond29, ptr %esd_timeout30, align 4
  %call31 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 7) #6
  %reset_gpio = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 20
  %14 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call31, ptr %reset_gpio, align 4
  %cmp.i223 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %if.then34, label %if.end40

if.then34:                                        ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %15) #9
  br label %cleanup

if.end40:                                         ; preds = %cond.end28
  %call41 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #6
  %vio = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %vio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call41, ptr %vio, align 4
  %cmp.i224 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %if.then44, label %do.body51

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %17) #9
  br label %cleanup

do.body51:                                        ; preds = %if.end40
  %mutex = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.18, ptr noundef nonnull @tsc200x_probe.__key) #6
  %lock = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @tsc200x_probe.__key.19, i16 noundef signext 3) #6
  %penup_timer = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 11
  call void @init_timer_key(ptr noundef %penup_timer, ptr noundef nonnull @tsc200x_penup_timer, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @tsc200x_probe.__key.21) #6
  %esd_work = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 13
  call void @__init_work(ptr noundef %esd_work, i32 noundef 0) #6
  %18 = ptrtoint ptr %esd_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %esd_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 13, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @tsc200x_probe.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry69 = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %19 = ptrtoint ptr %entry69 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry69, ptr %entry69, align 4
  %prev.i = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry69, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tsc200x_esd_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 13, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.26, ptr noundef nonnull @tsc200x_probe.__key.25) #6
  %phys = getelementptr inbounds %struct.tsc200x, ptr %call.i, i32 0, i32 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body51.dev_name.exit_crit_edge

do.body51.dev_name.exit_crit_edge:                ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body51.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %do.body51.dev_name.exit_crit_edge ]
  %call81 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i)
  %product = getelementptr inbounds %struct.input_id, ptr %tsc_id, i32 0, i32 2
  %26 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %product, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2004, i16 %27)
  %cmp82 = icmp eq i16 %27, 2004
  br i1 %cmp82, label %if.then84, label %if.else

if.then84:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.28, ptr %call13, align 8
  br label %if.end93

if.else:                                          ; preds = %dev_name.exit
  %conv = zext i16 %27 to i32
  %call87 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.29, i32 noundef %conv) #6
  %29 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call87, ptr %call13, align 8
  %tobool90.not = icmp eq ptr %call87, null
  br i1 %tobool90.not, label %if.else.cleanup_crit_edge, label %if.else.if.end93_crit_edge

if.else.if.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93:                                         ; preds = %if.else.if.end93_crit_edge, %if.then84
  %phys96 = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %phys96 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %phys, ptr %phys96, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %tsc_id to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %tsc_id, align 2
  %33 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 31
  %34 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @tsc200x_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 32
  %35 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @tsc200x_close, ptr %close, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 40, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %propbit, align 4
  %or.i = or i32 %38, 2
  store i32 %or.i, ptr %propbit, align 4
  call void @input_set_capability(ptr noundef nonnull %call13, i32 noundef 1, i32 noundef 330) #6
  call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 4, i32 noundef 0) #6
  call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 8, i32 noundef 0) #6
  call void @input_set_abs_params(ptr noundef nonnull %call13, i32 noundef 24, i32 noundef 0, i32 noundef 4095, i32 noundef 2, i32 noundef 0) #6
  call void @touchscreen_parse_properties(ptr noundef nonnull %call13, i1 noundef zeroext false, ptr noundef null) #6
  %39 = ptrtoint ptr %tsc200x_cmd20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tsc200x_cmd20, align 4
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %call.i225 = call i32 %40(ptr noundef %42, i8 noundef zeroext 1) #6
  %call98 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @tsc200x_irq_thread, i32 noundef 8193, ptr noundef nonnull @.str.30, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end104, label %do.end103

do.end103:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call98) #9
  br label %cleanup

if.end104:                                        ; preds = %if.end93
  %43 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vio, align 4
  %call106 = call i32 @regulator_enable(ptr noundef %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end109:                                        ; preds = %if.end104
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %45 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call110 = call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @tsc200x_attr_group) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end116, label %do.end115

do.end115:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call110) #9
  br label %disable_regulator

if.end116:                                        ; preds = %if.end109
  %46 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %idev, align 4
  %call118 = call i32 @input_register_device(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end124, label %do.end123

do.end123:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call118) #9
  call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @tsc200x_attr_group) #6
  br label %disable_regulator

if.end124:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  %call125 = call i32 @irq_set_irq_wake(i32 noundef %irq, i32 noundef 1) #6
  br label %cleanup

disable_regulator:                                ; preds = %do.end123, %do.end115
  %error.0 = phi i32 [ %call110, %do.end115 ], [ %call118, %do.end123 ]
  %48 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vio, align 4
  %call128 = call i32 @regulator_disable(ptr noundef %49) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_regulator, %if.end124, %if.end104.cleanup_crit_edge, %do.end103, %if.else.cleanup_crit_edge, %if.then44, %if.then34, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end7, %if.then1, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %2, %if.then1 ], [ %15, %if.then34 ], [ %17, %if.then44 ], [ %call98, %do.end103 ], [ %error.0, %disable_regulator ], [ 0, %if.end124 ], [ -19, %do.end7 ], [ -12, %if.end8.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ %call106, %if.end104.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %esd_timeout) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_plate_ohm) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsc200x_penup_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -200
  %lock = getelementptr i8, ptr %t, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %idev9.i = getelementptr i8, ptr %t, i32 -188
  %0 = ptrtoint ptr %idev9.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev9.i, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef 0) #6
  %pen_down10.i = getelementptr i8, ptr %t, i32 162
  %2 = ptrtoint ptr %pen_down10.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pen_down10.i, align 2, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool11.not.i = icmp eq i8 %3, 0
  br i1 %tobool11.not.i, label %entry.if.end16.i_crit_edge, label %if.then12.i

entry.if.end16.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %idev9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idev9.i, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  %6 = ptrtoint ptr %pen_down10.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pen_down10.i, align 2
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %entry.if.end16.i_crit_edge
  %7 = ptrtoint ptr %idev9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %idev9.i, align 4
  tail call void @input_event(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc200x_update_pen_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc200x_penup_timer, %if.then24.i)) #6
          to label %tsc200x_update_pen_state.exit [label %if.then24.i], !srcloc !142

if.then24.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc200x_update_pen_state.__UNIQUE_ID_ddebug288, ptr noundef %10, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %tsc200x_update_pen_state.exit

tsc200x_update_pen_state.exit:                    ; preds = %if.then24.i, %if.end16.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsc200x_esd_work(ptr noundef %work) #0 align 64 {
entry:
  %r = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -252
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #6
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r, align 4, !annotation !140
  %mutex = getelementptr i8, ptr %work, i32 -204
  %call = tail call i32 @mutex_trylock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.else.i35_crit_edge, label %if.end

entry.if.else.i35_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i35

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %last_valid_interrupt = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %last_valid_interrupt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_valid_interrupt, align 4
  %esd_timeout = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %esd_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %esd_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #6
  %6 = add i32 %3, %call2.i
  %sub = sub i32 %1, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end3:                                          ; preds = %if.end
  %regmap = getelementptr i8, ptr %work, i32 -248
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %8, i32 noundef 96, ptr noundef nonnull %r) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end3.do.end_crit_edge

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %if.end3
  %9 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r, align 4
  %xor = and i32 %10, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 13120, i32 %xor)
  %tobool6.not = icmp eq i32 %xor, 13120
  br i1 %tobool6.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.end3.do.end_crit_edge
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.43) #9
  %irq = getelementptr i8, ptr %work, i32 124
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %14) #6
  %penup_timer = getelementptr i8, ptr %work, i32 -52
  %call9 = call i32 @del_timer_sync(ptr noundef %penup_timer) #6
  %idev9.i = getelementptr i8, ptr %work, i32 -240
  %15 = ptrtoint ptr %idev9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %idev9.i, align 4
  call void @input_event(ptr noundef %16, i32 noundef 3, i32 noundef 24, i32 noundef 0) #6
  %pen_down10.i = getelementptr i8, ptr %work, i32 110
  %17 = ptrtoint ptr %pen_down10.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pen_down10.i, align 2, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool11.not.i = icmp eq i8 %18, 0
  br i1 %tobool11.not.i, label %do.end.if.end16.i_crit_edge, label %if.then12.i

do.end.if.end16.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then12.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %idev9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %idev9.i, align 4
  call void @input_event(ptr noundef %20, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  %21 = ptrtoint ptr %pen_down10.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %pen_down10.i, align 2
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %do.end.if.end16.i_crit_edge
  %22 = ptrtoint ptr %idev9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %idev9.i, align 4
  call void @input_event(ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc200x_update_pen_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc200x_esd_work, %if.then24.i)) #6
          to label %tsc200x_update_pen_state.exit [label %if.then24.i], !srcloc !142

if.then24.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc200x_update_pen_state.__UNIQUE_ID_ddebug288, ptr noundef %25, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %tsc200x_update_pen_state.exit

tsc200x_update_pen_state.exit:                    ; preds = %if.then24.i, %if.end16.i
  %reset_gpio.i = getelementptr i8, ptr %work, i32 116
  %26 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %tsc200x_update_pen_state.exit.tsc200x_reset.exit_crit_edge, label %if.then.i39

tsc200x_update_pen_state.exit.tsc200x_reset.exit_crit_edge: ; preds = %tsc200x_update_pen_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsc200x_reset.exit

if.then.i39:                                      ; preds = %tsc200x_update_pen_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %27, i32 noundef 1) #6
  call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #6
  %28 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %29, i32 noundef 0) #6
  br label %tsc200x_reset.exit

tsc200x_reset.exit:                               ; preds = %if.then.i39, %tsc200x_update_pen_state.exit.tsc200x_reset.exit_crit_edge
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %31) #6
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_write(ptr noundef %33, i32 noundef 96, i32 noundef 45888) #6
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call2.i41 = call i32 @regmap_write(ptr noundef %35, i32 noundef 104, i32 noundef 3) #6
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 112, i32 noundef 14364) #6
  %tsc200x_cmd.i = getelementptr i8, ptr %work, i32 120
  %38 = ptrtoint ptr %tsc200x_cmd.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tsc200x_cmd.i, align 4
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %call5.i = call i32 %39(ptr noundef %41, i8 noundef zeroext 0) #6
  br label %out

out:                                              ; preds = %tsc200x_reset.exit, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.else.i35

if.else.i35:                                      ; preds = %out, %entry.if.else.i35_crit_edge
  %esd_timeout12 = getelementptr i8, ptr %work, i32 -4
  %42 = ptrtoint ptr %esd_timeout12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %esd_timeout12, align 4
  %call2.i34 = call i32 @__msecs_to_jiffies(i32 noundef %43) #6
  %call14 = call i32 @round_jiffies_relative(i32 noundef %call2.i34) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %work, i32 noundef %call14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc200x_open(ptr nocapture noundef readonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %suspended = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__tsc200x_enable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %opened = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %opened, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsc200x_close(ptr nocapture noundef readonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %suspended = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tsc200x_cmd.i.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %tsc200x_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tsc200x_cmd.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 %5(ptr noundef %7, i8 noundef zeroext 1) #6
  %irq.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %9) #6
  %penup_timer.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 11
  %call.i = tail call i32 @del_timer_sync(ptr noundef %penup_timer.i) #6
  %esd_work.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 13
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %esd_work.i) #6
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %opened = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %opened, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc200x_irq_thread(i32 noundef %irq, ptr noundef %_ts) #0 align 64 {
entry:
  %tsdata = alloca %struct.tsc200x_data, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tsdata) #6
  %0 = getelementptr inbounds %struct.tsc200x_data, ptr %tsdata, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tsc200x_data, ptr %tsdata, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tsc200x_data, ptr %tsdata, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 1
  %3 = ptrtoint ptr %tsdata to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %tsdata, align 8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %tsdata, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge, !prof !143

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %tsdata to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tsdata, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %7)
  %cmp = icmp ugt i16 %7, 4095
  br i1 %cmp, label %if.end.out_crit_edge, label %lor.rhs, !prof !144

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.rhs:                                          ; preds = %if.end
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %9)
  %cmp5 = icmp ugt i16 %9, 4095
  br i1 %cmp5, label %lor.rhs.out_crit_edge, label %if.end14, !prof !144

lor.rhs.out_crit_edge:                            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %lor.rhs
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp16 = icmp eq i16 %11, 0
  br i1 %cmp16, label %if.end14.out_crit_edge, label %lor.rhs18, !prof !144

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.rhs18:                                        ; preds = %if.end14
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %13)
  %cmp20 = icmp ugt i16 %13, 4095
  br i1 %cmp20, label %lor.rhs18.out_crit_edge, label %if.end30, !prof !144

lor.rhs18.out_crit_edge:                          ; preds = %lor.rhs18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end30:                                         ; preds = %lor.rhs18
  %conv32 = zext i16 %11 to i32
  %conv34 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp35.not = icmp ult i16 %11, %13
  br i1 %cmp35.not, label %if.end44, label %if.end30.out_crit_edge, !prof !143

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end44:                                         ; preds = %if.end30
  %pen_down = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 18
  %14 = ptrtoint ptr %pen_down to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pen_down, align 2, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool45.not = icmp eq i8 %15, 0
  br i1 %tobool45.not, label %land.lhs.true, label %if.end44.if.end66_crit_edge

if.end44.if.end66_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = zext i16 %7 to i32
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end44
  %in_x = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 6
  %16 = ptrtoint ptr %in_x to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_x, align 4
  %conv47 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv47)
  %cmp48 = icmp eq i32 %17, %conv47
  br i1 %cmp48, label %land.lhs.true50, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

land.lhs.true50:                                  ; preds = %land.lhs.true
  %in_y = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 7
  %18 = ptrtoint ptr %in_y to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_y, align 4
  %conv52 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv52)
  %cmp53 = icmp eq i32 %19, %conv52
  br i1 %cmp53, label %land.lhs.true55, label %land.lhs.true50.if.end66_crit_edge

land.lhs.true50.if.end66_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

land.lhs.true55:                                  ; preds = %land.lhs.true50
  %in_z1 = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 8
  %20 = ptrtoint ptr %in_z1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_z1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv32)
  %cmp58 = icmp eq i32 %21, %conv32
  br i1 %cmp58, label %land.lhs.true60, label %land.lhs.true55.if.end66_crit_edge

land.lhs.true55.if.end66_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %in_z2 = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 9
  %22 = ptrtoint ptr %in_z2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %in_z2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv34)
  %cmp63 = icmp eq i32 %23, %conv34
  br i1 %cmp63, label %land.lhs.true60.out_crit_edge, label %land.lhs.true60.if.end66_crit_edge

land.lhs.true60.if.end66_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

land.lhs.true60.out_crit_edge:                    ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end66:                                         ; preds = %land.lhs.true60.if.end66_crit_edge, %land.lhs.true55.if.end66_crit_edge, %land.lhs.true50.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge, %if.end44.if.end66_crit_edge
  %conv68.pre-phi = phi i32 [ %.pre, %if.end44.if.end66_crit_edge ], [ %conv47, %land.lhs.true60.if.end66_crit_edge ], [ %conv47, %land.lhs.true55.if.end66_crit_edge ], [ %conv47, %land.lhs.true50.if.end66_crit_edge ], [ %conv47, %land.lhs.true.if.end66_crit_edge ]
  %in_x69 = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 6
  %24 = ptrtoint ptr %in_x69 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv68.pre-phi, ptr %in_x69, align 4
  %conv71 = zext i16 %9 to i32
  %in_y72 = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 7
  %25 = ptrtoint ptr %in_y72 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv71, ptr %in_y72, align 4
  %in_z175 = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 8
  %26 = ptrtoint ptr %in_z175 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv32, ptr %in_z175, align 4
  %in_z278 = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 9
  %27 = ptrtoint ptr %in_z278 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv34, ptr %in_z278, align 4
  %sub = sub nsw i32 %conv34, %conv32
  %mul = mul nsw i32 %sub, %conv68.pre-phi
  %div = sdiv i32 %mul, %conv32
  %x_plate_ohm = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 15
  %28 = ptrtoint ptr %x_plate_ohm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %x_plate_ohm, align 4
  %mul87 = mul i32 %29, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %mul87)
  %cmp89 = icmp ugt i32 %mul87, 16777215
  br i1 %cmp89, label %if.end66.out_crit_edge, label %do.body99, !prof !144

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body99:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %div88130 = lshr i32 %mul87, 12
  %lock = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 10
  %call103 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %30 = ptrtoint ptr %tsdata to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tsdata, align 8
  %conv107 = zext i16 %31 to i32
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %0, align 2
  %conv109 = zext i16 %33 to i32
  call fastcc void @tsc200x_update_pen_state(ptr noundef %_ts, i32 noundef %conv107, i32 noundef %conv109, i32 noundef %div88130)
  %penup_timer = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %34, 4
  %call111 = call i32 @mod_timer(ptr noundef %penup_timer, i32 noundef %add) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call103) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %last_valid_interrupt = getelementptr inbounds %struct.tsc200x, ptr %_ts, i32 0, i32 14
  %36 = ptrtoint ptr %last_valid_interrupt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %last_valid_interrupt, align 4
  br label %out

out:                                              ; preds = %do.body99, %if.end66.out_crit_edge, %land.lhs.true60.out_crit_edge, %if.end30.out_crit_edge, %lor.rhs18.out_crit_edge, %if.end14.out_crit_edge, %lor.rhs.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tsdata) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tsc200x_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @tsc200x_attr_group) #6
  %vio = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vio, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc200x_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %suspended = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %opened = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %opened, align 4, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %tsc200x_cmd.i.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %tsc200x_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsc200x_cmd.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 %7(ptr noundef %9, i8 noundef zeroext 1) #6
  %irq.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %11) #6
  %penup_timer.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 11
  %call.i = tail call i32 @del_timer_sync(ptr noundef %penup_timer.i) #6
  %esd_work.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 13
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %esd_work.i) #6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %suspended, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc200x_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %suspended = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %opened = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %opened, align 4, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__tsc200x_enable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %suspended, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsc200x_update_pen_state(ptr nocapture noundef %ts, i32 noundef %x, i32 noundef %y, i32 noundef %pressure) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pressure)
  %tobool.not = icmp eq i32 %pressure, 0
  %idev9 = getelementptr inbounds %struct.tsc200x, ptr %ts, i32 0, i32 3
  %0 = ptrtoint ptr %idev9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev9, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %x) #6
  %2 = ptrtoint ptr %idev9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idev9, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %y) #6
  %4 = ptrtoint ptr %idev9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idev9, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef %pressure) #6
  %pen_down = getelementptr inbounds %struct.tsc200x, ptr %ts, i32 0, i32 18
  %6 = ptrtoint ptr %pen_down to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pen_down, align 2, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %idev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %idev9, align 4
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %10 = ptrtoint ptr %pen_down to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %pen_down, align 2
  br label %if.end16

if.else:                                          ; preds = %entry
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef 0) #6
  %pen_down10 = getelementptr inbounds %struct.tsc200x, ptr %ts, i32 0, i32 18
  %11 = ptrtoint ptr %pen_down10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pen_down10, align 2, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %if.else.if.end16_crit_edge, label %if.then12

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %idev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %idev9, align 4
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  %15 = ptrtoint ptr %pen_down10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %pen_down10, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.else.if.end16_crit_edge, %if.then4, %if.then.if.end16_crit_edge
  %idev17 = getelementptr inbounds %struct.tsc200x, ptr %ts, i32 0, i32 3
  %16 = ptrtoint ptr %idev17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idev17, align 4
  tail call void @input_event(ptr noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsc200x_update_pen_state.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsc200x_update_pen_state, %if.then24)) #6
          to label %do.end [label %if.then24], !srcloc !142

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ts, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsc200x_update_pen_state.__UNIQUE_ID_ddebug288, ptr noundef %19, ptr noundef nonnull @.str.42, i32 noundef %x, i32 noundef %y, i32 noundef %pressure) #6
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.end16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tsc200x_enable(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.tsc200x, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 96, i32 noundef 45888) #6
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call2.i10 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 104, i32 noundef 3) #6
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 112, i32 noundef 14364) #6
  %tsc200x_cmd.i = getelementptr inbounds %struct.tsc200x, ptr %ts, i32 0, i32 21
  %6 = ptrtoint ptr %tsc200x_cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsc200x_cmd.i, align 4
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ts, align 4
  %call5.i = tail call i32 %7(ptr noundef %9, i8 noundef zeroext 0) #6
  %esd_timeout = getelementptr inbounds %struct.tsc200x, ptr %ts, i32 0, i32 12
  %10 = ptrtoint ptr %esd_timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %esd_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %reset_gpio = getelementptr inbounds %struct.tsc200x, ptr %ts, i32 0, i32 20
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_valid_interrupt = getelementptr inbounds %struct.tsc200x, ptr %ts, i32 0, i32 14
  %15 = ptrtoint ptr %last_valid_interrupt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %last_valid_interrupt, align 4
  %esd_work = getelementptr inbounds %struct.tsc200x, ptr %ts, i32 0, i32 13
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #6
  %call3 = tail call i32 @round_jiffies_relative(i32 noundef %call2.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %esd_work, i32 noundef %call3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @tsc200x_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode2 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %mode2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode2, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_selftest
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %reset_gpio = getelementptr inbounds %struct.tsc200x, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio, align 4
  %tobool.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not, i16 0, i16 %1
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %mode.0 = phi i16 [ %1, %entry.if.end4_crit_edge ], [ %spec.select, %if.then ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc200x_selftest_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp_high = alloca i32, align 4
  %temp_high_orig = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_high) #6
  %2 = ptrtoint ptr %temp_high to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp_high, align 4, !annotation !140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_high_orig) #6
  %3 = ptrtoint ptr %temp_high_orig to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %temp_high_orig, align 4, !annotation !140
  %mutex = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %tsc200x_cmd.i.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %tsc200x_cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tsc200x_cmd.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 %5(ptr noundef %7, i8 noundef zeroext 1) #6
  %irq.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %9) #6
  %penup_timer.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 11
  %call.i = tail call i32 @del_timer_sync(ptr noundef %penup_timer.i) #6
  %esd_work.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 13
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %esd_work.i) #6
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %11) #6
  %regmap = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %13, i32 noundef 80, ptr noundef nonnull %temp_high_orig) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %call1) #9
  br label %out

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %temp_high_orig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp_high_orig, align 4
  %sub = add i32 %15, 4095
  %and = and i32 %sub, 4095
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_write(ptr noundef %17, i32 noundef 80, i32 noundef %and) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call3) #9
  br label %out

if.end9:                                          ; preds = %if.end
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_read(ptr noundef %19, i32 noundef 80, ptr noundef nonnull %temp_high) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call11) #9
  br label %out

if.end17:                                         ; preds = %if.end9
  %20 = ptrtoint ptr %temp_high to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %temp_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and)
  %cmp.not = icmp eq i32 %21, %and
  br i1 %cmp.not, label %if.end25.critedge, label %do.end21

do.end21:                                         ; preds = %if.end17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %21, i32 noundef %and) #9
  %reset_gpio.i = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %do.end21.out_crit_edge, label %if.then.i

do.end21.out_crit_edge:                           ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.i:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %23, i32 noundef 1) #6
  call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #6
  %24 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reset_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %25, i32 noundef 0) #6
  br label %out

if.end25.critedge:                                ; preds = %if.end17
  %reset_gpio.i70 = getelementptr inbounds %struct.tsc200x, ptr %1, i32 0, i32 20
  %26 = ptrtoint ptr %reset_gpio.i70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reset_gpio.i70, align 4
  %tobool.not.i71 = icmp eq ptr %27, null
  br i1 %tobool.not.i71, label %if.end25.critedge.tsc200x_reset.exit73_crit_edge, label %if.then.i72

if.end25.critedge.tsc200x_reset.exit73_crit_edge: ; preds = %if.end25.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %tsc200x_reset.exit73

if.then.i72:                                      ; preds = %if.end25.critedge
  call void @__sanitizer_cov_trace_pc() #8
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %27, i32 noundef 1) #6
  call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #6
  %28 = ptrtoint ptr %reset_gpio.i70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset_gpio.i70, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %29, i32 noundef 0) #6
  br label %tsc200x_reset.exit73

tsc200x_reset.exit73:                             ; preds = %if.then.i72, %if.end25.critedge.tsc200x_reset.exit73_crit_edge
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call27 = call i32 @regmap_read(ptr noundef %31, i32 noundef 80, ptr noundef nonnull %temp_high) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %tsc200x_reset.exit73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %call27) #9
  br label %out

if.end33:                                         ; preds = %tsc200x_reset.exit73
  %32 = ptrtoint ptr %temp_high to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %temp_high, align 4
  %34 = ptrtoint ptr %temp_high_orig to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %temp_high_orig, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp34.not = icmp eq i32 %33, %35
  br i1 %cmp34.not, label %if.end33.out_crit_edge, label %do.end38

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %33, i32 noundef %35) #9
  br label %out

out:                                              ; preds = %do.end38, %if.end33.out_crit_edge, %do.end32, %if.then.i, %do.end21.out_crit_edge, %do.end16, %do.end8, %do.end
  %success.1.off0 = phi i32 [ 0, %do.end ], [ 0, %do.end8 ], [ 0, %do.end16 ], [ 0, %do.end32 ], [ 0, %do.end38 ], [ 1, %if.end33.out_crit_edge ], [ 0, %do.end21.out_crit_edge ], [ 0, %if.then.i ]
  call fastcc void @__tsc200x_enable(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #6
  %call42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.65, i32 noundef %success.1.off0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_high_orig) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_high) #6
  ret i32 %call42
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !95, !96, !98, !100, !101, !103, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @tsc200x_regmap_config, !1, !"tsc200x_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 54, i32 28}
!2 = !{ptr @__ksymtab_tsc200x_regmap_config, !3, !"__ksymtab_tsc200x_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 65, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 451, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @tsc200x_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @tsc200x_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 459, i32 3}
!14 = !{ptr @tsc200x_probe._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @tsc200x_probe._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 477, i32 40}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 480, i32 40}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 484, i32 48}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 487, i32 3}
!24 = !{ptr @tsc200x_probe._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tsc200x_probe._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 491, i32 36}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 494, i32 3}
!30 = !{ptr @tsc200x_probe._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tsc200x_probe._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @tsc200x_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 498, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tsc200x_probe.__key.19, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 500, i32 2}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tsc200x_probe.__key.21, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 501, i32 2}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tsc200x_probe.__key.23, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 503, i32 2}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tsc200x_probe.__key.25, !42, !"__key", i1 false, i1 false}
!45 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 506, i32 4}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 509, i32 21}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 512, i32 8}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 544, i32 8}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 546, i32 3}
!56 = !{ptr @tsc200x_probe._entry.31, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tsc200x_probe._entry_ptr.33, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 557, i32 3}
!60 = !{ptr @tsc200x_probe._entry.34, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tsc200x_probe._entry_ptr.36, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 564, i32 3}
!64 = !{ptr @tsc200x_probe._entry.37, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @tsc200x_probe._entry_ptr.39, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @__ksymtab_tsc200x_probe, !67, !"__ksymtab_tsc200x_probe", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 578, i32 1}
!68 = !{ptr @__ksymtab_tsc200x_remove, !69, !"__ksymtab_tsc200x_remove", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 588, i32 1}
!70 = !{ptr @tsc200x_pm_ops, !71, !"tsc200x_pm_ops", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 622, i32 1}
!72 = !{ptr @__ksymtab_tsc200x_pm_ops, !73, !"__ksymtab_tsc200x_pm_ops", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 623, i32 1}
!74 = !{ptr @__UNIQUE_ID_author289, !75, !"__UNIQUE_ID_author289", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 625, i32 1}
!76 = !{ptr @__UNIQUE_ID_description290, !77, !"__UNIQUE_ID_description290", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 626, i32 1}
!78 = !{ptr @__UNIQUE_ID_file291, !79, !"__UNIQUE_ID_file291", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 627, i32 1}
!80 = !{ptr @__UNIQUE_ID_license292, !79, !"__UNIQUE_ID_license292", i1 false, i1 false}
!81 = !{ptr @tsc200x_writable_table, !82, !"tsc200x_writable_table", i1 false, i1 false}
!82 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 49, i32 41}
!83 = !{ptr @tsc200x_writable_ranges, !84, !"tsc200x_writable_ranges", i1 false, i1 false}
!84 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 45, i32 34}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 131, i32 2}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @tsc200x_update_pen_state.__UNIQUE_ID_ddebug288, !86, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 389, i32 2}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @tsc200x_esd_work._entry, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @tsc200x_esd_work._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @tsc200x_attr_group, !97, !"tsc200x_attr_group", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 353, i32 37}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 331, i32 8}
!100 = !{ptr @dev_attr_selftest, !99, !"dev_attr_selftest", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 275, i32 3}
!103 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @tsc200x_selftest_show._entry, !102, !"_entry", i1 false, i1 false}
!106 = !{ptr @tsc200x_selftest_show._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 284, i32 3}
!109 = !{ptr @tsc200x_selftest_show._entry.50, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tsc200x_selftest_show._entry_ptr.52, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 291, i32 3}
!113 = !{ptr @tsc200x_selftest_show._entry.53, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tsc200x_selftest_show._entry_ptr.55, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 298, i32 3}
!117 = !{ptr @tsc200x_selftest_show._entry.56, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @tsc200x_selftest_show._entry_ptr.58, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 312, i32 3}
!121 = !{ptr @tsc200x_selftest_show._entry.59, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @tsc200x_selftest_show._entry_ptr.61, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 319, i32 3}
!125 = !{ptr @tsc200x_selftest_show._entry.62, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @tsc200x_selftest_show._entry_ptr.64, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 328, i32 22}
!129 = !{ptr @tsc200x_attrs, !130, !"tsc200x_attrs", i1 false, i1 false}
!130 = !{!"../drivers/input/touchscreen/tsc200x-core.c", i32 333, i32 26}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"auto-init"}
!141 = !{i8 0, i8 2}
!142 = !{i64 2148704687, i64 2148704692, i64 2148704705, i64 2148704749, i64 2148704783, i64 2148704804}
!143 = !{!"branch_weights", i32 2000, i32 1}
!144 = !{!"branch_weights", i32 1, i32 2000}
