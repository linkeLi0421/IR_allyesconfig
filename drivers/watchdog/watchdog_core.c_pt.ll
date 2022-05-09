; ModuleID = '/llk/IR_all_yes/drivers/watchdog/watchdog_core.c_pt.bc'
source_filename = "../drivers/watchdog/watchdog_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+watchdog_init_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_watchdog_init_timeout\09\09\09\09"
module asm "\09.long\09__crc_watchdog_init_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_init_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_init_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_init_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+watchdog_set_restart_priority\22, \22a\22\09"
module asm "\09.weak\09__crc_watchdog_set_restart_priority\09\09\09\09"
module asm "\09.long\09__crc_watchdog_set_restart_priority\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_set_restart_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_set_restart_priority\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_set_restart_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+watchdog_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_watchdog_register_device\09\09\09\09"
module asm "\09.long\09__crc_watchdog_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+watchdog_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_watchdog_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_watchdog_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_watchdog_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_watchdog_register_device\09\09\09\09"
module asm "\09.long\09__crc_devm_watchdog_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_watchdog_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_watchdog_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_devm_watchdog_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_stop_on_reboot = internal constant [24 x i8] c"watchdog.stop_on_reboot\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@stop_on_reboot = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_stop_on_reboot = internal constant %struct.kernel_param { ptr @__param_str_stop_on_reboot, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @stop_on_reboot } }, section "__param", align 4
@__UNIQUE_ID_stop_on_reboottype288 = internal constant [37 x i8] c"watchdog.parmtype=stop_on_reboot:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stop_on_reboot289 = internal constant [80 x i8] c"watchdog.parm=stop_on_reboot:Stop watchdogs on reboot (0=keep watching, 1=stop)\00", section ".modinfo", align 1
@watchdog_init_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013watchdog: %s: driver supplied timeout (%u) out of range\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"watchdog_init_timeout\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/watchdog/watchdog_core.c\00", [63 x i8] zeroinitializer }, align 32
@watchdog_init_timeout._entry_ptr = internal global ptr @watchdog_init_timeout._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timeout-sec\00", [20 x i8] zeroinitializer }, align 32
@watchdog_init_timeout._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013watchdog: %s: DT supplied timeout (%u) out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@watchdog_init_timeout._entry_ptr.6 = internal global ptr @watchdog_init_timeout._entry.4, section ".printk_index", align 4
@watchdog_init_timeout._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014watchdog: %s: falling back to default timeout (%u)\0A\00", [42 x i8] zeroinitializer }, align 32
@watchdog_init_timeout._entry_ptr.9 = internal global ptr @watchdog_init_timeout._entry.7, section ".printk_index", align 4
@__kstrtab_watchdog_init_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_init_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_init_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_init_timeout to i32), ptr @__kstrtab_watchdog_init_timeout, ptr @__kstrtabns_watchdog_init_timeout }, section "___ksymtab_gpl+watchdog_init_timeout", align 4
@__kstrtab_watchdog_set_restart_priority = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_set_restart_priority = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_set_restart_priority = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_set_restart_priority to i32), ptr @__kstrtab_watchdog_set_restart_priority, ptr @__kstrtabns_watchdog_set_restart_priority }, section "___ksymtab_gpl+watchdog_set_restart_priority", align 4
@wtd_deferred_reg_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @wtd_deferred_reg_mutex, i64 52), ptr getelementptr (i8, ptr @wtd_deferred_reg_mutex, i64 52) }, ptr @wtd_deferred_reg_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@wtd_deferred_reg_done = internal global { i1, [31 x i8] } zeroinitializer, align 32
@watchdog_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013watchdog: %s: failed to register watchdog device (err = %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"watchdog_register_device\00", [39 x i8] zeroinitializer }, align 32
@watchdog_register_device._entry_ptr = internal global ptr @watchdog_register_device._entry, section ".printk_index", align 4
@__kstrtab_watchdog_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_register_device to i32), ptr @__kstrtab_watchdog_register_device, ptr @__kstrtabns_watchdog_register_device }, section "___ksymtab_gpl+watchdog_register_device", align 4
@__kstrtab_watchdog_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_unregister_device to i32), ptr @__kstrtab_watchdog_unregister_device, ptr @__kstrtabns_watchdog_unregister_device }, section "___ksymtab_gpl+watchdog_unregister_device", align 4
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"devm_watchdog_unregister_device\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_devm_watchdog_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_watchdog_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_watchdog_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_watchdog_register_device to i32), ptr @__kstrtab_devm_watchdog_register_device, ptr @__kstrtabns_devm_watchdog_register_device }, section "___ksymtab_gpl+devm_watchdog_register_device", align 4
@watchdog_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_watchdog__290_475_watchdog_init4s = internal global ptr @watchdog_init, section ".initcall4s.init", align 4
@__exitcall_watchdog_exit = internal global ptr @watchdog_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [52 x i8] c"watchdog.author=Alan Cox <alan@lxorguk.ukuu.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [49 x i8] c"watchdog.author=Wim Van Sebroeck <wim@iguana.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [48 x i8] c"watchdog.description=WatchDog Timer Driver Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [40 x i8] c"watchdog.file=drivers/watchdog/watchdog\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"watchdog.license=GPL\00", section ".modinfo", align 1
@watchdog_check_min_max_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016watchdog: Invalid min and max timeout values, resetting to 0!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"watchdog_check_min_max_timeout\00", [33 x i8] zeroinitializer }, align 32
@watchdog_check_min_max_timeout._entry_ptr = internal global ptr @watchdog_check_min_max_timeout._entry, section ".printk_index", align 4
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wtd_deferred_reg_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wtd_deferred_reg_mutex\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@__watchdog_register_device._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 299, ptr null, ptr null }, align 1
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014watchdog: watchdog%d: stop_on_reboot not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__watchdog_register_device\00", [37 x i8] zeroinitializer }, align 32
@__watchdog_register_device._entry_ptr = internal global ptr @__watchdog_register_device._entry, section ".printk_index", align 4
@__watchdog_register_device._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 306, ptr null, ptr null }, align 1
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013watchdog: watchdog%d: Cannot register reboot notifier (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@__watchdog_register_device._entry_ptr.22 = internal global ptr @__watchdog_register_device._entry.20, section ".printk_index", align 4
@__watchdog_register_device._entry.23 = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 320, ptr null, ptr null }, align 1
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014watchdog: watchdog%d: Cannot register restart handler (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@__watchdog_register_device._entry_ptr.25 = internal global ptr @__watchdog_register_device._entry.23, section ".printk_index", align 4
@__watchdog_register_device._entry.26 = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 329, ptr null, ptr null }, align 1
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014watchdog: watchdog%d: Cannot register pm handler (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@__watchdog_register_device._entry_ptr.28 = internal global ptr @__watchdog_register_device._entry.26, section ".printk_index", align 4
@wtd_deferred_reg_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @wtd_deferred_reg_list, ptr @wtd_deferred_reg_list }, [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"watchdog_ida.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.30 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"stop_on_reboot\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 43, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 131, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 138, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 143, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 148, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [23 x i8] c"wtd_deferred_reg_mutex\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"wtd_deferred_reg_done\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 361, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 424, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"watchdog_ida\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 92, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 60, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 257, i32 47 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 299, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 305, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 319, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 328, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"wtd_deferred_reg_list\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 61, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [36 x i8] c"../drivers/watchdog/watchdog_core.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 41, i32 8 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_stop_on_reboot289, ptr @__UNIQUE_ID_stop_on_reboottype288, ptr @__exitcall_watchdog_exit, ptr @__initcall__kmod_watchdog__290_475_watchdog_init4s, ptr @__ksymtab_devm_watchdog_register_device, ptr @__ksymtab_watchdog_init_timeout, ptr @__ksymtab_watchdog_register_device, ptr @__ksymtab_watchdog_set_restart_priority, ptr @__ksymtab_watchdog_unregister_device, ptr @__param_stop_on_reboot, ptr @__watchdog_register_device._entry, ptr @__watchdog_register_device._entry.20, ptr @__watchdog_register_device._entry.23, ptr @__watchdog_register_device._entry.26, ptr @__watchdog_register_device._entry_ptr, ptr @__watchdog_register_device._entry_ptr.22, ptr @__watchdog_register_device._entry_ptr.25, ptr @__watchdog_register_device._entry_ptr.28, ptr @watchdog_check_min_max_timeout._entry, ptr @watchdog_check_min_max_timeout._entry_ptr, ptr @watchdog_exit, ptr @watchdog_init_timeout._entry, ptr @watchdog_init_timeout._entry.4, ptr @watchdog_init_timeout._entry.7, ptr @watchdog_init_timeout._entry_ptr, ptr @watchdog_init_timeout._entry_ptr.6, ptr @watchdog_init_timeout._entry_ptr.9, ptr @watchdog_register_device._entry, ptr @watchdog_register_device._entry_ptr, ptr @stop_on_reboot, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @wtd_deferred_reg_mutex, ptr @wtd_deferred_reg_done, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @watchdog_ida, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @wtd_deferred_reg_list, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_on_reboot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_init_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_init_timeout._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_init_timeout._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wtd_deferred_reg_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wtd_deferred_reg_done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_check_min_max_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wtd_deferred_reg_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_init_timeout(ptr nocapture noundef %wdd, i32 noundef %timeout_parm, ptr noundef readonly %dev) #0 align 64 {
entry:
  %t = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %info = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 3
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %identity = getelementptr inbounds %struct.watchdog_info, ptr %7, i32 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.i, %cond.true.cond.end_crit_edge
  %cond = phi ptr [ %identity, %cond.false ], [ %5, %if.end.i ], [ %3, %cond.true.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #6
  %8 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %t, align 4
  %max_hw_heartbeat_ms.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 12
  %9 = ptrtoint ptr %max_hw_heartbeat_ms.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_hw_heartbeat_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i59 = icmp eq i32 %10, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i, label %cond.end.watchdog_check_min_max_timeout.exit_crit_edge

cond.end.watchdog_check_min_max_timeout.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_check_min_max_timeout.exit

land.lhs.true.i:                                  ; preds = %cond.end
  %min_timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 9
  %11 = ptrtoint ptr %min_timeout.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_timeout.i, align 4
  %max_timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 10
  %13 = ptrtoint ptr %max_timeout.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_timeout.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp ugt i32 %12, %14
  br i1 %cmp.i, label %do.end.i, label %land.lhs.true.i.watchdog_check_min_max_timeout.exit_crit_edge

land.lhs.true.i.watchdog_check_min_max_timeout.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_check_min_max_timeout.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  %15 = ptrtoint ptr %min_timeout.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %min_timeout.i, align 4
  %16 = ptrtoint ptr %max_timeout.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %max_timeout.i, align 4
  br label %watchdog_check_min_max_timeout.exit

watchdog_check_min_max_timeout.exit:              ; preds = %do.end.i, %land.lhs.true.i.watchdog_check_min_max_timeout.exit_crit_edge, %cond.end.watchdog_check_min_max_timeout.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_parm)
  %tobool2.not = icmp eq i32 %timeout_parm, 0
  br i1 %tobool2.not, label %watchdog_check_min_max_timeout.exit.if.end6_crit_edge, label %if.then

watchdog_check_min_max_timeout.exit.if.end6_crit_edge: ; preds = %watchdog_check_min_max_timeout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %watchdog_check_min_max_timeout.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4294967, i32 %timeout_parm)
  %cmp.i61 = icmp ugt i32 %timeout_parm, 4294967
  br i1 %cmp.i61, label %if.then.do.end_crit_edge, label %lor.lhs.false.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.then
  %min_timeout.i62 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 9
  %17 = ptrtoint ptr %min_timeout.i62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %min_timeout.i62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %timeout_parm)
  %cmp1.i = icmp ugt i32 %18, %timeout_parm
  br i1 %cmp1.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.rhs.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %19 = ptrtoint ptr %max_hw_heartbeat_ms.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_hw_heartbeat_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i64 = icmp eq i32 %20, 0
  br i1 %tobool.not.i64, label %watchdog_timeout_invalid.exit, label %lor.rhs.i.if.then4_crit_edge

lor.rhs.i.if.then4_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

watchdog_timeout_invalid.exit:                    ; preds = %lor.rhs.i
  %max_timeout.i65 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 10
  %21 = ptrtoint ptr %max_timeout.i65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_timeout.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i = icmp ne i32 %22, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %timeout_parm)
  %cmp4.i = icmp ult i32 %22, %timeout_parm
  %spec.select.i = and i1 %tobool2.not.i, %cmp4.i
  br i1 %spec.select.i, label %watchdog_timeout_invalid.exit.do.end_crit_edge, label %watchdog_timeout_invalid.exit.if.then4_crit_edge

watchdog_timeout_invalid.exit.if.then4_crit_edge: ; preds = %watchdog_timeout_invalid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

watchdog_timeout_invalid.exit.do.end_crit_edge:   ; preds = %watchdog_timeout_invalid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then4:                                         ; preds = %watchdog_timeout_invalid.exit.if.then4_crit_edge, %lor.rhs.i.if.then4_crit_edge
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %23 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %timeout_parm, ptr %timeout, align 4
  br label %cleanup

do.end:                                           ; preds = %watchdog_timeout_invalid.exit.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.then.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %cond, i32 noundef %timeout_parm) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %watchdog_check_min_max_timeout.exit.if.end6_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %watchdog_check_min_max_timeout.exit.if.end6_crit_edge ]
  %tobool7.not = icmp eq ptr %dev, null
  br i1 %tobool7.not, label %if.end6.if.end24_crit_edge, label %land.lhs.true

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end6
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %tobool8.not = icmp eq ptr %25, null
  br i1 %tobool8.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true9

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true9:                                   ; preds = %land.lhs.true
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %25, ptr noundef nonnull @.str.3, ptr noundef nonnull %t, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp = icmp sgt i32 %call.i.i, -1
  br i1 %cmp, label %if.then12, label %land.lhs.true9.if.end24_crit_edge

land.lhs.true9.if.end24_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then12:                                        ; preds = %land.lhs.true9
  %26 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t, align 4
  %28 = add i32 %27, -4294968
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4294967, i32 %28)
  %29 = icmp ult i32 %28, -4294967
  br i1 %29, label %if.then12.if.end24.thread_crit_edge, label %lor.lhs.false.i70

if.then12.if.end24.thread_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.thread

lor.lhs.false.i70:                                ; preds = %if.then12
  %min_timeout.i68 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 9
  %30 = ptrtoint ptr %min_timeout.i68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_timeout.i68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %27)
  %cmp1.i69 = icmp ugt i32 %31, %27
  br i1 %cmp1.i69, label %lor.lhs.false.i70.if.end24.thread_crit_edge, label %lor.rhs.i73

lor.lhs.false.i70.if.end24.thread_crit_edge:      ; preds = %lor.lhs.false.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.thread

lor.rhs.i73:                                      ; preds = %lor.lhs.false.i70
  %32 = ptrtoint ptr %max_hw_heartbeat_ms.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_hw_heartbeat_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i72 = icmp eq i32 %33, 0
  br i1 %tobool.not.i72, label %watchdog_timeout_invalid.exit79, label %lor.rhs.i73.if.then16_crit_edge

lor.rhs.i73.if.then16_crit_edge:                  ; preds = %lor.rhs.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

watchdog_timeout_invalid.exit79:                  ; preds = %lor.rhs.i73
  %max_timeout.i74 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 10
  %34 = ptrtoint ptr %max_timeout.i74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_timeout.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not.i75 = icmp ne i32 %35, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %27)
  %cmp4.i76 = icmp ult i32 %35, %27
  %spec.select.i77 = and i1 %tobool2.not.i75, %cmp4.i76
  br i1 %spec.select.i77, label %watchdog_timeout_invalid.exit79.if.end24.thread_crit_edge, label %watchdog_timeout_invalid.exit79.if.then16_crit_edge

watchdog_timeout_invalid.exit79.if.then16_crit_edge: ; preds = %watchdog_timeout_invalid.exit79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

watchdog_timeout_invalid.exit79.if.end24.thread_crit_edge: ; preds = %watchdog_timeout_invalid.exit79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.thread

if.then16:                                        ; preds = %watchdog_timeout_invalid.exit79.if.then16_crit_edge, %lor.rhs.i73.if.then16_crit_edge
  %timeout17 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %36 = ptrtoint ptr %timeout17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %27, ptr %timeout17, align 4
  br label %cleanup

if.end24.thread:                                  ; preds = %watchdog_timeout_invalid.exit79.if.end24.thread_crit_edge, %lor.lhs.false.i70.if.end24.thread_crit_edge, %if.then12.if.end24.thread_crit_edge
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %cond, i32 noundef %27) #9
  br label %land.lhs.true26

if.end24:                                         ; preds = %land.lhs.true9.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.end6.if.end24_crit_edge
  br i1 %tobool2.not, label %if.end24.cleanup_crit_edge, label %if.end24.land.lhs.true26_crit_edge

if.end24.land.lhs.true26_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true26:                                  ; preds = %if.end24.land.lhs.true26_crit_edge, %if.end24.thread
  %ret.184 = phi i32 [ -22, %if.end24.thread ], [ %ret.0, %if.end24.land.lhs.true26_crit_edge ]
  %timeout27 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %37 = ptrtoint ptr %timeout27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeout27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool28.not = icmp eq i32 %38, 0
  br i1 %tobool28.not, label %land.lhs.true26.cleanup_crit_edge, label %do.end32

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end32:                                         ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %cond, i32 noundef %38) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %land.lhs.true26.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then16, %if.then4
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %if.then4 ], [ %ret.184, %do.end32 ], [ %ret.184, %land.lhs.true26.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @watchdog_set_restart_priority(ptr nocapture noundef writeonly %wdd, i32 noundef %priority) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priority1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %priority1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %priority, ptr %priority1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_register_device(ptr noundef %wdd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @wtd_deferred_reg_mutex, i32 noundef 0) #6
  %.b14 = load i1, ptr @wtd_deferred_reg_done, align 1
  br i1 %.b14, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %deferred.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 19
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @wtd_deferred_reg_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %deferred.i, ptr noundef %0, ptr noundef nonnull @wtd_deferred_reg_list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.if.end.thread_crit_edge

if.else.if.end.thread_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread

if.end.i.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %deferred.i, ptr getelementptr inbounds (%struct.list_head, ptr @wtd_deferred_reg_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %deferred.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @wtd_deferred_reg_list, ptr %deferred.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %deferred.i, ptr %0, align 4
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.i.i.i, %if.else.if.end.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  br label %if.end7

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @__watchdog_register_device(ptr noundef %wdd)
  tail call void @mutex_unlock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then2
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %info = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 3
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %identity = getelementptr inbounds %struct.watchdog_info, ptr %11, i32 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.i, %cond.true.cond.end_crit_edge
  %cond = phi ptr [ %identity, %cond.false ], [ %9, %if.end.i ], [ %7, %cond.true.cond.end_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %cond, i32 noundef %call) #9
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.end.if.end7_crit_edge, %if.end.thread
  %ret.017 = phi i32 [ 0, %if.end.thread ], [ %call, %cond.end ], [ 0, %if.end.if.end7_crit_edge ]
  ret i32 %ret.017
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__watchdog_register_device(ptr noundef %wdd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %wdd, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %info = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 3
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %start = getelementptr inbounds %struct.watchdog_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %stop = getelementptr inbounds %struct.watchdog_ops, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false5.if.end10_crit_edge

lor.lhs.false5.if.end10_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %lor.lhs.false5
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 12
  %8 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_hw_heartbeat_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %lor.lhs.false5.if.end10_crit_edge
  %max_hw_heartbeat_ms.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 12
  %10 = ptrtoint ptr %max_hw_heartbeat_ms.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_hw_heartbeat_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end10.watchdog_check_min_max_timeout.exit_crit_edge

if.end10.watchdog_check_min_max_timeout.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_check_min_max_timeout.exit

land.lhs.true.i:                                  ; preds = %if.end10
  %min_timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 9
  %12 = ptrtoint ptr %min_timeout.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_timeout.i, align 4
  %max_timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 10
  %14 = ptrtoint ptr %max_timeout.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_timeout.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i = icmp ugt i32 %13, %15
  br i1 %cmp.i, label %do.end.i, label %land.lhs.true.i.watchdog_check_min_max_timeout.exit_crit_edge

land.lhs.true.i.watchdog_check_min_max_timeout.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_check_min_max_timeout.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  %16 = ptrtoint ptr %min_timeout.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %min_timeout.i, align 4
  %17 = ptrtoint ptr %max_timeout.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %max_timeout.i, align 4
  br label %watchdog_check_min_max_timeout.exit

watchdog_check_min_max_timeout.exit:              ; preds = %do.end.i, %land.lhs.true.i.watchdog_check_min_max_timeout.exit_crit_edge, %if.end10.watchdog_check_min_max_timeout.exit_crit_edge
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %watchdog_check_min_max_timeout.exit.if.end22_crit_edge, label %if.then12

watchdog_check_min_max_timeout.exit.if.end22_crit_edge: ; preds = %watchdog_check_min_max_timeout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then12:                                        ; preds = %watchdog_check_min_max_timeout.exit
  %of_node = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_alias_get_id(ptr noundef %21, ptr noundef nonnull @.str.17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp14 = icmp sgt i32 %call, -1
  br i1 %cmp14, label %if.end18, label %if.then12.if.end22_crit_edge

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end18:                                         ; preds = %if.then12
  %call16 = tail call i32 @ida_alloc_range(ptr noundef nonnull @watchdog_ida, i32 noundef %call, i32 noundef %call, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp19 = icmp slt i32 %call16, 0
  br i1 %cmp19, label %if.end18.if.end22_crit_edge, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %if.end18.if.end22_crit_edge, %if.then12.if.end22_crit_edge, %watchdog_check_min_max_timeout.exit.if.end22_crit_edge
  %call21 = tail call i32 @ida_alloc_range(ptr noundef nonnull @watchdog_ida, i32 noundef 0, i32 noundef 31, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp23 = icmp slt i32 %call21, 0
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %if.end22.if.end25_crit_edge

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end22.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %id.1171 = phi i32 [ %call21, %if.end22.if.end25_crit_edge ], [ %call16, %if.end18.if.end25_crit_edge ]
  %22 = ptrtoint ptr %wdd to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %id.1171, ptr %wdd, align 4
  %call27 = tail call i32 @watchdog_dev_register(ptr noundef nonnull %wdd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.if.end44_crit_edge, label %if.then29

if.end25.if.end44_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then29:                                        ; preds = %if.end25
  tail call void @ida_free(ptr noundef nonnull @watchdog_ida, i32 noundef %id.1171) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id.1171)
  %cmp30 = icmp eq i32 %id.1171, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call27)
  %cmp32 = icmp eq i32 %call27, -16
  %or.cond = select i1 %cmp30, i1 %cmp32, i1 false
  br i1 %or.cond, label %if.end34, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.then29
  %call35 = tail call i32 @ida_alloc_range(ptr noundef nonnull @watchdog_ida, i32 noundef 1, i32 noundef 31, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %23 = ptrtoint ptr %wdd to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call35, ptr %wdd, align 4
  %call40 = tail call i32 @watchdog_dev_register(ptr noundef nonnull %wdd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end38.if.end44_crit_edge, label %if.then42

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ida_free(ptr noundef nonnull @watchdog_ida, i32 noundef %call35) #6
  br label %cleanup

if.end44:                                         ; preds = %if.end38.if.end44_crit_edge, %if.end25.if.end44_crit_edge
  %id.2 = phi i32 [ %call35, %if.end38.if.end44_crit_edge ], [ %id.1171, %if.end25.if.end44_crit_edge ]
  %24 = load i32, ptr @stop_on_reboot, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %if.then48 [
    i32 -1, label %if.end44.if.end51_crit_edge
    i32 0, label %if.else
  ]

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %status = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status) #6
  br label %if.end51

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %status49 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status49) #6
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then48, %if.end44.if.end51_crit_edge
  %status52 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %26 = ptrtoint ptr %status52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %status52, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool54.not = icmp eq i32 %28, 0
  br i1 %tobool54.not, label %if.end51.if.end75_crit_edge, label %if.then55

if.end51.if.end75_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then55:                                        ; preds = %if.end51
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %stop57 = getelementptr inbounds %struct.watchdog_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %stop57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stop57, align 4
  %tobool58.not = icmp eq ptr %32, null
  br i1 %tobool58.not, label %do.end, label %if.else62

do.end:                                           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wdd, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %34) #9
  br label %if.end75

if.else62:                                        ; preds = %if.then55
  %reboot_nb = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 13
  %35 = ptrtoint ptr %reboot_nb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @watchdog_reboot_notifier, ptr %reboot_nb, align 4
  %call64 = tail call i32 @register_reboot_notifier(ptr noundef %reboot_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.else62.if.end75_crit_edge, label %do.end69

if.else62.if.end75_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

do.end69:                                         ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wdd, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %37, i32 noundef %call64) #9
  tail call void @watchdog_dev_unregister(ptr noundef nonnull %wdd) #6
  tail call void @ida_free(ptr noundef nonnull @watchdog_ida, i32 noundef %id.2) #6
  br label %cleanup

if.end75:                                         ; preds = %if.else62.if.end75_crit_edge, %do.end, %if.end51.if.end75_crit_edge
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %restart = getelementptr inbounds %struct.watchdog_ops, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %restart to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %restart, align 4
  %tobool77.not = icmp eq ptr %41, null
  br i1 %tobool77.not, label %if.end75.if.end91_crit_edge, label %if.then78

if.end75.if.end91_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then78:                                        ; preds = %if.end75
  %restart_nb = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 14
  %42 = ptrtoint ptr %restart_nb to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @watchdog_restart_notifier, ptr %restart_nb, align 4
  %call81 = tail call i32 @register_restart_handler(ptr noundef %restart_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then78.if.end91_crit_edge, label %do.end86

if.then78.if.end91_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

do.end86:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wdd, align 4
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %44, i32 noundef %call81) #9
  br label %if.end91

if.end91:                                         ; preds = %do.end86, %if.then78.if.end91_crit_edge, %if.end75.if.end91_crit_edge
  %45 = ptrtoint ptr %status52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %status52, align 4
  %47 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool94.not = icmp eq i32 %47, 0
  br i1 %tobool94.not, label %if.end91.cleanup_crit_edge, label %if.then95

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then95:                                        ; preds = %if.end91
  %pm_nb = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 15
  %48 = ptrtoint ptr %pm_nb to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @watchdog_pm_notifier, ptr %pm_nb, align 4
  %call98 = tail call i32 @register_pm_notifier(ptr noundef %pm_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then95.cleanup_crit_edge, label %do.end103

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end103:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wdd, align 4
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %50, i32 noundef %call98) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %if.then95.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %do.end69, %if.then42, %if.end34.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.then42 ], [ %call64, %do.end69 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call21, %if.end22.cleanup_crit_edge ], [ %call27, %if.then29.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ 0, %if.then95.cleanup_crit_edge ], [ 0, %do.end103 ], [ 0, %if.end91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @watchdog_unregister_device(ptr noundef %wdd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @wtd_deferred_reg_mutex, i32 noundef 0) #6
  %.b2 = load i1, ptr @wtd_deferred_reg_done, align 1
  br i1 %.b2, label %if.then, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

if.then:                                          ; preds = %entry
  %cmp.i = icmp eq ptr %wdd, null
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 4
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %restart.i = getelementptr inbounds %struct.watchdog_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %restart.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %restart.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i.if.end2.i_crit_edge, label %if.then1.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %restart_nb.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 14
  %call.i = tail call i32 @unregister_restart_handler(ptr noundef %restart_nb.i) #6
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i, label %if.end2.i.if.end7.i_crit_edge, label %if.then5.i

if.end2.i.if.end7.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %reboot_nb.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 13
  %call6.i = tail call i32 @unregister_reboot_notifier(ptr noundef %reboot_nb.i) #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end2.i.if.end7.i_crit_edge
  tail call void @watchdog_dev_unregister(ptr noundef nonnull %wdd) #6
  %7 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wdd, align 4
  tail call void @ida_free(ptr noundef nonnull @watchdog_ida, i32 noundef %8) #6
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %p.0.in.i = phi ptr [ %p.0.i, %for.body.i.for.cond.i_crit_edge ], [ @wtd_deferred_reg_list, %entry.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %p.0.i, @wtd_deferred_reg_list
  br i1 %cmp.i.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %add.ptr.i = getelementptr i8, ptr %p.0.i, i32 -100
  %cmp.i3 = icmp eq ptr %add.ptr.i, %wdd
  br i1 %cmp.i3, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.0.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %p.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit.i, %for.cond.i.if.end_crit_edge, %if.end7.i, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_watchdog_register_device(ptr noundef %dev, ptr noundef %wdd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_watchdog_unregister_device, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.12) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @watchdog_register_device(ptr noundef %wdd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %wdd, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devres_free(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.else ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_watchdog_unregister_device(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @watchdog_unregister_device(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @watchdog_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @watchdog_dev_exit() #9
  tail call void @ida_destroy(ptr noundef nonnull @watchdog_ida) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @watchdog_dev_exit() local_unnamed_addr #2 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @watchdog_dev_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @watchdog_deferred_registration() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_dev_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_reboot_notifier(ptr noundef %nb, i32 noundef %code, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -52
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.off)
  %switch = icmp ult i32 %code.off, 2
  br i1 %switch, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %status.i = getelementptr i8, ptr %nb, i32 44
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false2, label %if.then.if.then4_crit_edge

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false2:                                   ; preds = %if.then
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i15.not = icmp eq i32 %4, 0
  br i1 %tobool.i15.not, label %lor.lhs.false2.if.end8_crit_edge, label %lor.lhs.false2.if.then4_crit_edge

lor.lhs.false2.if.then4_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false2.if.end8_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4:                                         ; preds = %lor.lhs.false2.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %ops = getelementptr i8, ptr %nb, i32 -36
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %stop = getelementptr inbounds %struct.watchdog_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stop, align 4
  %call5 = tail call i32 %8(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then4.if.end8_crit_edge, label %if.then4.cleanup9_crit_edge

if.then4.cleanup9_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %lor.lhs.false2.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %cleanup9

cleanup9:                                         ; preds = %if.end8, %if.then4.cleanup9_crit_edge
  %retval.1 = phi i32 [ 0, %if.end8 ], [ 32770, %if.then4.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_dev_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_restart_notifier(ptr noundef %nb, i32 noundef %action, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -64
  %ops = getelementptr i8, ptr %nb, i32 -48
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %restart = getelementptr inbounds %struct.watchdog_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %restart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %restart, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr, i32 noundef %action, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 32770
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_pm_notifier(ptr noundef %nb, i32 noundef %mode, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -76
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %mode, label %entry.sw.epilog.thread_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge7
    i32 3, label %entry.sw.bb_crit_edge8
    i32 2, label %entry.sw.bb1_crit_edge
    i32 6, label %entry.sw.bb1_crit_edge9
    i32 4, label %entry.sw.bb1_crit_edge10
  ]

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge7, %entry.sw.bb_crit_edge8
  %call = tail call i32 @watchdog_dev_suspend(ptr noundef %add.ptr) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge9, %entry.sw.bb1_crit_edge10
  %call2 = tail call i32 @watchdog_dev_resume(ptr noundef %add.ptr) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog._crit_edge

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %1

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge
  br label %1

1:                                                ; preds = %sw.epilog.thread, %sw.epilog._crit_edge
  %2 = phi i32 [ 0, %sw.epilog.thread ], [ 32770, %sw.epilog._crit_edge ]
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_dev_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_dev_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @watchdog_dev_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @watchdog_deferred_registration() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @wtd_deferred_reg_mutex, i32 noundef 0) #6
  store i1 true, ptr @wtd_deferred_reg_done, align 1
  %0 = load volatile ptr, ptr @wtd_deferred_reg_list, align 4
  %cmp.i.not1 = icmp eq ptr %0, @wtd_deferred_reg_list
  br i1 %cmp.i.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %10, %list_del.exit.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 -100
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call1 = tail call fastcc i32 @__watchdog_register_device(ptr noundef %add.ptr)
  %10 = load volatile ptr, ptr @wtd_deferred_reg_list, align 4
  %cmp.i.not = icmp eq ptr %10, @wtd_deferred_reg_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @wtd_deferred_reg_mutex) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__param_stop_on_reboot, !1, !"__param_stop_on_reboot", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/watchdog_core.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_stop_on_reboottype288, !1, !"__UNIQUE_ID_stop_on_reboottype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_stop_on_reboot289, !4, !"__UNIQUE_ID_stop_on_reboot289", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/watchdog_core.c", i32 45, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/watchdog_core.c", i32 131, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @watchdog_init_timeout._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @watchdog_init_timeout._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/watchdog/watchdog_core.c", i32 138, i32 41}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/watchdog_core.c", i32 143, i32 3}
!15 = !{ptr @watchdog_init_timeout._entry.4, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @watchdog_init_timeout._entry_ptr.6, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/watchdog_core.c", i32 148, i32 3}
!19 = !{ptr @watchdog_init_timeout._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @watchdog_init_timeout._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_watchdog_init_timeout, !22, !"__ksymtab_watchdog_init_timeout", i1 false, i1 false}
!22 = !{!"../drivers/watchdog/watchdog_core.c", i32 153, i32 1}
!23 = !{ptr @__ksymtab_watchdog_set_restart_priority, !24, !"__ksymtab_watchdog_set_restart_priority", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/watchdog_core.c", i32 234, i32 1}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/watchdog_core.c", i32 361, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @watchdog_register_device._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @watchdog_register_device._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_watchdog_register_device, !31, !"__ksymtab_watchdog_register_device", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/watchdog_core.c", i32 367, i32 1}
!32 = !{ptr @__ksymtab_watchdog_unregister_device, !33, !"__ksymtab_watchdog_unregister_device", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/watchdog_core.c", i32 402, i32 1}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/watchdog_core.c", i32 424, i32 10}
!36 = !{ptr @__ksymtab_devm_watchdog_register_device, !37, !"__ksymtab_devm_watchdog_register_device", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/watchdog_core.c", i32 439, i32 1}
!38 = !{ptr @__initcall__kmod_watchdog__290_475_watchdog_init4s, !39, !"__initcall__kmod_watchdog__290_475_watchdog_init4s", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/watchdog_core.c", i32 475, i32 1}
!40 = !{ptr @__exitcall_watchdog_exit, !41, !"__exitcall_watchdog_exit", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/watchdog_core.c", i32 476, i32 1}
!42 = !{ptr @__UNIQUE_ID_author291, !43, !"__UNIQUE_ID_author291", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/watchdog_core.c", i32 478, i32 1}
!44 = !{ptr @__UNIQUE_ID_author292, !45, !"__UNIQUE_ID_author292", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/watchdog_core.c", i32 479, i32 1}
!46 = !{ptr @__UNIQUE_ID_description293, !47, !"__UNIQUE_ID_description293", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/watchdog_core.c", i32 480, i32 1}
!48 = !{ptr @__UNIQUE_ID_file294, !49, !"__UNIQUE_ID_file294", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/watchdog_core.c", i32 481, i32 1}
!50 = !{ptr @__UNIQUE_ID_license295, !49, !"__UNIQUE_ID_license295", i1 false, i1 false}
!51 = distinct !{null, !52, !"wtd_deferred_reg_done", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/watchdog_core.c", i32 62, i32 13}
!53 = !{ptr @__param_str_stop_on_reboot, !1, !"__param_str_stop_on_reboot", i1 false, i1 false}
!54 = !{ptr @stop_on_reboot, !55, !"stop_on_reboot", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/watchdog_core.c", i32 43, i32 12}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/watchdog/watchdog_core.c", i32 92, i32 3}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @watchdog_check_min_max_timeout._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @watchdog_check_min_max_timeout._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/watchdog_core.c", i32 60, i32 8}
!63 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @wtd_deferred_reg_mutex, !62, !"wtd_deferred_reg_mutex", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/watchdog_core.c", i32 257, i32 47}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/watchdog/watchdog_core.c", i32 299, i32 4}
!69 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @__watchdog_register_device._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @__watchdog_register_device._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/watchdog/watchdog_core.c", i32 305, i32 5}
!74 = !{ptr @__watchdog_register_device._entry.20, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @__watchdog_register_device._entry_ptr.22, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/watchdog/watchdog_core.c", i32 319, i32 4}
!78 = !{ptr @__watchdog_register_device._entry.23, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @__watchdog_register_device._entry_ptr.25, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/watchdog/watchdog_core.c", i32 328, i32 4}
!82 = !{ptr @__watchdog_register_device._entry.26, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @__watchdog_register_device._entry_ptr.28, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @wtd_deferred_reg_list, !85, !"wtd_deferred_reg_list", i1 false, i1 false}
!85 = !{!"../drivers/watchdog/watchdog_core.c", i32 61, i32 8}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/watchdog/watchdog_core.c", i32 41, i32 8}
!88 = !{ptr @watchdog_ida, !87, !"watchdog_ida", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
