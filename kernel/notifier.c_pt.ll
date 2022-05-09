; ModuleID = '/llk/IR_all_yes/kernel/notifier.c_pt.bc'
source_filename = "../kernel/notifier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+atomic_notifier_chain_register\22, \22a\22\09"
module asm "\09.weak\09__crc_atomic_notifier_chain_register\09\09\09\09"
module asm "\09.long\09__crc_atomic_notifier_chain_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atomic_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22atomic_notifier_chain_register\22\09\09\09\09\09"
module asm "__kstrtabns_atomic_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+atomic_notifier_chain_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_atomic_notifier_chain_unregister\09\09\09\09"
module asm "\09.long\09__crc_atomic_notifier_chain_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atomic_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22atomic_notifier_chain_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_atomic_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+atomic_notifier_call_chain\22, \22a\22\09"
module asm "\09.weak\09__crc_atomic_notifier_call_chain\09\09\09\09"
module asm "\09.long\09__crc_atomic_notifier_call_chain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atomic_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22atomic_notifier_call_chain\22\09\09\09\09\09"
module asm "__kstrtabns_atomic_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blocking_notifier_chain_register\22, \22a\22\09"
module asm "\09.weak\09__crc_blocking_notifier_chain_register\09\09\09\09"
module asm "\09.long\09__crc_blocking_notifier_chain_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blocking_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22blocking_notifier_chain_register\22\09\09\09\09\09"
module asm "__kstrtabns_blocking_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blocking_notifier_chain_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_blocking_notifier_chain_unregister\09\09\09\09"
module asm "\09.long\09__crc_blocking_notifier_chain_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blocking_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22blocking_notifier_chain_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_blocking_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blocking_notifier_call_chain_robust\22, \22a\22\09"
module asm "\09.weak\09__crc_blocking_notifier_call_chain_robust\09\09\09\09"
module asm "\09.long\09__crc_blocking_notifier_call_chain_robust\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blocking_notifier_call_chain_robust:\09\09\09\09\09"
module asm "\09.asciz \09\22blocking_notifier_call_chain_robust\22\09\09\09\09\09"
module asm "__kstrtabns_blocking_notifier_call_chain_robust:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blocking_notifier_call_chain\22, \22a\22\09"
module asm "\09.weak\09__crc_blocking_notifier_call_chain\09\09\09\09"
module asm "\09.long\09__crc_blocking_notifier_call_chain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blocking_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22blocking_notifier_call_chain\22\09\09\09\09\09"
module asm "__kstrtabns_blocking_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+raw_notifier_chain_register\22, \22a\22\09"
module asm "\09.weak\09__crc_raw_notifier_chain_register\09\09\09\09"
module asm "\09.long\09__crc_raw_notifier_chain_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_notifier_chain_register\22\09\09\09\09\09"
module asm "__kstrtabns_raw_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+raw_notifier_chain_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_raw_notifier_chain_unregister\09\09\09\09"
module asm "\09.long\09__crc_raw_notifier_chain_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_notifier_chain_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_raw_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+raw_notifier_call_chain_robust\22, \22a\22\09"
module asm "\09.weak\09__crc_raw_notifier_call_chain_robust\09\09\09\09"
module asm "\09.long\09__crc_raw_notifier_call_chain_robust\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_notifier_call_chain_robust:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_notifier_call_chain_robust\22\09\09\09\09\09"
module asm "__kstrtabns_raw_notifier_call_chain_robust:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+raw_notifier_call_chain\22, \22a\22\09"
module asm "\09.weak\09__crc_raw_notifier_call_chain\09\09\09\09"
module asm "\09.long\09__crc_raw_notifier_call_chain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_notifier_call_chain\22\09\09\09\09\09"
module asm "__kstrtabns_raw_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+srcu_notifier_chain_register\22, \22a\22\09"
module asm "\09.weak\09__crc_srcu_notifier_chain_register\09\09\09\09"
module asm "\09.long\09__crc_srcu_notifier_chain_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_notifier_chain_register\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+srcu_notifier_chain_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_srcu_notifier_chain_unregister\09\09\09\09"
module asm "\09.long\09__crc_srcu_notifier_chain_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_notifier_chain_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+srcu_notifier_call_chain\22, \22a\22\09"
module asm "\09.weak\09__crc_srcu_notifier_call_chain\09\09\09\09"
module asm "\09.long\09__crc_srcu_notifier_call_chain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_notifier_call_chain\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+srcu_init_notifier_head\22, \22a\22\09"
module asm "\09.weak\09__crc_srcu_init_notifier_head\09\09\09\09"
module asm "\09.long\09__crc_srcu_init_notifier_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_init_notifier_head:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_init_notifier_head\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_init_notifier_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_die_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_register_die_notifier\09\09\09\09"
module asm "\09.long\09__crc_register_die_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_die_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_die_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_die_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_die_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_die_notifier\09\09\09\09"
module asm "\09.long\09__crc_unregister_die_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_die_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_die_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_die_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.die_args = type { ptr, ptr, i32, i32, i32 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(reboot_notifier_list).rwsem.wait_lock\00", [57 x i8] zeroinitializer }, align 32
@reboot_notifier_list = dso_local global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @reboot_notifier_list, i64 56), ptr getelementptr (i8, ptr @reboot_notifier_list, i64 56) }, ptr @reboot_notifier_list, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(reboot_notifier_list).rwsem\00", [35 x i8] zeroinitializer }, align 32
@_kbl_addr_notifier_call_chain = internal global i32 ptrtoint (ptr @notifier_call_chain to i32), section "_kprobe_blacklist", align 4
@__kstrtab_atomic_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_atomic_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__ksymtab_atomic_notifier_chain_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atomic_notifier_chain_register to i32), ptr @__kstrtab_atomic_notifier_chain_register, ptr @__kstrtabns_atomic_notifier_chain_register }, section "___ksymtab_gpl+atomic_notifier_chain_register", align 4
@__kstrtab_atomic_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_atomic_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_atomic_notifier_chain_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atomic_notifier_chain_unregister to i32), ptr @__kstrtab_atomic_notifier_chain_unregister, ptr @__kstrtabns_atomic_notifier_chain_unregister }, section "___ksymtab_gpl+atomic_notifier_chain_unregister", align 4
@__kstrtab_atomic_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_atomic_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_atomic_notifier_call_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atomic_notifier_call_chain to i32), ptr @__kstrtab_atomic_notifier_call_chain, ptr @__kstrtabns_atomic_notifier_call_chain }, section "___ksymtab_gpl+atomic_notifier_call_chain", align 4
@_kbl_addr_atomic_notifier_call_chain = internal global i32 ptrtoint (ptr @atomic_notifier_call_chain to i32), section "_kprobe_blacklist", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_blocking_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_blocking_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__ksymtab_blocking_notifier_chain_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blocking_notifier_chain_register to i32), ptr @__kstrtab_blocking_notifier_chain_register, ptr @__kstrtabns_blocking_notifier_chain_register }, section "___ksymtab_gpl+blocking_notifier_chain_register", align 4
@__kstrtab_blocking_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_blocking_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_blocking_notifier_chain_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blocking_notifier_chain_unregister to i32), ptr @__kstrtab_blocking_notifier_chain_unregister, ptr @__kstrtabns_blocking_notifier_chain_unregister }, section "___ksymtab_gpl+blocking_notifier_chain_unregister", align 4
@__kstrtab_blocking_notifier_call_chain_robust = external dso_local constant [0 x i8], align 1
@__kstrtabns_blocking_notifier_call_chain_robust = external dso_local constant [0 x i8], align 1
@__ksymtab_blocking_notifier_call_chain_robust = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blocking_notifier_call_chain_robust to i32), ptr @__kstrtab_blocking_notifier_call_chain_robust, ptr @__kstrtabns_blocking_notifier_call_chain_robust }, section "___ksymtab_gpl+blocking_notifier_call_chain_robust", align 4
@__kstrtab_blocking_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_blocking_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_blocking_notifier_call_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blocking_notifier_call_chain to i32), ptr @__kstrtab_blocking_notifier_call_chain, ptr @__kstrtabns_blocking_notifier_call_chain }, section "___ksymtab_gpl+blocking_notifier_call_chain", align 4
@__kstrtab_raw_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_notifier_chain_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_notifier_chain_register to i32), ptr @__kstrtab_raw_notifier_chain_register, ptr @__kstrtabns_raw_notifier_chain_register }, section "___ksymtab_gpl+raw_notifier_chain_register", align 4
@__kstrtab_raw_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_notifier_chain_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_notifier_chain_unregister to i32), ptr @__kstrtab_raw_notifier_chain_unregister, ptr @__kstrtabns_raw_notifier_chain_unregister }, section "___ksymtab_gpl+raw_notifier_chain_unregister", align 4
@__kstrtab_raw_notifier_call_chain_robust = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_notifier_call_chain_robust = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_notifier_call_chain_robust = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_notifier_call_chain_robust to i32), ptr @__kstrtab_raw_notifier_call_chain_robust, ptr @__kstrtabns_raw_notifier_call_chain_robust }, section "___ksymtab_gpl+raw_notifier_call_chain_robust", align 4
@__kstrtab_raw_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_notifier_call_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_notifier_call_chain to i32), ptr @__kstrtab_raw_notifier_call_chain, ptr @__kstrtabns_raw_notifier_call_chain }, section "___ksymtab_gpl+raw_notifier_call_chain", align 4
@__kstrtab_srcu_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_notifier_chain_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_notifier_chain_register to i32), ptr @__kstrtab_srcu_notifier_chain_register, ptr @__kstrtabns_srcu_notifier_chain_register }, section "___ksymtab_gpl+srcu_notifier_chain_register", align 4
@__kstrtab_srcu_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_notifier_chain_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_notifier_chain_unregister to i32), ptr @__kstrtab_srcu_notifier_chain_unregister, ptr @__kstrtabns_srcu_notifier_chain_unregister }, section "___ksymtab_gpl+srcu_notifier_chain_unregister", align 4
@__kstrtab_srcu_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_notifier_call_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_notifier_call_chain to i32), ptr @__kstrtab_srcu_notifier_call_chain, ptr @__kstrtabns_srcu_notifier_call_chain }, section "___ksymtab_gpl+srcu_notifier_call_chain", align 4
@srcu_init_notifier_head.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nh->mutex\00", [21 x i8] zeroinitializer }, align 32
@srcu_init_notifier_head.__srcu_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&nh->srcu\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_srcu_init_notifier_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_init_notifier_head = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_init_notifier_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_init_notifier_head to i32), ptr @__kstrtab_srcu_init_notifier_head, ptr @__kstrtabns_srcu_init_notifier_head }, section "___ksymtab_gpl+srcu_init_notifier_head", align 4
@notify_die.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kernel/notifier.c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"notify_die called but RCU thinks we're quiescent\00", [47 x i8] zeroinitializer }, align 32
@die_chain = internal global { %struct.atomic_notifier_head, [48 x i8] } { %struct.atomic_notifier_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null }, [48 x i8] zeroinitializer }, align 32
@_kbl_addr_notify_die = internal global i32 ptrtoint (ptr @notify_die to i32), section "_kprobe_blacklist", align 4
@__kstrtab_register_die_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_die_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_die_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_die_notifier to i32), ptr @__kstrtab_register_die_notifier, ptr @__kstrtabns_register_die_notifier }, section "___ksymtab_gpl+register_die_notifier", align 4
@__kstrtab_unregister_die_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_die_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_die_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_die_notifier to i32), ptr @__kstrtab_unregister_die_notifier, ptr @__kstrtabns_unregister_die_notifier }, section "___ksymtab_gpl+unregister_die_notifier", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid notifier called!\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"notifier callback %ps already registered\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"die_chain.lock\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"reboot_notifier_list\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 15, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 506, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"__srcu_key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 507, i32 6 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 528, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"die_chain\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 79, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 27, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 695, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 723, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 189, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [21 x i8] c"../kernel/notifier.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 515, i32 8 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__ksymtab_atomic_notifier_call_chain, ptr @__ksymtab_atomic_notifier_chain_register, ptr @__ksymtab_atomic_notifier_chain_unregister, ptr @__ksymtab_blocking_notifier_call_chain, ptr @__ksymtab_blocking_notifier_call_chain_robust, ptr @__ksymtab_blocking_notifier_chain_register, ptr @__ksymtab_blocking_notifier_chain_unregister, ptr @__ksymtab_raw_notifier_call_chain, ptr @__ksymtab_raw_notifier_call_chain_robust, ptr @__ksymtab_raw_notifier_chain_register, ptr @__ksymtab_raw_notifier_chain_unregister, ptr @__ksymtab_register_die_notifier, ptr @__ksymtab_srcu_init_notifier_head, ptr @__ksymtab_srcu_notifier_call_chain, ptr @__ksymtab_srcu_notifier_chain_register, ptr @__ksymtab_srcu_notifier_chain_unregister, ptr @__ksymtab_unregister_die_notifier, ptr @_kbl_addr_atomic_notifier_call_chain, ptr @_kbl_addr_notifier_call_chain, ptr @_kbl_addr_notify_die, ptr @.str, ptr @reboot_notifier_list, ptr @.str.1, ptr @srcu_init_notifier_head.__key, ptr @.str.2, ptr @srcu_init_notifier_head.__srcu_key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @die_chain, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_notifier_list to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_init_notifier_head.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_init_notifier_head.__srcu_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @die_chain to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @notifier_call_chain(ptr noundef %nl, i32 noundef %val, ptr noundef %v, i32 noundef %nr_to_call, ptr noundef %nr_calls) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %nl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_to_call)
  %tobool2.not61 = icmp eq i32 %nr_to_call, 0
  %tobool.not5762 = icmp eq ptr %1, null
  %or.cond5863 = or i1 %tobool.not5762, %tobool2.not61
  br i1 %or.cond5863, label %entry.while.end_crit_edge, label %while.body.lr.ph.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %tobool39.not = icmp eq ptr %nr_calls, null
  br label %while.body.lr.ph

while.cond.outer:                                 ; preds = %if.end41
  %dec = add i32 %nr_to_call.addr.0.ph66, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  %tobool.not57 = icmp eq ptr %3, null
  %or.cond58 = select i1 %tobool.not57, i1 true, i1 %tobool2.not
  br i1 %or.cond58, label %while.cond.outer.while.end_crit_edge, label %while.cond.outer.while.body.lr.ph_crit_edge

while.cond.outer.while.body.lr.ph_crit_edge:      ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph

while.cond.outer.while.end_crit_edge:             ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.outer.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %nr_to_call.addr.0.ph66 = phi i32 [ %nr_to_call, %while.body.lr.ph.lr.ph ], [ %dec, %while.cond.outer.while.body.lr.ph_crit_edge ]
  %ret.0.ph65 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %call38, %while.cond.outer.while.body.lr.ph_crit_edge ]
  %nb.0.ph64 = phi ptr [ %1, %while.body.lr.ph.lr.ph ], [ %3, %while.cond.outer.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %do.end23.while.body_crit_edge, %while.body.lr.ph
  %nb.059 = phi ptr [ %nb.0.ph64, %while.body.lr.ph ], [ %3, %do.end23.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.notifier_block, ptr %nb.059, i32 0, i32 1
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %next, align 4
  %4 = ptrtoint ptr %nb.059 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nb.059, align 4
  %call = tail call i32 @func_ptr_is_kernel_text(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %do.end23, label %if.end36, !prof !81

do.end23:                                         ; preds = %while.body
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end23.while.end_crit_edge, label %do.end23.while.body_crit_edge

do.end23.while.body_crit_edge:                    ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end23.while.end_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end36:                                         ; preds = %while.body
  %6 = ptrtoint ptr %nb.059 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nb.059, align 4
  %call38 = tail call i32 %7(ptr noundef nonnull %nb.059, i32 noundef %val, ptr noundef %v) #5
  br i1 %tobool39.not, label %if.end36.if.end41_crit_edge, label %if.then40

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %nr_calls to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_calls, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %nr_calls, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end36.if.end41_crit_edge
  %and = and i32 %call38, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %while.cond.outer, label %if.end41.while.end_crit_edge

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end41.while.end_crit_edge, %do.end23.while.end_crit_edge, %while.cond.outer.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %ret.0.ph65, %do.end23.while.end_crit_edge ], [ %call38, %while.cond.outer.while.end_crit_edge ], [ %call38, %if.end41.while.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomic_notifier_chain_register(ptr noundef %nh, ptr noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %nh) #5
  %head = getelementptr inbounds %struct.atomic_notifier_head, ptr %nh, i32 0, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not77.i = icmp eq ptr %1, null
  br i1 %cmp.not77.i, label %entry.while.end.i_crit_edge, label %while.body.lr.ph.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %priority.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end27.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %10, %if.end27.i.while.body.i_crit_edge ]
  %nl.addr.078.i = phi ptr [ %head, %while.body.lr.ph.i ], [ %next.i, %if.end27.i.while.body.i_crit_edge ]
  %cmp1.i = icmp eq ptr %2, %n
  br i1 %cmp1.i, label %do.end.i, label %if.end23.i, !prof !81

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %n, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %4) #5
  br label %notifier_chain_register.exit

if.end23.i:                                       ; preds = %while.body.i
  %5 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority.i, align 4
  %priority24.i = getelementptr inbounds %struct.notifier_block, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %priority24.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priority24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp25.i = icmp sgt i32 %6, %8
  br i1 %cmp25.i, label %if.end23.i.while.end.i_crit_edge, label %if.end27.i

if.end23.i.while.end.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end27.i:                                       ; preds = %if.end23.i
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next.i, align 4
  %cmp.not.i = icmp eq ptr %10, null
  br i1 %cmp.not.i, label %if.end27.i.while.end.i_crit_edge, label %if.end27.i.while.body.i_crit_edge

if.end27.i.while.body.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end27.i.while.end.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %if.end27.i.while.end.i_crit_edge, %if.end23.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %nl.addr.0.lcssa.i = phi ptr [ %head, %entry.while.end.i_crit_edge ], [ %next.i, %if.end27.i.while.end.i_crit_edge ], [ %nl.addr.078.i, %if.end23.i.while.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ null, %entry.while.end.i_crit_edge ], [ null, %if.end27.i.while.end.i_crit_edge ], [ %2, %if.end23.i.while.end.i_crit_edge ]
  %next28.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %11 = ptrtoint ptr %next28.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.lcssa.i, ptr %next28.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !82
  %12 = ptrtoint ptr %nl.addr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %n, ptr %nl.addr.0.lcssa.i, align 4
  br label %notifier_chain_register.exit

notifier_chain_register.exit:                     ; preds = %while.end.i, %do.end.i
  %retval.0.i = phi i32 [ -17, %do.end.i ], [ 0, %while.end.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %nh, i32 noundef %call2) #5
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @notifier_chain_register(ptr noundef %nl, ptr noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nl, align 4
  %cmp.not77 = icmp eq ptr %1, null
  br i1 %cmp.not77, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %priority = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %10, %if.end27.while.body_crit_edge ]
  %nl.addr.078 = phi ptr [ %nl, %while.body.lr.ph ], [ %next, %if.end27.while.body_crit_edge ]
  %cmp1 = icmp eq ptr %2, %n
  br i1 %cmp1, label %do.end, label %if.end23, !prof !81

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %n, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %4) #5
  br label %return

if.end23:                                         ; preds = %while.body
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority, align 4
  %priority24 = getelementptr inbounds %struct.notifier_block, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %priority24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priority24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp25 = icmp sgt i32 %6, %8
  br i1 %cmp25, label %if.end23.while.end_crit_edge, label %if.end27

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end27:                                         ; preds = %if.end23
  %next = getelementptr inbounds %struct.notifier_block, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %10, null
  br i1 %cmp.not, label %if.end27.while.end_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %if.end23.while.end_crit_edge, %entry.while.end_crit_edge
  %nl.addr.0.lcssa = phi ptr [ %nl, %entry.while.end_crit_edge ], [ %nl.addr.078, %if.end23.while.end_crit_edge ], [ %next, %if.end27.while.end_crit_edge ]
  %.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %2, %if.end23.while.end_crit_edge ], [ null, %if.end27.while.end_crit_edge ]
  %next28 = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %11 = ptrtoint ptr %next28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.lcssa, ptr %next28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !82
  %12 = ptrtoint ptr %nl.addr.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %n, ptr %nl.addr.0.lcssa, align 4
  br label %return

return:                                           ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ -17, %do.end ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomic_notifier_chain_unregister(ptr noundef %nh, ptr noundef readonly %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %nh) #5
  %head = getelementptr inbounds %struct.atomic_notifier_head, ptr %nh, i32 0, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not41.i = icmp eq ptr %1, null
  br i1 %cmp.not41.i, label %entry.notifier_chain_unregister.exit_crit_edge, label %while.body.i.preheader

entry.notifier_chain_unregister.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_chain_unregister.exit

while.body.i.preheader:                           ; preds = %entry
  %cmp1.i10 = icmp eq ptr %1, %n
  br i1 %cmp1.i10, label %while.body.i.preheader.do.body.i_crit_edge, label %while.body.i.preheader.while.cond.i_crit_edge

while.body.i.preheader.while.cond.i_crit_edge:    ; preds = %while.body.i.preheader
  br label %while.cond.i

while.body.i.preheader.do.body.i_crit_edge:       ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.body.i.preheader.while.cond.i_crit_edge
  %2 = phi ptr [ %4, %while.body.i.while.cond.i_crit_edge ], [ %1, %while.body.i.preheader.while.cond.i_crit_edge ]
  %next35.i = getelementptr inbounds %struct.notifier_block, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %next35.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next35.i, align 4
  %cmp.not.i = icmp eq ptr %4, null
  br i1 %cmp.not.i, label %while.cond.i.notifier_chain_unregister.exit_crit_edge, label %while.body.i

while.cond.i.notifier_chain_unregister.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_chain_unregister.exit

while.body.i:                                     ; preds = %while.cond.i
  %cmp1.i = icmp eq ptr %4, %n
  br i1 %cmp1.i, label %do.body.i.loopexit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

do.body.i.loopexit:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %next35.i.le = getelementptr inbounds %struct.notifier_block, ptr %2, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.loopexit, %while.body.i.preheader.do.body.i_crit_edge
  %nl.addr.042.i.lcssa = phi ptr [ %head, %while.body.i.preheader.do.body.i_crit_edge ], [ %next35.i.le, %do.body.i.loopexit ]
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %5 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  %7 = ptrtoint ptr %nl.addr.042.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %nl.addr.042.i.lcssa, align 4
  br label %notifier_chain_unregister.exit

notifier_chain_unregister.exit:                   ; preds = %do.body.i, %while.cond.i.notifier_chain_unregister.exit_crit_edge, %entry.notifier_chain_unregister.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i ], [ -2, %entry.notifier_chain_unregister.exit_crit_edge ], [ -2, %while.cond.i.notifier_chain_unregister.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %nh, i32 noundef %call2) #5
  tail call void @synchronize_rcu() #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomic_notifier_call_chain(ptr noundef %nh, i32 noundef %val, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #5
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !84
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %head = getelementptr inbounds %struct.atomic_notifier_head, ptr %nh, i32 0, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %head, align 4
  %tobool.not5762.i = icmp eq ptr %5, null
  br i1 %tobool.not5762.i, label %rcu_read_lock.exit.notifier_call_chain.exit_crit_edge, label %rcu_read_lock.exit.while.body.lr.ph.i_crit_edge

rcu_read_lock.exit.while.body.lr.ph.i_crit_edge:  ; preds = %rcu_read_lock.exit
  br label %while.body.lr.ph.i

rcu_read_lock.exit.notifier_call_chain.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

while.cond.outer.i:                               ; preds = %if.end36.i
  %dec.i = add i32 %nr_to_call.addr.0.ph66.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  %tobool.not57.i = icmp eq ptr %7, null
  %or.cond58.i = select i1 %tobool.not57.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond58.i, label %while.cond.outer.i.notifier_call_chain.exit_crit_edge, label %while.cond.outer.i.while.body.lr.ph.i_crit_edge

while.cond.outer.i.while.body.lr.ph.i_crit_edge:  ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i

while.cond.outer.i.notifier_call_chain.exit_crit_edge: ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

while.body.lr.ph.i:                               ; preds = %while.cond.outer.i.while.body.lr.ph.i_crit_edge, %rcu_read_lock.exit.while.body.lr.ph.i_crit_edge
  %nr_to_call.addr.0.ph66.i = phi i32 [ %dec.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ -1, %rcu_read_lock.exit.while.body.lr.ph.i_crit_edge ]
  %ret.0.ph65.i = phi i32 [ %call38.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ 0, %rcu_read_lock.exit.while.body.lr.ph.i_crit_edge ]
  %nb.0.ph64.i = phi ptr [ %7, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ %5, %rcu_read_lock.exit.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %do.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %nb.059.i = phi ptr [ %nb.0.ph64.i, %while.body.lr.ph.i ], [ %7, %do.end23.i.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %nb.059.i, i32 0, i32 1
  %6 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %next.i, align 4
  %8 = ptrtoint ptr %nb.059.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nb.059.i, align 4
  %call.i1 = tail call i32 @func_ptr_is_kernel_text(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool8.not.i = icmp eq i32 %call.i1, 0
  br i1 %tobool8.not.i, label %do.end23.i, label %if.end36.i, !prof !81

do.end23.i:                                       ; preds = %while.body.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  %tobool.not.i2 = icmp eq ptr %7, null
  br i1 %tobool.not.i2, label %do.end23.i.notifier_call_chain.exit_crit_edge, label %do.end23.i.while.body.i_crit_edge

do.end23.i.while.body.i_crit_edge:                ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

do.end23.i.notifier_call_chain.exit_crit_edge:    ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

if.end36.i:                                       ; preds = %while.body.i
  %10 = ptrtoint ptr %nb.059.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nb.059.i, align 4
  %call38.i = tail call i32 %11(ptr noundef nonnull %nb.059.i, i32 noundef %val, ptr noundef %v) #5
  %and.i = and i32 %call38.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %while.cond.outer.i, label %if.end36.i.notifier_call_chain.exit_crit_edge

if.end36.i.notifier_call_chain.exit_crit_edge:    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

notifier_call_chain.exit:                         ; preds = %if.end36.i.notifier_call_chain.exit_crit_edge, %do.end23.i.notifier_call_chain.exit_crit_edge, %while.cond.outer.i.notifier_call_chain.exit_crit_edge, %rcu_read_lock.exit.notifier_call_chain.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %rcu_read_lock.exit.notifier_call_chain.exit_crit_edge ], [ %ret.0.ph65.i, %do.end23.i.notifier_call_chain.exit_crit_edge ], [ %call38.i, %if.end36.i.notifier_call_chain.exit_crit_edge ], [ %call38.i, %while.cond.outer.i.notifier_call_chain.exit_crit_edge ]
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i3, label %notifier_call_chain.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

notifier_call_chain.exit.rcu_read_unlock.exit_crit_edge: ; preds = %notifier_call_chain.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %notifier_call_chain.exit
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %notifier_call_chain.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !85
  %12 = tail call i32 @llvm.read_register.i32(metadata !71) #5
  %and.i.i.i.i.i10 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blocking_notifier_chain_register(ptr noundef %nh, ptr noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %head = getelementptr inbounds %struct.blocking_notifier_head, ptr %nh, i32 0, i32 1
  %call = tail call fastcc i32 @notifier_chain_register(ptr noundef %head, ptr noundef %n)
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_write(ptr noundef %nh) #5
  %head2 = getelementptr inbounds %struct.blocking_notifier_head, ptr %nh, i32 0, i32 1
  %1 = ptrtoint ptr %head2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head2, align 4
  %cmp.not77.i = icmp eq ptr %2, null
  br i1 %cmp.not77.i, label %if.end.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end
  %priority.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end27.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %3 = phi ptr [ %2, %while.body.lr.ph.i ], [ %11, %if.end27.i.while.body.i_crit_edge ]
  %nl.addr.078.i = phi ptr [ %head2, %while.body.lr.ph.i ], [ %next.i, %if.end27.i.while.body.i_crit_edge ]
  %cmp1.i = icmp eq ptr %3, %n
  br i1 %cmp1.i, label %do.end.i, label %if.end23.i, !prof !81

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %n, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %5) #5
  br label %notifier_chain_register.exit

if.end23.i:                                       ; preds = %while.body.i
  %6 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priority.i, align 4
  %priority24.i = getelementptr inbounds %struct.notifier_block, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %priority24.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priority24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp25.i = icmp sgt i32 %7, %9
  br i1 %cmp25.i, label %if.end23.i.while.end.i_crit_edge, label %if.end27.i

if.end23.i.while.end.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end27.i:                                       ; preds = %if.end23.i
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next.i, align 4
  %cmp.not.i = icmp eq ptr %11, null
  br i1 %cmp.not.i, label %if.end27.i.while.end.i_crit_edge, label %if.end27.i.while.body.i_crit_edge

if.end27.i.while.body.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end27.i.while.end.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %if.end27.i.while.end.i_crit_edge, %if.end23.i.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %nl.addr.0.lcssa.i = phi ptr [ %head2, %if.end.while.end.i_crit_edge ], [ %next.i, %if.end27.i.while.end.i_crit_edge ], [ %nl.addr.078.i, %if.end23.i.while.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ null, %if.end.while.end.i_crit_edge ], [ null, %if.end27.i.while.end.i_crit_edge ], [ %3, %if.end23.i.while.end.i_crit_edge ]
  %next28.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %12 = ptrtoint ptr %next28.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.lcssa.i, ptr %next28.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !82
  %13 = ptrtoint ptr %nl.addr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %n, ptr %nl.addr.0.lcssa.i, align 4
  br label %notifier_chain_register.exit

notifier_chain_register.exit:                     ; preds = %while.end.i, %do.end.i
  %retval.0.i = phi i32 [ -17, %do.end.i ], [ 0, %while.end.i ]
  tail call void @up_write(ptr noundef %nh) #5
  br label %cleanup

cleanup:                                          ; preds = %notifier_chain_register.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i, %notifier_chain_register.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blocking_notifier_chain_unregister(ptr noundef %nh, ptr noundef readonly %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !81

if.then:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.blocking_notifier_head, ptr %nh, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head, align 4
  %cmp.not41.i = icmp eq ptr %2, null
  br i1 %cmp.not41.i, label %if.then.cleanup_crit_edge, label %while.body.i.preheader

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.preheader:                           ; preds = %if.then
  %cmp1.i23 = icmp eq ptr %2, %n
  br i1 %cmp1.i23, label %while.body.i.preheader.do.body.i_crit_edge, label %while.body.i.preheader.while.cond.i_crit_edge

while.body.i.preheader.while.cond.i_crit_edge:    ; preds = %while.body.i.preheader
  br label %while.cond.i

while.body.i.preheader.do.body.i_crit_edge:       ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.body.i.preheader.while.cond.i_crit_edge
  %3 = phi ptr [ %5, %while.body.i.while.cond.i_crit_edge ], [ %2, %while.body.i.preheader.while.cond.i_crit_edge ]
  %next35.i = getelementptr inbounds %struct.notifier_block, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %next35.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next35.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %while.cond.i.cleanup_crit_edge, label %while.body.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %cmp1.i = icmp eq ptr %5, %n
  br i1 %cmp1.i, label %do.body.i.loopexit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

do.body.i.loopexit:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %next35.i.le = getelementptr inbounds %struct.notifier_block, ptr %3, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.loopexit, %while.body.i.preheader.do.body.i_crit_edge
  %nl.addr.042.i.lcssa = phi ptr [ %head, %while.body.i.preheader.do.body.i_crit_edge ], [ %next35.i.le, %do.body.i.loopexit ]
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %6 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  %8 = ptrtoint ptr %nl.addr.042.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %nl.addr.042.i.lcssa, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_write(ptr noundef %nh) #5
  %head2 = getelementptr inbounds %struct.blocking_notifier_head, ptr %nh, i32 0, i32 1
  %9 = ptrtoint ptr %head2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head2, align 4
  %cmp.not41.i9 = icmp eq ptr %10, null
  br i1 %cmp.not41.i9, label %if.end.notifier_chain_unregister.exit19_crit_edge, label %while.body.i15.preheader

if.end.notifier_chain_unregister.exit19_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_chain_unregister.exit19

while.body.i15.preheader:                         ; preds = %if.end
  %cmp1.i1422 = icmp eq ptr %10, %n
  br i1 %cmp1.i1422, label %while.body.i15.preheader.do.body.i17_crit_edge, label %while.body.i15.preheader.while.cond.i12_crit_edge

while.body.i15.preheader.while.cond.i12_crit_edge: ; preds = %while.body.i15.preheader
  br label %while.cond.i12

while.body.i15.preheader.do.body.i17_crit_edge:   ; preds = %while.body.i15.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i17

while.cond.i12:                                   ; preds = %while.body.i15.while.cond.i12_crit_edge, %while.body.i15.preheader.while.cond.i12_crit_edge
  %11 = phi ptr [ %13, %while.body.i15.while.cond.i12_crit_edge ], [ %10, %while.body.i15.preheader.while.cond.i12_crit_edge ]
  %next35.i10 = getelementptr inbounds %struct.notifier_block, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %next35.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next35.i10, align 4
  %cmp.not.i11 = icmp eq ptr %13, null
  br i1 %cmp.not.i11, label %while.cond.i12.notifier_chain_unregister.exit19_crit_edge, label %while.body.i15

while.cond.i12.notifier_chain_unregister.exit19_crit_edge: ; preds = %while.cond.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_chain_unregister.exit19

while.body.i15:                                   ; preds = %while.cond.i12
  %cmp1.i14 = icmp eq ptr %13, %n
  br i1 %cmp1.i14, label %do.body.i17.loopexit, label %while.body.i15.while.cond.i12_crit_edge

while.body.i15.while.cond.i12_crit_edge:          ; preds = %while.body.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i12

do.body.i17.loopexit:                             ; preds = %while.body.i15
  call void @__sanitizer_cov_trace_pc() #7
  %next35.i10.le = getelementptr inbounds %struct.notifier_block, ptr %11, i32 0, i32 1
  br label %do.body.i17

do.body.i17:                                      ; preds = %do.body.i17.loopexit, %while.body.i15.preheader.do.body.i17_crit_edge
  %nl.addr.042.i13.lcssa = phi ptr [ %head2, %while.body.i15.preheader.do.body.i17_crit_edge ], [ %next35.i10.le, %do.body.i17.loopexit ]
  %next.i16 = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %14 = ptrtoint ptr %next.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next.i16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  %16 = ptrtoint ptr %nl.addr.042.i13.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %nl.addr.042.i13.lcssa, align 4
  br label %notifier_chain_unregister.exit19

notifier_chain_unregister.exit19:                 ; preds = %do.body.i17, %while.cond.i12.notifier_chain_unregister.exit19_crit_edge, %if.end.notifier_chain_unregister.exit19_crit_edge
  %retval.0.i18 = phi i32 [ 0, %do.body.i17 ], [ -2, %if.end.notifier_chain_unregister.exit19_crit_edge ], [ -2, %while.cond.i12.notifier_chain_unregister.exit19_crit_edge ]
  tail call void @up_write(ptr noundef %nh) #5
  br label %cleanup

cleanup:                                          ; preds = %notifier_chain_unregister.exit19, %do.body.i, %while.cond.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i18, %notifier_chain_unregister.exit19 ], [ 0, %do.body.i ], [ -2, %if.then.cleanup_crit_edge ], [ -2, %while.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blocking_notifier_call_chain_robust(ptr noundef %nh, i32 noundef %val_up, i32 noundef %val_down, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.blocking_notifier_head, ptr %nh, i32 0, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @down_read(ptr noundef %nh) #5
  %call = tail call fastcc i32 @notifier_call_chain_robust(ptr noundef %head, i32 noundef %val_up, i32 noundef %val_down, ptr noundef %v)
  tail call void @up_read(ptr noundef %nh) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @notifier_call_chain_robust(ptr noundef %nl, i32 noundef %val_up, i32 noundef %val_down, ptr noundef %v) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %nl, align 4
  %tobool.not5762.i = icmp eq ptr %1, null
  br i1 %tobool.not5762.i, label %entry.if.end_crit_edge, label %entry.while.body.lr.ph.i_crit_edge

entry.while.body.lr.ph.i_crit_edge:               ; preds = %entry
  br label %while.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.cond.outer.i:                               ; preds = %if.end36.i
  %dec.i = add i32 %nr_to_call.addr.0.ph66.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  %tobool.not57.i = icmp eq ptr %3, null
  %or.cond58.i = select i1 %tobool.not57.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond58.i, label %while.cond.outer.i.if.end_crit_edge, label %while.cond.outer.i.while.body.lr.ph.i_crit_edge

while.cond.outer.i.while.body.lr.ph.i_crit_edge:  ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i

while.cond.outer.i.if.end_crit_edge:              ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.body.lr.ph.i:                               ; preds = %while.cond.outer.i.while.body.lr.ph.i_crit_edge, %entry.while.body.lr.ph.i_crit_edge
  %nr.0 = phi i32 [ %inc.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ 0, %entry.while.body.lr.ph.i_crit_edge ]
  %nr_to_call.addr.0.ph66.i = phi i32 [ %dec.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ -1, %entry.while.body.lr.ph.i_crit_edge ]
  %ret.0.ph65.i = phi i32 [ %call38.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ 0, %entry.while.body.lr.ph.i_crit_edge ]
  %nb.0.ph64.i = phi ptr [ %3, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ %1, %entry.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %do.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %nb.059.i = phi ptr [ %nb.0.ph64.i, %while.body.lr.ph.i ], [ %3, %do.end23.i.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %nb.059.i, i32 0, i32 1
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %next.i, align 4
  %4 = ptrtoint ptr %nb.059.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nb.059.i, align 4
  %call.i = tail call i32 @func_ptr_is_kernel_text(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %do.end23.i, label %if.end36.i, !prof !81

do.end23.i:                                       ; preds = %while.body.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %notifier_call_chain.exit, label %do.end23.i.while.body.i_crit_edge

do.end23.i.while.body.i_crit_edge:                ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end36.i:                                       ; preds = %while.body.i
  %6 = ptrtoint ptr %nb.059.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nb.059.i, align 4
  %call38.i = tail call i32 %7(ptr noundef nonnull %nb.059.i, i32 noundef %val_up, ptr noundef %v) #5
  %inc.i = add nuw i32 %nr.0, 1
  %and.i = and i32 %call38.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %while.cond.outer.i, label %if.end36.i.if.then_crit_edge

if.end36.i.if.then_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

notifier_call_chain.exit:                         ; preds = %do.end23.i
  %.pre = and i32 %ret.0.ph65.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool.not = icmp eq i32 %.pre, 0
  br i1 %tobool.not, label %notifier_call_chain.exit.if.end_crit_edge, label %notifier_call_chain.exit.if.then_crit_edge

notifier_call_chain.exit.if.then_crit_edge:       ; preds = %notifier_call_chain.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

notifier_call_chain.exit.if.end_crit_edge:        ; preds = %notifier_call_chain.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %notifier_call_chain.exit.if.then_crit_edge, %if.end36.i.if.then_crit_edge
  %ret.1.i64 = phi i32 [ %ret.0.ph65.i, %notifier_call_chain.exit.if.then_crit_edge ], [ %call38.i, %if.end36.i.if.then_crit_edge ]
  %nr.163 = phi i32 [ %nr.0, %notifier_call_chain.exit.if.then_crit_edge ], [ %inc.i, %if.end36.i.if.then_crit_edge ]
  %sub = add i32 %nr.163, -1
  %8 = ptrtoint ptr %nl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %nl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool2.not61.i = icmp eq i32 %sub, 0
  %tobool.not5762.i5 = icmp eq ptr %9, null
  %or.cond5863.i = or i1 %tobool2.not61.i, %tobool.not5762.i5
  br i1 %or.cond5863.i, label %if.then.if.end_crit_edge, label %if.then.while.body.lr.ph.i15_crit_edge

if.then.while.body.lr.ph.i15_crit_edge:           ; preds = %if.then
  br label %while.body.lr.ph.i15

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.cond.outer.i11:                             ; preds = %if.end36.i24
  %dec.i7 = add i32 %nr_to_call.addr.0.ph66.i12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i7)
  %tobool2.not.i8 = icmp eq i32 %dec.i7, 0
  %tobool.not57.i9 = icmp eq ptr %11, null
  %or.cond58.i10 = select i1 %tobool.not57.i9, i1 true, i1 %tobool2.not.i8
  br i1 %or.cond58.i10, label %while.cond.outer.i11.if.end_crit_edge, label %while.cond.outer.i11.while.body.lr.ph.i15_crit_edge

while.cond.outer.i11.while.body.lr.ph.i15_crit_edge: ; preds = %while.cond.outer.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i15

while.cond.outer.i11.if.end_crit_edge:            ; preds = %while.cond.outer.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.body.lr.ph.i15:                             ; preds = %while.cond.outer.i11.while.body.lr.ph.i15_crit_edge, %if.then.while.body.lr.ph.i15_crit_edge
  %nr_to_call.addr.0.ph66.i12 = phi i32 [ %dec.i7, %while.cond.outer.i11.while.body.lr.ph.i15_crit_edge ], [ %sub, %if.then.while.body.lr.ph.i15_crit_edge ]
  %nb.0.ph64.i14 = phi ptr [ %11, %while.cond.outer.i11.while.body.lr.ph.i15_crit_edge ], [ %9, %if.then.while.body.lr.ph.i15_crit_edge ]
  br label %while.body.i20

while.body.i20:                                   ; preds = %do.end23.i22.while.body.i20_crit_edge, %while.body.lr.ph.i15
  %nb.059.i16 = phi ptr [ %nb.0.ph64.i14, %while.body.lr.ph.i15 ], [ %11, %do.end23.i22.while.body.i20_crit_edge ]
  %next.i17 = getelementptr inbounds %struct.notifier_block, ptr %nb.059.i16, i32 0, i32 1
  %10 = ptrtoint ptr %next.i17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %next.i17, align 4
  %12 = ptrtoint ptr %nb.059.i16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nb.059.i16, align 4
  %call.i18 = tail call i32 @func_ptr_is_kernel_text(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool8.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool8.not.i19, label %do.end23.i22, label %if.end36.i24, !prof !81

do.end23.i22:                                     ; preds = %while.body.i20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  %tobool.not.i21 = icmp eq ptr %11, null
  br i1 %tobool.not.i21, label %do.end23.i22.if.end_crit_edge, label %do.end23.i22.while.body.i20_crit_edge

do.end23.i22.while.body.i20_crit_edge:            ; preds = %do.end23.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i20

do.end23.i22.if.end_crit_edge:                    ; preds = %do.end23.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end36.i24:                                     ; preds = %while.body.i20
  %14 = ptrtoint ptr %nb.059.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nb.059.i16, align 4
  %call38.i23 = tail call i32 %15(ptr noundef nonnull %nb.059.i16, i32 noundef %val_down, ptr noundef %v) #5
  %and.i25 = and i32 %call38.i23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool42.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool42.not.i26, label %while.cond.outer.i11, label %if.end36.i24.if.end_crit_edge

if.end36.i24.if.end_crit_edge:                    ; preds = %if.end36.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %if.end36.i24.if.end_crit_edge, %do.end23.i22.if.end_crit_edge, %while.cond.outer.i11.if.end_crit_edge, %if.then.if.end_crit_edge, %notifier_call_chain.exit.if.end_crit_edge, %while.cond.outer.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.1.i34 = phi i32 [ %ret.0.ph65.i, %notifier_call_chain.exit.if.end_crit_edge ], [ %ret.1.i64, %if.then.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ %ret.1.i64, %do.end23.i22.if.end_crit_edge ], [ %ret.1.i64, %while.cond.outer.i11.if.end_crit_edge ], [ %ret.1.i64, %if.end36.i24.if.end_crit_edge ], [ %call38.i, %while.cond.outer.i.if.end_crit_edge ]
  ret i32 %ret.1.i34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blocking_notifier_call_chain(ptr noundef %nh, i32 noundef %val, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.blocking_notifier_head, ptr %nh, i32 0, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @down_read(ptr noundef %nh) #5
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %head, align 4
  %tobool.not5762.i = icmp eq ptr %3, null
  br i1 %tobool.not5762.i, label %if.then.notifier_call_chain.exit_crit_edge, label %if.then.while.body.lr.ph.i_crit_edge

if.then.while.body.lr.ph.i_crit_edge:             ; preds = %if.then
  br label %while.body.lr.ph.i

if.then.notifier_call_chain.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

while.cond.outer.i:                               ; preds = %if.end36.i
  %dec.i = add i32 %nr_to_call.addr.0.ph66.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  %tobool.not57.i = icmp eq ptr %5, null
  %or.cond58.i = select i1 %tobool.not57.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond58.i, label %while.cond.outer.i.notifier_call_chain.exit_crit_edge, label %while.cond.outer.i.while.body.lr.ph.i_crit_edge

while.cond.outer.i.while.body.lr.ph.i_crit_edge:  ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i

while.cond.outer.i.notifier_call_chain.exit_crit_edge: ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

while.body.lr.ph.i:                               ; preds = %while.cond.outer.i.while.body.lr.ph.i_crit_edge, %if.then.while.body.lr.ph.i_crit_edge
  %nr_to_call.addr.0.ph66.i = phi i32 [ %dec.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ -1, %if.then.while.body.lr.ph.i_crit_edge ]
  %ret.0.ph65.i = phi i32 [ %call38.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ 0, %if.then.while.body.lr.ph.i_crit_edge ]
  %nb.0.ph64.i = phi ptr [ %5, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ %3, %if.then.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %do.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %nb.059.i = phi ptr [ %nb.0.ph64.i, %while.body.lr.ph.i ], [ %5, %do.end23.i.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %nb.059.i, i32 0, i32 1
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %next.i, align 4
  %6 = ptrtoint ptr %nb.059.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nb.059.i, align 4
  %call.i = tail call i32 @func_ptr_is_kernel_text(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %do.end23.i, label %if.end36.i, !prof !81

do.end23.i:                                       ; preds = %while.body.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end23.i.notifier_call_chain.exit_crit_edge, label %do.end23.i.while.body.i_crit_edge

do.end23.i.while.body.i_crit_edge:                ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

do.end23.i.notifier_call_chain.exit_crit_edge:    ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

if.end36.i:                                       ; preds = %while.body.i
  %8 = ptrtoint ptr %nb.059.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nb.059.i, align 4
  %call38.i = tail call i32 %9(ptr noundef nonnull %nb.059.i, i32 noundef %val, ptr noundef %v) #5
  %and.i = and i32 %call38.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %while.cond.outer.i, label %if.end36.i.notifier_call_chain.exit_crit_edge

if.end36.i.notifier_call_chain.exit_crit_edge:    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

notifier_call_chain.exit:                         ; preds = %if.end36.i.notifier_call_chain.exit_crit_edge, %do.end23.i.notifier_call_chain.exit_crit_edge, %while.cond.outer.i.notifier_call_chain.exit_crit_edge, %if.then.notifier_call_chain.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %if.then.notifier_call_chain.exit_crit_edge ], [ %ret.0.ph65.i, %do.end23.i.notifier_call_chain.exit_crit_edge ], [ %call38.i, %if.end36.i.notifier_call_chain.exit_crit_edge ], [ %call38.i, %while.cond.outer.i.notifier_call_chain.exit_crit_edge ]
  tail call void @up_read(ptr noundef %nh) #5
  br label %if.end

if.end:                                           ; preds = %notifier_call_chain.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %ret.1.i, %notifier_call_chain.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @raw_notifier_chain_register(ptr noundef %nh, ptr noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nh, align 4
  %cmp.not77.i = icmp eq ptr %1, null
  br i1 %cmp.not77.i, label %entry.while.end.i_crit_edge, label %while.body.lr.ph.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %priority.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end27.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %10, %if.end27.i.while.body.i_crit_edge ]
  %nl.addr.078.i = phi ptr [ %nh, %while.body.lr.ph.i ], [ %next.i, %if.end27.i.while.body.i_crit_edge ]
  %cmp1.i = icmp eq ptr %2, %n
  br i1 %cmp1.i, label %do.end.i, label %if.end23.i, !prof !81

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %n, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %4) #5
  br label %notifier_chain_register.exit

if.end23.i:                                       ; preds = %while.body.i
  %5 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %priority.i, align 4
  %priority24.i = getelementptr inbounds %struct.notifier_block, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %priority24.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priority24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp25.i = icmp sgt i32 %6, %8
  br i1 %cmp25.i, label %if.end23.i.while.end.i_crit_edge, label %if.end27.i

if.end23.i.while.end.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end27.i:                                       ; preds = %if.end23.i
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next.i, align 4
  %cmp.not.i = icmp eq ptr %10, null
  br i1 %cmp.not.i, label %if.end27.i.while.end.i_crit_edge, label %if.end27.i.while.body.i_crit_edge

if.end27.i.while.body.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end27.i.while.end.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %if.end27.i.while.end.i_crit_edge, %if.end23.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %nl.addr.0.lcssa.i = phi ptr [ %nh, %entry.while.end.i_crit_edge ], [ %next.i, %if.end27.i.while.end.i_crit_edge ], [ %nl.addr.078.i, %if.end23.i.while.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ null, %entry.while.end.i_crit_edge ], [ null, %if.end27.i.while.end.i_crit_edge ], [ %2, %if.end23.i.while.end.i_crit_edge ]
  %next28.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %11 = ptrtoint ptr %next28.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.lcssa.i, ptr %next28.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !82
  %12 = ptrtoint ptr %nl.addr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %n, ptr %nl.addr.0.lcssa.i, align 4
  br label %notifier_chain_register.exit

notifier_chain_register.exit:                     ; preds = %while.end.i, %do.end.i
  %retval.0.i = phi i32 [ -17, %do.end.i ], [ 0, %while.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @raw_notifier_chain_unregister(ptr noundef %nh, ptr noundef readonly %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nh, align 4
  %cmp.not41.i = icmp eq ptr %1, null
  br i1 %cmp.not41.i, label %entry.notifier_chain_unregister.exit_crit_edge, label %while.body.i.preheader

entry.notifier_chain_unregister.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_chain_unregister.exit

while.body.i.preheader:                           ; preds = %entry
  %cmp1.i2 = icmp eq ptr %1, %n
  br i1 %cmp1.i2, label %while.body.i.preheader.do.body.i_crit_edge, label %while.body.i.preheader.while.cond.i_crit_edge

while.body.i.preheader.while.cond.i_crit_edge:    ; preds = %while.body.i.preheader
  br label %while.cond.i

while.body.i.preheader.do.body.i_crit_edge:       ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.body.i.preheader.while.cond.i_crit_edge
  %2 = phi ptr [ %4, %while.body.i.while.cond.i_crit_edge ], [ %1, %while.body.i.preheader.while.cond.i_crit_edge ]
  %next35.i = getelementptr inbounds %struct.notifier_block, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %next35.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next35.i, align 4
  %cmp.not.i = icmp eq ptr %4, null
  br i1 %cmp.not.i, label %while.cond.i.notifier_chain_unregister.exit_crit_edge, label %while.body.i

while.cond.i.notifier_chain_unregister.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_chain_unregister.exit

while.body.i:                                     ; preds = %while.cond.i
  %cmp1.i = icmp eq ptr %4, %n
  br i1 %cmp1.i, label %do.body.i.loopexit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

do.body.i.loopexit:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %next35.i.le = getelementptr inbounds %struct.notifier_block, ptr %2, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.loopexit, %while.body.i.preheader.do.body.i_crit_edge
  %nl.addr.042.i.lcssa = phi ptr [ %nh, %while.body.i.preheader.do.body.i_crit_edge ], [ %next35.i.le, %do.body.i.loopexit ]
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %5 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  %7 = ptrtoint ptr %nl.addr.042.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %nl.addr.042.i.lcssa, align 4
  br label %notifier_chain_unregister.exit

notifier_chain_unregister.exit:                   ; preds = %do.body.i, %while.cond.i.notifier_chain_unregister.exit_crit_edge, %entry.notifier_chain_unregister.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i ], [ -2, %entry.notifier_chain_unregister.exit_crit_edge ], [ -2, %while.cond.i.notifier_chain_unregister.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @raw_notifier_call_chain_robust(ptr noundef %nh, i32 noundef %val_up, i32 noundef %val_down, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @notifier_call_chain_robust(ptr noundef %nh, i32 noundef %val_up, i32 noundef %val_down, ptr noundef %v)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @raw_notifier_call_chain(ptr noundef %nh, i32 noundef %val, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %nh, align 4
  %tobool.not5762.i = icmp eq ptr %1, null
  br i1 %tobool.not5762.i, label %entry.notifier_call_chain.exit_crit_edge, label %entry.while.body.lr.ph.i_crit_edge

entry.while.body.lr.ph.i_crit_edge:               ; preds = %entry
  br label %while.body.lr.ph.i

entry.notifier_call_chain.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

while.cond.outer.i:                               ; preds = %if.end36.i
  %dec.i = add i32 %nr_to_call.addr.0.ph66.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  %tobool.not57.i = icmp eq ptr %3, null
  %or.cond58.i = select i1 %tobool.not57.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond58.i, label %while.cond.outer.i.notifier_call_chain.exit_crit_edge, label %while.cond.outer.i.while.body.lr.ph.i_crit_edge

while.cond.outer.i.while.body.lr.ph.i_crit_edge:  ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i

while.cond.outer.i.notifier_call_chain.exit_crit_edge: ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

while.body.lr.ph.i:                               ; preds = %while.cond.outer.i.while.body.lr.ph.i_crit_edge, %entry.while.body.lr.ph.i_crit_edge
  %nr_to_call.addr.0.ph66.i = phi i32 [ %dec.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ -1, %entry.while.body.lr.ph.i_crit_edge ]
  %ret.0.ph65.i = phi i32 [ %call38.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ 0, %entry.while.body.lr.ph.i_crit_edge ]
  %nb.0.ph64.i = phi ptr [ %3, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ %1, %entry.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %do.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %nb.059.i = phi ptr [ %nb.0.ph64.i, %while.body.lr.ph.i ], [ %3, %do.end23.i.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %nb.059.i, i32 0, i32 1
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %next.i, align 4
  %4 = ptrtoint ptr %nb.059.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nb.059.i, align 4
  %call.i = tail call i32 @func_ptr_is_kernel_text(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %do.end23.i, label %if.end36.i, !prof !81

do.end23.i:                                       ; preds = %while.body.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end23.i.notifier_call_chain.exit_crit_edge, label %do.end23.i.while.body.i_crit_edge

do.end23.i.while.body.i_crit_edge:                ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

do.end23.i.notifier_call_chain.exit_crit_edge:    ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

if.end36.i:                                       ; preds = %while.body.i
  %6 = ptrtoint ptr %nb.059.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nb.059.i, align 4
  %call38.i = tail call i32 %7(ptr noundef nonnull %nb.059.i, i32 noundef %val, ptr noundef %v) #5
  %and.i = and i32 %call38.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %while.cond.outer.i, label %if.end36.i.notifier_call_chain.exit_crit_edge

if.end36.i.notifier_call_chain.exit_crit_edge:    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

notifier_call_chain.exit:                         ; preds = %if.end36.i.notifier_call_chain.exit_crit_edge, %do.end23.i.notifier_call_chain.exit_crit_edge, %while.cond.outer.i.notifier_call_chain.exit_crit_edge, %entry.notifier_call_chain.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %entry.notifier_call_chain.exit_crit_edge ], [ %ret.0.ph65.i, %do.end23.i.notifier_call_chain.exit_crit_edge ], [ %call38.i, %if.end36.i.notifier_call_chain.exit_crit_edge ], [ %call38.i, %while.cond.outer.i.notifier_call_chain.exit_crit_edge ]
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @srcu_notifier_chain_register(ptr noundef %nh, ptr noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %head = getelementptr inbounds %struct.srcu_notifier_head, ptr %nh, i32 0, i32 2
  %call = tail call fastcc i32 @notifier_chain_register(ptr noundef %head, ptr noundef %n)
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %nh, i32 noundef 0) #5
  %head2 = getelementptr inbounds %struct.srcu_notifier_head, ptr %nh, i32 0, i32 2
  %1 = ptrtoint ptr %head2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head2, align 4
  %cmp.not77.i = icmp eq ptr %2, null
  br i1 %cmp.not77.i, label %if.end.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end
  %priority.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end27.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %3 = phi ptr [ %2, %while.body.lr.ph.i ], [ %11, %if.end27.i.while.body.i_crit_edge ]
  %nl.addr.078.i = phi ptr [ %head2, %while.body.lr.ph.i ], [ %next.i, %if.end27.i.while.body.i_crit_edge ]
  %cmp1.i = icmp eq ptr %3, %n
  br i1 %cmp1.i, label %do.end.i, label %if.end23.i, !prof !81

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %n, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %5) #5
  br label %notifier_chain_register.exit

if.end23.i:                                       ; preds = %while.body.i
  %6 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priority.i, align 4
  %priority24.i = getelementptr inbounds %struct.notifier_block, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %priority24.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priority24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp25.i = icmp sgt i32 %7, %9
  br i1 %cmp25.i, label %if.end23.i.while.end.i_crit_edge, label %if.end27.i

if.end23.i.while.end.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.end27.i:                                       ; preds = %if.end23.i
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next.i, align 4
  %cmp.not.i = icmp eq ptr %11, null
  br i1 %cmp.not.i, label %if.end27.i.while.end.i_crit_edge, label %if.end27.i.while.body.i_crit_edge

if.end27.i.while.body.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end27.i.while.end.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %if.end27.i.while.end.i_crit_edge, %if.end23.i.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %nl.addr.0.lcssa.i = phi ptr [ %head2, %if.end.while.end.i_crit_edge ], [ %next.i, %if.end27.i.while.end.i_crit_edge ], [ %nl.addr.078.i, %if.end23.i.while.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ null, %if.end.while.end.i_crit_edge ], [ null, %if.end27.i.while.end.i_crit_edge ], [ %3, %if.end23.i.while.end.i_crit_edge ]
  %next28.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %12 = ptrtoint ptr %next28.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.lcssa.i, ptr %next28.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !82
  %13 = ptrtoint ptr %nl.addr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %n, ptr %nl.addr.0.lcssa.i, align 4
  br label %notifier_chain_register.exit

notifier_chain_register.exit:                     ; preds = %while.end.i, %do.end.i
  %retval.0.i = phi i32 [ -17, %do.end.i ], [ 0, %while.end.i ]
  tail call void @mutex_unlock(ptr noundef %nh) #5
  br label %cleanup

cleanup:                                          ; preds = %notifier_chain_register.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i, %notifier_chain_register.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @srcu_notifier_chain_unregister(ptr noundef %nh, ptr noundef readonly %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !81

if.then:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.srcu_notifier_head, ptr %nh, i32 0, i32 2
  %1 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head, align 4
  %cmp.not41.i = icmp eq ptr %2, null
  br i1 %cmp.not41.i, label %if.then.cleanup_crit_edge, label %while.body.i.preheader

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.preheader:                           ; preds = %if.then
  %cmp1.i24 = icmp eq ptr %2, %n
  br i1 %cmp1.i24, label %while.body.i.preheader.do.body.i_crit_edge, label %while.body.i.preheader.while.cond.i_crit_edge

while.body.i.preheader.while.cond.i_crit_edge:    ; preds = %while.body.i.preheader
  br label %while.cond.i

while.body.i.preheader.do.body.i_crit_edge:       ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.body.i.preheader.while.cond.i_crit_edge
  %3 = phi ptr [ %5, %while.body.i.while.cond.i_crit_edge ], [ %2, %while.body.i.preheader.while.cond.i_crit_edge ]
  %next35.i = getelementptr inbounds %struct.notifier_block, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %next35.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next35.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %while.cond.i.cleanup_crit_edge, label %while.body.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %cmp1.i = icmp eq ptr %5, %n
  br i1 %cmp1.i, label %do.body.i.loopexit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

do.body.i.loopexit:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %next35.i.le = getelementptr inbounds %struct.notifier_block, ptr %3, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.loopexit, %while.body.i.preheader.do.body.i_crit_edge
  %nl.addr.042.i.lcssa = phi ptr [ %head, %while.body.i.preheader.do.body.i_crit_edge ], [ %next35.i.le, %do.body.i.loopexit ]
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %6 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  %8 = ptrtoint ptr %nl.addr.042.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %nl.addr.042.i.lcssa, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %nh, i32 noundef 0) #5
  %head2 = getelementptr inbounds %struct.srcu_notifier_head, ptr %nh, i32 0, i32 2
  %9 = ptrtoint ptr %head2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head2, align 4
  %cmp.not41.i10 = icmp eq ptr %10, null
  br i1 %cmp.not41.i10, label %if.end.notifier_chain_unregister.exit20_crit_edge, label %while.body.i16.preheader

if.end.notifier_chain_unregister.exit20_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_chain_unregister.exit20

while.body.i16.preheader:                         ; preds = %if.end
  %cmp1.i1523 = icmp eq ptr %10, %n
  br i1 %cmp1.i1523, label %while.body.i16.preheader.do.body.i18_crit_edge, label %while.body.i16.preheader.while.cond.i13_crit_edge

while.body.i16.preheader.while.cond.i13_crit_edge: ; preds = %while.body.i16.preheader
  br label %while.cond.i13

while.body.i16.preheader.do.body.i18_crit_edge:   ; preds = %while.body.i16.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i18

while.cond.i13:                                   ; preds = %while.body.i16.while.cond.i13_crit_edge, %while.body.i16.preheader.while.cond.i13_crit_edge
  %11 = phi ptr [ %13, %while.body.i16.while.cond.i13_crit_edge ], [ %10, %while.body.i16.preheader.while.cond.i13_crit_edge ]
  %next35.i11 = getelementptr inbounds %struct.notifier_block, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %next35.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next35.i11, align 4
  %cmp.not.i12 = icmp eq ptr %13, null
  br i1 %cmp.not.i12, label %while.cond.i13.notifier_chain_unregister.exit20_crit_edge, label %while.body.i16

while.cond.i13.notifier_chain_unregister.exit20_crit_edge: ; preds = %while.cond.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_chain_unregister.exit20

while.body.i16:                                   ; preds = %while.cond.i13
  %cmp1.i15 = icmp eq ptr %13, %n
  br i1 %cmp1.i15, label %do.body.i18.loopexit, label %while.body.i16.while.cond.i13_crit_edge

while.body.i16.while.cond.i13_crit_edge:          ; preds = %while.body.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i13

do.body.i18.loopexit:                             ; preds = %while.body.i16
  call void @__sanitizer_cov_trace_pc() #7
  %next35.i11.le = getelementptr inbounds %struct.notifier_block, ptr %11, i32 0, i32 1
  br label %do.body.i18

do.body.i18:                                      ; preds = %do.body.i18.loopexit, %while.body.i16.preheader.do.body.i18_crit_edge
  %nl.addr.042.i14.lcssa = phi ptr [ %head2, %while.body.i16.preheader.do.body.i18_crit_edge ], [ %next35.i11.le, %do.body.i18.loopexit ]
  %next.i17 = getelementptr inbounds %struct.notifier_block, ptr %n, i32 0, i32 1
  %14 = ptrtoint ptr %next.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next.i17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  %16 = ptrtoint ptr %nl.addr.042.i14.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %nl.addr.042.i14.lcssa, align 4
  br label %notifier_chain_unregister.exit20

notifier_chain_unregister.exit20:                 ; preds = %do.body.i18, %while.cond.i13.notifier_chain_unregister.exit20_crit_edge, %if.end.notifier_chain_unregister.exit20_crit_edge
  %retval.0.i19 = phi i32 [ 0, %do.body.i18 ], [ -2, %if.end.notifier_chain_unregister.exit20_crit_edge ], [ -2, %while.cond.i13.notifier_chain_unregister.exit20_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %nh) #5
  %srcu = getelementptr inbounds %struct.srcu_notifier_head, ptr %nh, i32 0, i32 1
  tail call void @synchronize_srcu(ptr noundef %srcu) #5
  br label %cleanup

cleanup:                                          ; preds = %notifier_chain_unregister.exit20, %do.body.i, %while.cond.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i19, %notifier_chain_unregister.exit20 ], [ 0, %do.body.i ], [ -2, %if.then.cleanup_crit_edge ], [ -2, %while.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @srcu_notifier_call_chain(ptr noundef %nh, i32 noundef %val, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu = getelementptr inbounds %struct.srcu_notifier_head, ptr %nh, i32 0, i32 1
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #5
  %dep_map.i = getelementptr inbounds %struct.srcu_notifier_head, ptr %nh, i32 0, i32 1, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #5
  %head = getelementptr inbounds %struct.srcu_notifier_head, ptr %nh, i32 0, i32 2
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %tobool.not5762.i = icmp eq ptr %1, null
  br i1 %tobool.not5762.i, label %entry.notifier_call_chain.exit_crit_edge, label %entry.while.body.lr.ph.i_crit_edge

entry.while.body.lr.ph.i_crit_edge:               ; preds = %entry
  br label %while.body.lr.ph.i

entry.notifier_call_chain.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

while.cond.outer.i:                               ; preds = %if.end36.i
  %dec.i = add i32 %nr_to_call.addr.0.ph66.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  %tobool.not57.i = icmp eq ptr %3, null
  %or.cond58.i = select i1 %tobool.not57.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond58.i, label %while.cond.outer.i.notifier_call_chain.exit_crit_edge, label %while.cond.outer.i.while.body.lr.ph.i_crit_edge

while.cond.outer.i.while.body.lr.ph.i_crit_edge:  ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i

while.cond.outer.i.notifier_call_chain.exit_crit_edge: ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

while.body.lr.ph.i:                               ; preds = %while.cond.outer.i.while.body.lr.ph.i_crit_edge, %entry.while.body.lr.ph.i_crit_edge
  %nr_to_call.addr.0.ph66.i = phi i32 [ %dec.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ -1, %entry.while.body.lr.ph.i_crit_edge ]
  %ret.0.ph65.i = phi i32 [ %call38.i, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ 0, %entry.while.body.lr.ph.i_crit_edge ]
  %nb.0.ph64.i = phi ptr [ %3, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ %1, %entry.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %do.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %nb.059.i = phi ptr [ %nb.0.ph64.i, %while.body.lr.ph.i ], [ %3, %do.end23.i.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.notifier_block, ptr %nb.059.i, i32 0, i32 1
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %next.i, align 4
  %4 = ptrtoint ptr %nb.059.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nb.059.i, align 4
  %call.i5 = tail call i32 @func_ptr_is_kernel_text(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool8.not.i = icmp eq i32 %call.i5, 0
  br i1 %tobool8.not.i, label %do.end23.i, label %if.end36.i, !prof !81

do.end23.i:                                       ; preds = %while.body.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end23.i.notifier_call_chain.exit_crit_edge, label %do.end23.i.while.body.i_crit_edge

do.end23.i.while.body.i_crit_edge:                ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

do.end23.i.notifier_call_chain.exit_crit_edge:    ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

if.end36.i:                                       ; preds = %while.body.i
  %6 = ptrtoint ptr %nb.059.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nb.059.i, align 4
  %call38.i = tail call i32 %7(ptr noundef nonnull %nb.059.i, i32 noundef %val, ptr noundef %v) #5
  %and.i = and i32 %call38.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %while.cond.outer.i, label %if.end36.i.notifier_call_chain.exit_crit_edge

if.end36.i.notifier_call_chain.exit_crit_edge:    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notifier_call_chain.exit

notifier_call_chain.exit:                         ; preds = %if.end36.i.notifier_call_chain.exit_crit_edge, %do.end23.i.notifier_call_chain.exit_crit_edge, %while.cond.outer.i.notifier_call_chain.exit_crit_edge, %entry.notifier_call_chain.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %entry.notifier_call_chain.exit_crit_edge ], [ %ret.0.ph65.i, %do.end23.i.notifier_call_chain.exit_crit_edge ], [ %call38.i, %if.end36.i.notifier_call_chain.exit_crit_edge ], [ %call38.i, %while.cond.outer.i.notifier_call_chain.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i6 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i6, label %notifier_call_chain.exit.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

notifier_call_chain.exit.srcu_read_unlock.exit_crit_edge: ; preds = %notifier_call_chain.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %notifier_call_chain.exit
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !86

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 189, i32 noundef 9, ptr noundef null) #5
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %notifier_call_chain.exit.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #5
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #5
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @srcu_init_notifier_head(ptr noundef %nh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef %nh, ptr noundef nonnull @.str.2, ptr noundef nonnull @srcu_init_notifier_head.__key) #5
  %srcu = getelementptr inbounds %struct.srcu_notifier_head, ptr %nh, i32 0, i32 1
  %call = tail call i32 @__init_srcu_struct(ptr noundef %srcu, ptr noundef nonnull @.str.3, ptr noundef nonnull @srcu_init_notifier_head.__srcu_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body1, label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/notifier.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 508, 0\0A.popsection", ""() #5, !srcloc !87
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %head = getelementptr inbounds %struct.srcu_notifier_head, ptr %nh, i32 0, i32 2
  %0 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %head, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__init_srcu_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @notify_die(i32 noundef %val, ptr noundef %str, ptr noundef %regs, i32 noundef %err, i32 noundef %trap, i32 noundef %sig) #0 align 64 {
entry:
  %args = alloca %struct.die_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %args) #5
  %0 = getelementptr inbounds %struct.die_args, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct.die_args, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds %struct.die_args, ptr %args, i32 0, i32 3
  %3 = getelementptr inbounds %struct.die_args, ptr %args, i32 0, i32 4
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regs, ptr %args, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %str, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %err, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %trap, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sig, ptr %3, align 4
  %call = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b8 = load i1, ptr @notify_die.__warned, align 1
  br i1 %.b8, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @notify_die.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 529, ptr noundef nonnull @.str.5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call7 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @die_chain, i32 noundef %val, ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %args) #5
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_die_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @die_chain) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), align 4
  %cmp.not77.i.i = icmp eq ptr %0, null
  br i1 %cmp.not77.i.i, label %entry.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

entry.while.end.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %entry
  %priority.i.i = getelementptr inbounds %struct.notifier_block, ptr %nb, i32 0, i32 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end27.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %1 = phi ptr [ %0, %while.body.lr.ph.i.i ], [ %9, %if.end27.i.i.while.body.i.i_crit_edge ]
  %nl.addr.078.i.i = phi ptr [ getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), %while.body.lr.ph.i.i ], [ %next.i.i, %if.end27.i.i.while.body.i.i_crit_edge ]
  %cmp1.i.i = icmp eq ptr %1, %nb
  br i1 %cmp1.i.i, label %do.end.i.i, label %if.end23.i.i, !prof !81

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nb, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %3) #5
  br label %atomic_notifier_chain_register.exit

if.end23.i.i:                                     ; preds = %while.body.i.i
  %4 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priority.i.i, align 4
  %priority24.i.i = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %priority24.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priority24.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp25.i.i = icmp sgt i32 %5, %7
  br i1 %cmp25.i.i, label %if.end23.i.i.while.end.i.i_crit_edge, label %if.end27.i.i

if.end23.i.i.while.end.i.i_crit_edge:             ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

if.end27.i.i:                                     ; preds = %if.end23.i.i
  %next.i.i = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %9, null
  br i1 %cmp.not.i.i, label %if.end27.i.i.while.end.i.i_crit_edge, label %if.end27.i.i.while.body.i.i_crit_edge

if.end27.i.i.while.body.i.i_crit_edge:            ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.end27.i.i.while.end.i.i_crit_edge:             ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end27.i.i.while.end.i.i_crit_edge, %if.end23.i.i.while.end.i.i_crit_edge, %entry.while.end.i.i_crit_edge
  %nl.addr.0.lcssa.i.i = phi ptr [ getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), %entry.while.end.i.i_crit_edge ], [ %nl.addr.078.i.i, %if.end23.i.i.while.end.i.i_crit_edge ], [ %next.i.i, %if.end27.i.i.while.end.i.i_crit_edge ]
  %.lcssa.i.i = phi ptr [ null, %entry.while.end.i.i_crit_edge ], [ %1, %if.end23.i.i.while.end.i.i_crit_edge ], [ null, %if.end27.i.i.while.end.i.i_crit_edge ]
  %next28.i.i = getelementptr inbounds %struct.notifier_block, ptr %nb, i32 0, i32 1
  %10 = ptrtoint ptr %next28.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.lcssa.i.i, ptr %next28.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !82
  %11 = ptrtoint ptr %nl.addr.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %nb, ptr %nl.addr.0.lcssa.i.i, align 4
  br label %atomic_notifier_chain_register.exit

atomic_notifier_chain_register.exit:              ; preds = %while.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ -17, %do.end.i.i ], [ 0, %while.end.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @die_chain, i32 noundef %call2.i) #5
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_die_notifier(ptr noundef readonly %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @die_chain) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), align 4
  %cmp.not41.i.i = icmp eq ptr %0, null
  br i1 %cmp.not41.i.i, label %entry.atomic_notifier_chain_unregister.exit_crit_edge, label %while.body.i.preheader.i

entry.atomic_notifier_chain_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %atomic_notifier_chain_unregister.exit

while.body.i.preheader.i:                         ; preds = %entry
  %cmp1.i10.i = icmp eq ptr %0, %nb
  br i1 %cmp1.i10.i, label %while.body.i.preheader.i.do.body.i.i_crit_edge, label %while.body.i.preheader.i.while.cond.i.i_crit_edge

while.body.i.preheader.i.while.cond.i.i_crit_edge: ; preds = %while.body.i.preheader.i
  br label %while.cond.i.i

while.body.i.preheader.i.do.body.i.i_crit_edge:   ; preds = %while.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.body.i.preheader.i.while.cond.i.i_crit_edge
  %1 = phi ptr [ %3, %while.body.i.i.while.cond.i.i_crit_edge ], [ %0, %while.body.i.preheader.i.while.cond.i.i_crit_edge ]
  %next35.i.i = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %next35.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next35.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %3, null
  br i1 %cmp.not.i.i, label %while.cond.i.i.atomic_notifier_chain_unregister.exit_crit_edge, label %while.body.i.i

while.cond.i.i.atomic_notifier_chain_unregister.exit_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %atomic_notifier_chain_unregister.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %cmp1.i.i = icmp eq ptr %3, %nb
  br i1 %cmp1.i.i, label %do.body.i.i.loopexit, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

do.body.i.i.loopexit:                             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %next35.i.i.le = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.loopexit, %while.body.i.preheader.i.do.body.i.i_crit_edge
  %nl.addr.042.i.lcssa.i = phi ptr [ getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), %while.body.i.preheader.i.do.body.i.i_crit_edge ], [ %next35.i.i.le, %do.body.i.i.loopexit ]
  %next.i.i = getelementptr inbounds %struct.notifier_block, ptr %nb, i32 0, i32 1
  %4 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  %6 = ptrtoint ptr %nl.addr.042.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %nl.addr.042.i.lcssa.i, align 4
  br label %atomic_notifier_chain_unregister.exit

atomic_notifier_chain_unregister.exit:            ; preds = %do.body.i.i, %while.cond.i.i.atomic_notifier_chain_unregister.exit_crit_edge, %entry.atomic_notifier_chain_unregister.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %do.body.i.i ], [ -2, %entry.atomic_notifier_chain_unregister.exit_crit_edge ], [ -2, %while.cond.i.i.atomic_notifier_chain_unregister.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @die_chain, i32 noundef %call2.i) #5
  tail call void @synchronize_rcu() #5
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @func_ptr_is_kernel_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !42, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !65, !67, !68, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/notifier.c", i32 15, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @reboot_notifier_list, !1, !"reboot_notifier_list", i1 false, i1 false}
!4 = !{ptr @_kbl_addr_notifier_call_chain, !5, !"_kbl_addr_notifier_call_chain", i1 false, i1 false}
!5 = !{!"../kernel/notifier.c", i32 96, i32 1}
!6 = !{ptr @__ksymtab_atomic_notifier_chain_register, !7, !"__ksymtab_atomic_notifier_chain_register", i1 false, i1 false}
!7 = !{!"../kernel/notifier.c", i32 151, i32 1}
!8 = !{ptr @__ksymtab_atomic_notifier_chain_unregister, !9, !"__ksymtab_atomic_notifier_chain_unregister", i1 false, i1 false}
!9 = !{!"../kernel/notifier.c", i32 174, i32 1}
!10 = !{ptr @__ksymtab_atomic_notifier_call_chain, !11, !"__ksymtab_atomic_notifier_call_chain", i1 false, i1 false}
!11 = !{!"../kernel/notifier.c", i32 204, i32 1}
!12 = !{ptr @_kbl_addr_atomic_notifier_call_chain, !13, !"_kbl_addr_atomic_notifier_call_chain", i1 false, i1 false}
!13 = !{!"../kernel/notifier.c", i32 205, i32 1}
!14 = !{ptr @__ksymtab_blocking_notifier_chain_register, !15, !"__ksymtab_blocking_notifier_chain_register", i1 false, i1 false}
!15 = !{!"../kernel/notifier.c", i32 240, i32 1}
!16 = !{ptr @__ksymtab_blocking_notifier_chain_unregister, !17, !"__ksymtab_blocking_notifier_chain_unregister", i1 false, i1 false}
!17 = !{!"../kernel/notifier.c", i32 270, i32 1}
!18 = !{ptr @__ksymtab_blocking_notifier_call_chain_robust, !19, !"__ksymtab_blocking_notifier_call_chain_robust", i1 false, i1 false}
!19 = !{!"../kernel/notifier.c", i32 289, i32 1}
!20 = !{ptr @__ksymtab_blocking_notifier_call_chain, !21, !"__ksymtab_blocking_notifier_call_chain", i1 false, i1 false}
!21 = !{!"../kernel/notifier.c", i32 324, i32 1}
!22 = !{ptr @__ksymtab_raw_notifier_chain_register, !23, !"__ksymtab_raw_notifier_chain_register", i1 false, i1 false}
!23 = !{!"../kernel/notifier.c", i32 346, i32 1}
!24 = !{ptr @__ksymtab_raw_notifier_chain_unregister, !25, !"__ksymtab_raw_notifier_chain_unregister", i1 false, i1 false}
!25 = !{!"../kernel/notifier.c", i32 363, i32 1}
!26 = !{ptr @__ksymtab_raw_notifier_call_chain_robust, !27, !"__ksymtab_raw_notifier_call_chain_robust", i1 false, i1 false}
!27 = !{!"../kernel/notifier.c", i32 370, i32 1}
!28 = !{ptr @__ksymtab_raw_notifier_call_chain, !29, !"__ksymtab_raw_notifier_call_chain", i1 false, i1 false}
!29 = !{!"../kernel/notifier.c", i32 394, i32 1}
!30 = !{ptr @__ksymtab_srcu_notifier_chain_register, !31, !"__ksymtab_srcu_notifier_chain_register", i1 false, i1 false}
!31 = !{!"../kernel/notifier.c", i32 430, i32 1}
!32 = !{ptr @__ksymtab_srcu_notifier_chain_unregister, !33, !"__ksymtab_srcu_notifier_chain_unregister", i1 false, i1 false}
!33 = !{!"../kernel/notifier.c", i32 461, i32 1}
!34 = !{ptr @__ksymtab_srcu_notifier_call_chain, !35, !"__ksymtab_srcu_notifier_call_chain", i1 false, i1 false}
!35 = !{!"../kernel/notifier.c", i32 490, i32 1}
!36 = !{ptr @srcu_init_notifier_head.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../kernel/notifier.c", i32 506, i32 2}
!38 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @srcu_init_notifier_head.__srcu_key, !40, !"__srcu_key", i1 false, i1 false}
!40 = !{!"../kernel/notifier.c", i32 507, i32 6}
!41 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__ksymtab_srcu_init_notifier_head, !43, !"__ksymtab_srcu_init_notifier_head", i1 false, i1 false}
!43 = !{!"../kernel/notifier.c", i32 511, i32 1}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../kernel/notifier.c", i32 528, i32 2}
!46 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @_kbl_addr_notify_die, !49, !"_kbl_addr_notify_die", i1 false, i1 false}
!49 = !{!"../kernel/notifier.c", i32 532, i32 1}
!50 = !{ptr @__ksymtab_register_die_notifier, !51, !"__ksymtab_register_die_notifier", i1 false, i1 false}
!51 = !{!"../kernel/notifier.c", i32 538, i32 1}
!52 = !{ptr @__ksymtab_unregister_die_notifier, !53, !"__ksymtab_unregister_die_notifier", i1 false, i1 false}
!53 = !{!"../kernel/notifier.c", i32 544, i32 1}
!54 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/notifier.c", i32 79, i32 4}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/notifier.c", i32 27, i32 4}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!60 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!64 = !{ptr @.str.10, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!67 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/notifier.c", i32 515, i32 8}
!70 = !{ptr @die_chain, !69, !"die_chain", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2154042215}
!83 = !{i64 2154048930}
!84 = !{i64 2149289127}
!85 = !{i64 2149289393}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2154100053, i64 2154100535, i64 2154100090, i64 2154100146, i64 2154100180, i64 2154100204, i64 2154100245, i64 2154100266, i64 2154100294, i64 2154100328}
