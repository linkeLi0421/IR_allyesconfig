; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/cyttsp4_core.c_pt.bc'
source_filename = "../drivers/input/touchscreen/cyttsp4_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cyttsp4_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_cyttsp4_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_cyttsp4_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyttsp4_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22cyttsp4_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_cyttsp4_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cyttsp4_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_cyttsp4_probe\09\09\09\09"
module asm "\09.long\09__crc_cyttsp4_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyttsp4_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22cyttsp4_probe\22\09\09\09\09\09"
module asm "__kstrtabns_cyttsp4_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cyttsp4_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_cyttsp4_remove\09\09\09\09"
module asm "\09.long\09__crc_cyttsp4_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cyttsp4_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22cyttsp4_remove\22\09\09\09\09\09"
module asm "__kstrtabns_cyttsp4_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cyttsp4 = type { ptr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, %struct.wait_queue_head, i32, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.cyttsp4_sysinfo, ptr, i32, %struct.atomic_t, i8, %struct.cyttsp4_mt_data, ptr, ptr, ptr, ptr }
%struct.cyttsp4_sysinfo = type <{ i8, %struct.cyttsp4_sysinfo_data, %struct.cyttsp4_sysinfo_ptr, [3 x i8], %struct.cyttsp4_sysinfo_ofs, ptr, ptr, ptr, ptr }>
%struct.cyttsp4_sysinfo_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cyttsp4_sysinfo_ptr = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyttsp4_sysinfo_ofs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x %struct.cyttsp4_tch_abs_params], i32, i32, i32 }
%struct.cyttsp4_tch_abs_params = type { i32, i32, i32, i32 }
%struct.cyttsp4_mt_data = type { ptr, ptr, ptr, %struct.mutex, i8, [255 x i8], i32 }
%struct.cyttsp4_platform_data = type { ptr, ptr }
%struct.cyttsp4_core_platform_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, [32 x ptr] }
%struct.cyttsp4_mt_platform_data = type { ptr, i16, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.cyttsp4_bus_ops = type { i16, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cyttsp4_touch = type { [10 x i32] }
%struct.cyttsp4_test = type { i8, i8 }
%struct.cyttsp4_pcfg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.touch_settings = type <{ ptr, i32, i8 }>
%struct.cyttsp4_btn = type { i8, i32, i32 }
%struct.cyttsp4_cydata = type { i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.cyttsp4_opcfg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x %struct.cyttsp4_tch_rec_params], i8, i8, i8, [3 x %struct.cyttsp4_tch_rec_params] }
%struct.cyttsp4_tch_rec_params = type { i8, i8 }
%struct.touch_framework = type <{ ptr, i8, i8 }>

@cyttsp4_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cyttsp4_core_suspend, ptr @cyttsp4_core_resume, ptr @cyttsp4_core_suspend, ptr @cyttsp4_core_resume, ptr @cyttsp4_core_suspend, ptr @cyttsp4_core_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyttsp4_core_suspend, ptr @cyttsp4_core_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_cyttsp4_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyttsp4_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_cyttsp4_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyttsp4_pm_ops to i32), ptr @__kstrtab_cyttsp4_pm_ops, ptr @__kstrtabns_cyttsp4_pm_ops }, section "___ksymtab_gpl+cyttsp4_pm_ops", align 4
@cyttsp4_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2029, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Missing platform data\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cyttsp4_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/touchscreen/cyttsp4_core.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry_ptr = internal global ptr @cyttsp4_probe._entry, section ".printk_index", align 4
@cyttsp4_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 2036, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Error, kzalloc\0A\00", [44 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry_ptr.7 = internal global ptr @cyttsp4_probe._entry.5, section ".printk_index", align 4
@cyttsp4_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 2043, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry_ptr.9 = internal global ptr @cyttsp4_probe._entry.8, section ".printk_index", align 4
@cyttsp4_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cd->system_lock\00", [47 x i8] zeroinitializer }, align 32
@cyttsp4_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cd->adap_lock\00", [17 x i8] zeroinitializer }, align 32
@cyttsp4_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cd->wait_q\00", [20 x i8] zeroinitializer }, align 32
@cyttsp4_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&cd->startup_work)\00", [59 x i8] zeroinitializer }, align 32
@cyttsp4_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&cd->watchdog_work)\00", [58 x i8] zeroinitializer }, align 32
@cyttsp4_probe.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.1, ptr @.str.2, ptr @.str.20, i8 2, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cyttsp4_core\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: Init HW\0A\00", [19 x i8] zeroinitializer }, align 32
@cyttsp4_probe.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.1, ptr @.str.2, ptr @.str.21, i8 2, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: No HW INIT function\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 2083, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: HW Init fail r=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry_ptr.24 = internal global ptr @cyttsp4_probe._entry.22, section ".printk_index", align 4
@cyttsp4_probe.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.1, ptr @.str.2, ptr @.str.25, i8 2, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: initialize threaded irq=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 2096, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Error, could not request irq\0A\00", [62 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry_ptr.28 = internal global ptr @cyttsp4_probe._entry.26, section ".printk_index", align 4
@cyttsp4_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&cd->watchdog_timer)\00", [42 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 2112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Fail initial startup r=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry_ptr.33 = internal global ptr @cyttsp4_probe._entry.31, section ".printk_index", align 4
@cyttsp4_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 2118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Error, fail mt probe\0A\00", [38 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry_ptr.36 = internal global ptr @cyttsp4_probe._entry.34, section ".printk_index", align 4
@cyttsp4_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 2141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s failed.\0A\00", [20 x i8] zeroinitializer }, align 32
@cyttsp4_probe._entry_ptr.39 = internal global ptr @cyttsp4_probe._entry.37, section ".printk_index", align 4
@__kstrtab_cyttsp4_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyttsp4_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_cyttsp4_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyttsp4_probe to i32), ptr @__kstrtab_cyttsp4_probe, ptr @__kstrtabns_cyttsp4_probe }, section "___ksymtab_gpl+cyttsp4_probe", align 4
@__kstrtab_cyttsp4_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_cyttsp4_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_cyttsp4_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cyttsp4_remove to i32), ptr @__kstrtab_cyttsp4_remove, ptr @__kstrtabns_cyttsp4_remove }, section "___ksymtab_gpl+cyttsp4_remove", align 4
@__UNIQUE_ID_file286 = internal constant [57 x i8] c"cyttsp4_core.file=drivers/input/touchscreen/cyttsp4_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [25 x i8] c"cyttsp4_core.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [79 x i8] c"cyttsp4_core.description=Cypress TrueTouch(R) Standard touchscreen core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [28 x i8] c"cyttsp4_core.author=Cypress\00", section ".modinfo", align 1
@cyttsp4_core_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1858, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Error on sleep\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cyttsp4_core_suspend\00", [43 x i8] zeroinitializer }, align 32
@cyttsp4_core_suspend._entry_ptr = internal global ptr @cyttsp4_core_suspend._entry, section ".printk_index", align 4
@cyttsp4_core_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1756, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: fail get exclusive ex=%p own=%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cyttsp4_core_sleep\00", [45 x i8] zeroinitializer }, align 32
@cyttsp4_core_sleep._entry_ptr = internal global ptr @cyttsp4_core_sleep._entry, section ".printk_index", align 4
@cyttsp4_core_sleep._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 1763, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: fail to release exclusive\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_core_sleep._entry_ptr.46 = internal global ptr @cyttsp4_core_sleep._entry.44, section ".printk_index", align 4
@cyttsp4_request_exclusive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1301, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: tmo waiting exclusive access\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cyttsp4_request_exclusive\00", [38 x i8] zeroinitializer }, align 32
@cyttsp4_request_exclusive._entry_ptr = internal global ptr @cyttsp4_request_exclusive._entry, section ".printk_index", align 4
@cyttsp4_core_sleep_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Fail read adapter r=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cyttsp4_core_sleep_\00", [44 x i8] zeroinitializer }, align 32
@cyttsp4_core_sleep_._entry_ptr = internal global ptr @cyttsp4_core_sleep_._entry, section ".printk_index", align 4
@cyttsp4_core_sleep_._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 1533, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Device in BOOTLOADER mode.\0A\00", [32 x i8] zeroinitializer }, align 32
@cyttsp4_core_sleep_._entry_ptr.53 = internal global ptr @cyttsp4_core_sleep_._entry.51, section ".printk_index", align 4
@cyttsp4_core_sleep_._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 1542, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Fail write adapter r=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@cyttsp4_core_sleep_._entry_ptr.56 = internal global ptr @cyttsp4_core_sleep_._entry.54, section ".printk_index", align 4
@cyttsp4_core_sleep_.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.50, ptr @.str.2, ptr @.str.57, i8 1, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Power down HW\0A\00", [45 x i8] zeroinitializer }, align 32
@cyttsp4_core_sleep_.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.50, ptr @.str.2, ptr @.str.58, i8 1, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: No power function\0A\00", [41 x i8] zeroinitializer }, align 32
@cyttsp4_core_sleep_._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.50, ptr @.str.2, i32 1556, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: HW Power down fails r=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@cyttsp4_core_sleep_._entry_ptr.61 = internal global ptr @cyttsp4_core_sleep_._entry.59, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cyttsp4_core_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1874, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Error on wake\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cyttsp4_core_resume\00", [44 x i8] zeroinitializer }, align 32
@cyttsp4_core_resume._entry_ptr = internal global ptr @cyttsp4_core_resume._entry, section ".printk_index", align 4
@cyttsp4_core_wake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.64, ptr @.str.2, i32 1834, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cyttsp4_core_wake\00", [46 x i8] zeroinitializer }, align 32
@cyttsp4_core_wake._entry_ptr = internal global ptr @cyttsp4_core_wake._entry, section ".printk_index", align 4
@cyttsp4_core_wake._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.64, ptr @.str.2, i32 1841, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_core_wake._entry_ptr.66 = internal global ptr @cyttsp4_core_wake._entry.65, section ".printk_index", align 4
@cyttsp4_core_wake_.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 1, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cyttsp4_core_wake_\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Power up HW\0A\00", [47 x i8] zeroinitializer }, align 32
@cyttsp4_core_wake_.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.67, ptr @.str.2, ptr @.str.58, i8 1, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cyttsp4_core_wake_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 1796, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: HW Power up fails r=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@cyttsp4_core_wake_._entry_ptr = internal global ptr @cyttsp4_core_wake_._entry, section ".printk_index", align 4
@cyttsp4_core_wake_._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str.2, i32 1809, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: TMO waiting for wakeup\0A\00", [36 x i8] zeroinitializer }, align 32
@cyttsp4_core_wake_._entry_ptr.72 = internal global ptr @cyttsp4_core_wake_._entry.70, section ".printk_index", align 4
@cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cyttsp4_queue_startup_\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: cyttsp4_startup queued\0A\00", [36 x i8] zeroinitializer }, align 32
@cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.73, ptr @.str.2, ptr @.str.75, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: startup_state = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cyttsp4_startup_work_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 1725, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Fail queued startup r=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cyttsp4_startup_work_function\00", [34 x i8] zeroinitializer }, align 32
@cyttsp4_startup_work_function._entry_ptr = internal global ptr @cyttsp4_startup_work_function._entry, section ".printk_index", align 4
@cyttsp4_watchdog_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1482, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: failed to access device in watchdog timer r=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cyttsp4_watchdog_work\00", [42 x i8] zeroinitializer }, align 32
@cyttsp4_watchdog_work._entry_ptr = internal global ptr @cyttsp4_watchdog_work._entry, section ".printk_index", align 4
@cyttsp4_watchdog_work._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 1490, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: device found in bootloader mode when operational mode\0A\00", [37 x i8] zeroinitializer }, align 32
@cyttsp4_watchdog_work._entry_ptr.82 = internal global ptr @cyttsp4_watchdog_work._entry.80, section ".printk_index", align 4
@cyttsp4_load_status_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: fail read mode regs r=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cyttsp4_load_status_regs\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_load_status_regs._entry_ptr = internal global ptr @cyttsp4_load_status_regs._entry, section ".printk_index", align 4
@cyttsp4_irq.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cyttsp4_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s int:0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@cyttsp4_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.85, ptr @.str.2, i32 1106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_irq._entry_ptr = internal global ptr @cyttsp4_irq._entry, section ".printk_index", align 4
@cyttsp4_irq.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.85, ptr @.str.2, ptr @.str.87, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: restart switch to bl m=%d -> m=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@cyttsp4_irq._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.85, ptr @.str.2, i32 1159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unknown HST mode 0x%02X\0A\00", [35 x i8] zeroinitializer }, align 32
@cyttsp4_irq._entry_ptr.90 = internal global ptr @cyttsp4_irq._entry.88, section ".printk_index", align 4
@cyttsp4_irq.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.85, ptr @.str.2, ptr @.str.91, i8 1, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: finish mode switch m=%d -> m=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@cyttsp4_irq._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 1194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %d->%d 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@cyttsp4_irq._entry_ptr.94 = internal global ptr @cyttsp4_irq._entry.92, section ".printk_index", align 4
@cyttsp4_irq.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.85, ptr @.str.2, ptr @.str.95, i8 1, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Unexpected mode change, startup\0A\00", [59 x i8] zeroinitializer }, align 32
@cyttsp4_irq._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.85, ptr @.str.2, i32 1222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_irq._entry_ptr.97 = internal global ptr @cyttsp4_irq._entry.96, section ".printk_index", align 4
@cyttsp4_irq._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.85, ptr @.str.2, i32 1234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Fail handshake mode=0x%02X r=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@cyttsp4_irq._entry_ptr.100 = internal global ptr @cyttsp4_irq._entry.98, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cyttsp4_mt_attention._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1072, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: xy_worker error r=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cyttsp4_mt_attention\00", [43 x i8] zeroinitializer }, align 32
@cyttsp4_mt_attention._entry_ptr = internal global ptr @cyttsp4_mt_attention._entry, section ".printk_index", align 4
@cyttsp4_xy_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1003, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: report length error rep_len=%d num_tch=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cyttsp4_xy_worker\00", [46 x i8] zeroinitializer }, align 32
@cyttsp4_xy_worker._entry_ptr = internal global ptr @cyttsp4_xy_worker._entry, section ".printk_index", align 4
@cyttsp4_xy_worker._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 1014, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: read fail on touch regs r=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@cyttsp4_xy_worker._entry_ptr.107 = internal global ptr @cyttsp4_xy_worker._entry.105, section ".printk_index", align 4
@cyttsp4_xy_worker.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.104, ptr @.str.2, ptr @.str.108, i8 1, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Invalid buffer detected\0A\00", [35 x i8] zeroinitializer }, align 32
@cyttsp4_xy_worker.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.104, ptr @.str.2, ptr @.str.109, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Large area detected\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_xy_worker._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.104, ptr @.str.2, i32 1035, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: too many tch; set to max tch (n=%d c=%zd)\0A\00", [49 x i8] zeroinitializer }, align 32
@cyttsp4_xy_worker._entry_ptr.112 = internal global ptr @cyttsp4_xy_worker._entry.110, section ".printk_index", align 4
@cyttsp4_get_mt_touches._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 887, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: tch=%d -> bad trk_id=%d max_id=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cyttsp4_get_mt_touches\00", [41 x i8] zeroinitializer }, align 32
@cyttsp4_get_mt_touches._entry_ptr = internal global ptr @cyttsp4_get_mt_touches._entry, section ".printk_index", align 4
@cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.114, ptr @.str.2, ptr @.str.115, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: t=%d e=%d lift-off\0A\00", [40 x i8] zeroinitializer }, align 32
@cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.114, ptr @.str.2, ptr @.str.116, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: t=%d x=%d y=%d z=%d M=%d m=%d o=%d e=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.114, ptr @.str.2, ptr @.str.117, i8 0, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: t=%d x=%d y=%d z=%d e=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@cyttsp4_handshake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: bus write fail on handshake (ret=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cyttsp4_handshake\00", [46 x i8] zeroinitializer }, align 32
@cyttsp4_handshake._entry_ptr = internal global ptr @cyttsp4_handshake._entry, section ".printk_index", align 4
@cyttsp4_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.120, ptr @.str.2, i32 1694, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cyttsp4_startup\00", [16 x i8] zeroinitializer }, align 32
@cyttsp4_startup._entry_ptr = internal global ptr @cyttsp4_startup._entry, section ".printk_index", align 4
@cyttsp4_startup._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.120, ptr @.str.2, i32 1702, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_startup._entry_ptr.122 = internal global ptr @cyttsp4_startup._entry.121, section ".printk_index", align 4
@cyttsp4_startup_.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.123, ptr @.str.2, ptr @.str.124, i8 1, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cyttsp4_startup_\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: Retry %d\0A\00", [18 x i8] zeroinitializer }, align 32
@cyttsp4_startup_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 1594, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Error on h/w reset r=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@cyttsp4_startup_._entry_ptr = internal global ptr @cyttsp4_startup_._entry, section ".printk_index", align 4
@ldr_exit = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\FF\01;\00\00Om\17", [24 x i8] zeroinitializer }, align 32
@cyttsp4_startup_._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.123, ptr @.str.2, i32 1610, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Fail write r=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@cyttsp4_startup_._entry_ptr.128 = internal global ptr @cyttsp4_startup_._entry.126, section ".printk_index", align 4
@cyttsp4_startup_._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.123, ptr @.str.2, i32 1625, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Fail read r=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@cyttsp4_startup_._entry_ptr.131 = internal global ptr @cyttsp4_startup_._entry.129, section ".printk_index", align 4
@ldr_err_app = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01\02\00\00U\DD\17", [25 x i8] zeroinitializer }, align 32
@cyttsp4_startup_._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.123, ptr @.str.2, i32 1628, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Error launching touch application\0A\00", [57 x i8] zeroinitializer }, align 32
@cyttsp4_startup_._entry_ptr.134 = internal global ptr @cyttsp4_startup_._entry.132, section ".printk_index", align 4
@cyttsp4_startup_._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.123, ptr @.str.2, i32 1649, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to get sysinfo regs rc=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@cyttsp4_startup_._entry_ptr.137 = internal global ptr @cyttsp4_startup_._entry.135, section ".printk_index", align 4
@cyttsp4_startup_._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.123, ptr @.str.2, i32 1658, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: failed to set mode to operational rc=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@cyttsp4_startup_._entry_ptr.140 = internal global ptr @cyttsp4_startup_._entry.138, section ".printk_index", align 4
@cyttsp4_reset_and_wait.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.141, ptr @.str.2, ptr @.str.142, i8 1, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cyttsp4_reset_and_wait\00", [41 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: reset hw...\0A\00", [47 x i8] zeroinitializer }, align 32
@cyttsp4_reset_and_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.2, i32 1389, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:Fail hw reset r=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@cyttsp4_reset_and_wait._entry_ptr = internal global ptr @cyttsp4_reset_and_wait._entry, section ".printk_index", align 4
@cyttsp4_hw_hard_reset.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.144, ptr @.str.2, ptr @.str.145, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cyttsp4_hw_hard_reset\00", [42 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: execute HARD reset\0A\00", [40 x i8] zeroinitializer }, align 32
@cyttsp4_hw_hard_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.2, i32 141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: FAILED to execute HARD reset\0A\00", [62 x i8] zeroinitializer }, align 32
@cyttsp4_hw_hard_reset._entry_ptr = internal global ptr @cyttsp4_hw_hard_reset._entry, section ".printk_index", align 4
@cyttsp4_hw_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 128, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: FAILED to execute SOFT reset\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cyttsp4_hw_soft_reset\00", [42 x i8] zeroinitializer }, align 32
@cyttsp4_hw_soft_reset._entry_ptr = internal global ptr @cyttsp4_hw_soft_reset._entry, section ".printk_index", align 4
@cyttsp4_wait_bl_heartbeat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 1351, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: tmo waiting bl heartbeat cd->mode=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cyttsp4_wait_bl_heartbeat\00", [38 x i8] zeroinitializer }, align 32
@cyttsp4_wait_bl_heartbeat._entry_ptr = internal global ptr @cyttsp4_wait_bl_heartbeat._entry, section ".printk_index", align 4
@cyttsp4_wait_sysinfo_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 1368, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: tmo waiting exit bl cd->mode=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cyttsp4_wait_sysinfo_mode\00", [38 x i8] zeroinitializer }, align 32
@cyttsp4_wait_sysinfo_mode._entry_ptr = internal global ptr @cyttsp4_wait_sysinfo_mode._entry, section ".printk_index", align 4
@cyttsp4_get_sysinfo_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 723, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: failed to get_op_data\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cyttsp4_get_sysinfo_regs\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_get_sysinfo_regs._entry_ptr = internal global ptr @cyttsp4_get_sysinfo_regs._entry, section ".printk_index", align 4
@cyttsp4_get_sysinfo_regs._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.2, i32 733, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: handshake fail on sysinfo reg\0A\00", [61 x i8] zeroinitializer }, align 32
@cyttsp4_get_sysinfo_regs._entry_ptr.157 = internal global ptr @cyttsp4_get_sysinfo_regs._entry.155, section ".printk_index", align 4
@cyttsp4_si_data_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 171, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: fail read sysinfo data offsets r=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cyttsp4_si_data_offsets\00", [40 x i8] zeroinitializer }, align 32
@cyttsp4_si_data_offsets._entry_ptr = internal global ptr @cyttsp4_si_data_offsets._entry, section ".printk_index", align 4
@cyttsp4_si_get_cydata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: invalid offset test_ofs: %zu, cydata_ofs: %zu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cyttsp4_si_get_cydata\00", [42 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_cydata._entry_ptr = internal global ptr @cyttsp4_si_get_cydata._entry, section ".printk_index", align 4
@cyttsp4_si_get_cydata.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.161, ptr @.str.2, ptr @.str.162, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: cydata size: %zd\0A\00", [42 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_cydata._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.161, ptr @.str.2, i32 222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to allocate cydata memory\0A\00", [58 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_cydata._entry_ptr.165 = internal global ptr @cyttsp4_si_get_cydata._entry.163, section ".printk_index", align 4
@cyttsp4_si_get_cydata._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.161, ptr @.str.2, i32 236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: fail read cydata r=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_cydata._entry_ptr.168 = internal global ptr @cyttsp4_si_get_cydata._entry.166, section ".printk_index", align 4
@cyttsp4_si_get_cydata._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.161, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: mismatch in MFGID size, reported:%d calculated:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_cydata._entry_ptr.171 = internal global ptr @cyttsp4_si_get_cydata._entry.169, section ".printk_index", align 4
@cyttsp4_si_get_cydata._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.161, ptr @.str.2, i32 257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_cydata._entry_ptr.173 = internal global ptr @cyttsp4_si_get_cydata._entry.172, section ".printk_index", align 4
@cyttsp4_si_get_cydata._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.161, ptr @.str.2, i32 270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_cydata._entry_ptr.175 = internal global ptr @cyttsp4_si_get_cydata._entry.174, section ".printk_index", align 4
@cyttsp4_si_get_test_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: invalid offset pcfg_ofs: %zu, test_ofs: %zu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cyttsp4_si_get_test_data\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_test_data._entry_ptr = internal global ptr @cyttsp4_si_get_test_data._entry, section ".printk_index", align 4
@cyttsp4_si_get_test_data._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.2, i32 297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to allocate test memory\0A\00", [60 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_test_data._entry_ptr.180 = internal global ptr @cyttsp4_si_get_test_data._entry.178, section ".printk_index", align 4
@cyttsp4_si_get_test_data._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.177, ptr @.str.2, i32 306, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: fail read test data r=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_test_data._entry_ptr.183 = internal global ptr @cyttsp4_si_get_test_data._entry.181, section ".printk_index", align 4
@cyttsp4_si_get_test_data._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.177, ptr @.str.2, i32 317, ptr @.str.186, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s codel=%02X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_test_data._entry_ptr.187 = internal global ptr @cyttsp4_si_get_test_data._entry.184, section ".printk_index", align 4
@.str.188 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Reset was a WATCHDOG RESET\00", [37 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_test_data._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.177, ptr @.str.2, i32 323, ptr @.str.186, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_test_data._entry_ptr.190 = internal global ptr @cyttsp4_si_get_test_data._entry.189, section ".printk_index", align 4
@.str.191 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Config Data CRC FAIL\00", [43 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_test_data._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.177, ptr @.str.2, i32 329, ptr @.str.186, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_test_data._entry_ptr.193 = internal global ptr @cyttsp4_si_get_test_data._entry.192, section ".printk_index", align 4
@.str.194 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PANEL TEST FAIL\00", [16 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_test_data._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.177, ptr @.str.2, i32 334, ptr @.str.186, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: SCANNING is %s codel=%02X\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_test_data._entry_ptr.197 = internal global ptr @cyttsp4_si_get_test_data._entry.195, section ".printk_index", align 4
@.str.198 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENABLED\00", [24 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISABLED\00", [23 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_pcfg_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: invalid offset opcfg_ofs: %zu, pcfg_ofs: %zu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cyttsp4_si_get_pcfg_data\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_pcfg_data._entry_ptr = internal global ptr @cyttsp4_si_get_pcfg_data._entry, section ".printk_index", align 4
@cyttsp4_si_get_pcfg_data._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.201, ptr @.str.2, i32 356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to allocate pcfg memory\0A\00", [60 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_pcfg_data._entry_ptr.204 = internal global ptr @cyttsp4_si_get_pcfg_data._entry.202, section ".printk_index", align 4
@cyttsp4_si_get_pcfg_data._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.201, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: fail read pcfg data r=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_pcfg_data._entry_ptr.207 = internal global ptr @cyttsp4_si_get_pcfg_data._entry.205, section ".printk_index", align 4
@cyttsp4_si_get_opcfg_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.2, i32 399, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: invalid offset ddata_ofs: %zu, opcfg_ofs: %zu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cyttsp4_si_get_opcfg_data\00", [38 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_opcfg_data._entry_ptr = internal global ptr @cyttsp4_si_get_opcfg_data._entry, section ".printk_index", align 4
@cyttsp4_si_get_opcfg_data._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.209, ptr @.str.2, i32 408, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to allocate opcfg memory\0A\00", [59 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_opcfg_data._entry_ptr.212 = internal global ptr @cyttsp4_si_get_opcfg_data._entry.210, section ".printk_index", align 4
@cyttsp4_si_get_opcfg_data._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.209, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: fail read opcfg data r=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_opcfg_data._entry_ptr.215 = internal global ptr @cyttsp4_si_get_opcfg_data._entry.213, section ".printk_index", align 4
@cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.209, ptr @.str.2, ptr @.str.216, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.216 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: tch_rec_%s\0A\00", [16 x i8] zeroinitializer }, align 32
@cyttsp4_tch_abs_string = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231], [52 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.209, ptr @.str.2, ptr @.str.217, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.217 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:     ofs =%2zd\0A\00", [45 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.209, ptr @.str.2, ptr @.str.218, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.218 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:     siz =%2zd\0A\00", [45 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.209, ptr @.str.2, ptr @.str.219, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:     max =%2zd\0A\00", [45 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.209, ptr @.str.2, ptr @.str.220, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.220 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:     bofs=%2zd\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"X\00", [30 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Y\00", [30 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"O\00", [30 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"W\00", [30 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAJ\00", [28 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MIN\00", [28 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OR\00", [29 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_ddata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.2, i32 496, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: fail alloc ddata memory\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cyttsp4_si_get_ddata\00", [43 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_ddata._entry_ptr = internal global ptr @cyttsp4_si_get_ddata._entry, section ".printk_index", align 4
@cyttsp4_si_get_ddata._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.2, i32 505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: fail read ddata data r=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_ddata._entry_ptr.236 = internal global ptr @cyttsp4_si_get_ddata._entry.234, section ".printk_index", align 4
@cyttsp4_si_get_mdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.2, i32 523, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: fail alloc mdata memory\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cyttsp4_si_get_mdata\00", [43 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_mdata._entry_ptr = internal global ptr @cyttsp4_si_get_mdata._entry, section ".printk_index", align 4
@cyttsp4_si_get_mdata._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.238, ptr @.str.2, i32 532, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: fail read mdata data r=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_mdata._entry_ptr.241 = internal global ptr @cyttsp4_si_get_mdata._entry.239, section ".printk_index", align 4
@cyttsp4_si_get_btn_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.243, ptr @.str.2, i32 557, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cyttsp4_si_get_btn_data\00", [40 x i8] zeroinitializer }, align 32
@cyttsp4_si_get_btn_data._entry_ptr = internal global ptr @cyttsp4_si_get_btn_data._entry, section ".printk_index", align 4
@.str.244 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail alloc btn_keys memory\00", [37 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.246, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.245 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cyttsp4_si_put_log_data\00", [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: cydata_ofs =%4zd siz=%4zd\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.247, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.247 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: test_ofs   =%4zd siz=%4zd\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.248, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.248 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: pcfg_ofs   =%4zd siz=%4zd\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.249, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.249 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: opcfg_ofs  =%4zd siz=%4zd\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.250, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.250 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: ddata_ofs  =%4zd siz=%4zd\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.251, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.251 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: mdata_ofs  =%4zd siz=%4zd\0A\00", [33 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.252, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.252 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: cmd_ofs       =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.253, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.253 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: rep_ofs       =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.254, i8 0, i8 -97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.254 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: rep_sz        =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.255, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.255 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: num_btns      =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.256, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.256 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: num_btn_regs  =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.257, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.257 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: tt_stat_ofs   =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.258, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.258 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: tch_rec_size  =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.259, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.259 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: max_tchs      =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.260, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.260 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: mode_size     =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.261, i8 0, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.261 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: data_size     =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.262, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.262 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: map_sz        =%4zd\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.263, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.263 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: btn_rec_size   =%2zd\0A\00", [38 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.264, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.264 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: btn_diff_ofs   =%2zd\0A\00", [38 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.265, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.265 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: btn_diff_size  =%2zd\0A\00", [38 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.266, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.266 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: max_x    = 0x%04zX (%zd)\0A\00", [34 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.267, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.267 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: x_origin = %zd (%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"left corner\00", [20 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"right corner\00", [19 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.270, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.270 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: max_y    = 0x%04zX (%zd)\0A\00", [34 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.271, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.271 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: y_origin = %zd (%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"upper corner\00", [19 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lower corner\00", [19 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.274, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.274 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: max_p    = 0x%04zX (%zd)\0A\00", [34 x i8] zeroinitializer }, align 32
@cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.245, ptr @.str.2, ptr @.str.275, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.275 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: xy_mode=%p xy_data=%p\0A\00", [37 x i8] zeroinitializer }, align 32
@cyttsp4_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.2, i32 1419, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid mode: %02X(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cyttsp4_set_mode\00", [47 x i8] zeroinitializer }, align 32
@cyttsp4_set_mode._entry_ptr = internal global ptr @cyttsp4_set_mode._entry, section ".printk_index", align 4
@cyttsp4_set_mode.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.277, ptr @.str.2, ptr @.str.278, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.278 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: %s=%p new_dev_mode=%02X new_mode=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"have exclusive\00", [17 x i8] zeroinitializer }, align 32
@cyttsp4_set_mode._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.277, ptr @.str.2, i32 1433, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Fail read mode r=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp4_set_mode._entry_ptr.282 = internal global ptr @cyttsp4_set_mode._entry.280, section ".printk_index", align 4
@cyttsp4_set_mode._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.277, ptr @.str.2, i32 1446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Fail write mode change r=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@cyttsp4_set_mode._entry_ptr.285 = internal global ptr @cyttsp4_set_mode._entry.283, section ".printk_index", align 4
@cyttsp4_set_mode.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.277, ptr @.str.2, ptr @.str.286, i8 1, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.286 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: back from wait t=%ld cd->mode=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@cyttsp4_set_mode._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.277, ptr @.str.2, i32 1459, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_set_mode._entry_ptr.288 = internal global ptr @cyttsp4_set_mode._entry.287, section ".printk_index", align 4
@.str.289 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tmo waiting mode change\00", [40 x i8] zeroinitializer }, align 32
@cyttsp4_mt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.290 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&md->report_lock\00", [47 x i8] zeroinitializer }, align 32
@cyttsp4_mt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.292, ptr @.str.2, i32 1990, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Error, failed to allocate input device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cyttsp4_mt_probe\00", [47 x i8] zeroinitializer }, align 32
@cyttsp4_mt_probe._entry_ptr = internal global ptr @cyttsp4_mt_probe._entry, section ".printk_index", align 4
@.str.293 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@cyttsp4_mt_probe._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.292, ptr @.str.2, i32 2016, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyttsp4_mt_probe._entry_ptr.295 = internal global ptr @cyttsp4_mt_probe._entry.294, section ".printk_index", align 4
@cyttsp4_setup_input_device.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.296, ptr @.str.2, ptr @.str.297, i8 1, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.296 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cyttsp4_setup_input_device\00", [37 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: register signal=%02X min=%d max=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@cyttsp4_setup_input_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.296, ptr @.str.2, i32 1971, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Error, failed register input device r=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@cyttsp4_setup_input_device._entry_ptr = internal global ptr @cyttsp4_setup_input_device._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@__sancov_gen_cov_switch_values.299 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.300 = private unnamed_addr constant [15 x i8] c"cyttsp4_pm_ops\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1882, i32 25 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2029, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2036, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2043, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2055, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2056, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2059, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2062, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2063, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2076, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2079, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2083, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2085, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2096, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2101, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2111, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2118, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2141, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1858, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1755, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1763, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1300, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1527, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1533, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1542, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1548, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1551, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1555, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1874, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1833, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1841, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1788, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1795, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1809, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 744, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 746, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1724, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1480, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1488, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 93, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1096, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1106, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1122, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1158, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1181, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1193, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1195, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1221, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1233, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1072, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1002, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1013, i32 4 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1025, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1031, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1034, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 884, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 898, i32 5 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 939, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 950, i32 4 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 116, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1693, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1702, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1588, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1594, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant [9 x i8] c"ldr_exit\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 47, i32 17 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1610, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1625, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant [12 x i8] c"ldr_err_app\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 51, i32 17 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1627, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1648, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1657, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1384, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1389, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 138, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 141, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 127, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1350, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1367, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 722, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 732, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 170, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 209, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 216, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 221, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 235, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 244, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 256, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 269, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 286, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 296, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 305, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 315, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 321, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 327, i32 3 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 331, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 345, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 355, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 364, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 397, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 407, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 416, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 464, i32 3 }
@___asan_gen_.924 = private unnamed_addr constant [23 x i8] c"cyttsp4_tch_abs_string\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 33, i32 27 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 466, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 468, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 470, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 472, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 34, i32 15 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 35, i32 15 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 36, i32 15 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 37, i32 15 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 38, i32 15 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 39, i32 15 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 40, i32 15 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 41, i32 17 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 42, i32 17 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 43, i32 16 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 44, i32 21 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 496, i32 3 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 504, i32 3 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 523, i32 3 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 531, i32 3 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 556, i32 4 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 621, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 623, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 625, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 627, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 629, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 631, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 634, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 636, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 638, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 640, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 642, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 644, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 646, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 648, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 650, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 652, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 654, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 657, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 659, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 661, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 664, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 666, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 670, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 672, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 676, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 679, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1418, i32 3 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1424, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1432, i32 3 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1445, i32 3 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1454, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1458, i32 3 }
@___asan_gen_.1143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1982, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1989, i32 3 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1996, i32 42 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 2016, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1957, i32 4 }
@___asan_gen_.1170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1174 = private constant [44 x i8] c"../drivers/input/touchscreen/cyttsp4_core.c\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1174, i32 1970, i32 3 }
@llvm.compiler.used = appending global [382 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__ksymtab_cyttsp4_pm_ops, ptr @__ksymtab_cyttsp4_probe, ptr @__ksymtab_cyttsp4_remove, ptr @cyttsp4_core_resume._entry, ptr @cyttsp4_core_resume._entry_ptr, ptr @cyttsp4_core_sleep._entry, ptr @cyttsp4_core_sleep._entry.44, ptr @cyttsp4_core_sleep._entry_ptr, ptr @cyttsp4_core_sleep._entry_ptr.46, ptr @cyttsp4_core_sleep_._entry, ptr @cyttsp4_core_sleep_._entry.51, ptr @cyttsp4_core_sleep_._entry.54, ptr @cyttsp4_core_sleep_._entry.59, ptr @cyttsp4_core_sleep_._entry_ptr, ptr @cyttsp4_core_sleep_._entry_ptr.53, ptr @cyttsp4_core_sleep_._entry_ptr.56, ptr @cyttsp4_core_sleep_._entry_ptr.61, ptr @cyttsp4_core_suspend._entry, ptr @cyttsp4_core_suspend._entry_ptr, ptr @cyttsp4_core_wake._entry, ptr @cyttsp4_core_wake._entry.65, ptr @cyttsp4_core_wake._entry_ptr, ptr @cyttsp4_core_wake._entry_ptr.66, ptr @cyttsp4_core_wake_._entry, ptr @cyttsp4_core_wake_._entry.70, ptr @cyttsp4_core_wake_._entry_ptr, ptr @cyttsp4_core_wake_._entry_ptr.72, ptr @cyttsp4_get_mt_touches._entry, ptr @cyttsp4_get_mt_touches._entry_ptr, ptr @cyttsp4_get_sysinfo_regs._entry, ptr @cyttsp4_get_sysinfo_regs._entry.155, ptr @cyttsp4_get_sysinfo_regs._entry_ptr, ptr @cyttsp4_get_sysinfo_regs._entry_ptr.157, ptr @cyttsp4_handshake._entry, ptr @cyttsp4_handshake._entry_ptr, ptr @cyttsp4_hw_hard_reset._entry, ptr @cyttsp4_hw_hard_reset._entry_ptr, ptr @cyttsp4_hw_soft_reset._entry, ptr @cyttsp4_hw_soft_reset._entry_ptr, ptr @cyttsp4_irq._entry, ptr @cyttsp4_irq._entry.88, ptr @cyttsp4_irq._entry.92, ptr @cyttsp4_irq._entry.96, ptr @cyttsp4_irq._entry.98, ptr @cyttsp4_irq._entry_ptr, ptr @cyttsp4_irq._entry_ptr.100, ptr @cyttsp4_irq._entry_ptr.90, ptr @cyttsp4_irq._entry_ptr.94, ptr @cyttsp4_irq._entry_ptr.97, ptr @cyttsp4_load_status_regs._entry, ptr @cyttsp4_load_status_regs._entry_ptr, ptr @cyttsp4_mt_attention._entry, ptr @cyttsp4_mt_attention._entry_ptr, ptr @cyttsp4_mt_probe._entry, ptr @cyttsp4_mt_probe._entry.294, ptr @cyttsp4_mt_probe._entry_ptr, ptr @cyttsp4_mt_probe._entry_ptr.295, ptr @cyttsp4_probe._entry, ptr @cyttsp4_probe._entry.22, ptr @cyttsp4_probe._entry.26, ptr @cyttsp4_probe._entry.31, ptr @cyttsp4_probe._entry.34, ptr @cyttsp4_probe._entry.37, ptr @cyttsp4_probe._entry.5, ptr @cyttsp4_probe._entry.8, ptr @cyttsp4_probe._entry_ptr, ptr @cyttsp4_probe._entry_ptr.24, ptr @cyttsp4_probe._entry_ptr.28, ptr @cyttsp4_probe._entry_ptr.33, ptr @cyttsp4_probe._entry_ptr.36, ptr @cyttsp4_probe._entry_ptr.39, ptr @cyttsp4_probe._entry_ptr.7, ptr @cyttsp4_probe._entry_ptr.9, ptr @cyttsp4_request_exclusive._entry, ptr @cyttsp4_request_exclusive._entry_ptr, ptr @cyttsp4_reset_and_wait._entry, ptr @cyttsp4_reset_and_wait._entry_ptr, ptr @cyttsp4_set_mode._entry, ptr @cyttsp4_set_mode._entry.280, ptr @cyttsp4_set_mode._entry.283, ptr @cyttsp4_set_mode._entry.287, ptr @cyttsp4_set_mode._entry_ptr, ptr @cyttsp4_set_mode._entry_ptr.282, ptr @cyttsp4_set_mode._entry_ptr.285, ptr @cyttsp4_set_mode._entry_ptr.288, ptr @cyttsp4_setup_input_device._entry, ptr @cyttsp4_setup_input_device._entry_ptr, ptr @cyttsp4_si_data_offsets._entry, ptr @cyttsp4_si_data_offsets._entry_ptr, ptr @cyttsp4_si_get_btn_data._entry, ptr @cyttsp4_si_get_btn_data._entry_ptr, ptr @cyttsp4_si_get_cydata._entry, ptr @cyttsp4_si_get_cydata._entry.163, ptr @cyttsp4_si_get_cydata._entry.166, ptr @cyttsp4_si_get_cydata._entry.169, ptr @cyttsp4_si_get_cydata._entry.172, ptr @cyttsp4_si_get_cydata._entry.174, ptr @cyttsp4_si_get_cydata._entry_ptr, ptr @cyttsp4_si_get_cydata._entry_ptr.165, ptr @cyttsp4_si_get_cydata._entry_ptr.168, ptr @cyttsp4_si_get_cydata._entry_ptr.171, ptr @cyttsp4_si_get_cydata._entry_ptr.173, ptr @cyttsp4_si_get_cydata._entry_ptr.175, ptr @cyttsp4_si_get_ddata._entry, ptr @cyttsp4_si_get_ddata._entry.234, ptr @cyttsp4_si_get_ddata._entry_ptr, ptr @cyttsp4_si_get_ddata._entry_ptr.236, ptr @cyttsp4_si_get_mdata._entry, ptr @cyttsp4_si_get_mdata._entry.239, ptr @cyttsp4_si_get_mdata._entry_ptr, ptr @cyttsp4_si_get_mdata._entry_ptr.241, ptr @cyttsp4_si_get_opcfg_data._entry, ptr @cyttsp4_si_get_opcfg_data._entry.210, ptr @cyttsp4_si_get_opcfg_data._entry.213, ptr @cyttsp4_si_get_opcfg_data._entry_ptr, ptr @cyttsp4_si_get_opcfg_data._entry_ptr.212, ptr @cyttsp4_si_get_opcfg_data._entry_ptr.215, ptr @cyttsp4_si_get_pcfg_data._entry, ptr @cyttsp4_si_get_pcfg_data._entry.202, ptr @cyttsp4_si_get_pcfg_data._entry.205, ptr @cyttsp4_si_get_pcfg_data._entry_ptr, ptr @cyttsp4_si_get_pcfg_data._entry_ptr.204, ptr @cyttsp4_si_get_pcfg_data._entry_ptr.207, ptr @cyttsp4_si_get_test_data._entry, ptr @cyttsp4_si_get_test_data._entry.178, ptr @cyttsp4_si_get_test_data._entry.181, ptr @cyttsp4_si_get_test_data._entry.184, ptr @cyttsp4_si_get_test_data._entry.189, ptr @cyttsp4_si_get_test_data._entry.192, ptr @cyttsp4_si_get_test_data._entry.195, ptr @cyttsp4_si_get_test_data._entry_ptr, ptr @cyttsp4_si_get_test_data._entry_ptr.180, ptr @cyttsp4_si_get_test_data._entry_ptr.183, ptr @cyttsp4_si_get_test_data._entry_ptr.187, ptr @cyttsp4_si_get_test_data._entry_ptr.190, ptr @cyttsp4_si_get_test_data._entry_ptr.193, ptr @cyttsp4_si_get_test_data._entry_ptr.197, ptr @cyttsp4_startup._entry, ptr @cyttsp4_startup._entry.121, ptr @cyttsp4_startup._entry_ptr, ptr @cyttsp4_startup._entry_ptr.122, ptr @cyttsp4_startup_._entry, ptr @cyttsp4_startup_._entry.126, ptr @cyttsp4_startup_._entry.129, ptr @cyttsp4_startup_._entry.132, ptr @cyttsp4_startup_._entry.135, ptr @cyttsp4_startup_._entry.138, ptr @cyttsp4_startup_._entry_ptr, ptr @cyttsp4_startup_._entry_ptr.128, ptr @cyttsp4_startup_._entry_ptr.131, ptr @cyttsp4_startup_._entry_ptr.134, ptr @cyttsp4_startup_._entry_ptr.137, ptr @cyttsp4_startup_._entry_ptr.140, ptr @cyttsp4_startup_work_function._entry, ptr @cyttsp4_startup_work_function._entry_ptr, ptr @cyttsp4_wait_bl_heartbeat._entry, ptr @cyttsp4_wait_bl_heartbeat._entry_ptr, ptr @cyttsp4_wait_sysinfo_mode._entry, ptr @cyttsp4_wait_sysinfo_mode._entry_ptr, ptr @cyttsp4_watchdog_work._entry, ptr @cyttsp4_watchdog_work._entry.80, ptr @cyttsp4_watchdog_work._entry_ptr, ptr @cyttsp4_watchdog_work._entry_ptr.82, ptr @cyttsp4_xy_worker._entry, ptr @cyttsp4_xy_worker._entry.105, ptr @cyttsp4_xy_worker._entry.110, ptr @cyttsp4_xy_worker._entry_ptr, ptr @cyttsp4_xy_worker._entry_ptr.107, ptr @cyttsp4_xy_worker._entry_ptr.112, ptr @cyttsp4_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @cyttsp4_probe.__key, ptr @.str.10, ptr @cyttsp4_probe.__key.11, ptr @.str.12, ptr @cyttsp4_probe.__key.13, ptr @.str.14, ptr @cyttsp4_probe.__key.15, ptr @.str.16, ptr @cyttsp4_probe.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @cyttsp4_probe.__key.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @ldr_exit, ptr @.str.127, ptr @.str.130, ptr @ldr_err_app, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.186, ptr @.str.188, ptr @.str.191, ptr @.str.194, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @.str.206, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @.str.214, ptr @.str.216, ptr @cyttsp4_tch_abs_string, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.237, ptr @.str.238, ptr @.str.240, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.281, ptr @.str.284, ptr @.str.286, ptr @.str.289, ptr @cyttsp4_mt_probe.__key, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.296, ptr @.str.297, ptr @.str.298], section "llvm.metadata"
@0 = internal global [292 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_sleep._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_request_exclusive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_sleep_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_sleep_._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_sleep_._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_sleep_._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_wake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_wake._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_wake_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_core_wake_._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_startup_work_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_watchdog_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_watchdog_work._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_load_status_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_irq._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_irq._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_irq._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_irq._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_mt_attention._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_xy_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_xy_worker._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_xy_worker._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_get_mt_touches._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_handshake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_startup._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_startup_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldr_exit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_startup_._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_startup_._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldr_err_app to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_startup_._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_startup_._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_startup_._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_reset_and_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_hw_hard_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_hw_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_wait_bl_heartbeat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_wait_sysinfo_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_get_sysinfo_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_get_sysinfo_regs._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_data_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_cydata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_cydata._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_cydata._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_cydata._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_cydata._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_cydata._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_test_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_test_data._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_test_data._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_test_data._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_test_data._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_test_data._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_test_data._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_pcfg_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_pcfg_data._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_pcfg_data._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_opcfg_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_opcfg_data._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_opcfg_data._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_tch_abs_string to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_ddata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_ddata._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_mdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_mdata._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_si_get_btn_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_set_mode._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_set_mode._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_set_mode._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_mt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_mt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_mt_probe._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_setup_input_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp4_core_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_suspended = getelementptr inbounds %struct.cyttsp4, ptr %1, i32 0, i32 17, i32 4
  %2 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_suspended, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call.i = tail call fastcc i32 @cyttsp4_request_exclusive(ptr noundef %1, ptr noundef %4, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cyttsp4_core_sleep.exit.thread, label %if.end.i

cyttsp4_core_sleep.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %exclusive_dev.i = getelementptr inbounds %struct.cyttsp4, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %exclusive_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %exclusive_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef %8, ptr noundef %6) #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call3.i = tail call fastcc i32 @cyttsp4_core_sleep_(ptr noundef %1) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %system_lock.i.i = getelementptr inbounds %struct.cyttsp4, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %system_lock.i.i, i32 noundef 0) #8
  %exclusive_dev.i.i = getelementptr inbounds %struct.cyttsp4, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %exclusive_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %exclusive_dev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %12, %10
  br i1 %cmp.not.i.i, label %cyttsp4_release_exclusive.exit.i, label %do.end10.i

cyttsp4_release_exclusive.exit.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %exclusive_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %exclusive_dev.i.i, align 4
  %wait_q.i.i = getelementptr inbounds %struct.cyttsp4, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait_q.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %system_lock.i.i) #8
  br label %cyttsp4_core_sleep.exit

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %system_lock.i.i) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #11
  br label %cyttsp4_core_sleep.exit

cyttsp4_core_sleep.exit:                          ; preds = %do.end10.i, %cyttsp4_release_exclusive.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %do.end, label %cyttsp4_core_sleep.exit.cleanup_crit_edge

cyttsp4_core_sleep.exit.cleanup_crit_edge:        ; preds = %cyttsp4_core_sleep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %cyttsp4_core_sleep.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cyttsp4_core_sleep.exit.cleanup_crit_edge, %cyttsp4_core_sleep.exit.thread
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %cyttsp4_core_sleep.exit.cleanup_crit_edge ], [ 0, %cyttsp4_core_sleep.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp4_core_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_suspended = getelementptr inbounds %struct.cyttsp4, ptr %1, i32 0, i32 17, i32 4
  %2 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_suspended, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call.i = tail call fastcc i32 @cyttsp4_request_exclusive(ptr noundef %1, ptr noundef %4, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %exclusive_dev.i = getelementptr inbounds %struct.cyttsp4, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %exclusive_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %exclusive_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.64, ptr noundef %8, ptr noundef %6) #11
  br label %cyttsp4_core_wake.exit

if.end.i:                                         ; preds = %entry
  tail call fastcc void @cyttsp4_core_wake_(ptr noundef %1) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %system_lock.i.i = getelementptr inbounds %struct.cyttsp4, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %system_lock.i.i, i32 noundef 0) #8
  %exclusive_dev.i.i = getelementptr inbounds %struct.cyttsp4, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %exclusive_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %exclusive_dev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %12, %10
  br i1 %cmp.not.i.i, label %cyttsp4_release_exclusive.exit.i, label %do.end10.i

cyttsp4_release_exclusive.exit.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %exclusive_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %exclusive_dev.i.i, align 4
  %wait_q.i.i = getelementptr inbounds %struct.cyttsp4, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait_q.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %system_lock.i.i) #8
  br label %cyttsp4_core_wake.exit

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %system_lock.i.i) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.64) #11
  br label %cyttsp4_core_wake.exit

cyttsp4_core_wake.exit:                           ; preds = %do.end10.i, %cyttsp4_release_exclusive.exit.i, %do.end.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cyttsp4_probe(ptr noundef %ops, ptr noundef %dev, i16 zeroext %irq, i32 noundef %xfer_buf_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %mt_pdata = getelementptr inbounds %struct.cyttsp4_platform_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mt_pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mt_pdata, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %if.end

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %do.end167

if.end:                                           ; preds = %lor.lhs.false2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1148) #12
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end9, label %if.end8.i.i

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #11
  br label %do.end167

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %xfer_buf_size, i32 noundef 3520) #13
  %xfer_buf = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 21
  %7 = ptrtoint ptr %xfer_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %xfer_buf, align 8
  %tobool13.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #11
  br label %error_free_cd

if.end18:                                         ; preds = %if.end8.i.i
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call7.i.i, align 8
  %pdata20 = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 18
  %9 = ptrtoint ptr %pdata20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %pdata20, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %cpdata = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %cpdata to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %cpdata, align 8
  %bus_ops = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 20
  %13 = ptrtoint ptr %bus_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ops, ptr %bus_ops, align 4
  %system_lock = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %system_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @cyttsp4_probe.__key) #8
  %adap_lock = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %adap_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @cyttsp4_probe.__key.11) #8
  %wait_q = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait_q, ptr noundef nonnull @.str.14, ptr noundef nonnull @cyttsp4_probe.__key.13) #8
  %startup_work = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %startup_work, i32 noundef 0) #8
  %14 = ptrtoint ptr %startup_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %startup_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @cyttsp4_probe.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry35 = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry35, ptr %entry35, align 8
  %prev.i = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry35, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cyttsp4_startup_work_function, ptr %func, align 8
  %watchdog_work = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %watchdog_work, i32 noundef 0) #8
  %18 = ptrtoint ptr %watchdog_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %watchdog_work, align 8
  %lockdep_map45 = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map45, ptr noundef nonnull @.str.18, ptr noundef nonnull @cyttsp4_probe.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry47 = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %entry47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry47, ptr %entry47, align 4
  %prev.i252 = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i252 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry47, ptr %prev.i252, align 8
  %func49 = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 10, i32 2
  %21 = ptrtoint ptr %func49 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cyttsp4_watchdog_work, ptr %func49, align 4
  %22 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cpdata, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %25) #8
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #8
  %irq54 = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %irq54 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call1.i, ptr %irq54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %if.end18.error_free_xfer_crit_edge, label %if.end57

if.end18.error_free_xfer_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_xfer

if.end57:                                         ; preds = %if.end18
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %28 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpdata, align 8
  %init = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init, align 4
  %tobool59.not = icmp eq ptr %31, null
  br i1 %tobool59.not, label %do.body76, label %do.body61

do.body61:                                        ; preds = %if.end57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_probe.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_probe, %if.then66)) #8
          to label %do.end70 [label %if.then66], !srcloc !615

if.then66:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_probe.__UNIQUE_ID_ddebug283, ptr noundef %33, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1) #8
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %do.body61
  %34 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpdata, align 8
  %init72 = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %init72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init72, align 4
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i, align 8
  %call75 = tail call i32 %37(ptr noundef %35, i32 noundef 1, ptr noundef %39) #8
  br label %if.end93

do.body76:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_probe.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_probe, %if.end93.thread)) #8
          to label %if.end93 [label %if.end93.thread], !srcloc !615

if.end93.thread:                                  ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_probe.__UNIQUE_ID_ddebug284, ptr noundef %41, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1) #8
  br label %do.body101

if.end93:                                         ; preds = %do.body76, %do.end70
  %rc.0 = phi i32 [ %call75, %do.end70 ], [ 0, %do.body76 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp94 = icmp slt i32 %rc.0, 0
  br i1 %cmp94, label %do.end98, label %if.end93.do.body101_crit_edge

if.end93.do.body101_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body101

do.end98:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef %rc.0) #11
  br label %do.body101

do.body101:                                       ; preds = %do.end98, %if.end93.do.body101_crit_edge, %if.end93.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_probe.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_probe, %if.then113)) #8
          to label %do.end117 [label %if.then113], !srcloc !615

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %irq54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq54, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_probe.__UNIQUE_ID_ddebug285, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef %45) #8
  br label %do.end117

do.end117:                                        ; preds = %if.then113, %do.body101
  %46 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cpdata, align 8
  %level_irq_udelay = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %level_irq_udelay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %level_irq_udelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp119 = icmp sgt i32 %49, 0
  %. = select i1 %cmp119, i32 8200, i32 8194
  %50 = ptrtoint ptr %irq54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq54, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %52 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end117.dev_name.exit_crit_edge

do.end117.dev_name.exit_crit_edge:                ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end117.dev_name.exit_crit_edge
  %retval.0.i253 = phi ptr [ %55, %if.end.i ], [ %53, %do.end117.dev_name.exit_crit_edge ]
  %call125 = tail call i32 @request_threaded_irq(i32 noundef %51, ptr noundef null, ptr noundef nonnull @cyttsp4_irq, i32 noundef %., ptr noundef %retval.0.i253, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %do.end130, label %do.body132

do.end130:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1) #11
  br label %error_request_irq

do.body132:                                       ; preds = %dev_name.exit
  %watchdog_timer = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 11
  tail call void @init_timer_key(ptr noundef %watchdog_timer, ptr noundef nonnull @cyttsp4_watchdog_timer, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @cyttsp4_probe.__key.29) #8
  %call135 = tail call fastcc i32 @cyttsp4_startup(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %land.lhs.true, label %do.body132.if.end143_crit_edge

do.body132.if.end143_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

land.lhs.true:                                    ; preds = %do.body132
  %mode = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp137 = icmp eq i32 %57, 0
  br i1 %cmp137, label %do.end141, label %land.lhs.true.if.end143_crit_edge

land.lhs.true.if.end143_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

do.end141:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef %call135) #11
  br label %error_startup

if.end143:                                        ; preds = %land.lhs.true.if.end143_crit_edge, %do.body132.if.end143_crit_edge
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call7.i.i, align 8
  %md2.i = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 17
  %62 = ptrtoint ptr %pdata20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata20, align 4
  %mt_pdata.i = getelementptr inbounds %struct.cyttsp4_platform_data, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %mt_pdata.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mt_pdata.i, align 4
  %report_lock.i = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 17, i32 3
  tail call void @__mutex_init(ptr noundef %report_lock.i, ptr noundef nonnull @.str.290, ptr noundef nonnull @cyttsp4_mt_probe.__key) #8
  %66 = ptrtoint ptr %md2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %md2.i, align 8
  %call.i254 = tail call ptr @input_allocate_device() #8
  %input.i = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 17, i32 2
  %67 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i254, ptr %input.i, align 8
  %cmp.i = icmp eq ptr %call.i254, null
  br i1 %cmp.i, label %cyttsp4_mt_probe.exit.thread272, label %if.end.i255

cyttsp4_mt_probe.exit.thread272:                  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.291, ptr noundef nonnull @.str.292) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.292) #11
  br label %do.end149

if.end.i255:                                      ; preds = %if.end143
  %inp_dev_name.i = getelementptr inbounds %struct.cyttsp4_mt_platform_data, ptr %65, i32 0, i32 2
  %68 = ptrtoint ptr %inp_dev_name.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %inp_dev_name.i, align 4
  %70 = ptrtoint ptr %call.i254 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %call.i254, align 8
  %phys.i = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 17, i32 5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %71 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i, label %if.end.i.i256, label %if.end.i255.dev_name.exit.i_crit_edge

if.end.i255.dev_name.exit.i_crit_edge:            ; preds = %if.end.i255
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i256:                                    ; preds = %if.end.i255
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %61, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i256, %if.end.i255.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %74, %if.end.i.i256 ], [ %72, %if.end.i255.dev_name.exit.i_crit_edge ]
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %phys.i, i32 noundef 254, ptr noundef nonnull @.str.293, ptr noundef %retval.0.i.i) #8
  %75 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %input.i, align 8
  %phys15.i = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %phys15.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %phys.i, ptr %phys15.i, align 4
  %78 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus_ops, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %79, align 4
  %82 = load ptr, ptr %input.i, align 8
  %id.i = getelementptr inbounds %struct.input_dev, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %81, ptr %id.i, align 4
  %84 = load ptr, ptr %input.i, align 8
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %84, i32 0, i32 40, i32 1
  %85 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %61, ptr %parent.i, align 8
  %86 = load ptr, ptr %input.i, align 8
  %open.i = getelementptr inbounds %struct.input_dev, ptr %86, i32 0, i32 31
  %87 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @cyttsp4_mt_open, ptr %open.i, align 8
  %88 = load ptr, ptr %input.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %88, i32 0, i32 32
  %89 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @cyttsp4_mt_close, ptr %close.i, align 4
  %90 = load ptr, ptr %input.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %90, i32 0, i32 40, i32 8
  %91 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %md2.i, ptr %driver_data.i.i.i, align 4
  %sysinfo.i = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 12
  %si.i = getelementptr inbounds %struct.cyttsp4, ptr %call7.i.i, i32 0, i32 17, i32 1
  %92 = ptrtoint ptr %si.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %sysinfo.i, ptr %si.i, align 4
  %call23.i = tail call fastcc i32 @cyttsp4_setup_input_device(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool.not.i257 = icmp eq i32 %call23.i, 0
  br i1 %tobool.not.i257, label %dev_name.exit.i.if.end150_crit_edge, label %cyttsp4_mt_probe.exit

dev_name.exit.i.if.end150_crit_edge:              ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

cyttsp4_mt_probe.exit:                            ; preds = %dev_name.exit.i
  %93 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %input.i, align 8
  tail call void @input_free_device(ptr noundef %94) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.292) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp145 = icmp slt i32 %call23.i, 0
  br i1 %cmp145, label %cyttsp4_mt_probe.exit.do.end149_crit_edge, label %cyttsp4_mt_probe.exit.if.end150_crit_edge

cyttsp4_mt_probe.exit.if.end150_crit_edge:        ; preds = %cyttsp4_mt_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

cyttsp4_mt_probe.exit.do.end149_crit_edge:        ; preds = %cyttsp4_mt_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end149

do.end149:                                        ; preds = %cyttsp4_mt_probe.exit.do.end149_crit_edge, %cyttsp4_mt_probe.exit.thread272
  %rc.0.i275 = phi i32 [ -38, %cyttsp4_mt_probe.exit.thread272 ], [ %call23.i, %cyttsp4_mt_probe.exit.do.end149_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1) #11
  br label %error_startup

if.end150:                                        ; preds = %cyttsp4_mt_probe.exit.if.end150_crit_edge, %dev_name.exit.i.if.end150_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  br label %cleanup

error_startup:                                    ; preds = %do.end149, %do.end141
  %rc.1 = phi i32 [ %call135, %do.end141 ], [ %rc.0.i275, %do.end149 ]
  %call152 = tail call zeroext i1 @cancel_work_sync(ptr noundef %startup_work) #8
  %call.i259 = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer) #8
  %call1.i260 = tail call zeroext i1 @cancel_work_sync(ptr noundef %watchdog_work) #8
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call fastcc void @cyttsp4_free_si_ptrs(ptr noundef nonnull %call7.i.i)
  %95 = ptrtoint ptr %irq54 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq54, align 8
  %call154 = tail call ptr @free_irq(i32 noundef %96, ptr noundef nonnull %call7.i.i) #8
  br label %error_request_irq

error_request_irq:                                ; preds = %error_startup, %do.end130
  %rc.2 = phi i32 [ %call125, %do.end130 ], [ %rc.1, %error_startup ]
  %97 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cpdata, align 8
  %init156 = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %init156 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init156, align 4
  %tobool157.not = icmp eq ptr %100, null
  br i1 %tobool157.not, label %error_request_irq.error_free_xfer_crit_edge, label %if.then158

error_request_irq.error_free_xfer_crit_edge:      ; preds = %error_request_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_xfer

if.then158:                                       ; preds = %error_request_irq
  call void @__sanitizer_cov_trace_pc() #10
  %call162 = tail call i32 %100(ptr noundef %98, i32 noundef 0, ptr noundef %dev) #8
  br label %error_free_xfer

error_free_xfer:                                  ; preds = %if.then158, %error_request_irq.error_free_xfer_crit_edge, %if.end18.error_free_xfer_crit_edge
  %rc.3 = phi i32 [ %rc.2, %if.then158 ], [ %rc.2, %error_request_irq.error_free_xfer_crit_edge ], [ -22, %if.end18.error_free_xfer_crit_edge ]
  %101 = ptrtoint ptr %xfer_buf to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %xfer_buf, align 8
  tail call void @kfree(ptr noundef %102) #8
  br label %error_free_cd

error_free_cd:                                    ; preds = %error_free_xfer, %do.end17
  %rc.4 = phi i32 [ %rc.3, %error_free_xfer ], [ -12, %do.end17 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %do.end167

do.end167:                                        ; preds = %error_free_cd, %do.end9, %do.end
  %rc.5 = phi i32 [ %rc.4, %error_free_cd ], [ -12, %do.end9 ], [ -19, %do.end ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1) #11
  %103 = inttoptr i32 %rc.5 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end167, %if.end150
  %retval.0 = phi ptr [ %103, %do.end167 ], [ %call7.i.i, %if.end150 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyttsp4_startup_work_function(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -260
  %call = tail call fastcc i32 @cyttsp4_startup(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyttsp4_watchdog_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -304
  %system_lock = getelementptr i8, ptr %work, i32 -300
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %mode_size.i = getelementptr i8, ptr %work, i32 176
  %2 = ptrtoint ptr %mode_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_size.i, align 4
  %xy_mode.i = getelementptr i8, ptr %work, i32 440
  %4 = ptrtoint ptr %xy_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xy_mode.i, align 4
  %bus_ops.i.i = getelementptr i8, ptr %work, i32 836
  %6 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i.i, align 4
  %read.i.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i, align 4
  %xfer_buf.i.i = getelementptr i8, ptr %work, i32 840
  %10 = ptrtoint ptr %xfer_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfer_buf.i.i, align 4
  %conv.i.i = trunc i32 %3 to i8
  %call.i.i = tail call i32 %9(ptr noundef %1, ptr noundef %11, i16 noundef zeroext 0, i8 noundef zeroext %conv.i.i, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %call.i.i) #11
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %call.i.i) #11
  %startup_state.i = getelementptr i8, ptr %work, i32 -108
  %14 = ptrtoint ptr %startup_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %startup_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i23 = icmp eq i32 %15, 0
  br i1 %cmp.i23, label %if.then.i, label %do.body6.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %startup_state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %startup_state.i, align 4
  %startup_work.i = getelementptr i8, ptr %work, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %startup_work.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_watchdog_work, %if.then5.i)) #8
          to label %cyttsp4_timer_watchdog_exit_error [label %if.then5.i], !srcloc !615

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, ptr noundef %19, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73) #8
  br label %cyttsp4_timer_watchdog_exit_error

do.body6.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_watchdog_work, %if.then18.i)) #8
          to label %cyttsp4_timer_watchdog_exit_error [label %if.then18.i], !srcloc !615

if.then18.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %22 = ptrtoint ptr %startup_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %startup_state.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, ptr noundef %21, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, i32 noundef %23) #8
  br label %cyttsp4_timer_watchdog_exit_error

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %xy_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xy_mode.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx2 = getelementptr i8, ptr %25, i32 1
  %29 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp4.not = icmp eq i8 %30, 0
  br i1 %cmp4.not, label %if.end11, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end9:                                          ; preds = %lor.lhs.false.do.end9_crit_edge, %if.end.do.end9_crit_edge
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79) #11
  %startup_state.i24 = getelementptr i8, ptr %work, i32 -108
  %33 = ptrtoint ptr %startup_state.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %startup_state.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i25 = icmp eq i32 %34, 0
  br i1 %cmp.i25, label %if.then.i28, label %do.body6.i30

if.then.i28:                                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %startup_state.i24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %startup_state.i24, align 4
  %startup_work.i26 = getelementptr i8, ptr %work, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i.i27 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %startup_work.i26) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_watchdog_work, %if.then5.i29)) #8
          to label %cyttsp4_timer_watchdog_exit_error [label %if.then5.i29], !srcloc !615

if.then5.i29:                                     ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, ptr noundef %38, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73) #8
  br label %cyttsp4_timer_watchdog_exit_error

do.body6.i30:                                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_watchdog_work, %if.then18.i31)) #8
          to label %cyttsp4_timer_watchdog_exit_error [label %if.then18.i31], !srcloc !615

if.then18.i31:                                    ; preds = %do.body6.i30
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %41 = ptrtoint ptr %startup_state.i24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %startup_state.i24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, ptr noundef %40, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, i32 noundef %42) #8
  br label %cyttsp4_timer_watchdog_exit_error

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %watchdog_timer.i = getelementptr i8, ptr %work, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %43, 100
  %call1.i = tail call i32 @mod_timer(ptr noundef %watchdog_timer.i, i32 noundef %add.i) #8
  br label %cyttsp4_timer_watchdog_exit_error

cyttsp4_timer_watchdog_exit_error:                ; preds = %if.end11, %if.then18.i31, %do.body6.i30, %if.then5.i29, %if.then.i28, %if.then18.i, %do.body6.i, %if.then5.i, %if.then.i
  tail call void @mutex_unlock(ptr noundef %system_lock) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp4_irq(i32 noundef %irq, ptr noundef %handle) #0 align 64 {
entry:
  %cmd.i = alloca i8, align 1
  %mode = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %cmd_ofs2 = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 12, i32 4, i32 1
  %2 = ptrtoint ptr %cmd_ofs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_ofs2, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mode) #8
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %mode, align 1, !annotation !616
  %5 = getelementptr inbounds [3 x i8], ptr %mode, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !616
  %7 = getelementptr inbounds [3 x i8], ptr %mode, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !616
  %ignore_irq = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ignore_irq, i32 noundef 4) #8
  %9 = ptrtoint ptr %ignore_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %ignore_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_irq.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_irq, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !615

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %int_status = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 6
  %11 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %int_status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_irq.__UNIQUE_ID_ddebug270, ptr noundef %1, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, i32 noundef %12) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %system_lock = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %bus_ops.i = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 20
  %13 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_ops.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i, align 4
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %handle, align 4
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 21
  %19 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xfer_buf.i, align 4
  %call.i = call i32 %16(ptr noundef %18, ptr noundef %20, i16 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.85, i32 noundef %call.i) #11
  br label %cyttsp4_irq_exit

if.end22:                                         ; preds = %do.end
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mode, align 1
  %conv23 = zext i8 %24 to i32
  %and = and i32 %conv23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %if.end22.if.then30_crit_edge

if.end22.if.then30_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false25:                                  ; preds = %if.end22
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp28.not = icmp eq i8 %26, 0
  br i1 %cmp28.not, label %if.end60, label %lor.lhs.false25.if.then30_crit_edge

lor.lhs.false25.if.then30_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false25.if.then30_crit_edge, %if.end22.if.then30_crit_edge
  %mode31 = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 3
  %27 = ptrtoint ptr %mode31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp32 = icmp eq i32 %28, 2
  br i1 %cmp32, label %if.then34, label %do.body36

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %wait_q = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 7
  call void @__wake_up(ptr noundef %wait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cyttsp4_irq_exit

do.body36:                                        ; preds = %if.then30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_irq.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_irq, %if.then48)) #8
          to label %do.end52 [label %if.then48], !srcloc !615

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %mode31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode31, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_irq.__UNIQUE_ID_ddebug271, ptr noundef %1, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, i32 noundef %30, i32 noundef 2) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body36
  %31 = ptrtoint ptr %mode31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp54.not = icmp eq i32 %32, 0
  br i1 %cmp54.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %do.end52
  %33 = ptrtoint ptr %mode31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %mode31, align 4
  %startup_state.i = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 5
  %34 = ptrtoint ptr %startup_state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %startup_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp eq i32 %35, 0
  br i1 %cmp.i, label %if.then.i, label %do.body6.i

if.then.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %startup_state.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %startup_state.i, align 4
  %startup_work.i = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %startup_work.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_irq, %if.then5.i)) #8
          to label %cyttsp4_irq_exit [label %if.then5.i], !srcloc !615

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handle, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, ptr noundef %39, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73) #8
  br label %cyttsp4_irq_exit

do.body6.i:                                       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_irq, %if.then18.i)) #8
          to label %cyttsp4_irq_exit [label %if.then18.i], !srcloc !615

if.then18.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle, align 4
  %42 = ptrtoint ptr %startup_state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %startup_state.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, ptr noundef %41, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, i32 noundef %43) #8
  br label %cyttsp4_irq_exit

if.end58:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %mode31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %mode31, align 4
  br label %cyttsp4_irq_exit

if.end60:                                         ; preds = %lor.lhs.false25
  %and63 = and i32 %conv23, 112
  %45 = zext i32 %and63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and63, label %sw.default [
    i32 0, label %if.end60.sw.epilog_crit_edge
    i32 32, label %sw.bb64
    i32 16, label %sw.bb65
  ]

if.end60.sw.epilog_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.85, i32 noundef %conv23) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb65, %sw.bb64, %if.end60.sw.epilog_crit_edge
  %cur_mode.0 = phi i32 [ 0, %sw.default ], [ 8, %sw.bb65 ], [ 16, %sw.bb64 ], [ 4, %if.end60.sw.epilog_crit_edge ]
  %int_status71 = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 6
  %46 = ptrtoint ptr %int_status71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %int_status71, align 4
  %and72 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end75, label %sw.epilog.cyttsp4_irq_exit_crit_edge

sw.epilog.cyttsp4_irq_exit_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_irq_exit

if.end75:                                         ; preds = %sw.epilog
  %and77 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end83, label %if.then79

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %and81 = and i32 %47, -9
  %48 = ptrtoint ptr %int_status71 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and81, ptr %int_status71, align 4
  %wait_q82 = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 7
  call void @__wake_up(ptr noundef %wait_q82, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cyttsp4_irq_handshake

if.end83:                                         ; preds = %if.end75
  %and85 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end83.if.end114_crit_edge, label %land.lhs.true

if.end83.if.end114_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

land.lhs.true:                                    ; preds = %if.end83
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mode, align 1
  %51 = and i8 %50, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp90 = icmp eq i8 %51, 0
  br i1 %cmp90, label %if.then92, label %land.lhs.true.if.end114_crit_edge

land.lhs.true.if.end114_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then92:                                        ; preds = %land.lhs.true
  %and94 = and i32 %47, -3
  %52 = ptrtoint ptr %int_status71 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and94, ptr %int_status71, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_irq.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_irq, %if.then107)) #8
          to label %do.end111 [label %if.then107], !srcloc !615

if.then107:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  %mode108 = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 3
  %53 = ptrtoint ptr %mode108 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode108, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_irq.__UNIQUE_ID_ddebug272, ptr noundef %1, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.85, i32 noundef %54, i32 noundef %cur_mode.0) #8
  br label %do.end111

do.end111:                                        ; preds = %if.then107, %if.then92
  %mode112 = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 3
  %55 = ptrtoint ptr %mode112 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cur_mode.0, ptr %mode112, align 4
  %wait_q113 = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 7
  call void @__wake_up(ptr noundef %wait_q113, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cyttsp4_irq_handshake

if.end114:                                        ; preds = %land.lhs.true.if.end114_crit_edge, %if.end83.if.end114_crit_edge
  %56 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mode, align 1
  %58 = and i8 %57, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp118 = icmp eq i8 %58, 0
  br i1 %cmp118, label %land.lhs.true120, label %if.end114.if.end146_crit_edge

if.end114.if.end146_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

land.lhs.true120:                                 ; preds = %if.end114
  %mode121 = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 3
  %59 = ptrtoint ptr %mode121 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode121, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %cur_mode.0)
  %cmp122.not = icmp eq i32 %60, %cur_mode.0
  br i1 %cmp122.not, label %land.lhs.true120.if.end146_crit_edge, label %do.end127

land.lhs.true120.if.end146_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

do.end127:                                        ; preds = %land.lhs.true120
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.85, i32 noundef %60, i32 noundef %cur_mode.0, i32 noundef %47) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_irq.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_irq, %if.then142)) #8
          to label %do.end145 [label %if.then142], !srcloc !615

if.then142:                                       ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_irq.__UNIQUE_ID_ddebug273, ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.85) #8
  br label %do.end145

do.end145:                                        ; preds = %if.then142, %do.end127
  call fastcc void @cyttsp4_queue_startup_(ptr noundef %handle)
  br label %cyttsp4_irq_exit

if.end146:                                        ; preds = %land.lhs.true120.if.end146_crit_edge, %if.end114.if.end146_crit_edge
  %and148 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end146.if.end159_crit_edge, label %land.lhs.true150

if.end146.if.end159_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

land.lhs.true150:                                 ; preds = %if.end146
  %idxprom = and i32 %3, 255
  %arrayidx151 = getelementptr [3 x i8], ptr %mode, i32 0, i32 %idxprom
  %61 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx151, align 1
  %63 = and i8 %62, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool154.not = icmp eq i8 %63, 0
  br i1 %tobool154.not, label %land.lhs.true150.if.end159_crit_edge, label %if.then155

land.lhs.true150.if.end159_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then155:                                       ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #10
  %and157 = and i32 %47, -5
  %64 = ptrtoint ptr %int_status71 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and157, ptr %int_status71, align 4
  %wait_q158 = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 7
  call void @__wake_up(ptr noundef %wait_q158, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end159

if.end159:                                        ; preds = %if.then155, %land.lhs.true150.if.end159_crit_edge, %if.end146.if.end159_crit_edge
  %mode160 = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 3
  %65 = ptrtoint ptr %mode160 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mode160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %66)
  %cmp161 = icmp eq i32 %66, 4
  br i1 %cmp161, label %if.then163, label %if.end159.if.end172_crit_edge

if.end159.if.end172_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.then163:                                       ; preds = %if.end159
  %call164 = call fastcc i32 @cyttsp4_load_status_regs(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %do.end170, label %if.then163.if.end172_crit_edge

if.then163.if.end172_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

do.end170:                                        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.85, i32 noundef %call164) #11
  br label %if.end172

if.end172:                                        ; preds = %do.end170, %if.then163.if.end172_crit_edge, %if.end159.if.end172_crit_edge
  call fastcc void @cyttsp4_mt_attention(ptr noundef %handle)
  br label %cyttsp4_irq_handshake

cyttsp4_irq_handshake:                            ; preds = %if.end172, %do.end111, %if.then79
  %67 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %mode, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i) #8
  %xor.i = xor i8 %68, -128
  %69 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %xor.i, ptr %cmd.i, align 1
  %70 = and i8 %68, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i, label %if.end.i, label %cyttsp4_irq_handshake.cyttsp4_handshake.exit.thread_crit_edge

cyttsp4_irq_handshake.cyttsp4_handshake.exit.thread_crit_edge: ; preds = %cyttsp4_irq_handshake
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_handshake.exit.thread

if.end.i:                                         ; preds = %cyttsp4_irq_handshake
  %71 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus_ops.i, align 4
  %write.i.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write.i.i, align 4
  %75 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %handle, align 4
  %77 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %xfer_buf.i, align 4
  %call.i.i268 = call i32 %74(ptr noundef %76, ptr noundef %78, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i268)
  %cmp.i269 = icmp slt i32 %call.i.i268, 0
  br i1 %cmp.i269, label %do.end181, label %if.end.i.cyttsp4_handshake.exit.thread_crit_edge

if.end.i.cyttsp4_handshake.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_handshake.exit.thread

cyttsp4_handshake.exit.thread:                    ; preds = %if.end.i.cyttsp4_handshake.exit.thread_crit_edge, %cyttsp4_irq_handshake.cyttsp4_handshake.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #8
  br label %cond.false192

do.end181:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %handle, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, i32 noundef %call.i.i268) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #8
  %81 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %mode, align 1
  %conv183 = zext i8 %82 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.85, i32 noundef %conv183, i32 noundef %call.i.i268) #11
  br label %cond.false192

cond.false192:                                    ; preds = %do.end181, %cyttsp4_handshake.exit.thread
  %cpdata = getelementptr inbounds %struct.cyttsp4, ptr %handle, i32 0, i32 19
  %83 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cpdata, align 4
  %level_irq_udelay = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %level_irq_udelay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %level_irq_udelay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %87(i32 noundef %86) #8
  br label %cyttsp4_irq_exit

cyttsp4_irq_exit:                                 ; preds = %cond.false192, %do.end145, %sw.epilog.cyttsp4_irq_exit_crit_edge, %if.end58, %if.then18.i, %do.body6.i, %if.then5.i, %if.then.i, %if.then34, %do.end20
  call void @mutex_unlock(ptr noundef %system_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cyttsp4_irq_exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mode) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyttsp4_watchdog_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_work = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %watchdog_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_startup(ptr noundef %cd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %system_lock = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %startup_state = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 5
  %0 = ptrtoint ptr %startup_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %startup_state, align 4
  tail call void @mutex_unlock(ptr noundef %system_lock) #8
  %1 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cd, align 4
  %call = tail call fastcc i32 @cyttsp4_request_exclusive(ptr noundef %cd, ptr noundef %2, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cd, align 4
  %exclusive_dev = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 13
  %5 = ptrtoint ptr %exclusive_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %exclusive_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.120, ptr noundef %6, ptr noundef %4) #11
  br label %exit

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @cyttsp4_startup_(ptr noundef %cd)
  %7 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cd, align 4
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %exclusive_dev.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 13
  %9 = ptrtoint ptr %exclusive_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %exclusive_dev.i, align 4
  %cmp.not.i = icmp eq ptr %10, %8
  br i1 %cmp.not.i, label %cyttsp4_release_exclusive.exit, label %do.end11

cyttsp4_release_exclusive.exit:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %exclusive_dev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %exclusive_dev.i, align 4
  %wait_q.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait_q.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %system_lock) #8
  br label %exit

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %system_lock) #8
  %12 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.120) #11
  br label %exit

exit:                                             ; preds = %do.end11, %cyttsp4_release_exclusive.exit, %do.end
  %rc.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end11 ], [ %call4, %cyttsp4_release_exclusive.exit ]
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %14 = ptrtoint ptr %startup_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %startup_state, align 4
  tail call void @mutex_unlock(ptr noundef %system_lock) #8
  %wait_q = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyttsp4_free_si_ptrs(ptr noundef readonly %cd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysinfo = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12
  %tobool.not = icmp eq ptr %sysinfo, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %si_ptrs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %si_ptrs to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %si_ptrs, align 1
  tail call void @kfree(ptr noundef %1) #8
  %test = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2, i32 1
  %2 = ptrtoint ptr %test to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %test, align 1
  tail call void @kfree(ptr noundef %3) #8
  %pcfg = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2, i32 2
  %4 = ptrtoint ptr %pcfg to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %pcfg, align 1
  tail call void @kfree(ptr noundef %5) #8
  %opcfg = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2, i32 3
  %6 = ptrtoint ptr %opcfg to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load ptr, ptr %opcfg, align 1
  tail call void @kfree(ptr noundef %7) #8
  %ddata = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2, i32 4
  %8 = ptrtoint ptr %ddata to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %ddata, align 1
  tail call void @kfree(ptr noundef %9) #8
  %mdata = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2, i32 5
  %10 = ptrtoint ptr %mdata to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load ptr, ptr %mdata, align 1
  tail call void @kfree(ptr noundef %11) #8
  %btn = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 5
  %12 = ptrtoint ptr %btn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btn, align 4
  tail call void @kfree(ptr noundef %13) #8
  %xy_mode = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 7
  %14 = ptrtoint ptr %xy_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xy_mode, align 4
  tail call void @kfree(ptr noundef %15) #8
  %xy_data = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 8
  %16 = ptrtoint ptr %xy_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xy_data, align 4
  tail call void @kfree(ptr noundef %17) #8
  %btn_rec_data = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 6
  %18 = ptrtoint ptr %btn_rec_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %btn_rec_data, align 4
  tail call void @kfree(ptr noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyttsp4_remove(ptr noundef %cd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 4
  %input.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input.i, align 4
  tail call void @input_unregister_device(ptr noundef %3) #8
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i.i, align 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 0) #8
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #8
  %startup_work = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 9
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %startup_work) #8
  %watchdog_timer.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 11
  %call.i20 = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer.i) #8
  %watchdog_work.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 10
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %watchdog_work.i) #8
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer.i) #8
  %irq = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %cd) #8
  %cpdata = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 19
  %9 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpdata, align 4
  %init = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 %12(ptr noundef %10, i32 noundef 0, ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @cyttsp4_free_si_ptrs(ptr noundef %cd)
  tail call void @kfree(ptr noundef %cd) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_request_exclusive(ptr noundef %cd, ptr noundef %ownptr, i32 noundef %timeout_ms) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #8
  %system_lock = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %exclusive_dev = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 13
  %0 = ptrtoint ptr %exclusive_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exclusive_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %exclusive_waits = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 14
  %2 = ptrtoint ptr %exclusive_waits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exclusive_waits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %exclusive_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ownptr, ptr %exclusive_dev, align 4
  br label %cleanup99

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %exclusive_waits3 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 14
  %5 = ptrtoint ptr %exclusive_waits3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %exclusive_waits3, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %exclusive_waits3, align 4
  %wait_q = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 7
  br label %wait

wait:                                             ; preds = %if.end89.wait_crit_edge, %if.end
  %t.0 = phi i32 [ %call2.i, %if.end ], [ %__ret.1, %if.end89.wait_crit_edge ]
  call void @mutex_unlock(ptr noundef %system_lock) #8
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1298) #8
  %7 = ptrtoint ptr %exclusive_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %exclusive_dev, align 4
  %tobool11.not = icmp eq ptr %8, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0)
  %tobool15.not = icmp eq i32 %t.0, 0
  %9 = select i1 %tobool11.not, i1 %tobool15.not, i1 false
  %__ret.0 = select i1 %9, i32 1, i32 %t.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool19.not = icmp eq i32 %__ret.0, 0
  %10 = select i1 %tobool11.not, i1 true, i1 %tobool19.not
  br i1 %10, label %wait.if.end48_crit_edge, label %if.then22

wait.if.end48_crit_edge:                          ; preds = %wait
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then22:                                        ; preds = %wait
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call24140 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %12 = ptrtoint ptr %exclusive_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exclusive_dev, align 4
  %tobool27.not141 = icmp eq ptr %13, null
  %14 = select i1 %tobool27.not141, i1 %tobool15.not, i1 false
  %__ret23.1143 = select i1 %14, i32 1, i32 %t.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1143)
  %tobool38.not144 = icmp eq i32 %__ret23.1143, 0
  %15 = select i1 %tobool27.not141, i1 true, i1 %tobool38.not144
  br i1 %15, label %if.then22.for.end_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  br label %cleanup

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then22.cleanup_crit_edge
  %__ret23.1145 = phi i32 [ %__ret23.1, %cleanup.cleanup_crit_edge ], [ %__ret23.1143, %if.then22.cleanup_crit_edge ]
  %call45 = call i32 @schedule_timeout(i32 noundef %__ret23.1145) #8
  %call24 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %16 = ptrtoint ptr %exclusive_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %exclusive_dev, align 4
  %tobool27.not = icmp eq ptr %17, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool32.not = icmp eq i32 %call45, 0
  %18 = select i1 %tobool27.not, i1 %tobool32.not, i1 false
  %__ret23.1 = select i1 %18, i32 1, i32 %call45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret23.1)
  %tobool38.not = icmp eq i32 %__ret23.1, 0
  %19 = select i1 %tobool27.not, i1 true, i1 %tobool38.not
  br i1 %19, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then22.for.end_crit_edge
  %__ret23.1.lcssa = phi i32 [ %__ret23.1143, %if.then22.for.end_crit_edge ], [ %__ret23.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end48

if.end48:                                         ; preds = %for.end, %wait.if.end48_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %wait.if.end48_crit_edge ], [ %__ret23.1.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp50 = icmp eq i32 %__ret.1, 0
  br i1 %cmp50, label %do.end54, label %if.end89

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #11
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %22 = ptrtoint ptr %exclusive_waits3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %exclusive_waits3, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %exclusive_waits3, align 4
  br label %cleanup99

if.end89:                                         ; preds = %if.end48
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %24 = ptrtoint ptr %exclusive_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %exclusive_dev, align 4
  %tobool92.not = icmp eq ptr %25, null
  br i1 %tobool92.not, label %if.end94, label %if.end89.wait_crit_edge

if.end89.wait_crit_edge:                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait

if.end94:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %exclusive_dev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ownptr, ptr %exclusive_dev, align 4
  %27 = ptrtoint ptr %exclusive_waits3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %exclusive_waits3, align 4
  %dec97 = add i32 %28, -1
  store i32 %dec97, ptr %exclusive_waits3, align 4
  br label %cleanup99

cleanup99:                                        ; preds = %if.end94, %do.end54, %if.then
  %retval.0 = phi i32 [ -62, %do.end54 ], [ 0, %if.end94 ], [ 0, %if.then ]
  call void @mutex_unlock(ptr noundef %system_lock) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_core_sleep_(ptr noundef %cd) unnamed_addr #0 align 64 {
entry:
  %mode = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mode, align 1, !annotation !616
  %1 = getelementptr inbounds [2 x i8], ptr %mode, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !616
  %system_lock = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %sleep_state = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 4
  %3 = ptrtoint ptr %sleep_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sleep_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %system_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %sleep_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %sleep_state, align 4
  tail call void @mutex_unlock(ptr noundef %system_lock) #8
  %watchdog_timer.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 11
  %call.i = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer.i) #8
  %watchdog_work.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 10
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %watchdog_work.i) #8
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer.i) #8
  %irq = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 8
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %7) #8
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %bus_ops.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 20
  %8 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_ops.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %12 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cd, align 4
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 21
  %14 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xfer_buf.i, align 4
  %call.i123 = call i32 %11(ptr noundef %13, ptr noundef %15, i16 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef nonnull %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not = icmp eq i32 %call.i123, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %system_lock) #8
  %16 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %call.i123) #11
  br label %error

if.end7:                                          ; preds = %if.end
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mode, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not = icmp eq i8 %20, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end7.if.then13_crit_edge

if.end7.if.then13_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp11.not = icmp eq i8 %22, 0
  br i1 %cmp11.not, label %if.end19, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end7.if.then13_crit_edge
  call void @mutex_unlock(ptr noundef %system_lock) #8
  %23 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50) #11
  br label %error

if.end19:                                         ; preds = %lor.lhs.false
  %or = or i8 %19, 2
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %or, ptr %mode, align 1
  %26 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus_ops.i, align 4
  %write.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write.i, align 4
  %30 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cd, align 4
  %32 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xfer_buf.i, align 4
  %call.i126 = call i32 %29(ptr noundef %31, ptr noundef %33, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %mode) #8
  call void @mutex_unlock(ptr noundef %system_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool26.not = icmp eq i32 %call.i126, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50, i32 noundef %call.i126) #11
  br label %error

if.end32:                                         ; preds = %if.end19
  %cpdata = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 19
  %36 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cpdata, align 4
  %power = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %power, align 4
  %tobool33.not = icmp eq ptr %39, null
  br i1 %tobool33.not, label %do.body50, label %do.body35

do.body35:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_core_sleep_.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_core_sleep_, %if.then40)) #8
          to label %do.end44 [label %if.then40], !srcloc !615

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_core_sleep_.__UNIQUE_ID_ddebug277, ptr noundef %41, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.50) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body35
  %42 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cpdata, align 4
  %power46 = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %power46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %power46, align 4
  %46 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cd, align 4
  %ignore_irq = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 15
  %call49 = call i32 %45(ptr noundef %43, i32 noundef 0, ptr noundef %47, ptr noundef %ignore_irq) #8
  br label %if.end67

do.body50:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_core_sleep_.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_core_sleep_, %if.end67.thread)) #8
          to label %if.end67 [label %if.end67.thread], !srcloc !615

if.end67.thread:                                  ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_core_sleep_.__UNIQUE_ID_ddebug278, ptr noundef %49, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.50) #8
  br label %if.end75

if.end67:                                         ; preds = %do.body50, %do.end44
  %rc.0 = phi i32 [ %call49, %do.end44 ], [ 0, %do.body50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp68 = icmp slt i32 %rc.0, 0
  br i1 %cmp68, label %do.end73, label %if.end67.if.end75_crit_edge

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.50, i32 noundef %rc.0) #11
  br label %error

if.end75:                                         ; preds = %if.end67.if.end75_crit_edge, %if.end67.thread
  %rc.0133 = phi i32 [ 0, %if.end67.thread ], [ %rc.0, %if.end67.if.end75_crit_edge ]
  call void @msleep(i32 noundef 50) #8
  br label %exit

error:                                            ; preds = %do.end73, %do.end30, %if.then13, %if.then5
  %rc.1 = phi i32 [ %call.i123, %if.then5 ], [ -22, %if.then13 ], [ %call.i126, %do.end30 ], [ %rc.0, %do.end73 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %52, 100
  %call1.i128 = call i32 @mod_timer(ptr noundef %watchdog_timer.i, i32 noundef %add.i) #8
  br label %exit

exit:                                             ; preds = %error, %if.end75
  %rc.2 = phi i32 [ %rc.1, %error ], [ %rc.0133, %if.end75 ]
  %ss.0 = phi i32 [ 0, %error ], [ 1, %if.end75 ]
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %53 = ptrtoint ptr %sleep_state to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %ss.0, ptr %sleep_state, align 4
  %int_status78 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 6
  %54 = ptrtoint ptr %int_status78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %int_status78, align 4
  %or79 = or i32 %55, %ss.0
  store i32 %or79, ptr %int_status78, align 4
  call void @mutex_unlock(ptr noundef %system_lock) #8
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %57) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %rc.2, %exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyttsp4_core_wake_(ptr noundef %cd) unnamed_addr #0 align 64 {
entry:
  %mode = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %mode, align 1, !annotation !616
  %system_lock = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %sleep_state = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 4
  %3 = ptrtoint ptr %sleep_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sleep_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %system_lock) #8
  br label %cleanup105

if.end:                                           ; preds = %entry
  %int_status = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 6
  %5 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %int_status, align 4
  %and = and i32 %6, -10
  %or = or i32 %and, 8
  store i32 %or, ptr %int_status, align 4
  %7 = ptrtoint ptr %sleep_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %sleep_state, align 4
  %cpdata = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 19
  %8 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpdata, align 4
  %power = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body15, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_core_wake_.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_core_wake_, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !615

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_core_wake_.__UNIQUE_ID_ddebug280, ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %12 = ptrtoint ptr %cpdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpdata, align 4
  %power12 = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %power12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %power12, align 4
  %ignore_irq = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 15
  %call14 = tail call i32 %15(ptr noundef %13, i32 noundef 1, ptr noundef %1, ptr noundef %ignore_irq) #8
  br label %if.end31

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_core_wake_.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_core_wake_, %if.end31.thread)) #8
          to label %if.end31 [label %if.end31.thread], !srcloc !615

if.end31.thread:                                  ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_core_wake_.__UNIQUE_ID_ddebug281, ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.67) #8
  br label %do.end36

if.end31:                                         ; preds = %do.body15, %do.end
  %rc.0 = phi i32 [ %call14, %do.end ], [ -38, %do.body15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp32 = icmp slt i32 %rc.0, 0
  br i1 %cmp32, label %if.end31.do.end36_crit_edge, label %if.end31.if.end39_crit_edge

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end31.do.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end36:                                         ; preds = %if.end31.do.end36_crit_edge, %if.end31.thread
  %rc.010 = phi i32 [ -38, %if.end31.thread ], [ %rc.0, %if.end31.do.end36_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef %rc.010) #11
  %bus_ops.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 20
  %16 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_ops.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i, align 4
  %20 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cd, align 4
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 21
  %22 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xfer_buf.i, align 4
  %call.i = call i32 %19(ptr noundef %21, ptr noundef %23, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %mode) #8
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %if.end31.if.end39_crit_edge
  call void @mutex_unlock(ptr noundef %system_lock) #8
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1807) #8
  %24 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %int_status, align 4
  %and49 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %cmp50 = icmp eq i32 %and49, 0
  br i1 %cmp50, label %if.end39.if.end101_crit_edge, label %if.then62

if.end39.if.end101_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then62:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %26 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wait_q = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 7
  %call6517 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %27 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %int_status, align 4
  %and6818 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6818)
  %cmp6919 = icmp eq i32 %and6818, 0
  br i1 %cmp6919, label %if.end90.thread, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  br label %cleanup

if.end90.thread:                                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end101

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then62.cleanup_crit_edge
  %__ret63.120 = phi i32 [ %__ret63.1, %cleanup.cleanup_crit_edge ], [ 50, %if.then62.cleanup_crit_edge ]
  %call87 = call i32 @schedule_timeout(i32 noundef %__ret63.120) #8
  %call65 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %29 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %int_status, align 4
  %and68 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %cmp69 = icmp eq i32 %and68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool73.not = icmp eq i32 %call87, 0
  %31 = select i1 %cmp69, i1 %tobool73.not, i1 false
  %__ret63.1 = select i1 %31, i32 1, i32 %call87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret63.1)
  %tobool79.not = icmp eq i32 %__ret63.1, 0
  %32 = select i1 %cmp69, i1 true, i1 %tobool79.not
  br i1 %32, label %if.end90, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret63.1)
  %phi.cmp = icmp eq i32 %__ret63.1, 0
  call void @finish_wait(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br i1 %phi.cmp, label %do.end96, label %if.end90.if.end101_crit_edge

if.end90.if.end101_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

do.end96:                                         ; preds = %if.end90
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.67) #11
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %33 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %int_status, align 4
  %and99 = and i32 %34, -9
  store i32 %and99, ptr %int_status, align 4
  %startup_state.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 5
  %35 = ptrtoint ptr %startup_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %startup_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i = icmp eq i32 %36, 0
  br i1 %cmp.i, label %if.then.i, label %do.body6.i

if.then.i:                                        ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %startup_state.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %startup_state.i, align 4
  %startup_work.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %startup_work.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_core_wake_, %if.then5.i)) #8
          to label %cyttsp4_queue_startup_.exit [label %if.then5.i], !srcloc !615

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, ptr noundef %40, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73) #8
  br label %cyttsp4_queue_startup_.exit

do.body6.i:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_core_wake_, %if.then18.i)) #8
          to label %cyttsp4_queue_startup_.exit [label %if.then18.i], !srcloc !615

if.then18.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cd, align 4
  %43 = ptrtoint ptr %startup_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %startup_state.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, ptr noundef %42, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, i32 noundef %44) #8
  br label %cyttsp4_queue_startup_.exit

cyttsp4_queue_startup_.exit:                      ; preds = %if.then18.i, %do.body6.i, %if.then5.i, %if.then.i
  call void @mutex_unlock(ptr noundef %system_lock) #8
  br label %if.end101

if.end101:                                        ; preds = %cyttsp4_queue_startup_.exit, %if.end90.if.end101_crit_edge, %if.end90.thread, %if.end39.if.end101_crit_edge
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %45 = ptrtoint ptr %sleep_state to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %sleep_state, align 4
  call void @mutex_unlock(ptr noundef %system_lock) #8
  %watchdog_timer.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %46, 100
  %call1.i = call i32 @mod_timer(ptr noundef %watchdog_timer.i, i32 noundef %add.i) #8
  br label %cleanup105

cleanup105:                                       ; preds = %if.end101, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyttsp4_queue_startup_(ptr noundef %cd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %startup_state = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 5
  %0 = ptrtoint ptr %startup_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %startup_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %do.body6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %startup_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %startup_state, align 4
  %startup_work = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %startup_work) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_queue_startup_, %if.then5)) #8
          to label %if.end23 [label %if.then5], !srcloc !615

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, ptr noundef %5, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73) #8
  br label %if.end23

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_queue_startup_, %if.then18)) #8
          to label %if.end23 [label %if.then18], !srcloc !615

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cd, align 4
  %8 = ptrtoint ptr %startup_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %startup_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, ptr noundef %7, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, i32 noundef %9) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %do.body6, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_load_status_regs(ptr nocapture noundef readonly %cd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 4
  %mode_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 10
  %2 = ptrtoint ptr %mode_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_size, align 4
  %xy_mode = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 7
  %4 = ptrtoint ptr %xy_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xy_mode, align 4
  %bus_ops.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 20
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 21
  %10 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfer_buf.i, align 4
  %conv.i = trunc i32 %3 to i8
  %call.i = tail call i32 %9(ptr noundef %1, ptr noundef %11, i16 noundef zeroext 0, i8 noundef zeroext %conv.i, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %call.i) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyttsp4_mt_attention(ptr noundef %cd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 4
  %si = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %si, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %report_lock = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 3
  tail call void @mutex_lock_nested(ptr noundef %report_lock, i32 noundef 0) #8
  %is_suspended = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 4
  %4 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_suspended, align 4, !range !617
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end5, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %report_lock) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call = tail call fastcc i32 @cyttsp4_xy_worker(ptr noundef %cd)
  tail call void @mutex_unlock(ptr noundef %report_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end5.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_xy_worker(ptr nocapture noundef %cd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %md1 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17
  %input = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %dev2 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  %si3 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %si3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %si3, align 4
  %xy_mode = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %xy_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xy_mode, align 4
  %rep_ofs = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %3, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %rep_ofs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rep_ofs, align 4
  %arrayidx5 = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %add = add i32 %7, 1
  %arrayidx9 = getelementptr i8, ptr %5, i32 %add
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %tt_stat_ofs = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %3, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %tt_stat_ofs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tt_stat_ofs, align 4
  %arrayidx12 = getelementptr i8, ptr %5, i32 %13
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %and = and i8 %15, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %cmp17.not = icmp eq i8 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp17.not
  %conv21 = zext i8 %and to i32
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, i32 noundef 0, i32 noundef %conv21) #11
  br label %cyttsp4_xy_worker_exit

if.end:                                           ; preds = %entry
  br i1 %cmp17.not, label %if.end.do.end41_crit_edge, label %if.then24

if.end.do.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

if.then24:                                        ; preds = %if.end
  %16 = trunc i32 %13 to i16
  %conv28 = add i16 %16, 1
  %tch_rec_size = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %3, i32 0, i32 4, i32 7
  %17 = ptrtoint ptr %tch_rec_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tch_rec_size, align 4
  %xy_data = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %xy_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xy_data, align 4
  %bus_ops.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 20
  %21 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_ops.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i, align 4
  %25 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cd, align 4
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 21
  %27 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xfer_buf.i, align 4
  %29 = trunc i32 %18 to i8
  %conv.i = mul i8 %and, %29
  %call.i = tail call i32 %24(ptr noundef %26, ptr noundef %28, i16 noundef zeroext %conv28, i8 noundef zeroext %conv.i, ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31 = icmp slt i32 %call.i, 0
  br i1 %cmp31, label %do.end36, label %if.then24.do.end41_crit_edge

if.then24.do.end41_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

do.end36:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104, i32 noundef %call.i) #11
  br label %cyttsp4_xy_worker_exit

do.end41:                                         ; preds = %if.then24.do.end41_crit_edge, %if.end.do.end41_crit_edge
  %30 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %if.end54, label %do.body45

do.body45:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_xy_worker.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_xy_worker, %if.then50)) #8
          to label %cyttsp4_xy_worker_exit [label %if.then50], !srcloc !615

if.then50:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_xy_worker.__UNIQUE_ID_ddebug268, ptr noundef %dev2, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.104) #8
  br label %cyttsp4_xy_worker_exit

if.end54:                                         ; preds = %do.end41
  %31 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool57.not = icmp eq i8 %31, 0
  br i1 %tobool57.not, label %if.end54.if.end75_crit_edge, label %do.body59

if.end54.if.end75_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.body59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_xy_worker.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_xy_worker, %if.then71)) #8
          to label %if.end75 [label %if.then71], !srcloc !615

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_xy_worker.__UNIQUE_ID_ddebug269, ptr noundef %dev2, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.104) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %do.body59, %if.end54.if.end75_crit_edge
  %max_tchs = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %3, i32 0, i32 4, i32 9
  %32 = ptrtoint ptr %max_tchs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_tchs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv21)
  %cmp78 = icmp ult i32 %33, %conv21
  br i1 %cmp78, label %do.end83, label %if.end75.if.end90_crit_edge

if.end75.if.end90_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

do.end83:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.104, i32 noundef %conv21, i32 noundef %33) #11
  %34 = ptrtoint ptr %max_tchs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_tchs, align 4
  %conv89 = trunc i32 %35 to i8
  br label %if.end90

if.end90:                                         ; preds = %do.end83, %if.end75.if.end90_crit_edge
  %num_cur_tch.0 = phi i8 [ %conv89, %do.end83 ], [ %and, %if.end75.if.end90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_cur_tch.0)
  %tobool91.not = icmp eq i8 %num_cur_tch.0, 0
  br i1 %tobool91.not, label %if.else, label %if.then92

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %conv93 = zext i8 %num_cur_tch.0 to i32
  tail call fastcc void @cyttsp4_get_mt_touches(ptr noundef %md1, i32 noundef %conv93)
  br label %cyttsp4_xy_worker_exit

if.else:                                          ; preds = %if.end90
  %36 = ptrtoint ptr %si3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %si3, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.else.cyttsp4_xy_worker_exit_crit_edge, label %if.end.i

if.else.cyttsp4_xy_worker_exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_xy_worker_exit

if.end.i:                                         ; preds = %if.else
  %num_prv_tch.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 6
  %38 = ptrtoint ptr %num_prv_tch.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_prv_tch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %if.end.i.cyttsp4_xy_worker_exit_crit_edge, label %if.then1.i

if.end.i.cyttsp4_xy_worker_exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_xy_worker_exit

if.then1.i:                                       ; preds = %if.end.i
  %max.i = getelementptr %struct.cyttsp4_sysinfo, ptr %37, i32 0, i32 4, i32 31, i32 3, i32 2
  %40 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp17.i.i = icmp sgt i32 %41, 0
  br i1 %cmp17.i.i, label %if.then1.i.for.body.i.i_crit_edge, label %if.then1.i.cyttsp4_report_slot_liftoff.exit.i_crit_edge

if.then1.i.cyttsp4_report_slot_liftoff.exit.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_report_slot_liftoff.exit.i

if.then1.i.for.body.i.i_crit_edge:                ; preds = %if.then1.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then1.i.for.body.i.i_crit_edge
  %t.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then1.i.for.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %43, i32 noundef 3, i32 noundef 47, i32 noundef %t.08.i.i) #8
  %44 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input, align 4
  %call.i.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %45, i32 noundef 0, i1 noundef zeroext false) #8
  %inc.i.i = add nuw nsw i32 %t.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %41
  br i1 %exitcond.not.i.i, label %for.body.i.i.cyttsp4_report_slot_liftoff.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.cyttsp4_report_slot_liftoff.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_report_slot_liftoff.exit.i

cyttsp4_report_slot_liftoff.exit.i:               ; preds = %for.body.i.i.cyttsp4_report_slot_liftoff.exit.i_crit_edge, %if.then1.i.cyttsp4_report_slot_liftoff.exit.i_crit_edge
  %46 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %47, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %48 = ptrtoint ptr %num_prv_tch.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %num_prv_tch.i, align 4
  br label %cyttsp4_xy_worker_exit

cyttsp4_xy_worker_exit:                           ; preds = %cyttsp4_report_slot_liftoff.exit.i, %if.end.i.cyttsp4_xy_worker_exit_crit_edge, %if.else.cyttsp4_xy_worker_exit_crit_edge, %if.then92, %if.then50, %do.body45, %do.end36, %do.end
  %rc.0 = phi i32 [ 0, %do.end ], [ %call.i, %do.end36 ], [ 0, %if.then50 ], [ 0, %if.then92 ], [ 0, %do.body45 ], [ 0, %if.else.cyttsp4_xy_worker_exit_crit_edge ], [ 0, %if.end.i.cyttsp4_xy_worker_exit_crit_edge ], [ 0, %cyttsp4_report_slot_liftoff.exit.i ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyttsp4_get_mt_touches(ptr nocapture noundef %md, i32 noundef %num_cur_tch) unnamed_addr #0 align 64 {
entry:
  %tch = alloca %struct.cyttsp4_touch, align 4
  %ids = alloca [30 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.cyttsp4_mt_data, ptr %md, i32 0, i32 2
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  %si2 = getelementptr inbounds %struct.cyttsp4_mt_data, ptr %md, i32 0, i32 1
  %2 = ptrtoint ptr %si2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %si2, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tch) #8
  %4 = call ptr @memset(ptr %tch, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %ids) #8
  %5 = call ptr @memset(ptr %ids, i32 255, i32 120)
  %max = getelementptr %struct.cyttsp4_sysinfo, ptr %3, i32 0, i32 4, i32 31, i32 3, i32 2
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  %mul = shl i32 %7, 2
  %8 = call ptr @memset(ptr %ids, i32 0, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_cur_tch)
  %cmp254 = icmp sgt i32 %num_cur_tch, 0
  br i1 %cmp254, label %for.body.lr.ph, label %entry.for.end185_crit_edge

entry.for.end185_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end185

for.body.lr.ph:                                   ; preds = %entry
  %xy_data = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %3, i32 0, i32 8
  %tch_rec_size = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %3, i32 0, i32 4, i32 7
  %arrayidx17.i = getelementptr inbounds [10 x i32], ptr %tch, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %tch, i32 0, i32 3
  %arrayidx42 = getelementptr inbounds [10 x i32], ptr %tch, i32 0, i32 4
  %arrayidx86 = getelementptr inbounds [10 x i32], ptr %tch, i32 0, i32 2
  %arrayidx90 = getelementptr inbounds [10 x i32], ptr %tch, i32 0, i32 7
  %arrayidx95 = getelementptr inbounds [10 x i32], ptr %tch, i32 0, i32 8
  %arrayidx152 = getelementptr inbounds [10 x i32], ptr %tch, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc183.for.body_crit_edge, %for.body.lr.ph
  %i.0257 = phi i32 [ 0, %for.body.lr.ph ], [ %inc184, %for.inc183.for.body_crit_edge ]
  %t.0255 = phi i32 [ 0, %for.body.lr.ph ], [ %t.3, %for.inc183.for.body_crit_edge ]
  %9 = ptrtoint ptr %xy_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xy_data, align 4
  %11 = ptrtoint ptr %tch_rec_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tch_rec_size, align 4
  %mul4 = mul i32 %12, %i.0257
  %add.ptr = getelementptr i8, ptr %10, i32 %mul4
  %13 = ptrtoint ptr %si2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %si2, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %cyttsp4_get_touch_axis.exit.i.for.body.i_crit_edge, %for.body
  %abs.0106.i = phi i32 [ 0, %for.body ], [ %inc.i, %cyttsp4_get_touch_axis.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [10 x i32], ptr %tch, i32 0, i32 %abs.0106.i
  %arrayidx4.i = getelementptr %struct.cyttsp4_sysinfo, ptr %14, i32 0, i32 4, i32 31, i32 %abs.0106.i
  %size.i = getelementptr %struct.cyttsp4_sysinfo, ptr %14, i32 0, i32 4, i32 31, i32 %abs.0106.i, i32 1
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 4
  %max.i = getelementptr %struct.cyttsp4_sysinfo, ptr %14, i32 0, i32 4, i32 31, i32 %abs.0106.i, i32 2
  %17 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max.i, align 4
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx4.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %20
  %bofs.i = getelementptr %struct.cyttsp4_sysinfo, ptr %14, i32 0, i32 4, i32 31, i32 %abs.0106.i, i32 3
  %21 = ptrtoint ptr %bofs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bofs.i, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1.i.i = icmp sgt i32 %16, 0
  br i1 %cmp1.i.i, label %for.body.i.i.preheader, label %for.body.i.cyttsp4_get_touch_axis.exit.i_crit_edge

for.body.i.cyttsp4_get_touch_axis.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_get_touch_axis.exit.i

for.body.i.i.preheader:                           ; preds = %for.body.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %arrayidx.i.promoted = load i32, ptr %arrayidx.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %add.i.i259 = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %arrayidx.i.promoted, %for.body.i.i.preheader ]
  %next.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %mul.i.i = shl i32 %add.i.i259, 8
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr.i, i32 %next.03.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %shr.i.i = lshr i32 %conv.i.i, %22
  %add.i.i = add nuw i32 %shr.i.i, %mul.i.i
  %inc.i.i = add nuw nsw i32 %next.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %16
  br i1 %exitcond.not.i.i, label %cyttsp4_get_touch_axis.exit.i.loopexit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

cyttsp4_get_touch_axis.exit.i.loopexit:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i.i, ptr %arrayidx.i, align 4
  br label %cyttsp4_get_touch_axis.exit.i

cyttsp4_get_touch_axis.exit.i:                    ; preds = %cyttsp4_get_touch_axis.exit.i.loopexit, %for.body.i.cyttsp4_get_touch_axis.exit.i_crit_edge
  %sub.i.i = add i32 %18, -1
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %29, %sub.i.i
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %abs.0106.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.end.i, label %cyttsp4_get_touch_axis.exit.i.for.body.i_crit_edge

cyttsp4_get_touch_axis.exit.i.for.body.i_crit_edge: ; preds = %cyttsp4_get_touch_axis.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %cyttsp4_get_touch_axis.exit.i
  %30 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %md, align 4
  %flags.i = getelementptr inbounds %struct.cyttsp4_mt_platform_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags.i, align 4
  %34 = and i16 %33, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i = icmp eq i16 %34, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.thread.i

if.end.i:                                         ; preds = %for.end.i
  %35 = and i16 %33, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool26.not.i = icmp eq i16 %35, 0
  br i1 %tobool26.not.i, label %if.end.i.if.end45.i_crit_edge, label %if.else36.i

if.end.i.if.end45.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.end.thread.i:                                  ; preds = %for.end.i
  %36 = ptrtoint ptr %tch to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tch, align 4
  %38 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx17.i, align 4
  store i32 %39, ptr %tch, align 4
  store i32 %37, ptr %arrayidx17.i, align 4
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i, align 4
  %42 = and i16 %41, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool26.not105.i = icmp eq i16 %42, 0
  br i1 %tobool26.not105.i, label %if.end.thread.i.if.end45.i_crit_edge, label %if.then29.i

if.end.thread.i.if.end45.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then29.i:                                      ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_y.i = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %14, i32 0, i32 4, i32 15
  br label %if.end45.sink.split.i

if.else36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_x.i = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %14, i32 0, i32 4, i32 13
  br label %if.end45.sink.split.i

if.end45.sink.split.i:                            ; preds = %if.else36.i, %if.then29.i
  %max_y.sink.i = phi ptr [ %max_y.i, %if.then29.i ], [ %max_x.i, %if.else36.i ]
  %43 = ptrtoint ptr %max_y.sink.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_y.sink.i, align 4
  %45 = ptrtoint ptr %tch to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tch, align 4
  %sub.i = sub i32 %44, %46
  store i32 %sub.i, ptr %tch, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end45.sink.split.i, %if.end.thread.i.if.end45.i_crit_edge, %if.end.i.if.end45.i_crit_edge
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags.i, align 4
  %49 = and i16 %48, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool50.not.i = icmp eq i16 %49, 0
  br i1 %tobool50.not.i, label %if.end45.i.cyttsp4_get_touch.exit_crit_edge, label %if.then51.i

if.end45.i.cyttsp4_get_touch.exit_crit_edge:      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_get_touch.exit

if.then51.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_y65.i = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %14, i32 0, i32 4, i32 15
  %max_x56.i = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %14, i32 0, i32 4, i32 13
  %max_y65.sink.i = select i1 %tobool.not.i, ptr %max_y65.i, ptr %max_x56.i
  %50 = ptrtoint ptr %max_y65.sink.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_y65.sink.i, align 4
  %52 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx17.i, align 4
  %sub59.i = sub i32 %51, %53
  store i32 %sub59.i, ptr %arrayidx17.i, align 4
  br label %cyttsp4_get_touch.exit

cyttsp4_get_touch.exit:                           ; preds = %if.then51.i, %if.end45.i.cyttsp4_get_touch.exit_crit_edge
  %54 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx5, align 4
  %56 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %31, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load ptr, ptr %57, align 1
  %arrayidx7 = getelementptr i16, ptr %59, i32 21
  %60 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx7, align 2
  %conv = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv)
  %cmp8 = icmp slt i32 %55, %conv
  br i1 %cmp8, label %cyttsp4_get_touch.exit.do.end_crit_edge, label %lor.lhs.false

cyttsp4_get_touch.exit.do.end_crit_edge:          ; preds = %cyttsp4_get_touch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %cyttsp4_get_touch.exit
  %arrayidx15 = getelementptr i16, ptr %59, i32 22
  %62 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv16)
  %cmp17 = icmp sgt i32 %55, %conv16
  br i1 %cmp17, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %cyttsp4_get_touch.exit.do.end_crit_edge
  %arrayidx24 = getelementptr i16, ptr %59, i32 22
  %64 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx24, align 2
  %conv25 = zext i16 %65 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef %i.0257, i32 noundef %55, i32 noundef %conv25) #11
  br label %for.inc183

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx29 = getelementptr i16, ptr %59, i32 20
  %66 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %67)
  %cmp31.not = icmp eq i16 %67, -1
  br i1 %cmp31.not, label %if.end.if.end60_crit_edge, label %if.then33

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then33:                                        ; preds = %if.end
  %sub = sub i32 %55, %conv
  %68 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp43 = icmp eq i32 %69, 3
  br i1 %cmp43, label %do.body46, label %if.end55

do.body46:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_get_mt_touches, %if.then49)) #8
          to label %cyttsp4_get_mt_touches_pr_tch [label %if.then49], !srcloc !615

if.then49:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug265, ptr noundef %dev1, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef %sub, i32 noundef %71) #8
  br label %cyttsp4_get_mt_touches_pr_tch

if.end55:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %73, i32 noundef 3, i32 noundef 47, i32 noundef %sub) #8
  %74 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %input, align 4
  %call58 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %75, i32 noundef 0, i1 noundef zeroext true) #8
  %arrayidx59 = getelementptr [30 x i32], ptr %ids, i32 0, i32 %sub
  %76 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %arrayidx59, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end55, %if.end.if.end60_crit_edge
  %t.1 = phi i32 [ %sub, %if.end55 ], [ %t.0255, %if.end.if.end60_crit_edge ]
  %77 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %md, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load ptr, ptr %80, align 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %82, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %84)
  %cmp72.not = icmp eq i16 %84, -1
  br i1 %cmp72.not, label %if.end60.for.inc_crit_edge, label %if.then74

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then74:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %conv71 = zext i16 %84 to i32
  %85 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %input, align 4
  %87 = ptrtoint ptr %tch to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tch, align 4
  tail call void @input_event(ptr noundef %86, i32 noundef 3, i32 noundef %conv71, i32 noundef %88) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then74, %if.end60.for.inc_crit_edge
  %89 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %md, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load ptr, ptr %92, align 1
  %arrayidx70.1 = getelementptr i16, ptr %94, i32 5
  %95 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx70.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %96)
  %cmp72.not.1 = icmp eq i16 %96, -1
  br i1 %cmp72.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then74.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then74.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %conv71.1 = zext i16 %96 to i32
  %97 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %input, align 4
  %99 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx17.i, align 4
  tail call void @input_event(ptr noundef %98, i32 noundef 3, i32 noundef %conv71.1, i32 noundef %100) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then74.1, %for.inc.for.inc.1_crit_edge
  %101 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %md, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load ptr, ptr %104, align 1
  %arrayidx70.2 = getelementptr i16, ptr %106, i32 10
  %107 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx70.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %108)
  %cmp72.not.2 = icmp eq i16 %108, -1
  br i1 %cmp72.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then74.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then74.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv71.2 = zext i16 %108 to i32
  %109 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %input, align 4
  %111 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx86, align 4
  tail call void @input_event(ptr noundef %110, i32 noundef 3, i32 noundef %conv71.2, i32 noundef %112) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then74.2, %for.inc.1.for.inc.2_crit_edge
  %113 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %md, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load ptr, ptr %116, align 1
  %arrayidx70.3 = getelementptr i16, ptr %118, i32 15
  %119 = ptrtoint ptr %arrayidx70.3 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx70.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %120)
  %cmp72.not.3 = icmp eq i16 %120, -1
  br i1 %cmp72.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then74.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then74.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %conv71.3 = zext i16 %120 to i32
  %121 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %input, align 4
  %123 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx5, align 4
  tail call void @input_event(ptr noundef %122, i32 noundef 3, i32 noundef %conv71.3, i32 noundef %124) #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then74.3, %for.inc.2.for.inc.3_crit_edge
  %125 = ptrtoint ptr %tch_rec_size to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tch_rec_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %126)
  %cmp82 = icmp ugt i32 %126, 6
  br i1 %cmp82, label %if.then84, label %for.inc.3.cyttsp4_get_mt_touches_pr_tch_crit_edge

for.inc.3.cyttsp4_get_mt_touches_pr_tch_crit_edge: ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_get_mt_touches_pr_tch

if.then84:                                        ; preds = %for.inc.3
  %127 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp87 = icmp sgt i32 %128, 0
  br i1 %cmp87, label %land.lhs.true, label %if.then84.if.end98_crit_edge

if.then84.if.end98_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

land.lhs.true:                                    ; preds = %if.then84
  %129 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp91 = icmp eq i32 %130, 0
  br i1 %cmp91, label %if.then93, label %land.lhs.true.if.end98_crit_edge

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then93:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1, ptr %arrayidx95, align 4
  %132 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %arrayidx90, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %land.lhs.true.if.end98_crit_edge, %if.then84.if.end98_crit_edge
  %133 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %md, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load ptr, ptr %136, align 1
  %arrayidx109 = getelementptr i16, ptr %138, i32 25
  %139 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx109, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %140)
  %cmp111.not = icmp eq i16 %140, -1
  br i1 %cmp111.not, label %if.end98.for.inc119_crit_edge, label %if.then113

if.end98.for.inc119_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc119

if.then113:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %conv110 = zext i16 %140 to i32
  %141 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %input, align 4
  %143 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx90, align 4
  tail call void @input_event(ptr noundef %142, i32 noundef 3, i32 noundef %conv110, i32 noundef %144) #8
  br label %for.inc119

for.inc119:                                       ; preds = %if.then113, %if.end98.for.inc119_crit_edge
  %145 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %md, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load ptr, ptr %148, align 1
  %arrayidx109.1 = getelementptr i16, ptr %150, i32 30
  %151 = ptrtoint ptr %arrayidx109.1 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %arrayidx109.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %152)
  %cmp111.not.1 = icmp eq i16 %152, -1
  br i1 %cmp111.not.1, label %for.inc119.for.inc119.1_crit_edge, label %if.then113.1

for.inc119.for.inc119.1_crit_edge:                ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc119.1

if.then113.1:                                     ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #10
  %conv110.1 = zext i16 %152 to i32
  %153 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %input, align 4
  %155 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx95, align 4
  tail call void @input_event(ptr noundef %154, i32 noundef 3, i32 noundef %conv110.1, i32 noundef %156) #8
  br label %for.inc119.1

for.inc119.1:                                     ; preds = %if.then113.1, %for.inc119.for.inc119.1_crit_edge
  %157 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %md, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load ptr, ptr %160, align 1
  %arrayidx109.2 = getelementptr i16, ptr %162, i32 35
  %163 = ptrtoint ptr %arrayidx109.2 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx109.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %164)
  %cmp111.not.2 = icmp eq i16 %164, -1
  br i1 %cmp111.not.2, label %for.inc119.1.cyttsp4_get_mt_touches_pr_tch_crit_edge, label %if.then113.2

for.inc119.1.cyttsp4_get_mt_touches_pr_tch_crit_edge: ; preds = %for.inc119.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_get_mt_touches_pr_tch

if.then113.2:                                     ; preds = %for.inc119.1
  call void @__sanitizer_cov_trace_pc() #10
  %conv110.2 = zext i16 %164 to i32
  %165 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %input, align 4
  %167 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx152, align 4
  tail call void @input_event(ptr noundef %166, i32 noundef 3, i32 noundef %conv110.2, i32 noundef %168) #8
  br label %cyttsp4_get_mt_touches_pr_tch

cyttsp4_get_mt_touches_pr_tch:                    ; preds = %if.then113.2, %for.inc119.1.cyttsp4_get_mt_touches_pr_tch_crit_edge, %for.inc.3.cyttsp4_get_mt_touches_pr_tch_crit_edge, %if.then49, %do.body46
  %t.2 = phi i32 [ %sub, %if.then49 ], [ %t.1, %for.inc.3.cyttsp4_get_mt_touches_pr_tch_crit_edge ], [ %sub, %do.body46 ], [ %t.1, %if.then113.2 ], [ %t.1, %for.inc119.1.cyttsp4_get_mt_touches_pr_tch_crit_edge ]
  %169 = ptrtoint ptr %tch_rec_size to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %tch_rec_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %170)
  %cmp125 = icmp ugt i32 %170, 6
  br i1 %cmp125, label %do.body128, label %do.body158

do.body128:                                       ; preds = %cyttsp4_get_mt_touches_pr_tch
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_get_mt_touches, %if.then140)) #8
          to label %for.inc183 [label %if.then140], !srcloc !615

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %tch to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %tch, align 4
  %173 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx17.i, align 4
  %175 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx86, align 4
  %177 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx90, align 4
  %179 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx95, align 4
  %181 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx152, align 4
  %183 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug266, ptr noundef %dev1, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.114, i32 noundef %t.2, i32 noundef %172, i32 noundef %174, i32 noundef %176, i32 noundef %178, i32 noundef %180, i32 noundef %182, i32 noundef %184) #8
  br label %for.inc183

do.body158:                                       ; preds = %cyttsp4_get_mt_touches_pr_tch
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_get_mt_touches, %if.then170)) #8
          to label %for.inc183 [label %if.then170], !srcloc !615

if.then170:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #10
  %185 = ptrtoint ptr %tch to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %tch, align 4
  %187 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx17.i, align 4
  %189 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx86, align 4
  %191 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug267, ptr noundef %dev1, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.114, i32 noundef %t.2, i32 noundef %186, i32 noundef %188, i32 noundef %190, i32 noundef %192) #8
  br label %for.inc183

for.inc183:                                       ; preds = %if.then170, %do.body158, %if.then140, %do.body128, %do.end
  %t.3 = phi i32 [ %t.0255, %do.end ], [ %t.2, %if.then140 ], [ %t.2, %if.then170 ], [ %t.2, %do.body128 ], [ %t.2, %do.body158 ]
  %inc184 = add nuw nsw i32 %i.0257, 1
  %exitcond.not = icmp eq i32 %inc184, %num_cur_tch
  br i1 %exitcond.not, label %for.end185thread-pre-split, label %for.inc183.for.body_crit_edge

for.inc183.for.body_crit_edge:                    ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end185thread-pre-split:                       ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #10
  %193 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %193)
  %.pr = load i32, ptr %max, align 4
  br label %for.end185

for.end185:                                       ; preds = %for.end185thread-pre-split, %entry.for.end185_crit_edge
  %194 = phi i32 [ %.pr, %for.end185thread-pre-split ], [ %7, %entry.for.end185_crit_edge ]
  %195 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp6.i = icmp sgt i32 %194, 0
  br i1 %cmp6.i, label %for.end185.for.body.i242_crit_edge, label %for.end185.cyttsp4_final_sync.exit_crit_edge

for.end185.cyttsp4_final_sync.exit_crit_edge:     ; preds = %for.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_final_sync.exit

for.end185.for.body.i242_crit_edge:               ; preds = %for.end185
  br label %for.body.i242

for.body.i242:                                    ; preds = %for.inc.i.for.body.i242_crit_edge, %for.end185.for.body.i242_crit_edge
  %t.07.i = phi i32 [ %inc.i244, %for.inc.i.for.body.i242_crit_edge ], [ 0, %for.end185.for.body.i242_crit_edge ]
  %arrayidx.i240 = getelementptr i32, ptr %ids, i32 %t.07.i
  %197 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx.i240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.i241 = icmp eq i32 %198, 0
  br i1 %tobool.not.i241, label %if.end.i243, label %for.body.i242.for.inc.i_crit_edge

for.body.i242.for.inc.i_crit_edge:                ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i243:                                      ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_event(ptr noundef %196, i32 noundef 3, i32 noundef 47, i32 noundef %t.07.i) #8
  %call.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %196, i32 noundef 0, i1 noundef zeroext false) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i243, %for.body.i242.for.inc.i_crit_edge
  %inc.i244 = add nuw nsw i32 %t.07.i, 1
  %exitcond.not.i245 = icmp eq i32 %inc.i244, %194
  br i1 %exitcond.not.i245, label %for.inc.i.cyttsp4_final_sync.exit_crit_edge, label %for.inc.i.for.body.i242_crit_edge

for.inc.i.for.body.i242_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i242

for.inc.i.cyttsp4_final_sync.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_final_sync.exit

cyttsp4_final_sync.exit:                          ; preds = %for.inc.i.cyttsp4_final_sync.exit_crit_edge, %for.end185.cyttsp4_final_sync.exit_crit_edge
  tail call void @input_event(ptr noundef %196, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %num_prv_tch = getelementptr inbounds %struct.cyttsp4_mt_data, ptr %md, i32 0, i32 6
  %199 = ptrtoint ptr %num_prv_tch to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %num_cur_tch, ptr %num_prv_tch, align 4
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %ids) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tch) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_startup_(ptr noundef %cd) unnamed_addr #0 align 64 {
entry:
  %cmd.i.i = alloca i8, align 1
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_timer.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 11
  %call.i = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer.i) #8
  %watchdog_work.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 10
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %watchdog_work.i) #8
  %call3.i = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer.i) #8
  %system_lock = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 1
  %int_status = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 6
  %bus_ops.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 20
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 21
  %mode.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 3
  %wait_q.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 7
  %invalid_touch_app59 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 16
  %sysinfo.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12
  %si_data.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1
  %map_szh.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 2
  %map_szl.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 3
  %map_sz.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 12
  %cydata_ofsh.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 4
  %cydata_ofsl.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 5
  %cydata_ofs.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 18
  %test_ofsh.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 6
  %test_ofsl.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 7
  %test_ofs.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 19
  %pcfg_ofsh.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 8
  %pcfg_ofsl.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 9
  %pcfg_ofs.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 20
  %opcfg_ofsh.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 10
  %opcfg_ofsl.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 11
  %opcfg_ofs.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 21
  %ddata_ofsh.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 12
  %ddata_ofsl.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 13
  %ddata_ofs.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 22
  %mdata_ofsh.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 14
  %mdata_ofsl.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 1, i32 15
  %mdata_ofs.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 23
  %test_size.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 25
  %test.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2, i32 1
  %pcfg_size.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 26
  %pcfg.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2, i32 2
  %max_x.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 13
  %x_origin.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 14
  %max_y.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 15
  %y_origin.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 16
  %max_p.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 17
  %ddata_size.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 28
  %ddata.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2, i32 4
  %mdata_size.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 29
  %mdata.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2, i32 5
  %num_btns.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 4
  %btn_keys_size.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 30
  %btn4.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 5
  %cpdata.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 19
  %xy_mode.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 7
  %mode_size.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 10
  %xy_data.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 8
  %data_size.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 11
  %btn_rec_data.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 6
  %btn_rec_size.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 32
  br label %reset

reset:                                            ; preds = %reset.backedge, %entry
  %retry.0 = phi i32 [ 3, %entry ], [ %retry.0.be, %reset.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retry.0)
  %cmp.not = icmp eq i32 %retry.0, 3
  br i1 %cmp.not, label %reset.if.end4_crit_edge, label %do.body

reset.if.end4_crit_edge:                          ; preds = %reset
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.body:                                          ; preds = %reset
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_startup_.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_startup_, %if.then3)) #8
          to label %if.end4 [label %if.then3], !srcloc !615

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 4
  %sub = sub i32 3, %retry.0
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_startup_.__UNIQUE_ID_ddebug279, ptr noundef %1, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, i32 noundef %sub) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body, %reset.if.end4_crit_edge
  %call5 = call fastcc i32 @cyttsp4_reset_and_wait(ptr noundef %cd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end15

do.end10:                                         ; preds = %if.end4
  %2 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.123, i32 noundef %call5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool12.not = icmp eq i32 %retry.0, 0
  br i1 %tobool12.not, label %do.end10.exit_crit_edge, label %do.end10.reset.backedge_crit_edge

do.end10.reset.backedge_crit_edge:                ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset.backedge

do.end10.exit_crit_edge:                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

reset.backedge:                                   ; preds = %do.end78.reset.backedge_crit_edge, %do.end66.reset.backedge_crit_edge, %if.end51.reset.backedge_crit_edge, %do.end23.reset.backedge_crit_edge, %do.end10.reset.backedge_crit_edge
  %retry.0.be = add i32 %retry.0, -1
  br label %reset

if.end15:                                         ; preds = %if.end4
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_status, align 4
  %and = and i32 %5, -4
  %or = or i32 %and, 2
  store i32 %or, ptr %int_status, align 4
  %6 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_ops.i, align 4
  %write.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %10 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cd, align 4
  %12 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xfer_buf.i, align 4
  %call.i142 = call i32 %9(ptr noundef %11, ptr noundef %13, i16 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull @ldr_exit) #8
  call void @mutex_unlock(ptr noundef %system_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp19 = icmp slt i32 %call.i142, 0
  br i1 %cmp19, label %do.end23, label %if.end29

do.end23:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.123, i32 noundef %call.i142) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool26.not = icmp eq i32 %retry.0, 0
  br i1 %tobool26.not, label %do.end23.exit_crit_edge, label %do.end23.reset.backedge_crit_edge

do.end23.reset.backedge_crit_edge:                ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset.backedge

do.end23.exit_crit_edge:                          ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end29:                                         ; preds = %if.end15
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1365) #8
  %16 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp.i = icmp eq i32 %17, 8
  br i1 %cmp.i, label %if.end29.if.end57_crit_edge, label %if.then8.i

if.end29.if.end57_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then8.i:                                       ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %18 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %call1167.i = call i32 @prepare_to_wait_event(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp1468.i = icmp eq i32 %20, 8
  br i1 %cmp1468.i, label %if.end34.thread.i, label %if.then8.i.cleanup.i_crit_edge

if.then8.i.cleanup.i_crit_edge:                   ; preds = %if.then8.i
  br label %cleanup.i

if.end34.thread.i:                                ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %if.end57

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then8.i.cleanup.i_crit_edge
  %__ret9.169.i = phi i32 [ %__ret9.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 100, %if.then8.i.cleanup.i_crit_edge ]
  %call31.i = call i32 @schedule_timeout(i32 noundef %__ret9.169.i) #8
  %call11.i = call i32 @prepare_to_wait_event(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %21 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %22)
  %cmp14.i = icmp eq i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool18.not.i = icmp eq i32 %call31.i, 0
  %23 = select i1 %cmp14.i, i1 %tobool18.not.i, i1 false
  %__ret9.1.i = select i1 %23, i32 1, i32 %call31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.1.i)
  %tobool24.not.i = icmp eq i32 %__ret9.1.i, 0
  %24 = select i1 %cmp14.i, i1 true, i1 %tobool24.not.i
  br i1 %24, label %if.end34.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end34.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br i1 %tobool24.not.i, label %if.then32, label %if.end34.i.if.end57_crit_edge

if.end34.i.if.end57_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then32:                                        ; preds = %if.end34.i
  %25 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cd, align 4
  %27 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i32 noundef %28) #11
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %29 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %int_status, align 4
  %and.i = and i32 %30, -3
  store i32 %and.i, ptr %int_status, align 4
  call void @mutex_unlock(ptr noundef %system_lock) #8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #8
  %31 = call ptr @memset(ptr %buf, i32 255, i32 7)
  %32 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus_ops.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i, align 4
  %36 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cd, align 4
  %38 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xfer_buf.i, align 4
  %call.i146 = call i32 %35(ptr noundef %37, ptr noundef %39, i16 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool34.not = icmp eq i32 %call.i146, 0
  br i1 %tobool34.not, label %if.else, label %do.end38

do.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.123, i32 noundef %call.i146) #11
  br label %if.end51

if.else:                                          ; preds = %if.then32
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @ldr_err_app, i32 7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool42.not = icmp eq i32 %bcmp, 0
  br i1 %tobool42.not, label %cleanup.thread, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.123) #11
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %44 = ptrtoint ptr %invalid_touch_app59 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %invalid_touch_app59, align 4
  call void @mutex_unlock(ptr noundef %system_lock) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #8
  br label %cleanup93

if.end51:                                         ; preds = %if.else.if.end51_crit_edge, %do.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool53.not = icmp eq i32 %retry.0, 0
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #8
  br i1 %tobool53.not, label %if.end51.exit_crit_edge, label %if.end51.reset.backedge_crit_edge

if.end51.reset.backedge_crit_edge:                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset.backedge

if.end51.exit_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end57:                                         ; preds = %if.end34.i.if.end57_crit_edge, %if.end34.thread.i, %if.end29.if.end57_crit_edge
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %45 = ptrtoint ptr %invalid_touch_app59 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %invalid_touch_app59, align 4
  call void @mutex_unlock(ptr noundef %system_lock) #8
  %46 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus_ops.i, align 4
  %read.i.i.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read.i.i.i, align 4
  %50 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cd, align 4
  %52 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xfer_buf.i, align 4
  %call.i.i.i = call i32 %49(ptr noundef %51, ptr noundef %53, i16 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef %si_data.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %cyttsp4_si_data_offsets.exit.thread.i, label %if.end.i

cyttsp4_si_data_offsets.exit.thread.i:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef %call.i.i.i) #11
  br label %do.end66

if.end.i:                                         ; preds = %if.end57
  %56 = ptrtoint ptr %map_szh.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %map_szh.i.i, align 1
  %58 = ptrtoint ptr %map_szl.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %map_szl.i.i, align 1
  %conv.i.i.i = zext i8 %57 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 8
  %conv1.i.i.i = zext i8 %59 to i32
  %add.i.i.i = or i32 %shl.i.i.i, %conv1.i.i.i
  %60 = ptrtoint ptr %map_sz.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i.i.i, ptr %map_sz.i.i, align 4
  %61 = ptrtoint ptr %cydata_ofsh.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cydata_ofsh.i.i, align 1
  %63 = ptrtoint ptr %cydata_ofsl.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cydata_ofsl.i.i, align 1
  %conv.i72.i.i = zext i8 %62 to i32
  %shl.i73.i.i = shl nuw nsw i32 %conv.i72.i.i, 8
  %conv1.i74.i.i = zext i8 %64 to i32
  %add.i75.i.i = or i32 %shl.i73.i.i, %conv1.i74.i.i
  %65 = ptrtoint ptr %cydata_ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add.i75.i.i, ptr %cydata_ofs.i.i, align 4
  %66 = ptrtoint ptr %test_ofsh.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %test_ofsh.i.i, align 1
  %68 = ptrtoint ptr %test_ofsl.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %test_ofsl.i.i, align 1
  %conv.i76.i.i = zext i8 %67 to i32
  %shl.i77.i.i = shl nuw nsw i32 %conv.i76.i.i, 8
  %conv1.i78.i.i = zext i8 %69 to i32
  %add.i79.i.i = or i32 %shl.i77.i.i, %conv1.i78.i.i
  %70 = ptrtoint ptr %test_ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add.i79.i.i, ptr %test_ofs.i.i, align 4
  %71 = ptrtoint ptr %pcfg_ofsh.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %pcfg_ofsh.i.i, align 1
  %73 = ptrtoint ptr %pcfg_ofsl.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pcfg_ofsl.i.i, align 1
  %conv.i80.i.i = zext i8 %72 to i32
  %shl.i81.i.i = shl nuw nsw i32 %conv.i80.i.i, 8
  %conv1.i82.i.i = zext i8 %74 to i32
  %add.i83.i.i = or i32 %shl.i81.i.i, %conv1.i82.i.i
  %75 = ptrtoint ptr %pcfg_ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add.i83.i.i, ptr %pcfg_ofs.i.i, align 4
  %76 = ptrtoint ptr %opcfg_ofsh.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %opcfg_ofsh.i.i, align 1
  %78 = ptrtoint ptr %opcfg_ofsl.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %opcfg_ofsl.i.i, align 1
  %conv.i84.i.i = zext i8 %77 to i32
  %shl.i85.i.i = shl nuw nsw i32 %conv.i84.i.i, 8
  %conv1.i86.i.i = zext i8 %79 to i32
  %add.i87.i.i = or i32 %shl.i85.i.i, %conv1.i86.i.i
  %80 = ptrtoint ptr %opcfg_ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add.i87.i.i, ptr %opcfg_ofs.i.i, align 4
  %81 = ptrtoint ptr %ddata_ofsh.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ddata_ofsh.i.i, align 1
  %83 = ptrtoint ptr %ddata_ofsl.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ddata_ofsl.i.i, align 1
  %conv.i88.i.i = zext i8 %82 to i32
  %shl.i89.i.i = shl nuw nsw i32 %conv.i88.i.i, 8
  %conv1.i90.i.i = zext i8 %84 to i32
  %add.i91.i.i = or i32 %shl.i89.i.i, %conv1.i90.i.i
  %85 = ptrtoint ptr %ddata_ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add.i91.i.i, ptr %ddata_ofs.i.i, align 4
  %86 = ptrtoint ptr %mdata_ofsh.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %mdata_ofsh.i.i, align 1
  %88 = ptrtoint ptr %mdata_ofsl.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %mdata_ofsl.i.i, align 1
  %conv.i92.i.i = zext i8 %87 to i32
  %shl.i93.i.i = shl nuw nsw i32 %conv.i92.i.i, 8
  %conv1.i94.i.i = zext i8 %89 to i32
  %add.i95.i.i = or i32 %shl.i93.i.i, %conv1.i94.i.i
  %90 = ptrtoint ptr %mdata_ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add.i95.i.i, ptr %mdata_ofs.i.i, align 4
  %call1.i147 = call fastcc i32 @cyttsp4_si_get_cydata(ptr noundef %cd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147)
  %cmp2.i = icmp slt i32 %call1.i147, 0
  br i1 %cmp2.i, label %if.end.i.do.end66_crit_edge, label %if.end4.i

if.end.i.do.end66_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end4.i:                                        ; preds = %if.end.i
  %91 = ptrtoint ptr %pcfg_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pcfg_ofs.i.i, align 4
  %93 = ptrtoint ptr %test_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %test_ofs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp.not.i.i = icmp ugt i32 %92, %94
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i77.i

do.end.i77.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177, i32 noundef %92, i32 noundef %94) #11
  br label %do.end66

if.end.i.i:                                       ; preds = %if.end4.i
  %sub.i.i = sub i32 %92, %94
  %97 = ptrtoint ptr %test_size.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %sub.i.i, ptr %test_size.i.i, align 4
  %98 = ptrtoint ptr %test.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load ptr, ptr %test.i.i, align 1
  %call.i.i = call noalias ptr @krealloc(ptr noundef %99, i32 noundef %sub.i.i, i32 noundef 3264) #15
  %cmp13.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp13.i.i, label %do.end17.i.i, label %if.end19.i.i

do.end17.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.177) #11
  br label %do.end66

if.end19.i.i:                                     ; preds = %if.end.i.i
  %102 = ptrtoint ptr %test.i.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store ptr %call.i.i, ptr %test.i.i, align 1
  %103 = ptrtoint ptr %test_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %test_ofs.i.i, align 4
  %conv.i.i = trunc i32 %104 to i16
  %105 = ptrtoint ptr %test_size.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %test_size.i.i, align 4
  %107 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bus_ops.i, align 4
  %read.i.i79.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %read.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read.i.i79.i, align 4
  %111 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cd, align 4
  %113 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %xfer_buf.i, align 4
  %conv.i.i81.i = trunc i32 %106 to i8
  %call.i.i82.i = call i32 %110(ptr noundef %112, ptr noundef %114, i16 noundef zeroext %conv.i.i, i8 noundef zeroext %conv.i.i81.i, ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82.i)
  %cmp29.i.i = icmp slt i32 %call.i.i82.i, 0
  br i1 %cmp29.i.i, label %do.end34.i.i, label %do.end39.i.i

do.end34.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.177, i32 noundef %call.i.i82.i) #11
  br label %do.end66

do.end39.i.i:                                     ; preds = %if.end19.i.i
  %117 = ptrtoint ptr %test.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load ptr, ptr %test.i.i, align 1
  %post_codel.i.i = getelementptr inbounds %struct.cyttsp4_test, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %post_codel.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %post_codel.i.i, align 1
  %conv42.i.i = zext i8 %120 to i32
  %and.i.i = and i32 %conv42.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end39.i.i.if.end52.i.i_crit_edge, label %do.end46.i.i

do.end39.i.i.if.end52.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i.i

do.end46.i.i:                                     ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %122, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.188, i32 noundef %conv42.i.i) #11
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %do.end46.i.i, %do.end39.i.i.if.end52.i.i_crit_edge
  %123 = ptrtoint ptr %test.i.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load ptr, ptr %test.i.i, align 1
  %post_codel55.i.i = getelementptr inbounds %struct.cyttsp4_test, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %post_codel55.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %post_codel55.i.i, align 1
  %conv56.i.i = zext i8 %126 to i32
  %and57.i.i = and i32 %conv56.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i)
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  br i1 %tobool58.not.i.i, label %do.end62.i.i, label %if.end52.i.i.if.end68.i.i_crit_edge

if.end52.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i.i

do.end62.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %128, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.191, i32 noundef %conv56.i.i) #11
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %do.end62.i.i, %if.end52.i.i.if.end68.i.i_crit_edge
  %129 = ptrtoint ptr %test.i.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load ptr, ptr %test.i.i, align 1
  %post_codel71.i.i = getelementptr inbounds %struct.cyttsp4_test, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %post_codel71.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %post_codel71.i.i, align 1
  %conv72.i.i = zext i8 %132 to i32
  %and73.i.i = and i32 %conv72.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i.i)
  %tobool74.not.i.i = icmp eq i32 %and73.i.i, 0
  br i1 %tobool74.not.i.i, label %do.end78.i.i, label %if.end68.i.i.if.end8.i_crit_edge

if.end68.i.i.if.end8.i_crit_edge:                 ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

do.end78.i.i:                                     ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %134, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.194, i32 noundef %conv72.i.i) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end78.i.i, %if.end68.i.i.if.end8.i_crit_edge
  %135 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cd, align 4
  %137 = ptrtoint ptr %test.i.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load ptr, ptr %test.i.i, align 1
  %post_codel91.i.i = getelementptr inbounds %struct.cyttsp4_test, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %post_codel91.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %post_codel91.i.i, align 1
  %conv92.i.i = zext i8 %140 to i32
  %and93.i.i = and i32 %conv92.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i.i)
  %tobool94.not.i.i = icmp eq i32 %and93.i.i, 0
  %cond.i.i = select i1 %tobool94.not.i.i, ptr @.str.199, ptr @.str.198
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %136, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.177, ptr noundef nonnull %cond.i.i, i32 noundef %conv92.i.i) #11
  %141 = ptrtoint ptr %opcfg_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %opcfg_ofs.i.i, align 4
  %143 = ptrtoint ptr %pcfg_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %pcfg_ofs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %144)
  %cmp.not.i85.i = icmp ugt i32 %142, %144
  br i1 %cmp.not.i85.i, label %if.end.i90.i, label %do.end.i86.i

do.end.i86.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, i32 noundef %142, i32 noundef %144) #11
  br label %do.end66

if.end.i90.i:                                     ; preds = %if.end8.i
  %sub.i87.i = sub i32 %142, %144
  %147 = ptrtoint ptr %pcfg_size.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %sub.i87.i, ptr %pcfg_size.i.i, align 4
  %148 = ptrtoint ptr %pcfg.i.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load ptr, ptr %pcfg.i.i, align 1
  %call.i88.i = call noalias ptr @krealloc(ptr noundef %149, i32 noundef %sub.i87.i, i32 noundef 3264) #15
  %cmp13.i89.i = icmp eq ptr %call.i88.i, null
  br i1 %cmp13.i89.i, label %do.end17.i91.i, label %if.end19.i99.i

do.end17.i91.i:                                   ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.201) #11
  br label %do.end66

if.end19.i99.i:                                   ; preds = %if.end.i90.i
  %152 = ptrtoint ptr %pcfg.i.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store ptr %call.i88.i, ptr %pcfg.i.i, align 1
  %153 = ptrtoint ptr %pcfg_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %pcfg_ofs.i.i, align 4
  %conv.i92.i = trunc i32 %154 to i16
  %155 = ptrtoint ptr %pcfg_size.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pcfg_size.i.i, align 4
  %157 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bus_ops.i, align 4
  %read.i.i94.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %read.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %read.i.i94.i, align 4
  %161 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cd, align 4
  %163 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %xfer_buf.i, align 4
  %conv.i.i96.i = trunc i32 %156 to i8
  %call.i.i97.i = call i32 %160(ptr noundef %162, ptr noundef %164, i16 noundef zeroext %conv.i92.i, i8 noundef zeroext %conv.i.i96.i, ptr noundef nonnull %call.i88.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97.i)
  %cmp29.i98.i = icmp slt i32 %call.i.i97.i, 0
  br i1 %cmp29.i98.i, label %do.end34.i100.i, label %if.end12.i

do.end34.i100.i:                                  ; preds = %if.end19.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.201, i32 noundef %call.i.i97.i) #11
  br label %do.end66

if.end12.i:                                       ; preds = %if.end19.i99.i
  %167 = ptrtoint ptr %pcfg.i.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load ptr, ptr %pcfg.i.i, align 1
  %res_xh.i.i = getelementptr inbounds %struct.cyttsp4_pcfg, ptr %168, i32 0, i32 6
  %169 = ptrtoint ptr %res_xh.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %res_xh.i.i, align 1
  %171 = and i8 %170, 127
  %res_xl.i.i = getelementptr inbounds %struct.cyttsp4_pcfg, ptr %168, i32 0, i32 7
  %172 = ptrtoint ptr %res_xl.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %res_xl.i.i, align 1
  %conv.i119.i.i = zext i8 %171 to i32
  %shl.i.i101.i = shl nuw nsw i32 %conv.i119.i.i, 8
  %conv1.i.i102.i = zext i8 %173 to i32
  %add.i.i103.i = or i32 %shl.i.i101.i, %conv1.i.i102.i
  %174 = ptrtoint ptr %max_x.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add.i.i103.i, ptr %max_x.i.i, align 4
  %175 = load i8, ptr %res_xh.i.i, align 1
  %.lobit.i.i = lshr i8 %175, 7
  %176 = zext i8 %.lobit.i.i to i32
  %177 = ptrtoint ptr %x_origin.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %x_origin.i.i, align 4
  %res_yh.i.i = getelementptr inbounds %struct.cyttsp4_pcfg, ptr %168, i32 0, i32 8
  %178 = ptrtoint ptr %res_yh.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %res_yh.i.i, align 1
  %180 = and i8 %179, 127
  %res_yl.i.i = getelementptr inbounds %struct.cyttsp4_pcfg, ptr %168, i32 0, i32 9
  %181 = ptrtoint ptr %res_yl.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %res_yl.i.i, align 1
  %conv.i120.i.i = zext i8 %180 to i32
  %shl.i121.i.i = shl nuw nsw i32 %conv.i120.i.i, 8
  %conv1.i122.i.i = zext i8 %182 to i32
  %add.i123.i.i = or i32 %shl.i121.i.i, %conv1.i122.i.i
  %183 = ptrtoint ptr %max_y.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %add.i123.i.i, ptr %max_y.i.i, align 4
  %184 = load i8, ptr %res_yh.i.i, align 1
  %.lobit118.i.i = lshr i8 %184, 7
  %185 = zext i8 %.lobit118.i.i to i32
  %186 = ptrtoint ptr %y_origin.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %y_origin.i.i, align 4
  %max_zh.i.i = getelementptr inbounds %struct.cyttsp4_pcfg, ptr %168, i32 0, i32 10
  %187 = ptrtoint ptr %max_zh.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %max_zh.i.i, align 1
  %max_zl.i.i = getelementptr inbounds %struct.cyttsp4_pcfg, ptr %168, i32 0, i32 11
  %189 = ptrtoint ptr %max_zl.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %max_zl.i.i, align 1
  %conv.i124.i.i = zext i8 %188 to i32
  %shl.i125.i.i = shl nuw nsw i32 %conv.i124.i.i, 8
  %conv1.i126.i.i = zext i8 %190 to i32
  %add.i127.i.i = or i32 %shl.i125.i.i, %conv1.i126.i.i
  %191 = ptrtoint ptr %max_p.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %add.i127.i.i, ptr %max_p.i.i, align 4
  %call13.i = call fastcc i32 @cyttsp4_si_get_opcfg_data(ptr noundef %cd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i148 = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i148, label %if.end12.i.do.end66_crit_edge, label %if.end16.i

if.end12.i.do.end66_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end16.i:                                       ; preds = %if.end12.i
  %192 = ptrtoint ptr %mdata_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %mdata_ofs.i.i, align 4
  %194 = ptrtoint ptr %ddata_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %ddata_ofs.i.i, align 4
  %sub.i107.i = sub i32 %193, %195
  %196 = ptrtoint ptr %ddata_size.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %sub.i107.i, ptr %ddata_size.i.i, align 4
  %197 = ptrtoint ptr %ddata.i.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load ptr, ptr %ddata.i.i, align 1
  %call.i108.i = call noalias ptr @krealloc(ptr noundef %198, i32 noundef %sub.i107.i, i32 noundef 3264) #15
  %cmp.i109.i = icmp eq ptr %call.i108.i, null
  br i1 %cmp.i109.i, label %do.end.i110.i, label %if.end.i117.i

do.end.i110.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.233) #11
  br label %do.end66

if.end.i117.i:                                    ; preds = %if.end16.i
  %201 = ptrtoint ptr %ddata.i.i to i32
  call void @__asan_storeN_noabort(i32 %201, i32 4)
  store ptr %call.i108.i, ptr %ddata.i.i, align 1
  %202 = ptrtoint ptr %ddata_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %ddata_ofs.i.i, align 4
  %conv.i111.i = trunc i32 %203 to i16
  %204 = ptrtoint ptr %ddata_size.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %ddata_size.i.i, align 4
  %206 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %bus_ops.i, align 4
  %read.i.i113.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %read.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %read.i.i113.i, align 4
  %210 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cd, align 4
  %212 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %xfer_buf.i, align 4
  %conv.i.i115.i = trunc i32 %205 to i8
  %call.i.i116.i = call i32 %209(ptr noundef %211, ptr noundef %213, i16 noundef zeroext %conv.i111.i, i8 noundef zeroext %conv.i.i115.i, ptr noundef nonnull %call.i108.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116.i)
  %cmp14.i.i = icmp slt i32 %call.i.i116.i, 0
  br i1 %cmp14.i.i, label %do.end19.i.i, label %if.end20.i

do.end19.i.i:                                     ; preds = %if.end.i117.i
  call void @__sanitizer_cov_trace_pc() #10
  %214 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %215, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.233, i32 noundef %call.i.i116.i) #11
  br label %do.end66

if.end20.i:                                       ; preds = %if.end.i117.i
  %216 = ptrtoint ptr %map_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %map_sz.i.i, align 4
  %218 = ptrtoint ptr %mdata_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %mdata_ofs.i.i, align 4
  %sub.i121.i = sub i32 %217, %219
  %220 = ptrtoint ptr %mdata_size.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %sub.i121.i, ptr %mdata_size.i.i, align 4
  %221 = ptrtoint ptr %mdata.i.i to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load ptr, ptr %mdata.i.i, align 1
  %call.i122.i = call noalias ptr @krealloc(ptr noundef %222, i32 noundef %sub.i121.i, i32 noundef 3264) #15
  %cmp.i123.i = icmp eq ptr %call.i122.i, null
  br i1 %cmp.i123.i, label %do.end.i124.i, label %if.end.i132.i

do.end.i124.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %223 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.238) #11
  br label %do.end66

if.end.i132.i:                                    ; preds = %if.end20.i
  %225 = ptrtoint ptr %mdata.i.i to i32
  call void @__asan_storeN_noabort(i32 %225, i32 4)
  store ptr %call.i122.i, ptr %mdata.i.i, align 1
  %226 = ptrtoint ptr %mdata_ofs.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %mdata_ofs.i.i, align 4
  %conv.i125.i = trunc i32 %227 to i16
  %228 = ptrtoint ptr %mdata_size.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %mdata_size.i.i, align 4
  %230 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %bus_ops.i, align 4
  %read.i.i127.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %read.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read.i.i127.i, align 4
  %234 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cd, align 4
  %236 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %xfer_buf.i, align 4
  %conv.i.i129.i = trunc i32 %229 to i8
  %call.i.i130.i = call i32 %233(ptr noundef %235, ptr noundef %237, i16 noundef zeroext %conv.i125.i, i8 noundef zeroext %conv.i.i129.i, ptr noundef nonnull %call.i122.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130.i)
  %cmp14.i131.i = icmp slt i32 %call.i.i130.i, 0
  br i1 %cmp14.i131.i, label %do.end19.i133.i, label %if.end24.i

do.end19.i133.i:                                  ; preds = %if.end.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  %238 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %239, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.238, i32 noundef %call.i.i130.i) #11
  br label %do.end66

if.end24.i:                                       ; preds = %if.end.i132.i
  %240 = ptrtoint ptr %num_btns.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %num_btns.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool.not.i135.i = icmp eq i32 %241, 0
  br i1 %tobool.not.i135.i, label %if.end55.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end24.i
  %mul.i.i = mul i32 %241, 12
  %242 = ptrtoint ptr %btn_keys_size.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %mul.i.i, ptr %btn_keys_size.i.i, align 4
  %243 = ptrtoint ptr %btn4.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %btn4.i.i, align 4
  %call.i136.i = call noalias ptr @krealloc(ptr noundef %244, i32 noundef %mul.i.i, i32 noundef 3520) #15
  %cmp.i137.i = icmp eq ptr %call.i136.i, null
  br i1 %cmp.i137.i, label %cyttsp4_si_get_btn_data.exit.i, label %if.end.i139.i

if.end.i139.i:                                    ; preds = %if.then.i.i
  %245 = ptrtoint ptr %btn4.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call.i136.i, ptr %btn4.i.i, align 4
  %246 = ptrtoint ptr %cpdata.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cpdata.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.cyttsp4_core_platform_data, ptr %247, i32 0, i32 7, i32 14
  %248 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp9.i.i = icmp eq ptr %249, null
  br i1 %cmp9.i.i, label %if.end.i139.i.for.cond37.preheader.i.i_crit_edge, label %if.else.i.i

if.end.i139.i.for.cond37.preheader.i.i_crit_edge: ; preds = %if.end.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond37.preheader.i.i

if.else.i.i:                                      ; preds = %if.end.i139.i
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_loadN_noabort(i32 %250, i32 4)
  %251 = load ptr, ptr %249, align 1
  %cmp14.i140.i = icmp eq ptr %251, null
  br i1 %cmp14.i140.i, label %if.else.i.i.for.cond37.preheader.i.i_crit_edge, label %if.end21.i.i

if.else.i.i.for.cond37.preheader.i.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond37.preheader.i.i

if.end21.i.i:                                     ; preds = %if.else.i.i
  %size.i.i = getelementptr inbounds %struct.touch_settings, ptr %249, i32 0, i32 1
  %252 = ptrtoint ptr %size.i.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 4)
  %253 = load i32, ptr %size.i.i, align 1
  %254 = ptrtoint ptr %num_btns.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %num_btns.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp24100.i.i = icmp ne i32 %255, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %cmp25101.i.i = icmp sgt i32 %253, 0
  %or.cond102.i.i = select i1 %cmp24100.i.i, i1 %cmp25101.i.i, i1 false
  br i1 %or.cond102.i.i, label %if.end21.i.i.for.body.i.i_crit_edge, label %if.end21.i.i.for.cond37.preheader.i.i_crit_edge

if.end21.i.i.for.cond37.preheader.i.i_crit_edge:  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond37.preheader.i.i

if.end21.i.i.for.body.i.i_crit_edge:              ; preds = %if.end21.i.i
  br label %for.body.i.i

for.cond37.preheader.i.i:                         ; preds = %for.body.i.i.for.cond37.preheader.i.i_crit_edge, %if.end21.i.i.for.cond37.preheader.i.i_crit_edge, %if.else.i.i.for.cond37.preheader.i.i_crit_edge, %if.end.i139.i.for.cond37.preheader.i.i_crit_edge
  %btn.0.lcssa.i.i = phi i32 [ 0, %if.end21.i.i.for.cond37.preheader.i.i_crit_edge ], [ 0, %if.end.i139.i.for.cond37.preheader.i.i_crit_edge ], [ 0, %if.else.i.i.for.cond37.preheader.i.i_crit_edge ], [ %inc.i.i, %for.body.i.i.for.cond37.preheader.i.i_crit_edge ]
  %256 = ptrtoint ptr %num_btns.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %num_btns.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %btn.0.lcssa.i.i, i32 %257)
  %cmp40104.i.i = icmp ult i32 %btn.0.lcssa.i.i, %257
  br i1 %cmp40104.i.i, label %for.cond37.preheader.i.i.for.body42.i.i_crit_edge, label %for.cond37.preheader.i.i.if.end28.i_crit_edge

for.cond37.preheader.i.i.if.end28.i_crit_edge:    ; preds = %for.cond37.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

for.cond37.preheader.i.i.for.body42.i.i_crit_edge: ; preds = %for.cond37.preheader.i.i
  br label %for.body42.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end21.i.i.for.body.i.i_crit_edge
  %btn.0103.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end21.i.i.for.body.i.i_crit_edge ]
  %258 = ptrtoint ptr %cpdata.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cpdata.i.i, align 4
  %arrayidx28.i.i = getelementptr %struct.cyttsp4_core_platform_data, ptr %259, i32 0, i32 7, i32 14
  %260 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx28.i.i, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_loadN_noabort(i32 %262, i32 4)
  %263 = load ptr, ptr %261, align 1
  %arrayidx30.i.i = getelementptr i16, ptr %263, i32 %btn.0103.i.i
  %264 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %arrayidx30.i.i, align 2
  %conv.i141.i = zext i16 %265 to i32
  %266 = ptrtoint ptr %btn4.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %btn4.i.i, align 4
  %key_code.i.i = getelementptr %struct.cyttsp4_btn, ptr %267, i32 %btn.0103.i.i, i32 2
  %268 = ptrtoint ptr %key_code.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %conv.i141.i, ptr %key_code.i.i, align 4
  %269 = load ptr, ptr %btn4.i.i, align 4
  %state.i.i = getelementptr %struct.cyttsp4_btn, ptr %269, i32 %btn.0103.i.i, i32 1
  %270 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %state.i.i, align 4
  %271 = load ptr, ptr %btn4.i.i, align 4
  %arrayidx36.i.i = getelementptr %struct.cyttsp4_btn, ptr %271, i32 %btn.0103.i.i
  %272 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 1, ptr %arrayidx36.i.i, align 4
  %inc.i.i = add nuw nsw i32 %btn.0103.i.i, 1
  %273 = ptrtoint ptr %num_btns.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %num_btns.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %274)
  %cmp24.i.i = icmp ult i32 %inc.i.i, %274
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %253)
  %cmp25.i.i = icmp slt i32 %inc.i.i, %253
  %or.cond.i.i = select i1 %cmp24.i.i, i1 %cmp25.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.cond37.preheader.i.i_crit_edge

for.body.i.i.for.cond37.preheader.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond37.preheader.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body42.i.i:                                   ; preds = %for.body42.i.i.for.body42.i.i_crit_edge, %for.cond37.preheader.i.i.for.body42.i.i_crit_edge
  %btn.1105.i.i = phi i32 [ %inc53.i.i, %for.body42.i.i.for.body42.i.i_crit_edge ], [ %btn.0.lcssa.i.i, %for.cond37.preheader.i.i.for.body42.i.i_crit_edge ]
  %275 = ptrtoint ptr %btn4.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %btn4.i.i, align 4
  %key_code45.i.i = getelementptr %struct.cyttsp4_btn, ptr %276, i32 %btn.1105.i.i, i32 2
  %277 = ptrtoint ptr %key_code45.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 0, ptr %key_code45.i.i, align 4
  %278 = load ptr, ptr %btn4.i.i, align 4
  %state48.i.i = getelementptr %struct.cyttsp4_btn, ptr %278, i32 %btn.1105.i.i, i32 1
  %279 = ptrtoint ptr %state48.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 0, ptr %state48.i.i, align 4
  %280 = load ptr, ptr %btn4.i.i, align 4
  %arrayidx50.i.i = getelementptr %struct.cyttsp4_btn, ptr %280, i32 %btn.1105.i.i
  %281 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 1, ptr %arrayidx50.i.i, align 4
  %inc53.i.i = add nuw i32 %btn.1105.i.i, 1
  %282 = ptrtoint ptr %num_btns.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %num_btns.i.i, align 4
  %cmp40.i.i = icmp ult i32 %inc53.i.i, %283
  br i1 %cmp40.i.i, label %for.body42.i.i.for.body42.i.i_crit_edge, label %for.body42.i.i.if.end28.i_crit_edge

for.body42.i.i.if.end28.i_crit_edge:              ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

for.body42.i.i.for.body42.i.i_crit_edge:          ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42.i.i

if.end55.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %284 = ptrtoint ptr %btn_keys_size.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %btn_keys_size.i.i, align 4
  %285 = ptrtoint ptr %btn4.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %btn4.i.i, align 4
  call void @kfree(ptr noundef %286) #8
  %287 = ptrtoint ptr %btn4.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr null, ptr %btn4.i.i, align 4
  br label %if.end28.i

cyttsp4_si_get_btn_data.exit.i:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %288 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %289, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.244) #11
  br label %do.end66

if.end28.i:                                       ; preds = %if.end55.i.i, %for.body42.i.i.if.end28.i_crit_edge, %for.cond37.preheader.i.i.if.end28.i_crit_edge
  %290 = ptrtoint ptr %xy_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %xy_mode.i.i, align 4
  %292 = ptrtoint ptr %mode_size.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %mode_size.i.i, align 4
  %call.i143.i = call noalias ptr @krealloc(ptr noundef %291, i32 noundef %293, i32 noundef 3520) #15
  %cmp.i144.i = icmp eq ptr %call.i143.i, null
  br i1 %cmp.i144.i, label %if.end28.i.do.end.i_crit_edge, label %if.end.i145.i

if.end28.i.do.end.i_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i145.i:                                    ; preds = %if.end28.i
  %294 = ptrtoint ptr %xy_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %call.i143.i, ptr %xy_mode.i.i, align 4
  %295 = ptrtoint ptr %xy_data.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %xy_data.i.i, align 4
  %297 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %data_size.i.i, align 4
  %call3.i.i = call noalias ptr @krealloc(ptr noundef %296, i32 noundef %298, i32 noundef 3520) #15
  %cmp4.i.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp4.i.i, label %if.end.i145.i.do.end.i_crit_edge, label %if.end6.i.i

if.end.i145.i.do.end.i_crit_edge:                 ; preds = %if.end.i145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end6.i.i:                                      ; preds = %if.end.i145.i
  %299 = ptrtoint ptr %xy_data.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call3.i.i, ptr %xy_data.i.i, align 4
  %300 = ptrtoint ptr %btn_rec_data.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %btn_rec_data.i.i, align 4
  %302 = ptrtoint ptr %btn_rec_size.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %btn_rec_size.i.i, align 4
  %304 = ptrtoint ptr %num_btns.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %num_btns.i.i, align 4
  %mul.i147.i = mul i32 %305, %303
  %call10.i.i = call noalias ptr @krealloc(ptr noundef %301, i32 noundef %mul.i147.i, i32 noundef 3520) #15
  %cmp11.i.i = icmp eq ptr %call10.i.i, null
  br i1 %cmp11.i.i, label %if.end6.i.i.do.end.i_crit_edge, label %if.end32.i

if.end6.i.i.do.end.i_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end6.i.i.do.end.i_crit_edge, %if.end.i145.i.do.end.i_crit_edge, %if.end28.i.do.end.i_crit_edge
  %306 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %307, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154) #11
  br label %do.end66

if.end32.i:                                       ; preds = %if.end6.i.i
  %308 = ptrtoint ptr %btn_rec_data.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %call10.i.i, ptr %btn_rec_data.i.i, align 4
  call fastcc void @cyttsp4_si_put_log_data(ptr noundef %cd) #8
  %309 = ptrtoint ptr %si_data.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %si_data.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i.i) #8
  %xor.i.i = xor i8 %310, -128
  %311 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %xor.i.i, ptr %cmd.i.i, align 1
  %312 = and i8 %310, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool.not.i149.i = icmp eq i8 %312, 0
  br i1 %tobool.not.i149.i, label %if.end.i154.i, label %if.end32.i.if.end72_crit_edge

if.end32.i.if.end72_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end.i154.i:                                    ; preds = %if.end32.i
  %313 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %bus_ops.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %314, i32 0, i32 1
  %315 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %write.i.i.i, align 4
  %317 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %cd, align 4
  %319 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %xfer_buf.i, align 4
  %call.i.i152.i = call i32 %316(ptr noundef %318, ptr noundef %320, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152.i)
  %cmp.i153.i = icmp slt i32 %call.i.i152.i, 0
  br i1 %cmp.i153.i, label %cyttsp4_get_sysinfo_regs.exit.thread169, label %if.end.i154.i.if.end72_crit_edge

if.end.i154.i.if.end72_crit_edge:                 ; preds = %if.end.i154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

cyttsp4_get_sysinfo_regs.exit.thread169:          ; preds = %if.end.i154.i
  call void @__sanitizer_cov_trace_pc() #10
  %321 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %322, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, i32 noundef %call.i.i152.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i.i) #8
  %323 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %324, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.154) #11
  %325 = ptrtoint ptr %sysinfo.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 1, ptr %sysinfo.i, align 4
  br label %do.end66

do.end66:                                         ; preds = %cyttsp4_get_sysinfo_regs.exit.thread169, %do.end.i, %cyttsp4_si_get_btn_data.exit.i, %do.end19.i133.i, %do.end.i124.i, %do.end19.i.i, %do.end.i110.i, %if.end12.i.do.end66_crit_edge, %do.end34.i100.i, %do.end17.i91.i, %do.end.i86.i, %do.end34.i.i, %do.end17.i.i, %do.end.i77.i, %if.end.i.do.end66_crit_edge, %cyttsp4_si_data_offsets.exit.thread.i
  %retval.0.i149168 = phi i32 [ %call.i.i152.i, %cyttsp4_get_sysinfo_regs.exit.thread169 ], [ -12, %do.end.i124.i ], [ %call.i.i130.i, %do.end19.i133.i ], [ -12, %do.end.i110.i ], [ %call.i.i116.i, %do.end19.i.i ], [ -22, %do.end.i86.i ], [ -12, %do.end17.i91.i ], [ %call.i.i97.i, %do.end34.i100.i ], [ -22, %do.end.i77.i ], [ -12, %do.end17.i.i ], [ %call.i.i82.i, %do.end34.i.i ], [ %call.i.i.i, %cyttsp4_si_data_offsets.exit.thread.i ], [ -12, %cyttsp4_si_get_btn_data.exit.i ], [ %call13.i, %if.end12.i.do.end66_crit_edge ], [ %call1.i147, %if.end.i.do.end66_crit_edge ], [ -12, %do.end.i ]
  %326 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %327, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.123, i32 noundef %retval.0.i149168) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool69.not = icmp eq i32 %retry.0, 0
  br i1 %tobool69.not, label %do.end66.exit_crit_edge, label %do.end66.reset.backedge_crit_edge

do.end66.reset.backedge_crit_edge:                ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset.backedge

do.end66.exit_crit_edge:                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end72:                                         ; preds = %if.end.i154.i.if.end72_crit_edge, %if.end32.i.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i.i) #8
  %328 = ptrtoint ptr %sysinfo.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 1, ptr %sysinfo.i, align 4
  %call73 = call fastcc i32 @cyttsp4_set_mode(ptr noundef %cd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.end78, label %if.end84

do.end78:                                         ; preds = %if.end72
  %329 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %330, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.123, i32 noundef %call73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool81.not = icmp eq i32 %retry.0, 0
  br i1 %tobool81.not, label %do.end78.exit_crit_edge, label %do.end78.reset.backedge_crit_edge

do.end78.reset.backedge_crit_edge:                ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset.backedge

do.end78.exit_crit_edge:                          ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end84:                                         ; preds = %if.end72
  %si.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 1
  %331 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %si.i, align 4
  %tobool.not.i = icmp eq ptr %332, null
  br i1 %tobool.not.i, label %if.end84.cyttsp4_lift_all.exit_crit_edge, label %if.end.i151

if.end84.cyttsp4_lift_all.exit_crit_edge:         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_lift_all.exit

if.end.i151:                                      ; preds = %if.end84
  %num_prv_tch.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 6
  %333 = ptrtoint ptr %num_prv_tch.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %num_prv_tch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %cmp.not.i = icmp eq i32 %334, 0
  br i1 %cmp.not.i, label %if.end.i151.cyttsp4_lift_all.exit_crit_edge, label %if.then1.i

if.end.i151.cyttsp4_lift_all.exit_crit_edge:      ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_lift_all.exit

if.then1.i:                                       ; preds = %if.end.i151
  %max.i = getelementptr %struct.cyttsp4_sysinfo, ptr %332, i32 0, i32 4, i32 31, i32 3, i32 2
  %335 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %cmp17.i.i = icmp sgt i32 %336, 0
  br i1 %cmp17.i.i, label %for.body.lr.ph.i.i, label %if.then1.i.cyttsp4_report_slot_liftoff.exit.i_crit_edge

if.then1.i.cyttsp4_report_slot_liftoff.exit.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_report_slot_liftoff.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then1.i
  %input.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 2
  br label %for.body.i.i154

for.body.i.i154:                                  ; preds = %for.body.i.i154.for.body.i.i154_crit_edge, %for.body.lr.ph.i.i
  %t.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i153, %for.body.i.i154.for.body.i.i154_crit_edge ]
  %337 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %input.i.i, align 4
  call void @input_event(ptr noundef %338, i32 noundef 3, i32 noundef 47, i32 noundef %t.08.i.i) #8
  %339 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %input.i.i, align 4
  %call.i.i.i152 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %340, i32 noundef 0, i1 noundef zeroext false) #8
  %inc.i.i153 = add nuw nsw i32 %t.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i153, %336
  br i1 %exitcond.not.i.i, label %for.body.i.i154.cyttsp4_report_slot_liftoff.exit.i_crit_edge, label %for.body.i.i154.for.body.i.i154_crit_edge

for.body.i.i154.for.body.i.i154_crit_edge:        ; preds = %for.body.i.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i154

for.body.i.i154.cyttsp4_report_slot_liftoff.exit.i_crit_edge: ; preds = %for.body.i.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_report_slot_liftoff.exit.i

cyttsp4_report_slot_liftoff.exit.i:               ; preds = %for.body.i.i154.cyttsp4_report_slot_liftoff.exit.i_crit_edge, %if.then1.i.cyttsp4_report_slot_liftoff.exit.i_crit_edge
  %input.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 2
  %341 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %input.i, align 4
  call void @input_event(ptr noundef %342, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %343 = ptrtoint ptr %num_prv_tch.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 0, ptr %num_prv_tch.i, align 4
  br label %cyttsp4_lift_all.exit

cyttsp4_lift_all.exit:                            ; preds = %cyttsp4_report_slot_liftoff.exit.i, %if.end.i151.cyttsp4_lift_all.exit_crit_edge, %if.end84.cyttsp4_lift_all.exit_crit_edge
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %sleep_state = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 4
  %344 = ptrtoint ptr %sleep_state to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %sleep_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %345)
  %cmp86 = icmp eq i32 %345, 1
  br i1 %cmp86, label %if.then87, label %if.end91

if.then87:                                        ; preds = %cyttsp4_lift_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  %346 = ptrtoint ptr %sleep_state to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 0, ptr %sleep_state, align 4
  call void @mutex_unlock(ptr noundef %system_lock) #8
  %call90 = call fastcc i32 @cyttsp4_core_sleep_(ptr noundef %cd)
  br label %cleanup93

if.end91:                                         ; preds = %cyttsp4_lift_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %system_lock) #8
  br label %exit

exit:                                             ; preds = %if.end91, %do.end78.exit_crit_edge, %do.end66.exit_crit_edge, %if.end51.exit_crit_edge, %do.end23.exit_crit_edge, %do.end10.exit_crit_edge
  %rc.0 = phi i32 [ %call73, %if.end91 ], [ -62, %if.end51.exit_crit_edge ], [ %call73, %do.end78.exit_crit_edge ], [ %retval.0.i149168, %do.end66.exit_crit_edge ], [ %call.i142, %do.end23.exit_crit_edge ], [ %call5, %do.end10.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %347 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %347, 100
  %call1.i157 = call i32 @mod_timer(ptr noundef %watchdog_timer.i, i32 noundef %add.i) #8
  br label %cleanup93

cleanup93:                                        ; preds = %exit, %if.then87, %cleanup.thread
  %retval.0 = phi i32 [ %rc.0, %exit ], [ %call73, %if.then87 ], [ -62, %cleanup.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_reset_and_wait(ptr noundef %cd) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %system_lock = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_reset_and_wait.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_reset_and_wait, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !615

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_reset_and_wait.__UNIQUE_ID_ddebug274, ptr noundef %1, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @cyttsp4_hw_reset(ptr noundef %cd)
  %mode = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mode, align 4
  tail call void @mutex_unlock(ptr noundef %system_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.141, i32 noundef %call3) #11
  br label %cleanup

if.end10:                                         ; preds = %do.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1348) #8
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %if.then8.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8.i:                                       ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %7 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %wait_q.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 7
  %call1164.i = call i32 @prepare_to_wait_event(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp1465.i = icmp eq i32 %9, 2
  br i1 %cmp1465.i, label %if.end34.thread.i, label %if.then8.i.cleanup.i_crit_edge

if.then8.i.cleanup.i_crit_edge:                   ; preds = %if.then8.i
  br label %cleanup.i

if.end34.thread.i:                                ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %cleanup

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then8.i.cleanup.i_crit_edge
  %__ret9.166.i = phi i32 [ %__ret9.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 50, %if.then8.i.cleanup.i_crit_edge ]
  %call31.i = call i32 @schedule_timeout(i32 noundef %__ret9.166.i) #8
  %call11.i = call i32 @prepare_to_wait_event(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp14.i = icmp eq i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool18.not.i = icmp eq i32 %call31.i, 0
  %12 = select i1 %cmp14.i, i1 %tobool18.not.i, i1 false
  %__ret9.1.i = select i1 %12, i32 1, i32 %call31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret9.1.i)
  %tobool24.not.i = icmp eq i32 %__ret9.1.i, 0
  %13 = select i1 %cmp14.i, i1 true, i1 %tobool24.not.i
  br i1 %13, label %if.end34.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end34.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %wait_q.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br i1 %tobool24.not.i, label %do.end40.i, label %if.end34.i.cleanup_crit_edge

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cd, align 4
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, i32 noundef %17) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end40.i, %if.end34.i.cleanup_crit_edge, %if.end34.thread.i, %if.end10.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ %call3, %do.end8 ], [ -62, %do.end40.i ], [ 0, %if.end34.i.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end34.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_set_mode(ptr noundef %cd) unnamed_addr #0 align 64 {
entry:
  %mode = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mode, align 1, !annotation !616
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_set_mode.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_set_mode, %if.then)) #8
          to label %do.end8 [label %if.then], !srcloc !615

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cd, align 4
  %exclusive_dev = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 13
  %3 = ptrtoint ptr %exclusive_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %exclusive_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_set_mode.__UNIQUE_ID_ddebug275, ptr noundef %2, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.279, ptr noundef %4, i32 noundef 0, i32 noundef 4) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %system_lock = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %bus_ops.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 20
  %5 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_ops.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i, align 4
  %9 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cd, align 4
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 21
  %11 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xfer_buf.i, align 4
  %call.i = call i32 %8(ptr noundef %10, ptr noundef %12, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then11, label %if.end17

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %system_lock) #8
  %13 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.277, i32 noundef %call.i) #11
  br label %cleanup122

if.end17:                                         ; preds = %do.end8
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mode, align 1
  %17 = and i8 %16, -121
  %18 = or i8 %17, 8
  store i8 %18, ptr %mode, align 1
  %int_status = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 6
  %19 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %int_status, align 4
  %or24 = or i32 %20, 2
  store i32 %or24, ptr %int_status, align 4
  %21 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_ops.i, align 4
  %write.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %25 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cd, align 4
  %27 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xfer_buf.i, align 4
  %call.i8 = call i32 %24(ptr noundef %26, ptr noundef %28, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %mode) #8
  call void @mutex_unlock(ptr noundef %system_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp27 = icmp slt i32 %call.i8, 0
  br i1 %cmp27, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.277, i32 noundef %call.i8) #11
  br label %cleanup122

if.end34:                                         ; preds = %if.end17
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1453) #8
  %31 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %int_status, align 4
  %and43 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp44 = icmp eq i32 %and43, 0
  br i1 %cmp44, label %if.end34.if.end90_crit_edge, label %if.then59

if.end34.if.end90_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then59:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wait_q = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 7
  %call6215 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %34 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %int_status, align 4
  %and6516 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6516)
  %cmp6617 = icmp eq i32 %and6516, 0
  br i1 %cmp6617, label %if.then59.for.end_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  br label %cleanup

if.then59.for.end_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then59.cleanup_crit_edge
  %__ret60.118 = phi i32 [ %__ret60.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then59.cleanup_crit_edge ]
  %call87 = call i32 @schedule_timeout(i32 noundef %__ret60.118) #8
  %call62 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %36 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %int_status, align 4
  %and65 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %cmp66 = icmp eq i32 %and65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool72.not = icmp eq i32 %call87, 0
  %38 = select i1 %cmp66, i1 %tobool72.not, i1 false
  %__ret60.1 = select i1 %38, i32 1, i32 %call87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret60.1)
  %tobool79.not = icmp eq i32 %__ret60.1, 0
  %39 = select i1 %cmp66, i1 true, i1 %tobool79.not
  br i1 %39, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then59.for.end_crit_edge
  %__ret60.1.lcssa = phi i32 [ 100, %if.then59.for.end_crit_edge ], [ %__ret60.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end90

if.end90:                                         ; preds = %for.end, %if.end34.if.end90_crit_edge
  %__ret.1 = phi i32 [ 100, %if.end34.if.end90_crit_edge ], [ %__ret60.1.lcssa, %for.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_set_mode.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_set_mode, %if.then104)) #8
          to label %do.end109 [label %if.then104], !srcloc !615

if.then104:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cd, align 4
  %mode106 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 3
  %42 = ptrtoint ptr %mode106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode106, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_set_mode.__UNIQUE_ID_ddebug276, ptr noundef %41, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.277, i32 noundef %__ret.1, i32 noundef %43) #8
  br label %do.end109

do.end109:                                        ; preds = %if.then104, %if.end90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp110 = icmp eq i32 %__ret.1, 0
  br i1 %cmp110, label %do.end115, label %do.end109.cleanup122_crit_edge

do.end109.cleanup122_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup122

do.end115:                                        ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.289) #11
  call void @mutex_lock_nested(ptr noundef %system_lock, i32 noundef 0) #8
  %46 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %int_status, align 4
  %and119 = and i32 %47, -3
  store i32 %and119, ptr %int_status, align 4
  call void @mutex_unlock(ptr noundef %system_lock) #8
  br label %cleanup122

cleanup122:                                       ; preds = %do.end115, %do.end109.cleanup122_crit_edge, %do.end32, %if.then11
  %rc.0 = phi i32 [ %call.i, %if.then11 ], [ %call.i8, %do.end32 ], [ -22, %do.end115 ], [ %call.i8, %do.end109.cleanup122_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #8
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_hw_reset(ptr nocapture noundef readonly %cd) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cpdata.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 19
  %0 = ptrtoint ptr %cpdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpdata.i, align 4
  %xres.i = getelementptr inbounds %struct.cyttsp4_core_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xres.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %4 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cd, align 4
  br i1 %tobool.not.i, label %if.then, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %3(ptr noundef %1, ptr noundef %5) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_hw_hard_reset.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_hw_reset, %if.then8.i)) #8
          to label %if.end [label %if.then8.i], !srcloc !615

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_hw_hard_reset.__UNIQUE_ID_ddebug228, ptr noundef %7, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.144) #8
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.144) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i) #8
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %cmd.i, align 1
  %bus_ops.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 20
  %9 = ptrtoint ptr %bus_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i.i, align 4
  %13 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cd, align 4
  %xfer_buf.i.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 21
  %15 = ptrtoint ptr %xfer_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xfer_buf.i.i, align 4
  %call.i.i = call i32 %12(ptr noundef %14, ptr noundef %16, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.cyttsp4_hw_soft_reset.exit_crit_edge

if.then.cyttsp4_hw_soft_reset.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cyttsp4_hw_soft_reset.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cd, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148) #11
  br label %cyttsp4_hw_soft_reset.exit

cyttsp4_hw_soft_reset.exit:                       ; preds = %do.end.i, %if.then.cyttsp4_hw_soft_reset.exit_crit_edge
  %retval.0.i4 = phi i32 [ %call.i.i, %do.end.i ], [ 0, %if.then.cyttsp4_hw_soft_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #8
  br label %if.end

if.end:                                           ; preds = %cyttsp4_hw_soft_reset.exit, %if.then8.i, %if.then.i
  %rc.0 = phi i32 [ %retval.0.i4, %cyttsp4_hw_soft_reset.exit ], [ 0, %if.then8.i ], [ 0, %if.then.i ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_si_get_cydata(ptr nocapture noundef %cd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %test_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 19
  %0 = ptrtoint ptr %test_ofs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %test_ofs, align 4
  %cydata_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 18
  %2 = ptrtoint ptr %cydata_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cydata_ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ugt i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161, i32 noundef %1, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %1, %3
  %cydata_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 24
  %6 = ptrtoint ptr %cydata_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %cydata_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_get_cydata.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_get_cydata, %if.then14)) #8
          to label %do.end20 [label %if.then14], !srcloc !615

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cd, align 4
  %9 = ptrtoint ptr %cydata_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cydata_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_get_cydata.__UNIQUE_ID_ddebug229, ptr noundef %8, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.161, i32 noundef %10) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then14, %if.end
  %si_ptrs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %si_ptrs to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load ptr, ptr %si_ptrs, align 1
  %13 = ptrtoint ptr %cydata_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cydata_size, align 4
  %call23 = tail call noalias ptr @krealloc(ptr noundef %12, i32 noundef %14, i32 noundef 3264) #15
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %do.end28, label %if.end30

do.end28:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.161) #11
  br label %cleanup

if.end30:                                         ; preds = %do.end20
  %17 = ptrtoint ptr %si_ptrs to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store ptr %call23, ptr %si_ptrs, align 1
  %18 = ptrtoint ptr %cydata_ofs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cydata_ofs, align 4
  %conv = trunc i32 %19 to i16
  %bus_ops.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 20
  %20 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_ops.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i, align 4
  %24 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cd, align 4
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 21
  %26 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xfer_buf.i, align 4
  %call.i = tail call i32 %23(ptr noundef %25, ptr noundef %27, i16 noundef zeroext %conv, i8 noundef zeroext 19, ptr noundef nonnull %call23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp38 = icmp slt i32 %call.i, 0
  br i1 %cmp38, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.161, i32 noundef %call.i) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end30
  %30 = ptrtoint ptr %si_ptrs to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load ptr, ptr %si_ptrs, align 1
  %mfgid_sz48 = getelementptr inbounds %struct.cyttsp4_cydata, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %mfgid_sz48 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mfgid_sz48, align 1
  %conv49 = zext i8 %33 to i32
  %34 = ptrtoint ptr %cydata_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cydata_size, align 4
  %sub52 = add i32 %35, -26
  call void @__sanitizer_cov_trace_cmp4(i32 %sub52, i32 %conv49)
  %cmp53.not = icmp eq i32 %sub52, %conv49
  br i1 %cmp53.not, label %if.end60, label %do.end58

do.end58:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.161, i32 noundef %conv49, i32 noundef %sub52) #11
  br label %cleanup

if.end60:                                         ; preds = %if.end45
  %add = add i32 %19, 19
  %conv61 = trunc i32 %add to i16
  %mfg_id = getelementptr inbounds %struct.cyttsp4_cydata, ptr %31, i32 0, i32 19
  %38 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus_ops.i, align 4
  %read.i149 = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %read.i149 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read.i149, align 4
  %42 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cd, align 4
  %44 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xfer_buf.i, align 4
  %call.i151 = tail call i32 %41(ptr noundef %43, ptr noundef %45, i16 noundef zeroext %conv61, i8 noundef zeroext %33, ptr noundef %mfg_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp69 = icmp slt i32 %call.i151, 0
  br i1 %cmp69, label %do.end74, label %if.end76

do.end74:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.161, i32 noundef %call.i151) #11
  br label %cleanup

if.end76:                                         ; preds = %if.end60
  %48 = ptrtoint ptr %si_ptrs to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load ptr, ptr %si_ptrs, align 1
  %mfgid_sz79 = getelementptr inbounds %struct.cyttsp4_cydata, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %mfgid_sz79 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mfgid_sz79, align 1
  %conv80 = zext i8 %51 to i32
  %add81 = add i32 %add, %conv80
  %conv82 = trunc i32 %add81 to i16
  %cyito_idh = getelementptr inbounds %struct.cyttsp4_cydata, ptr %49, i32 0, i32 12
  %52 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus_ops.i, align 4
  %read.i153 = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %read.i153 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read.i153, align 4
  %56 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cd, align 4
  %58 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xfer_buf.i, align 4
  %call.i155 = tail call i32 %55(ptr noundef %57, ptr noundef %59, i16 noundef zeroext %conv82, i8 noundef zeroext 7, ptr noundef %cyito_idh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %cmp86 = icmp slt i32 %call.i155, 0
  br i1 %cmp86, label %do.end91, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end91:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.161, i32 noundef %call.i155) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %if.end76.cleanup_crit_edge, %do.end74, %do.end58, %do.end43, %do.end28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end28 ], [ %call.i, %do.end43 ], [ -22, %do.end58 ], [ %call.i151, %do.end74 ], [ %call.i155, %do.end91 ], [ %call.i155, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_si_get_opcfg_data(ptr noundef %cd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddata_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 22
  %0 = ptrtoint ptr %ddata_ofs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ddata_ofs, align 4
  %opcfg_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 21
  %2 = ptrtoint ptr %opcfg_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opcfg_ofs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ugt i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.209, i32 noundef %1, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %1, %3
  %opcfg_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 27
  %6 = ptrtoint ptr %opcfg_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %opcfg_size, align 4
  %opcfg = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 2, i32 3
  %7 = ptrtoint ptr %opcfg to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load ptr, ptr %opcfg, align 1
  %call = tail call noalias ptr @krealloc(ptr noundef %8, i32 noundef %sub, i32 noundef 3264) #15
  %cmp13 = icmp eq ptr %call, null
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.209) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %11 = ptrtoint ptr %opcfg to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store ptr %call, ptr %opcfg, align 1
  %12 = ptrtoint ptr %opcfg_ofs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opcfg_ofs, align 4
  %conv = trunc i32 %13 to i16
  %14 = ptrtoint ptr %opcfg_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opcfg_size, align 4
  %bus_ops.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 20
  %16 = ptrtoint ptr %bus_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_ops.i, align 4
  %read.i = getelementptr inbounds %struct.cyttsp4_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i, align 4
  %20 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cd, align 4
  %xfer_buf.i = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 21
  %22 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xfer_buf.i, align 4
  %conv.i = trunc i32 %15 to i8
  %call.i = tail call i32 %19(ptr noundef %21, ptr noundef %23, i16 noundef zeroext %conv, i8 noundef zeroext %conv.i, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp29 = icmp slt i32 %call.i, 0
  br i1 %cmp29, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.209, i32 noundef %call.i) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end19
  %26 = ptrtoint ptr %opcfg to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load ptr, ptr %opcfg, align 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv39 = zext i8 %29 to i32
  %cmd_ofs41 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 1
  %30 = ptrtoint ptr %cmd_ofs41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv39, ptr %cmd_ofs41, align 4
  %rep_ofs = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %rep_ofs to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rep_ofs, align 1
  %conv44 = zext i8 %32 to i32
  %rep_ofs46 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 2
  %33 = ptrtoint ptr %rep_ofs46 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv44, ptr %rep_ofs46, align 4
  %rep_szh = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 2
  %34 = ptrtoint ptr %rep_szh to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rep_szh, align 1
  %conv49 = zext i8 %35 to i32
  %mul = shl nuw nsw i32 %conv49, 8
  %rep_szl = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 3
  %36 = ptrtoint ptr %rep_szl to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rep_szl, align 1
  %conv52 = zext i8 %37 to i32
  %add = or i32 %mul, %conv52
  %rep_sz = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 3
  %38 = ptrtoint ptr %rep_sz to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add, ptr %rep_sz, align 4
  %num_btns = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 4
  %39 = ptrtoint ptr %num_btns to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_btns, align 1
  %conv56 = zext i8 %40 to i32
  %num_btns58 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 4
  %41 = ptrtoint ptr %num_btns58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv56, ptr %num_btns58, align 4
  %sub62 = add nuw nsw i32 %conv56, 3
  %div361 = lshr i32 %sub62, 2
  %num_btn_regs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 5
  %42 = ptrtoint ptr %num_btn_regs to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div361, ptr %num_btn_regs, align 4
  %tt_stat_ofs = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 5
  %43 = ptrtoint ptr %tt_stat_ofs to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tt_stat_ofs, align 1
  %conv66 = zext i8 %44 to i32
  %tt_stat_ofs68 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 6
  %45 = ptrtoint ptr %tt_stat_ofs68 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv66, ptr %tt_stat_ofs68, align 4
  %obj_cfg0 = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 6
  %46 = ptrtoint ptr %obj_cfg0 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %obj_cfg0, align 1
  %conv71 = zext i8 %47 to i32
  %obj_cfg073 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 8
  %48 = ptrtoint ptr %obj_cfg073 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv71, ptr %obj_cfg073, align 4
  %max_tchs = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 7
  %49 = ptrtoint ptr %max_tchs to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %max_tchs, align 1
  %51 = and i8 %50, 31
  %and = zext i8 %51 to i32
  %max_tchs78 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 9
  %52 = ptrtoint ptr %max_tchs78 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and, ptr %max_tchs78, align 4
  %tch_rec_size = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 8
  %53 = ptrtoint ptr %tch_rec_size to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tch_rec_size, align 1
  %55 = and i8 %54, 31
  %and82 = zext i8 %55 to i32
  %tch_rec_size84 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 7
  %56 = ptrtoint ptr %tch_rec_size84 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and82, ptr %tch_rec_size84, align 4
  %arrayidx = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 0
  %arrayidx90 = getelementptr %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 9, i32 0
  %57 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx90, align 1
  %59 = and i8 %58, 31
  %and92 = zext i8 %59 to i32
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and92, ptr %arrayidx, align 4
  %size = getelementptr %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 9, i32 0, i32 1
  %61 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %size, align 1
  %conv93 = zext i8 %62 to i32
  %max = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 0, i32 2
  %shl.i = shl nuw i32 1, %conv93
  %63 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shl.i, ptr %max, align 4
  %add.i = add nuw nsw i32 %conv93, 7
  %div2.i = lshr i32 %add.i, 3
  %size95 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 0, i32 1
  %64 = ptrtoint ptr %size95 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %div2.i, ptr %size95, align 4
  %65 = load i8, ptr %arrayidx90, align 1
  %66 = lshr i8 %65, 5
  %67 = zext i8 %66 to i32
  %bofs = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 0, i32 3
  %68 = ptrtoint ptr %bofs to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %bofs, align 4
  %arrayidx.1 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 1
  %arrayidx90.1 = getelementptr %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 9, i32 1
  %69 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx90.1, align 1
  %71 = and i8 %70, 31
  %and92.1 = zext i8 %71 to i32
  %72 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and92.1, ptr %arrayidx.1, align 4
  %size.1 = getelementptr %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 9, i32 1, i32 1
  %73 = ptrtoint ptr %size.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %size.1, align 1
  %conv93.1 = zext i8 %74 to i32
  %max.1 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 1, i32 2
  %shl.i.1 = shl nuw i32 1, %conv93.1
  %75 = ptrtoint ptr %max.1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shl.i.1, ptr %max.1, align 4
  %add.i.1 = add nuw nsw i32 %conv93.1, 7
  %div2.i.1 = lshr i32 %add.i.1, 3
  %size95.1 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 1, i32 1
  %76 = ptrtoint ptr %size95.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div2.i.1, ptr %size95.1, align 4
  %77 = load i8, ptr %arrayidx90.1, align 1
  %78 = lshr i8 %77, 5
  %79 = zext i8 %78 to i32
  %bofs.1 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 1, i32 3
  %80 = ptrtoint ptr %bofs.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %bofs.1, align 4
  %arrayidx.2 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 2
  %arrayidx90.2 = getelementptr %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 9, i32 2
  %81 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx90.2, align 1
  %83 = and i8 %82, 31
  %and92.2 = zext i8 %83 to i32
  %84 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and92.2, ptr %arrayidx.2, align 4
  %size.2 = getelementptr %struct.cyttsp4_opcfg, ptr %27, i32 0, i32 9, i32 2, i32 1
  %85 = ptrtoint ptr %size.2 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %size.2, align 1
  %conv93.2 = zext i8 %86 to i32
  %max.2 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 2, i32 2
  %shl.i.2 = shl nuw i32 1, %conv93.2
  %87 = ptrtoint ptr %max.2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %shl.i.2, ptr %max.2, align 4
  %add.i.2 = add nuw nsw i32 %conv93.2, 7
  %div2.i.2 = lshr i32 %add.i.2, 3
  %size95.2 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 2, i32 1
  %88 = ptrtoint ptr %size95.2 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %div2.i.2, ptr %size95.2, align 4
  %89 = load i8, ptr %arrayidx90.2, align 1
  %90 = lshr i8 %89, 5
  %91 = zext i8 %90 to i32
  %bofs.2 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 2, i32 3
  %92 = ptrtoint ptr %bofs.2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %bofs.2, align 4
  %arrayidx.3 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 3
  %93 = load ptr, ptr %opcfg, align 1
  %arrayidx90.3 = getelementptr %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 9, i32 3
  %94 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx90.3, align 1
  %96 = and i8 %95, 31
  %and92.3 = zext i8 %96 to i32
  %97 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and92.3, ptr %arrayidx.3, align 4
  %size.3 = getelementptr %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 9, i32 3, i32 1
  %98 = ptrtoint ptr %size.3 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %size.3, align 1
  %conv93.3 = zext i8 %99 to i32
  %max.3 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 3, i32 2
  %shl.i.3 = shl nuw i32 1, %conv93.3
  %100 = ptrtoint ptr %max.3 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %shl.i.3, ptr %max.3, align 4
  %add.i.3 = add nuw nsw i32 %conv93.3, 7
  %div2.i.3 = lshr i32 %add.i.3, 3
  %size95.3 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 3, i32 1
  %101 = ptrtoint ptr %size95.3 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div2.i.3, ptr %size95.3, align 4
  %102 = load i8, ptr %arrayidx90.3, align 1
  %103 = lshr i8 %102, 5
  %104 = zext i8 %103 to i32
  %bofs.3 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 3, i32 3
  %105 = ptrtoint ptr %bofs.3 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %bofs.3, align 4
  %arrayidx.4 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 4
  %arrayidx90.4 = getelementptr %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 9, i32 4
  %106 = ptrtoint ptr %arrayidx90.4 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx90.4, align 1
  %108 = and i8 %107, 31
  %and92.4 = zext i8 %108 to i32
  %109 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and92.4, ptr %arrayidx.4, align 4
  %size.4 = getelementptr %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 9, i32 4, i32 1
  %110 = ptrtoint ptr %size.4 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %size.4, align 1
  %conv93.4 = zext i8 %111 to i32
  %max.4 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 4, i32 2
  %shl.i.4 = shl nuw i32 1, %conv93.4
  %112 = ptrtoint ptr %max.4 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %shl.i.4, ptr %max.4, align 4
  %add.i.4 = add nuw nsw i32 %conv93.4, 7
  %div2.i.4 = lshr i32 %add.i.4, 3
  %size95.4 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 4, i32 1
  %113 = ptrtoint ptr %size95.4 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %div2.i.4, ptr %size95.4, align 4
  %114 = load i8, ptr %arrayidx90.4, align 1
  %115 = lshr i8 %114, 5
  %116 = zext i8 %115 to i32
  %bofs.4 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 4, i32 3
  %117 = ptrtoint ptr %bofs.4 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %bofs.4, align 4
  %arrayidx.5 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 5
  %arrayidx90.5 = getelementptr %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 9, i32 5
  %118 = ptrtoint ptr %arrayidx90.5 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx90.5, align 1
  %120 = and i8 %119, 31
  %and92.5 = zext i8 %120 to i32
  %121 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %and92.5, ptr %arrayidx.5, align 4
  %size.5 = getelementptr %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 9, i32 5, i32 1
  %122 = ptrtoint ptr %size.5 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %size.5, align 1
  %conv93.5 = zext i8 %123 to i32
  %max.5 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 5, i32 2
  %shl.i.5 = shl nuw i32 1, %conv93.5
  %124 = ptrtoint ptr %max.5 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %shl.i.5, ptr %max.5, align 4
  %add.i.5 = add nuw nsw i32 %conv93.5, 7
  %div2.i.5 = lshr i32 %add.i.5, 3
  %size95.5 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 5, i32 1
  %125 = ptrtoint ptr %size95.5 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %div2.i.5, ptr %size95.5, align 4
  %126 = load i8, ptr %arrayidx90.5, align 1
  %127 = lshr i8 %126, 5
  %128 = zext i8 %127 to i32
  %bofs.5 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 5, i32 3
  %129 = ptrtoint ptr %bofs.5 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %bofs.5, align 4
  %arrayidx.6 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 6
  %arrayidx90.6 = getelementptr %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 9, i32 6
  %130 = ptrtoint ptr %arrayidx90.6 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx90.6, align 1
  %132 = and i8 %131, 31
  %and92.6 = zext i8 %132 to i32
  %133 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %and92.6, ptr %arrayidx.6, align 4
  %size.6 = getelementptr %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 9, i32 6, i32 1
  %134 = ptrtoint ptr %size.6 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %size.6, align 1
  %conv93.6 = zext i8 %135 to i32
  %max.6 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 6, i32 2
  %shl.i.6 = shl nuw i32 1, %conv93.6
  %136 = ptrtoint ptr %max.6 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %shl.i.6, ptr %max.6, align 4
  %add.i.6 = add nuw nsw i32 %conv93.6, 7
  %div2.i.6 = lshr i32 %add.i.6, 3
  %size95.6 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 6, i32 1
  %137 = ptrtoint ptr %size95.6 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %div2.i.6, ptr %size95.6, align 4
  %138 = load i8, ptr %arrayidx90.6, align 1
  %139 = lshr i8 %138, 5
  %140 = zext i8 %139 to i32
  %bofs.6 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 6, i32 3
  %141 = ptrtoint ptr %bofs.6 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %bofs.6, align 4
  %btn_rec_size = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 10
  %142 = ptrtoint ptr %btn_rec_size to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %btn_rec_size, align 1
  %conv101 = zext i8 %143 to i32
  %btn_rec_size103 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 32
  %144 = ptrtoint ptr %btn_rec_size103 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv101, ptr %btn_rec_size103, align 4
  %btn_diff_ofs = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 11
  %145 = ptrtoint ptr %btn_diff_ofs to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %btn_diff_ofs, align 1
  %conv106 = zext i8 %146 to i32
  %btn_diff_ofs108 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 33
  %147 = ptrtoint ptr %btn_diff_ofs108 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv106, ptr %btn_diff_ofs108, align 4
  %btn_diff_size = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %93, i32 0, i32 12
  %148 = ptrtoint ptr %btn_diff_size to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %btn_diff_size, align 1
  %conv111 = zext i8 %149 to i32
  %btn_diff_size113 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 34
  %150 = ptrtoint ptr %btn_diff_size113 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv111, ptr %btn_diff_size113, align 4
  %151 = load i32, ptr %tch_rec_size84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %151)
  %cmp116 = icmp ugt i32 %151, 6
  br i1 %cmp116, label %for.body122.preheader, label %if.end36.do.body152.preheader_crit_edge

if.end36.do.body152.preheader_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body152.preheader

for.body122.preheader:                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx125 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 7
  %152 = ptrtoint ptr %opcfg to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load ptr, ptr %opcfg, align 1
  %arrayidx128 = getelementptr %struct.cyttsp4_opcfg, ptr %153, i32 0, i32 13, i32 0
  %154 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx128, align 1
  %156 = and i8 %155, 31
  %and131 = zext i8 %156 to i32
  %157 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %and131, ptr %arrayidx125, align 4
  %size133 = getelementptr %struct.cyttsp4_opcfg, ptr %153, i32 0, i32 13, i32 0, i32 1
  %158 = ptrtoint ptr %size133 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %size133, align 1
  %conv134 = zext i8 %159 to i32
  %max135 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 7, i32 2
  %shl.i374 = shl nuw i32 1, %conv134
  %160 = ptrtoint ptr %max135 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %shl.i374, ptr %max135, align 4
  %add.i375 = add nuw nsw i32 %conv134, 7
  %div2.i376 = lshr i32 %add.i375, 3
  %size137 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 7, i32 1
  %161 = ptrtoint ptr %size137 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %div2.i376, ptr %size137, align 4
  %162 = load i8, ptr %arrayidx128, align 1
  %163 = lshr i8 %162, 5
  %164 = zext i8 %163 to i32
  %bofs142 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 7, i32 3
  %165 = ptrtoint ptr %bofs142 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %bofs142, align 4
  %arrayidx125.1 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 8
  %arrayidx128.1 = getelementptr %struct.cyttsp4_opcfg, ptr %153, i32 0, i32 13, i32 1
  %166 = ptrtoint ptr %arrayidx128.1 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx128.1, align 1
  %168 = and i8 %167, 31
  %and131.1 = zext i8 %168 to i32
  %169 = ptrtoint ptr %arrayidx125.1 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %and131.1, ptr %arrayidx125.1, align 4
  %size133.1 = getelementptr %struct.cyttsp4_opcfg, ptr %153, i32 0, i32 13, i32 1, i32 1
  %170 = ptrtoint ptr %size133.1 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %size133.1, align 1
  %conv134.1 = zext i8 %171 to i32
  %max135.1 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 8, i32 2
  %shl.i374.1 = shl nuw i32 1, %conv134.1
  %172 = ptrtoint ptr %max135.1 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %shl.i374.1, ptr %max135.1, align 4
  %add.i375.1 = add nuw nsw i32 %conv134.1, 7
  %div2.i376.1 = lshr i32 %add.i375.1, 3
  %size137.1 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 8, i32 1
  %173 = ptrtoint ptr %size137.1 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %div2.i376.1, ptr %size137.1, align 4
  %174 = load i8, ptr %arrayidx128.1, align 1
  %175 = lshr i8 %174, 5
  %176 = zext i8 %175 to i32
  %bofs142.1 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 8, i32 3
  %177 = ptrtoint ptr %bofs142.1 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %bofs142.1, align 4
  %arrayidx125.2 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 9
  %arrayidx128.2 = getelementptr %struct.cyttsp4_opcfg, ptr %153, i32 0, i32 13, i32 2
  %178 = ptrtoint ptr %arrayidx128.2 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx128.2, align 1
  %180 = and i8 %179, 31
  %and131.2 = zext i8 %180 to i32
  %181 = ptrtoint ptr %arrayidx125.2 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %and131.2, ptr %arrayidx125.2, align 4
  %size133.2 = getelementptr %struct.cyttsp4_opcfg, ptr %153, i32 0, i32 13, i32 2, i32 1
  %182 = ptrtoint ptr %size133.2 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %size133.2, align 1
  %conv134.2 = zext i8 %183 to i32
  %max135.2 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 9, i32 2
  %shl.i374.2 = shl nuw i32 1, %conv134.2
  %184 = ptrtoint ptr %max135.2 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %shl.i374.2, ptr %max135.2, align 4
  %add.i375.2 = add nuw nsw i32 %conv134.2, 7
  %div2.i376.2 = lshr i32 %add.i375.2, 3
  %size137.2 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 9, i32 1
  %185 = ptrtoint ptr %size137.2 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %div2.i376.2, ptr %size137.2, align 4
  %186 = load i8, ptr %arrayidx128.2, align 1
  %187 = lshr i8 %186, 5
  %188 = zext i8 %187 to i32
  %bofs142.2 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 9, i32 3
  %189 = ptrtoint ptr %bofs142.2 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %bofs142.2, align 4
  br label %do.body152.preheader

do.body152.preheader:                             ; preds = %for.body122.preheader, %if.end36.do.body152.preheader_crit_edge
  br label %do.body152

do.body152:                                       ; preds = %for.inc246.do.body152_crit_edge, %do.body152.preheader
  %abs.2385 = phi i32 [ %inc247, %for.inc246.do.body152_crit_edge ], [ 0, %do.body152.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_get_opcfg_data, %if.then156)) #8
          to label %do.body162 [label %if.then156], !srcloc !615

if.then156:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #10
  %190 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cd, align 4
  %arrayidx158 = getelementptr [11 x ptr], ptr @cyttsp4_tch_abs_string, i32 0, i32 %abs.2385
  %192 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx158, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug230, ptr noundef %191, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.209, ptr noundef %193) #8
  br label %do.body162

do.body162:                                       ; preds = %if.then156, %do.body152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_get_opcfg_data, %if.then174)) #8
          to label %do.body183 [label %if.then174], !srcloc !615

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #10
  %194 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cd, align 4
  %arrayidx178 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 %abs.2385
  %196 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx178, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug231, ptr noundef %195, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.209, i32 noundef %197) #8
  br label %do.body183

do.body183:                                       ; preds = %if.then174, %do.body162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_get_opcfg_data, %if.then195)) #8
          to label %do.body204 [label %if.then195], !srcloc !615

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  %198 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cd, align 4
  %size200 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 %abs.2385, i32 1
  %200 = ptrtoint ptr %size200 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %size200, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug232, ptr noundef %199, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.209, i32 noundef %201) #8
  br label %do.body204

do.body204:                                       ; preds = %if.then195, %do.body183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_get_opcfg_data, %if.then216)) #8
          to label %do.body225 [label %if.then216], !srcloc !615

if.then216:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #10
  %202 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cd, align 4
  %max221 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 %abs.2385, i32 2
  %204 = ptrtoint ptr %max221 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %max221, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug233, ptr noundef %203, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.209, i32 noundef %205) #8
  br label %do.body225

do.body225:                                       ; preds = %if.then216, %do.body204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_get_opcfg_data, %if.then237)) #8
          to label %for.inc246 [label %if.then237], !srcloc !615

if.then237:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #10
  %206 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cd, align 4
  %bofs242 = getelementptr %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 31, i32 %abs.2385, i32 3
  %208 = ptrtoint ptr %bofs242 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %bofs242, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug234, ptr noundef %207, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.209, i32 noundef %209) #8
  br label %for.inc246

for.inc246:                                       ; preds = %if.then237, %do.body225
  %inc247 = add nuw nsw i32 %abs.2385, 1
  %exitcond.not = icmp eq i32 %inc247, 10
  br i1 %exitcond.not, label %for.end248, label %for.inc246.do.body152_crit_edge

for.inc246.do.body152_crit_edge:                  ; preds = %for.inc246
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body152

for.end248:                                       ; preds = %for.inc246
  call void @__sanitizer_cov_trace_pc() #10
  %210 = ptrtoint ptr %tt_stat_ofs68 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %tt_stat_ofs68, align 4
  %add251 = add i32 %211, 1
  %mode_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 10
  %212 = ptrtoint ptr %mode_size to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %add251, ptr %mode_size, align 4
  %213 = ptrtoint ptr %max_tchs78 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %max_tchs78, align 4
  %215 = ptrtoint ptr %opcfg to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load ptr, ptr %opcfg, align 1
  %tch_rec_size257 = getelementptr inbounds %struct.cyttsp4_opcfg, ptr %216, i32 0, i32 8
  %217 = ptrtoint ptr %tch_rec_size257 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %tch_rec_size257, align 1
  %conv258 = zext i8 %218 to i32
  %mul259 = mul i32 %214, %conv258
  %data_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 11
  %219 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %mul259, ptr %data_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end248, %do.end34, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end17 ], [ %call.i, %do.end34 ], [ 0, %for.end248 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyttsp4_si_put_log_data(ptr noundef readonly %cd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !615

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 4
  %cydata_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 18
  %2 = ptrtoint ptr %cydata_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cydata_ofs, align 4
  %cydata_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 24
  %4 = ptrtoint ptr %cydata_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cydata_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug235, ptr noundef %1, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.245, i32 noundef %3, i32 noundef %5) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then16)) #8
          to label %do.body23 [label %if.then16], !srcloc !615

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cd, align 4
  %test_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 19
  %8 = ptrtoint ptr %test_ofs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %test_ofs, align 4
  %test_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 25
  %10 = ptrtoint ptr %test_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %test_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug236, ptr noundef %7, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.245, i32 noundef %9, i32 noundef %11) #8
  br label %do.body23

do.body23:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then35)) #8
          to label %do.body42 [label %if.then35], !srcloc !615

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cd, align 4
  %pcfg_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 20
  %14 = ptrtoint ptr %pcfg_ofs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcfg_ofs, align 4
  %pcfg_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 26
  %16 = ptrtoint ptr %pcfg_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pcfg_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug237, ptr noundef %13, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.245, i32 noundef %15, i32 noundef %17) #8
  br label %do.body42

do.body42:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then54)) #8
          to label %do.body61 [label %if.then54], !srcloc !615

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cd, align 4
  %opcfg_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 21
  %20 = ptrtoint ptr %opcfg_ofs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opcfg_ofs, align 4
  %opcfg_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 27
  %22 = ptrtoint ptr %opcfg_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opcfg_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug238, ptr noundef %19, ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.245, i32 noundef %21, i32 noundef %23) #8
  br label %do.body61

do.body61:                                        ; preds = %if.then54, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then73)) #8
          to label %do.body80 [label %if.then73], !srcloc !615

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cd, align 4
  %ddata_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 22
  %26 = ptrtoint ptr %ddata_ofs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ddata_ofs, align 4
  %ddata_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 28
  %28 = ptrtoint ptr %ddata_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ddata_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug239, ptr noundef %25, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.245, i32 noundef %27, i32 noundef %29) #8
  br label %do.body80

do.body80:                                        ; preds = %if.then73, %do.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then92)) #8
          to label %do.body99 [label %if.then92], !srcloc !615

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cd, align 4
  %mdata_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 23
  %32 = ptrtoint ptr %mdata_ofs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mdata_ofs, align 4
  %mdata_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 29
  %34 = ptrtoint ptr %mdata_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mdata_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug240, ptr noundef %31, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.245, i32 noundef %33, i32 noundef %35) #8
  br label %do.body99

do.body99:                                        ; preds = %if.then92, %do.body80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then111)) #8
          to label %do.body117 [label %if.then111], !srcloc !615

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cd, align 4
  %cmd_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 1
  %38 = ptrtoint ptr %cmd_ofs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cmd_ofs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug241, ptr noundef %37, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.245, i32 noundef %39) #8
  br label %do.body117

do.body117:                                       ; preds = %if.then111, %do.body99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then129)) #8
          to label %do.body135 [label %if.then129], !srcloc !615

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cd, align 4
  %rep_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 2
  %42 = ptrtoint ptr %rep_ofs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rep_ofs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug242, ptr noundef %41, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.245, i32 noundef %43) #8
  br label %do.body135

do.body135:                                       ; preds = %if.then129, %do.body117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then147)) #8
          to label %do.body153 [label %if.then147], !srcloc !615

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cd, align 4
  %rep_sz = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 3
  %46 = ptrtoint ptr %rep_sz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rep_sz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug243, ptr noundef %45, ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.245, i32 noundef %47) #8
  br label %do.body153

do.body153:                                       ; preds = %if.then147, %do.body135
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then165)) #8
          to label %do.body171 [label %if.then165], !srcloc !615

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cd, align 4
  %num_btns = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 4
  %50 = ptrtoint ptr %num_btns to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_btns, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug244, ptr noundef %49, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.245, i32 noundef %51) #8
  br label %do.body171

do.body171:                                       ; preds = %if.then165, %do.body153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then183)) #8
          to label %do.body189 [label %if.then183], !srcloc !615

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cd, align 4
  %num_btn_regs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 5
  %54 = ptrtoint ptr %num_btn_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_btn_regs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug245, ptr noundef %53, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.245, i32 noundef %55) #8
  br label %do.body189

do.body189:                                       ; preds = %if.then183, %do.body171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then201)) #8
          to label %do.body207 [label %if.then201], !srcloc !615

if.then201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cd, align 4
  %tt_stat_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 6
  %58 = ptrtoint ptr %tt_stat_ofs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tt_stat_ofs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug246, ptr noundef %57, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.245, i32 noundef %59) #8
  br label %do.body207

do.body207:                                       ; preds = %if.then201, %do.body189
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then219)) #8
          to label %do.body225 [label %if.then219], !srcloc !615

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cd, align 4
  %tch_rec_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 7
  %62 = ptrtoint ptr %tch_rec_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tch_rec_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug247, ptr noundef %61, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.245, i32 noundef %63) #8
  br label %do.body225

do.body225:                                       ; preds = %if.then219, %do.body207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then237)) #8
          to label %do.body243 [label %if.then237], !srcloc !615

if.then237:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cd, align 4
  %max_tchs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 9
  %66 = ptrtoint ptr %max_tchs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_tchs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug248, ptr noundef %65, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.245, i32 noundef %67) #8
  br label %do.body243

do.body243:                                       ; preds = %if.then237, %do.body225
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then255)) #8
          to label %do.body261 [label %if.then255], !srcloc !615

if.then255:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cd, align 4
  %mode_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 10
  %70 = ptrtoint ptr %mode_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mode_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug249, ptr noundef %69, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.245, i32 noundef %71) #8
  br label %do.body261

do.body261:                                       ; preds = %if.then255, %do.body243
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then273)) #8
          to label %do.body279 [label %if.then273], !srcloc !615

if.then273:                                       ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cd, align 4
  %data_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 11
  %74 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug250, ptr noundef %73, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.245, i32 noundef %75) #8
  br label %do.body279

do.body279:                                       ; preds = %if.then273, %do.body261
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then291)) #8
          to label %do.body297 [label %if.then291], !srcloc !615

if.then291:                                       ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cd, align 4
  %map_sz = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 12
  %78 = ptrtoint ptr %map_sz to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %map_sz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug251, ptr noundef %77, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.245, i32 noundef %79) #8
  br label %do.body297

do.body297:                                       ; preds = %if.then291, %do.body279
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then309)) #8
          to label %do.body315 [label %if.then309], !srcloc !615

if.then309:                                       ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cd, align 4
  %btn_rec_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 32
  %82 = ptrtoint ptr %btn_rec_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %btn_rec_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug252, ptr noundef %81, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.245, i32 noundef %83) #8
  br label %do.body315

do.body315:                                       ; preds = %if.then309, %do.body297
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then327)) #8
          to label %do.body333 [label %if.then327], !srcloc !615

if.then327:                                       ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cd, align 4
  %btn_diff_ofs = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 33
  %86 = ptrtoint ptr %btn_diff_ofs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %btn_diff_ofs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug253, ptr noundef %85, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.245, i32 noundef %87) #8
  br label %do.body333

do.body333:                                       ; preds = %if.then327, %do.body315
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then345)) #8
          to label %do.body351 [label %if.then345], !srcloc !615

if.then345:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cd, align 4
  %btn_diff_size = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 34
  %90 = ptrtoint ptr %btn_diff_size to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %btn_diff_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug254, ptr noundef %89, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.245, i32 noundef %91) #8
  br label %do.body351

do.body351:                                       ; preds = %if.then345, %do.body333
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then363)) #8
          to label %do.body371 [label %if.then363], !srcloc !615

if.then363:                                       ; preds = %do.body351
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cd, align 4
  %max_x = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 13
  %94 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_x, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug255, ptr noundef %93, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.245, i32 noundef %95, i32 noundef %95) #8
  br label %do.body371

do.body371:                                       ; preds = %if.then363, %do.body351
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then383)) #8
          to label %do.body391 [label %if.then383], !srcloc !615

if.then383:                                       ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cd, align 4
  %x_origin = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 14
  %98 = ptrtoint ptr %x_origin to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %x_origin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp = icmp eq i32 %99, 0
  %cond = select i1 %cmp, ptr @.str.268, ptr @.str.269
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug256, ptr noundef %97, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.245, i32 noundef %99, ptr noundef nonnull %cond) #8
  br label %do.body391

do.body391:                                       ; preds = %if.then383, %do.body371
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then403)) #8
          to label %do.body411 [label %if.then403], !srcloc !615

if.then403:                                       ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cd, align 4
  %max_y = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 15
  %102 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_y, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug257, ptr noundef %101, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.245, i32 noundef %103, i32 noundef %103) #8
  br label %do.body411

do.body411:                                       ; preds = %if.then403, %do.body391
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then423)) #8
          to label %do.body433 [label %if.then423], !srcloc !615

if.then423:                                       ; preds = %do.body411
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cd, align 4
  %y_origin = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 16
  %106 = ptrtoint ptr %y_origin to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %y_origin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp428 = icmp eq i32 %107, 0
  %cond429 = select i1 %cmp428, ptr @.str.272, ptr @.str.273
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug258, ptr noundef %105, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.245, i32 noundef %107, ptr noundef nonnull %cond429) #8
  br label %do.body433

do.body433:                                       ; preds = %if.then423, %do.body411
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then445)) #8
          to label %do.body453 [label %if.then445], !srcloc !615

if.then445:                                       ; preds = %do.body433
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cd, align 4
  %max_p = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 4, i32 17
  %110 = ptrtoint ptr %max_p to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_p, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug259, ptr noundef %109, ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.245, i32 noundef %111, i32 noundef %111) #8
  br label %do.body453

do.body453:                                       ; preds = %if.then445, %do.body433
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_si_put_log_data, %if.then465)) #8
          to label %do.end469 [label %if.then465], !srcloc !615

if.then465:                                       ; preds = %do.body453
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cd, align 4
  %xy_mode = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 7
  %114 = ptrtoint ptr %xy_mode to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %xy_mode, align 4
  %xy_data = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 12, i32 8
  %116 = ptrtoint ptr %xy_data to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %xy_data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug260, ptr noundef %113, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.245, ptr noundef %115, ptr noundef %117) #8
  br label %do.end469

do.end469:                                        ; preds = %if.then465, %do.body453
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp4_mt_open(ptr nocapture noundef readonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cyttsp4_mt_close(ptr nocapture noundef readonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report_lock = getelementptr inbounds %struct.cyttsp4_mt_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %report_lock, i32 noundef 0) #8
  %is_suspended = getelementptr inbounds %struct.cyttsp4_mt_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_suspended, align 4, !range !617
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %report_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp4_setup_input_device(ptr nocapture noundef readonly %cd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cd, align 4
  %md2 = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17
  %input = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evbit, align 4
  %or.i = or i32 %5, 8
  store i32 %or.i, ptr %evbit, align 4
  %6 = load ptr, ptr %input, align 4
  %evbit4 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %evbit4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %evbit4, align 4
  %or.i154 = or i32 %8, 4
  store i32 %or.i154, ptr %evbit4, align 4
  %9 = load ptr, ptr %input, align 4
  %evbit7 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %evbit7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %evbit7, align 4
  %or.i155 = or i32 %11, 2
  store i32 %or.i155, ptr %evbit7, align 4
  %si = getelementptr inbounds %struct.cyttsp4, ptr %cd, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %si, align 4
  %max_x9 = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %13, i32 0, i32 4, i32 13
  %14 = ptrtoint ptr %max_x9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_x9, align 4
  %max_y12 = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %13, i32 0, i32 4, i32 15
  %16 = ptrtoint ptr %max_y12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_y12, align 4
  %18 = ptrtoint ptr %md2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %md2, align 4
  %flags = getelementptr inbounds %struct.cyttsp4_mt_platform_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 4
  %22 = and i16 %21, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not = icmp eq i16 %22, 0
  %. = select i1 %tobool.not, i32 %15, i32 %17
  %.153 = select i1 %tobool.not, i32 %17, i32 %15
  %max_y.0 = add i32 %.153, -1
  %max_x.0 = add i32 %., -1
  %max_p18 = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %13, i32 0, i32 4, i32 17
  %23 = ptrtoint ptr %max_p18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_p18, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 4
  %size158 = getelementptr inbounds %struct.touch_framework, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %size158 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %size158, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %28)
  %29 = icmp ult i8 %28, 5
  br i1 %29, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %30 = phi ptr [ %63, %for.inc.for.body_crit_edge ], [ %26, %entry.for.body_crit_edge ]
  %i.0161 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load ptr, ptr %30, align 1
  %mul = mul nuw nsw i32 %i.0161, 5
  %arrayidx = getelementptr i16, ptr %32, i32 %mul
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 2
  %conv24 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp25.not = icmp eq i16 %34, -1
  br i1 %cmp25.not, label %for.body.for.inc_crit_edge, label %if.then27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then27:                                        ; preds = %for.body
  %35 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 8
  %rem.i = and i32 %conv24, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv24, 5
  %add.ptr.i = getelementptr i32, ptr %absbit, i32 %div2.i
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %or.i156 = or i32 %38, %shl.i
  store i32 %or.i156, ptr %add.ptr.i, align 4
  %39 = ptrtoint ptr %md2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %md2, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load ptr, ptr %42, align 1
  %add34 = add nuw nsw i32 %mul, 1
  %arrayidx35 = getelementptr i16, ptr %44, i32 %add34
  %45 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %46 to i32
  %add41 = add nuw nsw i32 %mul, 2
  %arrayidx42 = getelementptr i16, ptr %44, i32 %add41
  %47 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx42, align 2
  %conv43 = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0161)
  %cmp44 = icmp eq i32 %i.0161, 4
  br i1 %cmp44, label %if.then46, label %if.else49

if.then46:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %sub47 = sub nsw i32 %conv43, %conv36
  br label %if.end64

if.else49:                                        ; preds = %if.then27
  %49 = zext i32 %i.0161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %i.0161, label %if.end64.fold.split [
    i32 0, label %if.else49.if.end64_crit_edge
    i32 1, label %if.then56
    i32 2, label %if.then60
  ]

if.else49.if.end64_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then56:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then60:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end64.fold.split:                              ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end64:                                         ; preds = %if.end64.fold.split, %if.then60, %if.then56, %if.else49.if.end64_crit_edge, %if.then46
  %min.0 = phi i32 [ 0, %if.then46 ], [ %conv36, %if.then56 ], [ %conv36, %if.then60 ], [ %conv36, %if.else49.if.end64_crit_edge ], [ %conv36, %if.end64.fold.split ]
  %max.0 = phi i32 [ %sub47, %if.then46 ], [ %max_y.0, %if.then56 ], [ %24, %if.then60 ], [ %max_x.0, %if.else49.if.end64_crit_edge ], [ %conv43, %if.end64.fold.split ]
  %50 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input, align 4
  %add70 = add nuw nsw i32 %mul, 3
  %arrayidx71 = getelementptr i16, ptr %44, i32 %add70
  %52 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx71, align 2
  %conv72 = zext i16 %53 to i32
  %add77 = add nuw nsw i32 %mul, 4
  %arrayidx78 = getelementptr i16, ptr %44, i32 %add77
  %54 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx78, align 2
  %conv79 = zext i16 %55 to i32
  tail call void @input_set_abs_params(ptr noundef %51, i32 noundef %conv24, i32 noundef %min.0, i32 noundef %max.0, i32 noundef %conv72, i32 noundef %conv79) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp4_setup_input_device.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp4_setup_input_device, %if.then83)) #8
          to label %do.end [label %if.then83], !srcloc !615

if.then83:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp4_setup_input_device.__UNIQUE_ID_ddebug282, ptr noundef %1, ptr noundef nonnull @.str.297, ptr noundef nonnull @.str.296, i32 noundef %conv24, i32 noundef %min.0, i32 noundef %max.0) #8
  br label %do.end

do.end:                                           ; preds = %if.then83, %if.end64
  br i1 %cmp44, label %land.lhs.true, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %do.end
  %56 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %si, align 4
  %tch_rec_size = getelementptr inbounds %struct.cyttsp4_sysinfo, ptr %57, i32 0, i32 4, i32 7
  %58 = ptrtoint ptr %tch_rec_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tch_rec_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %59)
  %cmp89 = icmp ult i32 %59, 9
  br i1 %cmp89, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %do.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0161, 1
  %60 = ptrtoint ptr %md2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %md2, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %size = getelementptr inbounds %struct.touch_framework, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %size, align 1
  %66 = udiv i8 %65, 5
  %div = zext i8 %66 to i32
  %cmp = icmp ult i32 %inc, %div
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %67 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %input, align 4
  %69 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %si, align 4
  %max98 = getelementptr %struct.cyttsp4_sysinfo, ptr %70, i32 0, i32 4, i32 31, i32 3, i32 2
  %71 = ptrtoint ptr %max98 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max98, align 4
  %call99 = tail call i32 @input_mt_init_slots(ptr noundef %68, i32 noundef %72, i32 noundef 2) #8
  %73 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %input, align 4
  %call101 = tail call i32 @input_register_device(ptr noundef %74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %do.end107, label %for.end.if.end108_crit_edge

for.end.if.end108_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

do.end107:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.296, i32 noundef %call101) #11
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %for.end.if.end108_crit_edge
  ret i32 %call101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 292)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 292)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !307, !309, !311, !312, !313, !314, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !335, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !355, !356, !358, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !374, !375, !377, !378, !379, !381, !382, !383, !385, !386, !387, !388, !389, !391, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !407, !409, !410, !411, !413, !414, !415, !417, !418, !420, !421, !423, !424, !426, !427, !429, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !457, !458, !459, !461, !462, !463, !465, !466, !467, !468, !470, !471, !472, !474, !475, !476, !477, !478, !480, !481, !482, !484, !485, !487, !488, !490, !491, !493, !494, !496, !497, !499, !500, !502, !503, !505, !506, !508, !509, !511, !512, !514, !515, !517, !518, !520, !521, !523, !524, !526, !527, !529, !530, !532, !533, !535, !536, !538, !539, !541, !542, !544, !545, !546, !547, !549, !550, !552, !553, !554, !555, !557, !558, !560, !561, !563, !564, !565, !566, !568, !569, !570, !572, !573, !574, !576, !577, !578, !580, !581, !583, !584, !585, !587, !588, !590, !591, !592, !593, !595, !597, !598, !600, !601, !602, !604, !605}
!llvm.module.flags = !{!606, !607, !608, !609, !610, !611, !612, !613}
!llvm.ident = !{!614}

!0 = !{ptr @cyttsp4_pm_ops, !1, !"cyttsp4_pm_ops", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1882, i32 25}
!2 = !{ptr @__ksymtab_cyttsp4_pm_ops, !3, !"__ksymtab_cyttsp4_pm_ops", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1886, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2029, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cyttsp4_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @cyttsp4_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2036, i32 3}
!14 = !{ptr @cyttsp4_probe._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cyttsp4_probe._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @cyttsp4_probe._entry.8, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2043, i32 3}
!18 = !{ptr @cyttsp4_probe._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @cyttsp4_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2055, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cyttsp4_probe.__key.11, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2056, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cyttsp4_probe.__key.13, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2059, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cyttsp4_probe.__key.15, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2062, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cyttsp4_probe.__key.17, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2063, i32 2}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2076, i32 3}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cyttsp4_probe.__UNIQUE_ID_ddebug283, !35, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2079, i32 3}
!40 = !{ptr @cyttsp4_probe.__UNIQUE_ID_ddebug284, !39, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2083, i32 3}
!43 = !{ptr @cyttsp4_probe._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cyttsp4_probe._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2085, i32 2}
!47 = !{ptr @cyttsp4_probe.__UNIQUE_ID_ddebug285, !46, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2096, i32 3}
!50 = !{ptr @cyttsp4_probe._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cyttsp4_probe._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @cyttsp4_probe.__key.29, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2101, i32 2}
!54 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2111, i32 3}
!57 = !{ptr @cyttsp4_probe._entry.31, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cyttsp4_probe._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2118, i32 3}
!61 = !{ptr @cyttsp4_probe._entry.34, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @cyttsp4_probe._entry_ptr.36, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2141, i32 2}
!65 = !{ptr @cyttsp4_probe._entry.37, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cyttsp4_probe._entry_ptr.39, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @__ksymtab_cyttsp4_probe, !68, !"__ksymtab_cyttsp4_probe", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2144, i32 1}
!69 = !{ptr @__ksymtab_cyttsp4_remove, !70, !"__ksymtab_cyttsp4_remove", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2176, i32 1}
!71 = !{ptr @__UNIQUE_ID_file286, !72, !"__UNIQUE_ID_file286", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2178, i32 1}
!73 = !{ptr @__UNIQUE_ID_license287, !72, !"__UNIQUE_ID_license287", i1 false, i1 false}
!74 = !{ptr @__UNIQUE_ID_description288, !75, !"__UNIQUE_ID_description288", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2179, i32 1}
!76 = !{ptr @__UNIQUE_ID_author289, !77, !"__UNIQUE_ID_author289", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2180, i32 1}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1858, i32 3}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @cyttsp4_core_suspend._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @cyttsp4_core_suspend._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1755, i32 3}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @cyttsp4_core_sleep._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @cyttsp4_core_sleep._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1763, i32 3}
!90 = !{ptr @cyttsp4_core_sleep._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cyttsp4_core_sleep._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1300, i32 4}
!94 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @cyttsp4_request_exclusive._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @cyttsp4_request_exclusive._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1527, i32 3}
!99 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cyttsp4_core_sleep_._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @cyttsp4_core_sleep_._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1533, i32 3}
!104 = !{ptr @cyttsp4_core_sleep_._entry.51, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @cyttsp4_core_sleep_._entry_ptr.53, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1542, i32 3}
!108 = !{ptr @cyttsp4_core_sleep_._entry.54, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @cyttsp4_core_sleep_._entry_ptr.56, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1548, i32 3}
!112 = !{ptr @cyttsp4_core_sleep_.__UNIQUE_ID_ddebug277, !111, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1551, i32 3}
!115 = !{ptr @cyttsp4_core_sleep_.__UNIQUE_ID_ddebug278, !114, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1555, i32 3}
!118 = !{ptr @cyttsp4_core_sleep_._entry.59, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cyttsp4_core_sleep_._entry_ptr.61, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1874, i32 3}
!122 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @cyttsp4_core_resume._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @cyttsp4_core_resume._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1833, i32 3}
!127 = !{ptr @cyttsp4_core_wake._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @cyttsp4_core_wake._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @cyttsp4_core_wake._entry.65, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1841, i32 3}
!131 = !{ptr @cyttsp4_core_wake._entry_ptr.66, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1788, i32 3}
!134 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @cyttsp4_core_wake_.__UNIQUE_ID_ddebug280, !133, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!136 = !{ptr @cyttsp4_core_wake_.__UNIQUE_ID_ddebug281, !137, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!137 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1791, i32 3}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1795, i32 3}
!140 = !{ptr @cyttsp4_core_wake_._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @cyttsp4_core_wake_._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1809, i32 3}
!144 = !{ptr @cyttsp4_core_wake_._entry.70, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @cyttsp4_core_wake_._entry_ptr.72, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 744, i32 3}
!148 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug261, !147, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 746, i32 3}
!152 = !{ptr @cyttsp4_queue_startup_.__UNIQUE_ID_ddebug262, !151, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1724, i32 3}
!155 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @cyttsp4_startup_work_function._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @cyttsp4_startup_work_function._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1480, i32 3}
!160 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @cyttsp4_watchdog_work._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @cyttsp4_watchdog_work._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1488, i32 3}
!165 = !{ptr @cyttsp4_watchdog_work._entry.80, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @cyttsp4_watchdog_work._entry_ptr.82, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 93, i32 3}
!169 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @cyttsp4_load_status_regs._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @cyttsp4_load_status_regs._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1096, i32 2}
!174 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @cyttsp4_irq.__UNIQUE_ID_ddebug270, !173, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!176 = !{ptr @cyttsp4_irq._entry, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1106, i32 3}
!178 = !{ptr @cyttsp4_irq._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1122, i32 3}
!181 = !{ptr @cyttsp4_irq.__UNIQUE_ID_ddebug271, !180, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1158, i32 3}
!184 = !{ptr @cyttsp4_irq._entry.88, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @cyttsp4_irq._entry_ptr.90, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1181, i32 3}
!188 = !{ptr @cyttsp4_irq.__UNIQUE_ID_ddebug272, !187, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1193, i32 3}
!191 = !{ptr @cyttsp4_irq._entry.92, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @cyttsp4_irq._entry_ptr.94, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1195, i32 3}
!195 = !{ptr @cyttsp4_irq.__UNIQUE_ID_ddebug273, !194, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!196 = !{ptr @cyttsp4_irq._entry.96, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1221, i32 4}
!198 = !{ptr @cyttsp4_irq._entry_ptr.97, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1233, i32 3}
!201 = !{ptr @cyttsp4_irq._entry.98, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @cyttsp4_irq._entry_ptr.100, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1072, i32 3}
!205 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @cyttsp4_mt_attention._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @cyttsp4_mt_attention._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.103, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1002, i32 3}
!210 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @cyttsp4_xy_worker._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @cyttsp4_xy_worker._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1013, i32 4}
!215 = !{ptr @cyttsp4_xy_worker._entry.105, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @cyttsp4_xy_worker._entry_ptr.107, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1025, i32 3}
!219 = !{ptr @cyttsp4_xy_worker.__UNIQUE_ID_ddebug268, !218, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1031, i32 3}
!222 = !{ptr @cyttsp4_xy_worker.__UNIQUE_ID_ddebug269, !221, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1034, i32 3}
!225 = !{ptr @cyttsp4_xy_worker._entry.110, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @cyttsp4_xy_worker._entry_ptr.112, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 884, i32 4}
!229 = !{ptr @.str.114, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @cyttsp4_get_mt_touches._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @cyttsp4_get_mt_touches._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.115, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 898, i32 5}
!234 = !{ptr @cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug265, !233, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 939, i32 4}
!237 = !{ptr @cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug266, !236, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!238 = !{ptr @.str.117, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 950, i32 4}
!240 = !{ptr @cyttsp4_get_mt_touches.__UNIQUE_ID_ddebug267, !239, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!241 = !{ptr @.str.118, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 116, i32 3}
!243 = !{ptr @.str.119, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @cyttsp4_handshake._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @cyttsp4_handshake._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.120, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1693, i32 3}
!248 = !{ptr @cyttsp4_startup._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @cyttsp4_startup._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @cyttsp4_startup._entry.121, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1702, i32 3}
!252 = !{ptr @cyttsp4_startup._entry_ptr.122, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1588, i32 3}
!255 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @cyttsp4_startup_.__UNIQUE_ID_ddebug279, !254, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!257 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1594, i32 3}
!259 = !{ptr @cyttsp4_startup_._entry, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @cyttsp4_startup_._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1610, i32 3}
!263 = !{ptr @cyttsp4_startup_._entry.126, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @cyttsp4_startup_._entry_ptr.128, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.130, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1625, i32 4}
!267 = !{ptr @cyttsp4_startup_._entry.129, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @cyttsp4_startup_._entry_ptr.131, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1627, i32 4}
!271 = !{ptr @cyttsp4_startup_._entry.132, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @cyttsp4_startup_._entry_ptr.134, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1648, i32 3}
!275 = !{ptr @cyttsp4_startup_._entry.135, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @cyttsp4_startup_._entry_ptr.137, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.139, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1657, i32 3}
!279 = !{ptr @cyttsp4_startup_._entry.138, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @cyttsp4_startup_._entry_ptr.140, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.141, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1384, i32 2}
!283 = !{ptr @.str.142, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @cyttsp4_reset_and_wait.__UNIQUE_ID_ddebug274, !282, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!285 = !{ptr @.str.143, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1389, i32 3}
!287 = !{ptr @cyttsp4_reset_and_wait._entry, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @cyttsp4_reset_and_wait._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.144, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 138, i32 3}
!291 = !{ptr @.str.145, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @cyttsp4_hw_hard_reset.__UNIQUE_ID_ddebug228, !290, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!293 = !{ptr @.str.146, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 141, i32 2}
!295 = !{ptr @cyttsp4_hw_hard_reset._entry, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @cyttsp4_hw_hard_reset._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.147, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 127, i32 3}
!299 = !{ptr @.str.148, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @cyttsp4_hw_soft_reset._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @cyttsp4_hw_soft_reset._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.149, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1350, i32 3}
!304 = !{ptr @.str.150, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @cyttsp4_wait_bl_heartbeat._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @cyttsp4_wait_bl_heartbeat._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @ldr_exit, !308, !"ldr_exit", i1 false, i1 false}
!308 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 47, i32 17}
!309 = !{ptr @.str.151, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1367, i32 3}
!311 = !{ptr @.str.152, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @cyttsp4_wait_sysinfo_mode._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @cyttsp4_wait_sysinfo_mode._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @ldr_err_app, !315, !"ldr_err_app", i1 false, i1 false}
!315 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 51, i32 17}
!316 = !{ptr @.str.153, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 722, i32 3}
!318 = !{ptr @.str.154, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @cyttsp4_get_sysinfo_regs._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @cyttsp4_get_sysinfo_regs._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.156, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 732, i32 3}
!323 = !{ptr @cyttsp4_get_sysinfo_regs._entry.155, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @cyttsp4_get_sysinfo_regs._entry_ptr.157, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.158, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 170, i32 3}
!327 = !{ptr @.str.159, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @cyttsp4_si_data_offsets._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @cyttsp4_si_data_offsets._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.160, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 209, i32 3}
!332 = !{ptr @.str.161, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @cyttsp4_si_get_cydata._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @cyttsp4_si_get_cydata._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.162, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 216, i32 2}
!337 = !{ptr @cyttsp4_si_get_cydata.__UNIQUE_ID_ddebug229, !336, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!338 = !{ptr @.str.164, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 221, i32 3}
!340 = !{ptr @cyttsp4_si_get_cydata._entry.163, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @cyttsp4_si_get_cydata._entry_ptr.165, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.167, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 235, i32 3}
!344 = !{ptr @cyttsp4_si_get_cydata._entry.166, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @cyttsp4_si_get_cydata._entry_ptr.168, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.170, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 244, i32 3}
!348 = !{ptr @cyttsp4_si_get_cydata._entry.169, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @cyttsp4_si_get_cydata._entry_ptr.171, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @cyttsp4_si_get_cydata._entry.172, !351, !"_entry", i1 false, i1 false}
!351 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 256, i32 3}
!352 = !{ptr @cyttsp4_si_get_cydata._entry_ptr.173, !351, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @cyttsp4_si_get_cydata._entry.174, !354, !"_entry", i1 false, i1 false}
!354 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 269, i32 3}
!355 = !{ptr @cyttsp4_si_get_cydata._entry_ptr.175, !354, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.176, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 286, i32 3}
!358 = !{ptr @.str.177, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @cyttsp4_si_get_test_data._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @cyttsp4_si_get_test_data._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.179, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 296, i32 3}
!363 = !{ptr @cyttsp4_si_get_test_data._entry.178, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @cyttsp4_si_get_test_data._entry_ptr.180, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.182, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 305, i32 3}
!367 = !{ptr @cyttsp4_si_get_test_data._entry.181, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @cyttsp4_si_get_test_data._entry_ptr.183, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.185, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 315, i32 3}
!371 = !{ptr @.str.186, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @cyttsp4_si_get_test_data._entry.184, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @cyttsp4_si_get_test_data._entry_ptr.187, !370, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.188, !370, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @cyttsp4_si_get_test_data._entry.189, !376, !"_entry", i1 false, i1 false}
!376 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 321, i32 3}
!377 = !{ptr @cyttsp4_si_get_test_data._entry_ptr.190, !376, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.191, !376, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @cyttsp4_si_get_test_data._entry.192, !380, !"_entry", i1 false, i1 false}
!380 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 327, i32 3}
!381 = !{ptr @cyttsp4_si_get_test_data._entry_ptr.193, !380, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.194, !380, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.196, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 331, i32 2}
!385 = !{ptr @cyttsp4_si_get_test_data._entry.195, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @cyttsp4_si_get_test_data._entry_ptr.197, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.198, !384, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.199, !384, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.200, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 345, i32 3}
!391 = !{ptr @.str.201, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @cyttsp4_si_get_pcfg_data._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @cyttsp4_si_get_pcfg_data._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.203, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 355, i32 3}
!396 = !{ptr @cyttsp4_si_get_pcfg_data._entry.202, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @cyttsp4_si_get_pcfg_data._entry_ptr.204, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.206, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 364, i32 3}
!400 = !{ptr @cyttsp4_si_get_pcfg_data._entry.205, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @cyttsp4_si_get_pcfg_data._entry_ptr.207, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.208, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 397, i32 3}
!404 = !{ptr @.str.209, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @cyttsp4_si_get_opcfg_data._entry, !403, !"_entry", i1 false, i1 false}
!406 = !{ptr @cyttsp4_si_get_opcfg_data._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.211, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 407, i32 3}
!409 = !{ptr @cyttsp4_si_get_opcfg_data._entry.210, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @cyttsp4_si_get_opcfg_data._entry_ptr.212, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.214, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 416, i32 3}
!413 = !{ptr @cyttsp4_si_get_opcfg_data._entry.213, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @cyttsp4_si_get_opcfg_data._entry_ptr.215, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.216, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 464, i32 3}
!417 = !{ptr @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug230, !416, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!418 = !{ptr @.str.217, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 466, i32 3}
!420 = !{ptr @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug231, !419, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!421 = !{ptr @.str.218, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 468, i32 3}
!423 = !{ptr @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug232, !422, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!424 = !{ptr @.str.219, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 470, i32 3}
!426 = !{ptr @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug233, !425, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!427 = !{ptr @.str.220, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 472, i32 3}
!429 = !{ptr @cyttsp4_si_get_opcfg_data.__UNIQUE_ID_ddebug234, !428, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!430 = !{ptr @.str.221, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 34, i32 15}
!432 = !{ptr @.str.222, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 35, i32 15}
!434 = !{ptr @.str.223, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 36, i32 15}
!436 = !{ptr @.str.224, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 37, i32 15}
!438 = !{ptr @.str.225, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 38, i32 15}
!440 = !{ptr @.str.226, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 39, i32 15}
!442 = !{ptr @.str.227, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 40, i32 15}
!444 = !{ptr @.str.228, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 41, i32 17}
!446 = !{ptr @.str.229, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 42, i32 17}
!448 = !{ptr @.str.230, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 43, i32 16}
!450 = !{ptr @.str.231, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 44, i32 21}
!452 = !{ptr @cyttsp4_tch_abs_string, !453, !"cyttsp4_tch_abs_string", i1 false, i1 false}
!453 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 33, i32 27}
!454 = !{ptr @.str.232, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 496, i32 3}
!456 = !{ptr @.str.233, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @cyttsp4_si_get_ddata._entry, !455, !"_entry", i1 false, i1 false}
!458 = !{ptr @cyttsp4_si_get_ddata._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.235, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 504, i32 3}
!461 = !{ptr @cyttsp4_si_get_ddata._entry.234, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @cyttsp4_si_get_ddata._entry_ptr.236, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.237, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 523, i32 3}
!465 = !{ptr @.str.238, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @cyttsp4_si_get_mdata._entry, !464, !"_entry", i1 false, i1 false}
!467 = !{ptr @cyttsp4_si_get_mdata._entry_ptr, !464, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.240, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 531, i32 3}
!470 = !{ptr @cyttsp4_si_get_mdata._entry.239, !469, !"_entry", i1 false, i1 false}
!471 = !{ptr @cyttsp4_si_get_mdata._entry_ptr.241, !469, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.242, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 556, i32 4}
!474 = !{ptr @.str.243, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @cyttsp4_si_get_btn_data._entry, !473, !"_entry", i1 false, i1 false}
!476 = !{ptr @cyttsp4_si_get_btn_data._entry_ptr, !473, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.244, !473, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @.str.245, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 621, i32 2}
!480 = !{ptr @.str.246, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug235, !479, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!482 = !{ptr @.str.247, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 623, i32 2}
!484 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug236, !483, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!485 = !{ptr @.str.248, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 625, i32 2}
!487 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug237, !486, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!488 = !{ptr @.str.249, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 627, i32 2}
!490 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug238, !489, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!491 = !{ptr @.str.250, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 629, i32 2}
!493 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug239, !492, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!494 = !{ptr @.str.251, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 631, i32 2}
!496 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug240, !495, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!497 = !{ptr @.str.252, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 634, i32 2}
!499 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug241, !498, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!500 = !{ptr @.str.253, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 636, i32 2}
!502 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug242, !501, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!503 = !{ptr @.str.254, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 638, i32 2}
!505 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug243, !504, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!506 = !{ptr @.str.255, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 640, i32 2}
!508 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug244, !507, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!509 = !{ptr @.str.256, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 642, i32 2}
!511 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug245, !510, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!512 = !{ptr @.str.257, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 644, i32 2}
!514 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug246, !513, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!515 = !{ptr @.str.258, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 646, i32 2}
!517 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug247, !516, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!518 = !{ptr @.str.259, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 648, i32 2}
!520 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug248, !519, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!521 = !{ptr @.str.260, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 650, i32 2}
!523 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug249, !522, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!524 = !{ptr @.str.261, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 652, i32 2}
!526 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug250, !525, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!527 = !{ptr @.str.262, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 654, i32 2}
!529 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug251, !528, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!530 = !{ptr @.str.263, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 657, i32 2}
!532 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug252, !531, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!533 = !{ptr @.str.264, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 659, i32 2}
!535 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug253, !534, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!536 = !{ptr @.str.265, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 661, i32 2}
!538 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug254, !537, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!539 = !{ptr @.str.266, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 664, i32 2}
!541 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug255, !540, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!542 = !{ptr @.str.267, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 666, i32 2}
!544 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug256, !543, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!545 = !{ptr @.str.268, !543, !"<string literal>", i1 false, i1 false}
!546 = !{ptr @.str.269, !543, !"<string literal>", i1 false, i1 false}
!547 = !{ptr @.str.270, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 670, i32 2}
!549 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug257, !548, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!550 = !{ptr @.str.271, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 672, i32 2}
!552 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug258, !551, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!553 = !{ptr @.str.272, !551, !"<string literal>", i1 false, i1 false}
!554 = !{ptr @.str.273, !551, !"<string literal>", i1 false, i1 false}
!555 = !{ptr @.str.274, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 676, i32 2}
!557 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug259, !556, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!558 = !{ptr @.str.275, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 679, i32 2}
!560 = !{ptr @cyttsp4_si_put_log_data.__UNIQUE_ID_ddebug260, !559, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!561 = !{ptr @.str.276, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1418, i32 3}
!563 = !{ptr @.str.277, !562, !"<string literal>", i1 false, i1 false}
!564 = !{ptr @cyttsp4_set_mode._entry, !562, !"_entry", i1 false, i1 false}
!565 = !{ptr @cyttsp4_set_mode._entry_ptr, !562, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @.str.278, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1424, i32 2}
!568 = !{ptr @cyttsp4_set_mode.__UNIQUE_ID_ddebug275, !567, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!569 = !{ptr @.str.279, !567, !"<string literal>", i1 false, i1 false}
!570 = !{ptr @.str.281, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1432, i32 3}
!572 = !{ptr @cyttsp4_set_mode._entry.280, !571, !"_entry", i1 false, i1 false}
!573 = !{ptr @cyttsp4_set_mode._entry_ptr.282, !571, !"_entry_ptr", i1 false, i1 false}
!574 = !{ptr @.str.284, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1445, i32 3}
!576 = !{ptr @cyttsp4_set_mode._entry.283, !575, !"_entry", i1 false, i1 false}
!577 = !{ptr @cyttsp4_set_mode._entry_ptr.285, !575, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @.str.286, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1454, i32 2}
!580 = !{ptr @cyttsp4_set_mode.__UNIQUE_ID_ddebug276, !579, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!581 = !{ptr @cyttsp4_set_mode._entry.287, !582, !"_entry", i1 false, i1 false}
!582 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1458, i32 3}
!583 = !{ptr @cyttsp4_set_mode._entry_ptr.288, !582, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @.str.289, !582, !"<string literal>", i1 false, i1 false}
!585 = !{ptr @cyttsp4_mt_probe.__key, !586, !"__key", i1 false, i1 false}
!586 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1982, i32 2}
!587 = !{ptr @.str.290, !586, !"<string literal>", i1 false, i1 false}
!588 = !{ptr @.str.291, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1989, i32 3}
!590 = !{ptr @.str.292, !589, !"<string literal>", i1 false, i1 false}
!591 = !{ptr @cyttsp4_mt_probe._entry, !589, !"_entry", i1 false, i1 false}
!592 = !{ptr @cyttsp4_mt_probe._entry_ptr, !589, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @.str.293, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1996, i32 42}
!595 = !{ptr @cyttsp4_mt_probe._entry.294, !596, !"_entry", i1 false, i1 false}
!596 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 2016, i32 2}
!597 = !{ptr @cyttsp4_mt_probe._entry_ptr.295, !596, !"_entry_ptr", i1 false, i1 false}
!598 = !{ptr @.str.296, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1957, i32 4}
!600 = !{ptr @.str.297, !599, !"<string literal>", i1 false, i1 false}
!601 = !{ptr @cyttsp4_setup_input_device.__UNIQUE_ID_ddebug282, !599, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!602 = !{ptr @.str.298, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/input/touchscreen/cyttsp4_core.c", i32 1970, i32 3}
!604 = !{ptr @cyttsp4_setup_input_device._entry, !603, !"_entry", i1 false, i1 false}
!605 = !{ptr @cyttsp4_setup_input_device._entry_ptr, !603, !"_entry_ptr", i1 false, i1 false}
!606 = !{i32 1, !"wchar_size", i32 2}
!607 = !{i32 1, !"min_enum_size", i32 4}
!608 = !{i32 8, !"branch-target-enforcement", i32 0}
!609 = !{i32 8, !"sign-return-address", i32 0}
!610 = !{i32 8, !"sign-return-address-all", i32 0}
!611 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!612 = !{i32 7, !"uwtable", i32 1}
!613 = !{i32 7, !"frame-pointer", i32 2}
!614 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!615 = !{i64 2148342519, i64 2148342524, i64 2148342537, i64 2148342581, i64 2148342615, i64 2148342636}
!616 = !{!"auto-init"}
!617 = !{i8 0, i8 2}
