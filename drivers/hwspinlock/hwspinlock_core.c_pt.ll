; ModuleID = '/llk/IR_all_yes/drivers/hwspinlock/hwspinlock_core.c_pt.bc'
source_filename = "../drivers/hwspinlock/hwspinlock_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__hwspin_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc___hwspin_trylock\09\09\09\09"
module asm "\09.long\09__crc___hwspin_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hwspin_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22__hwspin_trylock\22\09\09\09\09\09"
module asm "__kstrtabns___hwspin_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__hwspin_lock_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc___hwspin_lock_timeout\09\09\09\09"
module asm "\09.long\09__crc___hwspin_lock_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hwspin_lock_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22__hwspin_lock_timeout\22\09\09\09\09\09"
module asm "__kstrtabns___hwspin_lock_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__hwspin_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc___hwspin_unlock\09\09\09\09"
module asm "\09.long\09__crc___hwspin_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hwspin_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22__hwspin_unlock\22\09\09\09\09\09"
module asm "__kstrtabns___hwspin_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_hwspin_lock_get_id\22, \22a\22\09"
module asm "\09.weak\09__crc_of_hwspin_lock_get_id\09\09\09\09"
module asm "\09.long\09__crc_of_hwspin_lock_get_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_hwspin_lock_get_id:\09\09\09\09\09"
module asm "\09.asciz \09\22of_hwspin_lock_get_id\22\09\09\09\09\09"
module asm "__kstrtabns_of_hwspin_lock_get_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_hwspin_lock_get_id_byname\22, \22a\22\09"
module asm "\09.weak\09__crc_of_hwspin_lock_get_id_byname\09\09\09\09"
module asm "\09.long\09__crc_of_hwspin_lock_get_id_byname\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_hwspin_lock_get_id_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22of_hwspin_lock_get_id_byname\22\09\09\09\09\09"
module asm "__kstrtabns_of_hwspin_lock_get_id_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hwspin_lock_register\22, \22a\22\09"
module asm "\09.weak\09__crc_hwspin_lock_register\09\09\09\09"
module asm "\09.long\09__crc_hwspin_lock_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwspin_lock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22hwspin_lock_register\22\09\09\09\09\09"
module asm "__kstrtabns_hwspin_lock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hwspin_lock_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_hwspin_lock_unregister\09\09\09\09"
module asm "\09.long\09__crc_hwspin_lock_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwspin_lock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22hwspin_lock_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_hwspin_lock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_hwspin_lock_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_hwspin_lock_unregister\09\09\09\09"
module asm "\09.long\09__crc_devm_hwspin_lock_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwspin_lock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwspin_lock_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwspin_lock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_hwspin_lock_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_hwspin_lock_register\09\09\09\09"
module asm "\09.long\09__crc_devm_hwspin_lock_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwspin_lock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwspin_lock_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwspin_lock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hwspin_lock_get_id\22, \22a\22\09"
module asm "\09.weak\09__crc_hwspin_lock_get_id\09\09\09\09"
module asm "\09.long\09__crc_hwspin_lock_get_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwspin_lock_get_id:\09\09\09\09\09"
module asm "\09.asciz \09\22hwspin_lock_get_id\22\09\09\09\09\09"
module asm "__kstrtabns_hwspin_lock_get_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hwspin_lock_request\22, \22a\22\09"
module asm "\09.weak\09__crc_hwspin_lock_request\09\09\09\09"
module asm "\09.long\09__crc_hwspin_lock_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwspin_lock_request:\09\09\09\09\09"
module asm "\09.asciz \09\22hwspin_lock_request\22\09\09\09\09\09"
module asm "__kstrtabns_hwspin_lock_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hwspin_lock_request_specific\22, \22a\22\09"
module asm "\09.weak\09__crc_hwspin_lock_request_specific\09\09\09\09"
module asm "\09.long\09__crc_hwspin_lock_request_specific\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwspin_lock_request_specific:\09\09\09\09\09"
module asm "\09.asciz \09\22hwspin_lock_request_specific\22\09\09\09\09\09"
module asm "__kstrtabns_hwspin_lock_request_specific:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hwspin_lock_free\22, \22a\22\09"
module asm "\09.weak\09__crc_hwspin_lock_free\09\09\09\09"
module asm "\09.long\09__crc_hwspin_lock_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwspin_lock_free:\09\09\09\09\09"
module asm "\09.asciz \09\22hwspin_lock_free\22\09\09\09\09\09"
module asm "__kstrtabns_hwspin_lock_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_hwspin_lock_free\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_hwspin_lock_free\09\09\09\09"
module asm "\09.long\09__crc_devm_hwspin_lock_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwspin_lock_free:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwspin_lock_free\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwspin_lock_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_hwspin_lock_request\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_hwspin_lock_request\09\09\09\09"
module asm "\09.long\09__crc_devm_hwspin_lock_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwspin_lock_request:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwspin_lock_request\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwspin_lock_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_hwspin_lock_request_specific\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_hwspin_lock_request_specific\09\09\09\09"
module asm "\09.long\09__crc_devm_hwspin_lock_request_specific\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwspin_lock_request_specific:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwspin_lock_request_specific\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwspin_lock_request_specific:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hwspinlock = type { ptr, %struct.spinlock, ptr }
%struct.hwspinlock_device = type { ptr, ptr, i32, i32, [0 x %struct.hwspinlock] }
%struct.hwspinlock_ops = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/hwspinlock/hwspinlock_core.c\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab___hwspin_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns___hwspin_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab___hwspin_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hwspin_trylock to i32), ptr @__kstrtab___hwspin_trylock, ptr @__kstrtabns___hwspin_trylock }, section "___ksymtab_gpl+__hwspin_trylock", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab___hwspin_lock_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns___hwspin_lock_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab___hwspin_lock_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hwspin_lock_timeout to i32), ptr @__kstrtab___hwspin_lock_timeout, ptr @__kstrtabns___hwspin_lock_timeout }, section "___ksymtab_gpl+__hwspin_lock_timeout", align 4
@__kstrtab___hwspin_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns___hwspin_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab___hwspin_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hwspin_unlock to i32), ptr @__kstrtab___hwspin_unlock, ptr @__kstrtabns___hwspin_unlock }, section "___ksymtab_gpl+__hwspin_unlock", align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hwlocks\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"#hwlock-cells\00", [18 x i8] zeroinitializer }, align 32
@hwspinlock_tree = internal global { %struct.xarray, [44 x i8] } { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 3264, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_of_hwspin_lock_get_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_hwspin_lock_get_id = external dso_local constant [0 x i8], align 1
@__ksymtab_of_hwspin_lock_get_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_hwspin_lock_get_id to i32), ptr @__kstrtab_of_hwspin_lock_get_id, ptr @__kstrtabns_of_hwspin_lock_get_id }, section "___ksymtab_gpl+of_hwspin_lock_get_id", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hwlock-names\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_of_hwspin_lock_get_id_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_hwspin_lock_get_id_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_of_hwspin_lock_get_id_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_hwspin_lock_get_id_byname to i32), ptr @__kstrtab_of_hwspin_lock_get_id_byname, ptr @__kstrtabns_of_hwspin_lock_get_id_byname }, section "___ksymtab_gpl+of_hwspin_lock_get_id_byname", align 4
@hwspin_lock_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: invalid parameters\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwspin_lock_register\00", [43 x i8] zeroinitializer }, align 32
@hwspin_lock_register._entry_ptr = internal global ptr @hwspin_lock_register._entry, section ".printk_index", align 4
@hwspin_lock_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&hwlock->lock\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_hwspin_lock_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwspin_lock_register = external dso_local constant [0 x i8], align 1
@__ksymtab_hwspin_lock_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwspin_lock_register to i32), ptr @__kstrtab_hwspin_lock_register, ptr @__kstrtabns_hwspin_lock_register }, section "___ksymtab_gpl+hwspin_lock_register", align 4
@__kstrtab_hwspin_lock_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwspin_lock_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_hwspin_lock_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwspin_lock_unregister to i32), ptr @__kstrtab_hwspin_lock_unregister, ptr @__kstrtabns_hwspin_lock_unregister }, section "___ksymtab_gpl+hwspin_lock_unregister", align 4
@__kstrtab_devm_hwspin_lock_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwspin_lock_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwspin_lock_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwspin_lock_unregister to i32), ptr @__kstrtab_devm_hwspin_lock_unregister, ptr @__kstrtabns_devm_hwspin_lock_unregister }, section "___ksymtab_gpl+devm_hwspin_lock_unregister", align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devm_hwspin_lock_unreg\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_devm_hwspin_lock_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwspin_lock_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwspin_lock_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwspin_lock_register to i32), ptr @__kstrtab_devm_hwspin_lock_register, ptr @__kstrtabns_devm_hwspin_lock_register }, section "___ksymtab_gpl+devm_hwspin_lock_register", align 4
@hwspin_lock_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: invalid hwlock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hwspin_lock_get_id\00", [45 x i8] zeroinitializer }, align 32
@hwspin_lock_get_id._entry_ptr = internal global ptr @hwspin_lock_get_id._entry, section ".printk_index", align 4
@__kstrtab_hwspin_lock_get_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwspin_lock_get_id = external dso_local constant [0 x i8], align 1
@__ksymtab_hwspin_lock_get_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwspin_lock_get_id to i32), ptr @__kstrtab_hwspin_lock_get_id, ptr @__kstrtabns_hwspin_lock_get_id }, section "___ksymtab_gpl+hwspin_lock_get_id", align 4
@hwspinlock_tree_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hwspinlock_tree_lock, i64 52), ptr getelementptr (i8, ptr @hwspinlock_tree_lock, i64 52) }, ptr @hwspinlock_tree_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hwspin_lock_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: a free hwspinlock is not available\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hwspin_lock_request\00", [44 x i8] zeroinitializer }, align 32
@hwspin_lock_request._entry_ptr = internal global ptr @hwspin_lock_request._entry, section ".printk_index", align 4
@__kstrtab_hwspin_lock_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwspin_lock_request = external dso_local constant [0 x i8], align 1
@__ksymtab_hwspin_lock_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwspin_lock_request to i32), ptr @__kstrtab_hwspin_lock_request, ptr @__kstrtabns_hwspin_lock_request }, section "___ksymtab_gpl+hwspin_lock_request", align 4
@hwspin_lock_request_specific._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: hwspinlock %u does not exist\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hwspin_lock_request_specific\00", [35 x i8] zeroinitializer }, align 32
@hwspin_lock_request_specific._entry_ptr = internal global ptr @hwspin_lock_request_specific._entry, section ".printk_index", align 4
@hwspin_lock_request_specific._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: hwspinlock %u is already in use\0A\00", [57 x i8] zeroinitializer }, align 32
@hwspin_lock_request_specific._entry_ptr.16 = internal global ptr @hwspin_lock_request_specific._entry.14, section ".printk_index", align 4
@__kstrtab_hwspin_lock_request_specific = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwspin_lock_request_specific = external dso_local constant [0 x i8], align 1
@__ksymtab_hwspin_lock_request_specific = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwspin_lock_request_specific to i32), ptr @__kstrtab_hwspin_lock_request_specific, ptr @__kstrtabns_hwspin_lock_request_specific }, section "___ksymtab_gpl+hwspin_lock_request_specific", align 4
@hwspin_lock_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.17, ptr @.str, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hwspin_lock_free\00", [47 x i8] zeroinitializer }, align 32
@hwspin_lock_free._entry_ptr = internal global ptr @hwspin_lock_free._entry, section ".printk_index", align 4
@hwspin_lock_free._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str, i32 818, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: hwlock is already free\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hwspin_lock_free._entry_ptr.22 = internal global ptr @hwspin_lock_free._entry.18, section ".printk_index", align 4
@__kstrtab_hwspin_lock_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwspin_lock_free = external dso_local constant [0 x i8], align 1
@__ksymtab_hwspin_lock_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwspin_lock_free to i32), ptr @__kstrtab_hwspin_lock_free, ptr @__kstrtabns_hwspin_lock_free }, section "___ksymtab_gpl+hwspin_lock_free", align 4
@__kstrtab_devm_hwspin_lock_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwspin_lock_free = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwspin_lock_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwspin_lock_free to i32), ptr @__kstrtab_devm_hwspin_lock_free, ptr @__kstrtabns_devm_hwspin_lock_free }, section "___ksymtab_gpl+devm_hwspin_lock_free", align 4
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"devm_hwspin_lock_release\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_devm_hwspin_lock_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwspin_lock_request = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwspin_lock_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwspin_lock_request to i32), ptr @__kstrtab_devm_hwspin_lock_request, ptr @__kstrtabns_devm_hwspin_lock_request }, section "___ksymtab_gpl+devm_hwspin_lock_request", align 4
@__kstrtab_devm_hwspin_lock_request_specific = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwspin_lock_request_specific = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwspin_lock_request_specific = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwspin_lock_request_specific to i32), ptr @__kstrtab_devm_hwspin_lock_request_specific, ptr @__kstrtabns_devm_hwspin_lock_request_specific }, section "___ksymtab_gpl+devm_hwspin_lock_request_specific", align 4
@__UNIQUE_ID_file171 = internal constant [56 x i8] c"hwspinlock_core.file=drivers/hwspinlock/hwspinlock_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [31 x i8] c"hwspinlock_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [56 x i8] c"hwspinlock_core.description=Hardware spinlock interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [56 x i8] c"hwspinlock_core.author=Ohad Ben-Cohen <ohad@wizery.com>\00", section ".modinfo", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hwspinlock_tree.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@radix_tree_deref_slot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/radix-tree.h\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@hwspin_lock_register_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: hwspinlock id %d already exists!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hwspin_lock_register_single\00", [36 x i8] zeroinitializer }, align 32
@hwspin_lock_register_single._entry_ptr = internal global ptr @hwspin_lock_register_single._entry, section ".printk_index", align 4
@hwspin_lock_unregister_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: hwspinlock %d still in use (or not present)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hwspin_lock_unregister_single\00", [34 x i8] zeroinitializer }, align 32
@hwspin_lock_unregister_single._entry_ptr = internal global ptr @hwspin_lock_unregister_single._entry, section ".printk_index", align 4
@hwspin_lock_unregister_single._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: failed to delete hwspinlock %d\0A\00", [58 x i8] zeroinitializer }, align 32
@hwspin_lock_unregister_single._entry_ptr.36 = internal global ptr @hwspin_lock_unregister_single._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hwspinlock_tree_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hwspinlock_tree_lock\00", [43 x i8] zeroinitializer }, align 32
@__hwspin_lock_request._entry = internal constant %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 654, ptr @.str.20, ptr @.str.21 }, align 1
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: can't get owner\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__hwspin_lock_request\00", [42 x i8] zeroinitializer }, align 32
@__hwspin_lock_request._entry_ptr = internal global ptr @__hwspin_lock_request._entry, section ".printk_index", align 4
@__hwspin_lock_request._entry.41 = internal constant %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str, i32 661, ptr @.str.20, ptr @.str.21 }, align 1
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: can't power on device\0A\00", [37 x i8] zeroinitializer }, align 32
@__hwspin_lock_request._entry_ptr.43 = internal global ptr @__hwspin_lock_request._entry.41, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 95, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 348, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 348, i32 50 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"hwspinlock_tree\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 413, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 494, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 506, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 620, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 688, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"hwspinlock_tree_lock\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 720, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 762, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 772, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 807, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 818, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 900, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 695, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 50, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant [30 x i8] c"../include/linux/radix-tree.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 179, i32 9 }
@___asan_gen_.153 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 723, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 431, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 456, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 462, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 57, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 654, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [40 x i8] c"../drivers/hwspinlock/hwspinlock_core.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 661, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__hwspin_lock_request._entry, ptr @__hwspin_lock_request._entry.41, ptr @__hwspin_lock_request._entry_ptr, ptr @__hwspin_lock_request._entry_ptr.43, ptr @__ksymtab___hwspin_lock_timeout, ptr @__ksymtab___hwspin_trylock, ptr @__ksymtab___hwspin_unlock, ptr @__ksymtab_devm_hwspin_lock_free, ptr @__ksymtab_devm_hwspin_lock_register, ptr @__ksymtab_devm_hwspin_lock_request, ptr @__ksymtab_devm_hwspin_lock_request_specific, ptr @__ksymtab_devm_hwspin_lock_unregister, ptr @__ksymtab_hwspin_lock_free, ptr @__ksymtab_hwspin_lock_get_id, ptr @__ksymtab_hwspin_lock_register, ptr @__ksymtab_hwspin_lock_request, ptr @__ksymtab_hwspin_lock_request_specific, ptr @__ksymtab_hwspin_lock_unregister, ptr @__ksymtab_of_hwspin_lock_get_id, ptr @__ksymtab_of_hwspin_lock_get_id_byname, ptr @hwspin_lock_free._entry, ptr @hwspin_lock_free._entry.18, ptr @hwspin_lock_free._entry_ptr, ptr @hwspin_lock_free._entry_ptr.22, ptr @hwspin_lock_get_id._entry, ptr @hwspin_lock_get_id._entry_ptr, ptr @hwspin_lock_register._entry, ptr @hwspin_lock_register._entry_ptr, ptr @hwspin_lock_register_single._entry, ptr @hwspin_lock_register_single._entry_ptr, ptr @hwspin_lock_request._entry, ptr @hwspin_lock_request._entry_ptr, ptr @hwspin_lock_request_specific._entry, ptr @hwspin_lock_request_specific._entry.14, ptr @hwspin_lock_request_specific._entry_ptr, ptr @hwspin_lock_request_specific._entry_ptr.16, ptr @hwspin_lock_unregister_single._entry, ptr @hwspin_lock_unregister_single._entry.34, ptr @hwspin_lock_unregister_single._entry_ptr, ptr @hwspin_lock_unregister_single._entry_ptr.36, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hwspinlock_tree, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hwspin_lock_register.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @hwspinlock_tree_lock, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspinlock_tree to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspinlock_tree_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_request_specific._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_request_specific._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_free._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_register_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_unregister_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwspin_lock_unregister_single._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hwspin_trylock(ptr noundef %hwlock, i32 noundef %mode, ptr noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwlock, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %flags, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %spec.select = and i1 %cmp, %tobool1.not
  br i1 %spec.select, label %lor.rhs.do.end_crit_edge, label %if.end23, !prof !139

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %lor.rhs
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %sw.epilog [
    i32 1, label %do.body26
    i32 2, label %sw.bb84
    i32 3, label %if.end23.if.end92_crit_edge
    i32 4, label %if.end23.if.end92_crit_edge132
  ]

if.end23.if.end92_crit_edge132:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.end23.if.end92_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

do.body26:                                        ; preds = %if.end23
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !140
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %flags, align 4
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool38.not = icmp eq i32 %and.i, 0
  br i1 %tobool38.not, label %if.then39, label %do.body26.do.end42_crit_edge

do.body26.do.end42_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.then39:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body26.do.end42_crit_edge
  %lock = getelementptr inbounds %struct.hwspinlock, ptr %hwlock, i32 0, i32 1
  %call45 = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body47, label %do.end42.if.end92_crit_edge

do.end42.if.end92_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

do.body47:                                        ; preds = %do.end42
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and.i125 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool55.not = icmp eq i32 %and.i125, 0
  br i1 %tobool55.not, label %if.then56, label %do.body47.do.body58_crit_edge

do.body47.do.body58_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

if.then56:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body58

do.body58:                                        ; preds = %if.then56, %do.body47.do.body58_crit_edge
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !141
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool66.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool66.not, label %if.then75, label %do.body58.do.end78_crit_edge, !prof !139

do.body58.do.end78_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

if.then75:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end78

do.end78:                                         ; preds = %if.then75, %do.body58.do.end78_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #7, !srcloc !142
  br label %cleanup

sw.bb84:                                          ; preds = %if.end23
  %lock85 = getelementptr inbounds %struct.hwspinlock, ptr %hwlock, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !141
  %and.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #7, !srcloc !143
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb84.if.end.i_crit_edge

sw.bb84.if.end.i_crit_edge:                       ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb84.if.end.i_crit_edge
  %call2.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.body4.i, label %if.end.i.if.end92_crit_edge

if.end.i.if.end92_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

do.body4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !144
  br label %cleanup

sw.epilog:                                        ; preds = %if.end23
  %lock88 = getelementptr inbounds %struct.hwspinlock, ptr %hwlock, i32 0, i32 1
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool90.not = icmp eq i32 %call.i, 0
  br i1 %tobool90.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end92_crit_edge

sw.epilog.if.end92_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end92:                                         ; preds = %sw.epilog.if.end92_crit_edge, %if.end.i.if.end92_crit_edge, %do.end42.if.end92_crit_edge, %if.end23.if.end92_crit_edge, %if.end23.if.end92_crit_edge132
  %9 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwlock, align 4
  %ops = getelementptr inbounds %struct.hwspinlock_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call93 = tail call i32 %14(ptr noundef nonnull %hwlock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %do.body105

if.then95:                                        ; preds = %if.end92
  %15 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %mode, label %sw.default101 [
    i32 1, label %sw.bb96
    i32 2, label %sw.bb98
    i32 3, label %if.then95.cleanup_crit_edge
    i32 4, label %if.then95.cleanup_crit_edge133
  ]

if.then95.cleanup_crit_edge133:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb96:                                          ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  %lock97 = getelementptr inbounds %struct.hwspinlock, ptr %hwlock, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock97, i32 noundef %17) #7
  br label %cleanup

sw.bb98:                                          ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  %lock99 = getelementptr inbounds %struct.hwspinlock, ptr %hwlock, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock99) #7
  br label %cleanup

sw.default101:                                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  %lock102 = getelementptr inbounds %struct.hwspinlock, ptr %hwlock, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock102) #7
  br label %cleanup

do.body105:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  br label %cleanup

cleanup:                                          ; preds = %do.body105, %sw.default101, %sw.bb98, %sw.bb96, %if.then95.cleanup_crit_edge, %if.then95.cleanup_crit_edge133, %sw.epilog.cleanup_crit_edge, %do.body4.i, %do.end78, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body105 ], [ -16, %sw.epilog.cleanup_crit_edge ], [ -16, %if.then95.cleanup_crit_edge ], [ -16, %if.then95.cleanup_crit_edge133 ], [ -16, %sw.default101 ], [ -16, %sw.bb98 ], [ -16, %sw.bb96 ], [ -16, %do.end78 ], [ -16, %do.body4.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hwspin_lock_timeout(ptr noundef %hwlock, i32 noundef %to, i32 noundef %mode, ptr noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %to) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call126 = tail call i32 @__hwspin_trylock(ptr noundef %hwlock, i32 noundef %mode, ptr noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call126)
  %cmp.not27 = icmp eq i32 %call126, -16
  br i1 %cmp.not27, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %cmp2 = icmp eq i32 %mode, 4
  %1 = add i32 %0, %call2.i
  %mul = mul i32 %to, 1000
  br label %if.end

if.end:                                           ; preds = %if.end16.if.end_crit_edge, %if.end.lr.ph
  %atomic_delay.028 = phi i32 [ 0, %if.end.lr.ph ], [ %atomic_delay.1, %if.end16.if.end_crit_edge ]
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #7
  %add4 = add i32 %atomic_delay.028, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %mul)
  %cmp5 = icmp ugt i32 %add4, %mul
  br i1 %cmp5, label %if.then3.cleanup_crit_edge, label %if.then3.if.end11_crit_edge

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp8 = icmp sgt i32 %sub, -1
  br i1 %cmp8, label %if.else.cleanup_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then3.if.end11_crit_edge
  %atomic_delay.1 = phi i32 [ %add4, %if.then3.if.end11_crit_edge ], [ %atomic_delay.028, %if.else.if.end11_crit_edge ]
  %4 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwlock, align 4
  %ops = getelementptr inbounds %struct.hwspinlock_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %relax = getelementptr inbounds %struct.hwspinlock_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %relax to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %relax, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end11.if.end16_crit_edge, label %if.then12

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(ptr noundef %hwlock) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end11.if.end16_crit_edge
  %call1 = tail call i32 @__hwspin_trylock(ptr noundef %hwlock, i32 noundef %mode, ptr noundef %flags)
  %cmp.not = icmp eq i32 %call1, -16
  br i1 %cmp.not, label %if.end16.if.end_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.if.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call126, %entry.cleanup_crit_edge ], [ %call1, %if.end16.cleanup_crit_edge ], [ -110, %if.else.cleanup_crit_edge ], [ -110, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__hwspin_unlock(ptr noundef %hwlock, i32 noundef %mode, ptr noundef readonly %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwlock, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %flags, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %spec.select = and i1 %cmp, %tobool1.not
  br i1 %spec.select, label %lor.rhs.do.end_crit_edge, label %do.body24.critedge, !prof !139

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog

do.body24.critedge:                               ; preds = %lor.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwlock, align 4
  %ops = getelementptr inbounds %struct.hwspinlock_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %unlock = getelementptr inbounds %struct.hwspinlock_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unlock, align 4
  tail call void %5(ptr noundef nonnull %hwlock) #7
  %6 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %mode, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %do.body24.critedge.sw.epilog_crit_edge
    i32 4, label %do.body24.critedge.sw.epilog_crit_edge39
  ]

do.body24.critedge.sw.epilog_crit_edge39:         ; preds = %do.body24.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body24.critedge.sw.epilog_crit_edge:           ; preds = %do.body24.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body24.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.hwspinlock, ptr %hwlock, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %8) #7
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.body24.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %lock28 = getelementptr inbounds %struct.hwspinlock, ptr %hwlock, i32 0, i32 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock28) #7
  br label %sw.epilog

sw.default:                                       ; preds = %do.body24.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %lock30 = getelementptr inbounds %struct.hwspinlock, ptr %hwlock, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock30) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb, %do.body24.critedge.sw.epilog_crit_edge, %do.body24.critedge.sw.epilog_crit_edge39, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_hwspin_lock_get_id(ptr noundef %np, i32 noundef %index) #0 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  %iter = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #7
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #7
  %1 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 1
  %2 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 2
  %3 = call ptr @memset(ptr %iter, i32 255, i32 16)
  %call.i55 = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef %index, ptr noundef nonnull %args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not = icmp eq i32 %call.i55, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args, align 4
  %call2 = call zeroext i1 @of_device_is_available(ptr noundef %5) #7
  br i1 %call2, label %if.end4, label %if.end.out.thread_crit_edge

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end4:                                          ; preds = %if.end
  %6 = call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !147
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %10 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %iter, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %1, align 4
  br label %for.cond

for.cond.loopexit:                                ; preds = %while.body.i.for.cond.loopexit_crit_edge, %while.cond.i.for.cond.loopexit_crit_edge
  %slot.0.ph = phi ptr [ %incdec.ptr29.i, %while.body.i.for.cond.loopexit_crit_edge ], [ null, %while.cond.i.for.cond.loopexit_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.loopexit, %rcu_read_lock.exit
  %hwlock.0 = phi ptr [ inttoptr (i32 -1 to ptr), %rcu_read_lock.exit ], [ %13, %for.cond.loopexit ]
  %slot.0 = phi ptr [ null, %rcu_read_lock.exit ], [ %slot.0.ph, %for.cond.loopexit ]
  %tobool6.not = icmp eq ptr %slot.0, null
  br i1 %tobool6.not, label %lor.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call7 = call ptr @radix_tree_next_chunk(ptr noundef nonnull @hwspinlock_tree, ptr noundef nonnull %iter, i32 noundef 0) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %lor.rhs.for.end_crit_edge, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

lor.rhs.for.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %slot.1 = phi ptr [ %slot.0, %for.cond.for.body_crit_edge ], [ %call7, %lor.rhs.for.body_crit_edge ]
  %12 = ptrtoint ptr %slot.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %slot.1, align 4
  %call.i56 = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true.i58, label %for.body.radix_tree_deref_slot.exit_crit_edge

for.body.radix_tree_deref_slot.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %radix_tree_deref_slot.exit

land.lhs.true.i58:                                ; preds = %for.body
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i58.radix_tree_deref_slot.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i58.radix_tree_deref_slot.exit_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %radix_tree_deref_slot.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i58
  %.b9.i = load i1, ptr @radix_tree_deref_slot.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.radix_tree_deref_slot.exit_crit_edge, label %if.then.i59

land.lhs.true4.i.radix_tree_deref_slot.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %radix_tree_deref_slot.exit

if.then.i59:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @radix_tree_deref_slot.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 179, ptr noundef nonnull @.str.28) #7
  br label %radix_tree_deref_slot.exit

radix_tree_deref_slot.exit:                       ; preds = %if.then.i59, %land.lhs.true4.i.radix_tree_deref_slot.exit_crit_edge, %land.lhs.true.i58.radix_tree_deref_slot.exit_crit_edge, %for.body.radix_tree_deref_slot.exit_crit_edge
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %radix_tree_deref_slot.exit.for.inc_crit_edge, label %if.end15, !prof !139

radix_tree_deref_slot.exit.for.inc_crit_edge:     ; preds = %radix_tree_deref_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end15:                                         ; preds = %radix_tree_deref_slot.exit
  %14 = ptrtoint ptr %13 to i32
  %and.i.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 2
  br i1 %cmp.i.i.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iter, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %2, align 4
  br label %for.inc

if.end20:                                         ; preds = %if.end15
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %13, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %25 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %args, align 4
  %cmp = icmp eq ptr %24, %26
  br i1 %cmp, label %if.end20.for.end_crit_edge, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %if.then18, %radix_tree_deref_slot.exit.for.inc_crit_edge
  %slot.2 = phi ptr [ %slot.1, %radix_tree_deref_slot.exit.for.inc_crit_edge ], [ null, %if.then18 ], [ %slot.1, %if.end20.for.inc_crit_edge ]
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %29 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iter, align 4
  %sub.i.i = sub i32 %28, %30
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.inc
  %slot.addr.0.i = phi ptr [ %slot.2, %for.inc ], [ %incdec.ptr29.i, %while.body.i.while.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %sub.i.i, %for.inc ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.for.cond.loopexit_crit_edge

while.cond.i.for.cond.loopexit_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr29.i = getelementptr ptr, ptr %slot.addr.0.i, i32 1
  %31 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iter, align 4
  %add.i.i = add i32 %32, 1
  store i32 %add.i.i, ptr %iter, align 4
  %33 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %incdec.ptr29.i, align 4
  %tobool32.not.i = icmp eq ptr %34, null
  br i1 %tobool32.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.cond.loopexit_crit_edge, !prof !139

while.body.i.for.cond.loopexit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %lor.rhs.for.end_crit_edge
  %hwlock.1 = phi ptr [ %hwlock.0, %lor.rhs.for.end_crit_edge ], [ %13, %if.end20.for.end_crit_edge ]
  %cmp25 = phi i1 [ true, %lor.rhs.for.end_crit_edge ], [ false, %if.end20.for.end_crit_edge ]
  %tobool36.not = phi i1 [ false, %lor.rhs.for.end_crit_edge ], [ true, %if.end20.for.end_crit_edge ]
  %ret.0 = phi i32 [ -517, %lor.rhs.for.end_crit_edge ], [ 0, %if.end20.for.end_crit_edge ]
  %call.i61 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i61, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i64

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i64:                                ; preds = %for.end
  %call1.i62 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i66

land.lhs.true.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i66:                               ; preds = %land.lhs.true.i64
  %.b4.i65 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65, label %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, label %if.then.i67

land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i67:                                      ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.29) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i67, %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !148
  %35 = call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i.i.i68 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i69, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i69, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %cmp25, label %out, label %if.end27

if.end27:                                         ; preds = %rcu_read_unlock.exit
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %39 = ptrtoint ptr %args_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.not.i = icmp eq i32 %40, 1
  br i1 %cmp.not.i, label %of_hwspin_lock_simple_xlate.exit, label %of_hwspin_lock_simple_xlate.exit.thread, !prof !149

of_hwspin_lock_simple_xlate.exit.thread:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 319, i32 noundef 9, ptr noundef null) #7
  br label %out.thread

of_hwspin_lock_simple_xlate.exit:                 ; preds = %if.end27
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %41 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %args.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp29 = icmp slt i32 %42, 0
  br i1 %cmp29, label %of_hwspin_lock_simple_xlate.exit.out.thread_crit_edge, label %lor.lhs.false

of_hwspin_lock_simple_xlate.exit.out.thread_crit_edge: ; preds = %of_hwspin_lock_simple_xlate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

lor.lhs.false:                                    ; preds = %of_hwspin_lock_simple_xlate.exit
  %43 = ptrtoint ptr %hwlock.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hwlock.1, align 4
  %num_locks = getelementptr inbounds %struct.hwspinlock_device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %num_locks to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_locks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %46)
  %cmp31.not = icmp slt i32 %42, %46
  br i1 %cmp31.not, label %out.thread75, label %lor.lhs.false.out.thread_crit_edge

lor.lhs.false.out.thread_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

out.thread75:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %base_id = getelementptr inbounds %struct.hwspinlock_device, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %base_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base_id, align 4
  %add = add i32 %48, %42
  %49 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %50) #7
  br label %55

out.thread:                                       ; preds = %lor.lhs.false.out.thread_crit_edge, %of_hwspin_lock_simple_xlate.exit.out.thread_crit_edge, %of_hwspin_lock_simple_xlate.exit.thread, %if.end.out.thread_crit_edge
  %ret.1.ph = phi i32 [ -22, %of_hwspin_lock_simple_xlate.exit.thread ], [ -22, %of_hwspin_lock_simple_xlate.exit.out.thread_crit_edge ], [ -22, %lor.lhs.false.out.thread_crit_edge ], [ -2, %if.end.out.thread_crit_edge ]
  %51 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %52) #7
  br label %cleanup

out:                                              ; preds = %rcu_read_unlock.exit
  %53 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %54) #7
  br i1 %tobool36.not, label %out._crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %55

55:                                               ; preds = %out._crit_edge, %out.thread75
  %id.079 = phi i32 [ %add, %out.thread75 ], [ -1, %out._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %55, %out.cleanup_crit_edge, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i55, %entry.cleanup_crit_edge ], [ %id.079, %55 ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.1.ph, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_hwspin_lock_get_id_byname(ptr noundef %np, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @of_property_match_string(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef nonnull %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @of_hwspin_lock_get_id(ptr noundef %np, i32 noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwspin_lock_register(ptr noundef %bank, ptr noundef %dev, ptr noundef %ops, i32 noundef %base_id, i32 noundef %num_locks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bank, null
  %tobool1.not = icmp eq ptr %ops, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %dev, null
  %or.cond51 = or i1 %tobool3.not, %or.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_locks)
  %tobool5.not = icmp eq i32 %num_locks, 0
  %or.cond52 = or i1 %or.cond51, %tobool5.not
  br i1 %or.cond52, label %entry.do.end_crit_edge, label %lor.lhs.false6

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false6:                                   ; preds = %entry
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %lor.lhs.false6.do.end_crit_edge, label %lor.lhs.false8

lor.lhs.false6.do.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %unlock = getelementptr inbounds %struct.hwspinlock_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unlock, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %lor.lhs.false8.do.end_crit_edge, label %if.end

lor.lhs.false8.do.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false8.do.end_crit_edge, %lor.lhs.false6.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false8
  %4 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %bank, align 4
  %ops11 = getelementptr inbounds %struct.hwspinlock_device, ptr %bank, i32 0, i32 1
  %5 = ptrtoint ptr %ops11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %ops11, align 4
  %base_id12 = getelementptr inbounds %struct.hwspinlock_device, ptr %bank, i32 0, i32 2
  %6 = ptrtoint ptr %base_id12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %base_id, ptr %base_id12, align 4
  %num_locks13 = getelementptr inbounds %struct.hwspinlock_device, ptr %bank, i32 0, i32 3
  %7 = ptrtoint ptr %num_locks13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num_locks, ptr %num_locks13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_locks)
  %cmp53 = icmp sgt i32 %num_locks, 0
  br i1 %cmp53, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %hwspin_lock_register_single.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %hwspin_lock_register_single.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hwspinlock_device, ptr %bank, i32 0, i32 4, i32 %i.054
  %lock15 = getelementptr %struct.hwspinlock_device, ptr %bank, i32 0, i32 4, i32 %i.054, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock15, ptr noundef nonnull @.str.6, ptr noundef nonnull @hwspin_lock_register.__key, i16 noundef signext 3) #7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bank, ptr %arrayidx, align 4
  %add = add i32 %i.054, %base_id
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwspinlock_tree_lock, i32 noundef 0) #7
  %call.i = tail call i32 @radix_tree_insert(ptr noundef nonnull @hwspinlock_tree, i32 noundef %add, ptr noundef %arrayidx) #7
  %9 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call.i, label %for.body.hwspin_lock_register_single.exit_crit_edge [
    i32 0, label %if.end4.i
    i32 -17, label %do.end.i
  ]

for.body.hwspin_lock_register_single.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwspin_lock_register_single.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %add) #10
  br label %hwspin_lock_register_single.exit

if.end4.i:                                        ; preds = %for.body
  %call5.i = tail call ptr @radix_tree_tag_set(ptr noundef nonnull @hwspinlock_tree, i32 noundef %add, i32 noundef 0) #7
  %cmp6.not.i = icmp eq ptr %call5.i, %arrayidx
  br i1 %cmp6.not.i, label %if.end4.i.hwspin_lock_register_single.exit_crit_edge, label %do.end18.i, !prof !149

if.end4.i.hwspin_lock_register_single.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwspin_lock_register_single.exit

do.end18.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 9, ptr noundef null) #7
  br label %hwspin_lock_register_single.exit

hwspin_lock_register_single.exit:                 ; preds = %do.end18.i, %if.end4.i.hwspin_lock_register_single.exit_crit_edge, %do.end.i, %for.body.hwspin_lock_register_single.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hwspinlock_tree_lock) #7
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %num_locks
  br i1 %exitcond.not, label %hwspin_lock_register_single.exit.cleanup_crit_edge, label %hwspin_lock_register_single.exit.for.body_crit_edge

hwspin_lock_register_single.exit.for.body_crit_edge: ; preds = %hwspin_lock_register_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

hwspin_lock_register_single.exit.cleanup_crit_edge: ; preds = %hwspin_lock_register_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %hwspin_lock_register_single.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %hwspin_lock_register_single.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwspin_lock_unregister(ptr noundef readonly %bank) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_locks = getelementptr inbounds %struct.hwspinlock_device, ptr %bank, i32 0, i32 3
  %0 = ptrtoint ptr %num_locks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35 = icmp sgt i32 %1, 0
  br i1 %cmp35, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %base_id = getelementptr inbounds %struct.hwspinlock_device, ptr %bank, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  %2 = ptrtoint ptr %base_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_id, align 4
  %add = add i32 %3, %i.036
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwspinlock_tree_lock, i32 noundef 0) #7
  %call.i = tail call i32 @radix_tree_tag_get(ptr noundef nonnull @hwspinlock_tree, i32 noundef %add, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %for.body.hwspin_lock_unregister_single.exit.thread_crit_edge, label %if.end.i

for.body.hwspin_lock_unregister_single.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwspin_lock_unregister_single.exit.thread

if.end.i:                                         ; preds = %for.body
  %call2.i = tail call ptr @radix_tree_delete(ptr noundef nonnull @hwspinlock_tree, i32 noundef %add) #7
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.hwspin_lock_unregister_single.exit.thread_crit_edge, label %if.end

if.end.i.hwspin_lock_unregister_single.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwspin_lock_unregister_single.exit.thread

hwspin_lock_unregister_single.exit.thread:        ; preds = %if.end.i.hwspin_lock_unregister_single.exit.thread_crit_edge, %for.body.hwspin_lock_unregister_single.exit.thread_crit_edge
  %.str.35.sink.i = phi ptr [ @.str.32, %for.body.hwspin_lock_unregister_single.exit.thread_crit_edge ], [ @.str.35, %if.end.i.hwspin_lock_unregister_single.exit.thread_crit_edge ]
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink.i, ptr noundef nonnull @.str.33, i32 noundef %add) #10
  tail call void @mutex_unlock(ptr noundef nonnull @hwspinlock_tree_lock) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call void @mutex_unlock(ptr noundef nonnull @hwspinlock_tree_lock) #7
  %arrayidx = getelementptr %struct.hwspinlock_device, ptr %bank, i32 0, i32 4, i32 %i.036
  %cmp1.not = icmp eq ptr %call2.i, %arrayidx
  br i1 %cmp1.not, label %if.end.if.end16_crit_edge, label %do.end, !prof !149

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 547, i32 noundef 9, ptr noundef null) #7
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %4 = ptrtoint ptr %num_locks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_locks, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %if.end16.for.body_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %hwspin_lock_unregister_single.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %hwspin_lock_unregister_single.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_hwspin_lock_unregister(ptr noundef %dev, ptr noundef %bank) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @devm_hwspin_lock_unreg, ptr noundef nonnull @devm_hwspin_lock_device_match, ptr noundef %bank) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !149

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 590, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_hwspin_lock_unreg(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %call = tail call i32 @hwspin_lock_unregister(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devm_hwspin_lock_device_match(ptr nocapture noundef readnone %dev, ptr noundef readonly %res, ptr noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !139

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_hwspin_lock_register(ptr noundef %dev, ptr noundef %bank, ptr noundef %ops, i32 noundef %base_id, i32 noundef %num_locks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_hwspin_lock_unreg, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.7) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hwspin_lock_register(ptr noundef %bank, ptr noundef %dev, ptr noundef %ops, i32 noundef %base_id, i32 noundef %num_locks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bank, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devres_free(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.else ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwspin_lock_get_id(ptr noundef %hwlock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwlock, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwlock, align 4
  %lock.i = getelementptr inbounds %struct.hwspinlock_device, ptr %1, i32 0, i32 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %hwlock to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %lock.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 52
  %base_id.i = getelementptr inbounds %struct.hwspinlock_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_id.i, align 4
  %add.i = add i32 %sub.ptr.div.i, %3
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %add.i, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hwspin_lock_request() #0 align 64 {
entry:
  %hwlock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwlock) #7
  %0 = ptrtoint ptr %hwlock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hwlock, align 4, !annotation !150
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwspinlock_tree_lock, i32 noundef 0) #7
  %call = call i32 @radix_tree_gang_lookup_tag(ptr noundef nonnull @hwspinlock_tree, ptr noundef nonnull %hwlock, i32 noundef 0, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  %1 = ptrtoint ptr %hwlock to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %hwlock, align 4
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2 = icmp sgt i32 %call, 1
  br i1 %cmp2, label %do.end13, label %if.end.if.end19_crit_edge, !prof !139

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 726, i32 noundef 9, ptr noundef null) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end13, %if.end.if.end19_crit_edge
  %2 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwlock, align 4
  %call27 = call fastcc i32 @__hwspin_lock_request(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hwlock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %hwlock, align 4
  br label %out

out:                                              ; preds = %if.then29, %if.end19.out_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef nonnull @hwspinlock_tree_lock) #7
  %5 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwlock, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwlock) #7
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_gang_lookup_tag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hwspin_lock_request(ptr noundef %hwlock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwlock, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %7) #7
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp3.not
  br i1 %or.cond, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #10
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !152
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end7.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

do.end7.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !153
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %do.end7.pm_runtime_put_noidle.exit_crit_edge
  %9 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver, align 4
  %owner9 = getelementptr inbounds %struct.device_driver, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %owner9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner9, align 4
  tail call void @module_put(ptr noundef %12) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwlock, align 4
  %lock.i = getelementptr inbounds %struct.hwspinlock_device, ptr %14, i32 0, i32 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %hwlock to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %lock.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 52
  %base_id.i = getelementptr inbounds %struct.hwspinlock_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %base_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_id.i, align 4
  %add.i = add i32 %sub.ptr.div.i, %16
  %call12 = tail call ptr @radix_tree_tag_clear(ptr noundef nonnull @hwspinlock_tree, i32 noundef %add.i, i32 noundef 0) #7
  %cmp13.not = icmp eq ptr %call12, %hwlock
  br i1 %cmp13.not, label %if.end10.cleanup_crit_edge, label %do.end24, !prof !149

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end24:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 674, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end10.cleanup_crit_edge, %pm_runtime_put_noidle.exit, %do.end
  %retval.0 = phi i32 [ %call.i, %pm_runtime_put_noidle.exit ], [ -22, %do.end ], [ 0, %do.end24 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hwspin_lock_request_specific(i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwspinlock_tree_lock, i32 noundef 0) #7
  %call = tail call ptr @radix_tree_lookup(ptr noundef nonnull @hwspinlock_tree, i32 noundef %id) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %id) #10
  br label %out

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %lock.i = getelementptr inbounds %struct.hwspinlock_device, ptr %1, i32 0, i32 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %lock.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 52
  %base_id.i = getelementptr inbounds %struct.hwspinlock_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_id.i, align 4
  %add.i = add i32 %sub.ptr.div.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %id)
  %cmp.not = icmp eq i32 %add.i, %id
  br i1 %cmp.not, label %if.end.if.end20_crit_edge, label %do.end14, !prof !149

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 767, i32 noundef 9, ptr noundef null) #7
  br label %if.end20

if.end20:                                         ; preds = %do.end14, %if.end.if.end20_crit_edge
  %call28 = tail call i32 @radix_tree_tag_get(ptr noundef nonnull @hwspinlock_tree, i32 noundef %id, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %id) #10
  br label %out

if.end36:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call fastcc i32 @__hwspin_lock_request(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  %spec.select = select i1 %cmp38, ptr null, ptr %call
  br label %out

out:                                              ; preds = %if.end36, %do.end33, %do.end
  %hwlock.0 = phi ptr [ null, %do.end33 ], [ null, %do.end ], [ %spec.select, %if.end36 ]
  tail call void @mutex_unlock(ptr noundef nonnull @hwspinlock_tree_lock) #7
  ret ptr %hwlock.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tag_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwspin_lock_free(ptr noundef %hwlock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hwlock, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwlock, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @hwspinlock_tree_lock, i32 noundef 0) #7
  %4 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwlock, align 4
  %lock.i = getelementptr inbounds %struct.hwspinlock_device, ptr %5, i32 0, i32 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %hwlock to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %lock.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 52
  %base_id.i = getelementptr inbounds %struct.hwspinlock_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %base_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_id.i, align 4
  %add.i = add i32 %sub.ptr.div.i, %7
  %call4 = tail call i32 @radix_tree_tag_get(ptr noundef nonnull @hwspinlock_tree, i32 noundef %add.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp eq i32 %call4, 1
  br i1 %cmp, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17) #10
  tail call void @dump_stack() #10
  br label %out

if.end9:                                          ; preds = %if.end
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #7
  %8 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hwlock, align 4
  %lock.i49 = getelementptr inbounds %struct.hwspinlock_device, ptr %9, i32 0, i32 4
  %sub.ptr.rhs.cast.i51 = ptrtoint ptr %lock.i49 to i32
  %sub.ptr.sub.i52 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i51
  %sub.ptr.div.i53 = sdiv exact i32 %sub.ptr.sub.i52, 52
  %base_id.i54 = getelementptr inbounds %struct.hwspinlock_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %base_id.i54 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_id.i54, align 4
  %add.i55 = add i32 %sub.ptr.div.i53, %11
  %call12 = tail call ptr @radix_tree_tag_set(ptr noundef nonnull @hwspinlock_tree, i32 noundef %add.i55, i32 noundef 0) #7
  %cmp13.not = icmp eq ptr %call12, %hwlock
  br i1 %cmp13.not, label %if.end9.if.end31_crit_edge, label %do.end25, !prof !149

if.end9.if.end31_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end25:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 832, i32 noundef 9, ptr noundef null) #7
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %if.end9.if.end31_crit_edge
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %15) #7
  br label %out

out:                                              ; preds = %if.end31, %do.end8
  %ret.0 = phi i32 [ -22, %do.end8 ], [ %call4, %if.end31 ]
  tail call void @mutex_unlock(ptr noundef nonnull @hwspinlock_tree_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_tag_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_hwspin_lock_free(ptr noundef %dev, ptr noundef %hwlock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @devm_hwspin_lock_release, ptr noundef nonnull @devm_hwspin_lock_match, ptr noundef %hwlock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !149

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 876, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_hwspin_lock_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %call = tail call i32 @hwspin_lock_free(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devm_hwspin_lock_match(ptr nocapture noundef readnone %dev, ptr noundef readonly %res, ptr noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !139

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 846, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_hwspin_lock_request(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_hwspin_lock_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.23) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @hwspin_lock_request()
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devres_free(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.else ], [ %call1, %if.then3 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_hwspin_lock_request_specific(ptr noundef %dev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_hwspin_lock_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.23) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @hwspin_lock_request_specific(i32 noundef %id)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devres_free(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.else ], [ %call1, %if.then3 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_tag_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !84, !86, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128}
!llvm.named.register.sp = !{!129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 95, i32 6}
!2 = !{ptr @__ksymtab___hwspin_trylock, !3, !"__ksymtab___hwspin_trylock", i1 false, i1 false}
!3 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 169, i32 1}
!4 = !{ptr @__ksymtab___hwspin_lock_timeout, !5, !"__ksymtab___hwspin_lock_timeout", i1 false, i1 false}
!5 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 244, i32 1}
!6 = !{ptr @__ksymtab___hwspin_unlock, !7, !"__ksymtab___hwspin_unlock", i1 false, i1 false}
!7 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 303, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 348, i32 39}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 348, i32 50}
!12 = !{ptr @__ksymtab_of_hwspin_lock_get_id, !13, !"__ksymtab_of_hwspin_lock_get_id", i1 false, i1 false}
!13 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 390, i32 1}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 413, i32 39}
!16 = !{ptr @__ksymtab_of_hwspin_lock_get_id_byname, !17, !"__ksymtab_of_hwspin_lock_get_id_byname", i1 false, i1 false}
!17 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 419, i32 1}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 494, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hwspin_lock_register._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @hwspin_lock_register._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @hwspin_lock_register.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 506, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__ksymtab_hwspin_lock_register, !27, !"__ksymtab_hwspin_lock_register", i1 false, i1 false}
!27 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 521, i32 1}
!28 = !{ptr @__ksymtab_hwspin_lock_unregister, !29, !"__ksymtab_hwspin_lock_unregister", i1 false, i1 false}
!29 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 552, i32 1}
!30 = !{ptr @__ksymtab_devm_hwspin_lock_unregister, !31, !"__ksymtab_devm_hwspin_lock_unregister", i1 false, i1 false}
!31 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 594, i32 1}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 620, i32 8}
!34 = !{ptr @__ksymtab_devm_hwspin_lock_register, !35, !"__ksymtab_devm_hwspin_lock_register", i1 false, i1 false}
!35 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 634, i32 1}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 688, i32 3}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hwspin_lock_get_id._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hwspin_lock_get_id._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_hwspin_lock_get_id, !42, !"__ksymtab_hwspin_lock_get_id", i1 false, i1 false}
!42 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 694, i32 1}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 720, i32 3}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hwspin_lock_request._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @hwspin_lock_request._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__ksymtab_hwspin_lock_request, !49, !"__ksymtab_hwspin_lock_request", i1 false, i1 false}
!49 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 737, i32 1}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 762, i32 3}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hwspin_lock_request_specific._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @hwspin_lock_request_specific._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 772, i32 3}
!57 = !{ptr @hwspin_lock_request_specific._entry.14, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @hwspin_lock_request_specific._entry_ptr.16, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @__ksymtab_hwspin_lock_request_specific, !60, !"__ksymtab_hwspin_lock_request_specific", i1 false, i1 false}
!60 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 786, i32 1}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 807, i32 3}
!63 = !{ptr @hwspin_lock_free._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @hwspin_lock_free._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 818, i32 3}
!67 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hwspin_lock_free._entry.18, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @hwspin_lock_free._entry_ptr.22, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @__ksymtab_hwspin_lock_free, !72, !"__ksymtab_hwspin_lock_free", i1 false, i1 false}
!72 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 840, i32 1}
!73 = !{ptr @__ksymtab_devm_hwspin_lock_free, !74, !"__ksymtab_devm_hwspin_lock_free", i1 false, i1 false}
!74 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 880, i32 1}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 900, i32 8}
!77 = !{ptr @__ksymtab_devm_hwspin_lock_request, !78, !"__ksymtab_devm_hwspin_lock_request", i1 false, i1 false}
!78 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 914, i32 1}
!79 = !{ptr @__ksymtab_devm_hwspin_lock_request_specific, !80, !"__ksymtab_devm_hwspin_lock_request_specific", i1 false, i1 false}
!80 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 950, i32 1}
!81 = !{ptr @__UNIQUE_ID_file171, !82, !"__UNIQUE_ID_file171", i1 false, i1 false}
!82 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 952, i32 1}
!83 = !{ptr @__UNIQUE_ID_license172, !82, !"__UNIQUE_ID_license172", i1 false, i1 false}
!84 = !{ptr @__UNIQUE_ID_description173, !85, !"__UNIQUE_ID_description173", i1 false, i1 false}
!85 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 953, i32 1}
!86 = !{ptr @__UNIQUE_ID_author174, !87, !"__UNIQUE_ID_author174", i1 false, i1 false}
!87 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 954, i32 1}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!90 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 50, i32 8}
!94 = !{ptr @hwspinlock_tree, !93, !"hwspinlock_tree", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/radix-tree.h", i32 179, i32 9}
!97 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!101 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 431, i32 4}
!104 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @hwspin_lock_register_single._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @hwspin_lock_register_single._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 456, i32 3}
!109 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @hwspin_lock_unregister_single._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @hwspin_lock_unregister_single._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 462, i32 3}
!114 = !{ptr @hwspin_lock_unregister_single._entry.34, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @hwspin_lock_unregister_single._entry_ptr.36, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 57, i32 8}
!118 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @hwspinlock_tree_lock, !117, !"hwspinlock_tree_lock", i1 false, i1 false}
!120 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 654, i32 3}
!122 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @__hwspin_lock_request._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @__hwspin_lock_request._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwspinlock/hwspinlock_core.c", i32 661, i32 3}
!127 = !{ptr @__hwspin_lock_request._entry.41, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @__hwspin_lock_request._entry_ptr.43, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{!"sp"}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{i64 607463, i64 607524}
!141 = !{i64 610195}
!142 = !{i64 610480}
!143 = !{i64 607898}
!144 = !{i64 607708}
!145 = !{i64 2152447809}
!146 = !{i64 2152452507}
!147 = !{i64 2149275244}
!148 = !{i64 2149275510}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{!"auto-init"}
!151 = !{i64 2148214401}
!152 = !{i64 699224, i64 699249, i64 699271, i64 699287, i64 699299, i64 699319, i64 699343, i64 699359, i64 699371}
!153 = !{i64 2148214589}
