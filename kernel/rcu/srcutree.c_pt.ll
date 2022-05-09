; ModuleID = '/llk/IR_all_yes/kernel/rcu/srcutree.c_pt.bc'
source_filename = "../kernel/rcu/srcutree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__init_srcu_struct\22, \22a\22\09"
module asm "\09.weak\09__crc___init_srcu_struct\09\09\09\09"
module asm "\09.long\09__crc___init_srcu_struct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___init_srcu_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22__init_srcu_struct\22\09\09\09\09\09"
module asm "__kstrtabns___init_srcu_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cleanup_srcu_struct\22, \22a\22\09"
module asm "\09.weak\09__crc_cleanup_srcu_struct\09\09\09\09"
module asm "\09.long\09__crc_cleanup_srcu_struct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cleanup_srcu_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22cleanup_srcu_struct\22\09\09\09\09\09"
module asm "__kstrtabns_cleanup_srcu_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__srcu_read_lock\22, \22a\22\09"
module asm "\09.weak\09__crc___srcu_read_lock\09\09\09\09"
module asm "\09.long\09__crc___srcu_read_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___srcu_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__srcu_read_lock\22\09\09\09\09\09"
module asm "__kstrtabns___srcu_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__srcu_read_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc___srcu_read_unlock\09\09\09\09"
module asm "\09.long\09__crc___srcu_read_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___srcu_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22__srcu_read_unlock\22\09\09\09\09\09"
module asm "__kstrtabns___srcu_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+call_srcu\22, \22a\22\09"
module asm "\09.weak\09__crc_call_srcu\09\09\09\09"
module asm "\09.long\09__crc_call_srcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22call_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_call_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+synchronize_srcu_expedited\22, \22a\22\09"
module asm "\09.weak\09__crc_synchronize_srcu_expedited\09\09\09\09"
module asm "\09.long\09__crc_synchronize_srcu_expedited\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_srcu_expedited:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_srcu_expedited\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_srcu_expedited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+synchronize_srcu\22, \22a\22\09"
module asm "\09.weak\09__crc_synchronize_srcu\09\09\09\09"
module asm "\09.long\09__crc_synchronize_srcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_state_synchronize_srcu\22, \22a\22\09"
module asm "\09.weak\09__crc_get_state_synchronize_srcu\09\09\09\09"
module asm "\09.long\09__crc_get_state_synchronize_srcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_state_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22get_state_synchronize_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_get_state_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+start_poll_synchronize_srcu\22, \22a\22\09"
module asm "\09.weak\09__crc_start_poll_synchronize_srcu\09\09\09\09"
module asm "\09.long\09__crc_start_poll_synchronize_srcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_start_poll_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22start_poll_synchronize_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_start_poll_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+poll_state_synchronize_srcu\22, \22a\22\09"
module asm "\09.weak\09__crc_poll_state_synchronize_srcu\09\09\09\09"
module asm "\09.long\09__crc_poll_state_synchronize_srcu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poll_state_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22poll_state_synchronize_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_poll_state_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+srcu_barrier\22, \22a\22\09"
module asm "\09.weak\09__crc_srcu_barrier\09\09\09\09"
module asm "\09.long\09__crc_srcu_barrier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_barrier:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_barrier\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_barrier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+srcu_batches_completed\22, \22a\22\09"
module asm "\09.weak\09__crc_srcu_batches_completed\09\09\09\09"
module asm "\09.long\09__crc_srcu_batches_completed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_batches_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_batches_completed\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_batches_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+srcutorture_get_gp_data\22, \22a\22\09"
module asm "\09.weak\09__crc_srcutorture_get_gp_data\09\09\09\09"
module asm "\09.long\09__crc_srcutorture_get_gp_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcutorture_get_gp_data:\09\09\09\09\09"
module asm "\09.asciz \09\22srcutorture_get_gp_data\22\09\09\09\09\09"
module asm "__kstrtabns_srcutorture_get_gp_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+srcu_torture_stats_print\22, \22a\22\09"
module asm "\09.weak\09__crc_srcu_torture_stats_print\09\09\09\09"
module asm "\09.long\09__crc_srcu_torture_stats_print\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_torture_stats_print:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_torture_stats_print\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_torture_stats_print:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.debug_obj_descr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rcu_synchronize = type { %struct.callback_head, %struct.completion }
%struct.rcu_cblist = type { ptr, ptr, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }

@__param_str_exp_holdoff = internal constant [21 x i8] c"srcutree.exp_holdoff\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@exp_holdoff = internal global { i32, [28 x i8] } { i32 25000, [28 x i8] zeroinitializer }, align 32
@__param_exp_holdoff = internal constant %struct.kernel_param { ptr @__param_str_exp_holdoff, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @exp_holdoff } }, section "__param", align 4
@__UNIQUE_ID_exp_holdofftype229 = internal constant [36 x i8] c"srcutree.parmtype=exp_holdoff:ulong\00", section ".modinfo", align 1
@__param_str_counter_wrap_check = internal constant [28 x i8] c"srcutree.counter_wrap_check\00", align 1
@counter_wrap_check = internal global { i32, [28 x i8] } { i32 1073741823, [28 x i8] zeroinitializer }, align 32
@__param_counter_wrap_check = internal constant %struct.kernel_param { ptr @__param_str_counter_wrap_check, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @counter_wrap_check } }, section "__param", align 4
@__UNIQUE_ID_counter_wrap_checktype230 = internal constant [43 x i8] c"srcutree.parmtype=counter_wrap_check:ulong\00", section ".modinfo", align 1
@__init_srcu_struct.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&ACCESS_PRIVATE(ssp, lock)\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab___init_srcu_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns___init_srcu_struct = external dso_local constant [0 x i8], align 1
@__ksymtab___init_srcu_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__init_srcu_struct to i32), ptr @__kstrtab___init_srcu_struct, ptr @__kstrtabns___init_srcu_struct }, section "___ksymtab_gpl+__init_srcu_struct", align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/rcu/srcutree.c\00", [42 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cleanup_srcu_struct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016rcu: %s: Active srcu_struct %p state: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cleanup_srcu_struct\00", [44 x i8] zeroinitializer }, align 32
@cleanup_srcu_struct._entry_ptr = internal global ptr @cleanup_srcu_struct._entry, section ".printk_index", align 4
@__kstrtab_cleanup_srcu_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_cleanup_srcu_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_cleanup_srcu_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cleanup_srcu_struct to i32), ptr @__kstrtab_cleanup_srcu_struct, ptr @__kstrtabns_cleanup_srcu_struct }, section "___ksymtab_gpl+cleanup_srcu_struct", align 4
@__kstrtab___srcu_read_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___srcu_read_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___srcu_read_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__srcu_read_lock to i32), ptr @__kstrtab___srcu_read_lock, ptr @__kstrtabns___srcu_read_lock }, section "___ksymtab_gpl+__srcu_read_lock", align 4
@__kstrtab___srcu_read_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns___srcu_read_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab___srcu_read_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__srcu_read_unlock to i32), ptr @__kstrtab___srcu_read_unlock, ptr @__kstrtabns___srcu_read_unlock }, section "___ksymtab_gpl+__srcu_read_unlock", align 4
@__kstrtab_call_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_call_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_srcu to i32), ptr @__kstrtab_call_srcu, ptr @__kstrtabns_call_srcu }, section "___ksymtab_gpl+call_srcu", align 4
@__kstrtab_synchronize_srcu_expedited = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_srcu_expedited = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_srcu_expedited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_srcu_expedited to i32), ptr @__kstrtab_synchronize_srcu_expedited, ptr @__kstrtabns_synchronize_srcu_expedited }, section "___ksymtab_gpl+synchronize_srcu_expedited", align 4
@__kstrtab_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_srcu to i32), ptr @__kstrtab_synchronize_srcu, ptr @__kstrtabns_synchronize_srcu }, section "___ksymtab_gpl+synchronize_srcu", align 4
@__kstrtab_get_state_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_state_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_get_state_synchronize_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_state_synchronize_srcu to i32), ptr @__kstrtab_get_state_synchronize_srcu, ptr @__kstrtabns_get_state_synchronize_srcu }, section "___ksymtab_gpl+get_state_synchronize_srcu", align 4
@__kstrtab_start_poll_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_start_poll_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_start_poll_synchronize_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @start_poll_synchronize_srcu to i32), ptr @__kstrtab_start_poll_synchronize_srcu, ptr @__kstrtabns_start_poll_synchronize_srcu }, section "___ksymtab_gpl+start_poll_synchronize_srcu", align 4
@__kstrtab_poll_state_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_poll_state_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_poll_state_synchronize_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poll_state_synchronize_srcu to i32), ptr @__kstrtab_poll_state_synchronize_srcu, ptr @__kstrtabns_poll_state_synchronize_srcu }, section "___ksymtab_gpl+poll_state_synchronize_srcu", align 4
@__kstrtab_srcu_barrier = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_barrier = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_barrier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_barrier to i32), ptr @__kstrtab_srcu_barrier, ptr @__kstrtabns_srcu_barrier }, section "___ksymtab_gpl+srcu_barrier", align 4
@__kstrtab_srcu_batches_completed = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_batches_completed = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_batches_completed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_batches_completed to i32), ptr @__kstrtab_srcu_batches_completed, ptr @__kstrtabns_srcu_batches_completed }, section "___ksymtab_gpl+srcu_batches_completed", align 4
@__kstrtab_srcutorture_get_gp_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcutorture_get_gp_data = external dso_local constant [0 x i8], align 1
@__ksymtab_srcutorture_get_gp_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcutorture_get_gp_data to i32), ptr @__kstrtab_srcutorture_get_gp_data, ptr @__kstrtabns_srcutorture_get_gp_data }, section "___ksymtab_gpl+srcutorture_get_gp_data", align 4
@srcu_torture_stats_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.1, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\011rcu: %s%s Tree SRCU g%ld per-CPU(idx=%d):\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"srcu_torture_stats_print\00", [39 x i8] zeroinitializer }, align 32
@srcu_torture_stats_print._entry_ptr = internal global ptr @srcu_torture_stats_print._entry, section ".printk_index", align 4
@srcu_torture_stats_print._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.1, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\01c %d(%ld,%ld %c)\00", [46 x i8] zeroinitializer }, align 32
@srcu_torture_stats_print._entry_ptr.8 = internal global ptr @srcu_torture_stats_print._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"C.\00", [29 x i8] zeroinitializer }, align 32
@srcu_torture_stats_print._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.1, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c T(%ld,%ld)\0A\00", [17 x i8] zeroinitializer }, align 32
@srcu_torture_stats_print._entry_ptr.12 = internal global ptr @srcu_torture_stats_print._entry.10, section ".printk_index", align 4
@__kstrtab_srcu_torture_stats_print = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_torture_stats_print = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_torture_stats_print = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_torture_stats_print to i32), ptr @__kstrtab_srcu_torture_stats_print, ptr @__kstrtabns_srcu_torture_stats_print }, section "___ksymtab_gpl+srcu_torture_stats_print", align 4
@__initcall__kmod_srcutree__266_1387_srcu_bootup_announceearly = internal global ptr @srcu_bootup_announce, section ".initcallearly.init", align 4
@srcu_init_done = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@srcu_boot_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @srcu_boot_list, ptr @srcu_boot_list }, [24 x i8] zeroinitializer }, align 32
@rcu_gp_wq = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_srcutree__267_1468_init_srcu_module_notifier7 = internal global ptr @init_srcu_module_notifier, section ".initcall7.init", align 4
@init_srcu_struct_fields.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ssp->srcu_cb_mutex\00", [44 x i8] zeroinitializer }, align 32
@init_srcu_struct_fields.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ssp->srcu_gp_mutex\00", [44 x i8] zeroinitializer }, align 32
@init_srcu_struct_fields.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ssp->srcu_barrier_mutex\00", [39 x i8] zeroinitializer }, align 32
@init_srcu_struct_fields.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&ssp->work)->work)\00", [57 x i8] zeroinitializer }, align 32
@init_srcu_struct_fields.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&ssp->work)->timer\00", [43 x i8] zeroinitializer }, align 32
@srcu_advance_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@srcu_gp_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srcu_gp_start.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/rcu/rcu.h\00", [47 x i8] zeroinitializer }, align 32
@srcu_gp_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_num_nodes = external dso_local local_unnamed_addr global i32, align 4
@rcu_num_lvls = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@srcu_reschedule.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@num_rcu_lvl = external dso_local local_unnamed_addr global [0 x i32], align 4
@init_srcu_struct_nodes.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&ACCESS_PRIVATE(snp, lock)\00", [37 x i8] zeroinitializer }, align 32
@init_srcu_struct_nodes.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&ACCESS_PRIVATE(sdp, lock)\00", [37 x i8] zeroinitializer }, align 32
@init_srcu_struct_nodes.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&sdp->work)\00", [34 x i8] zeroinitializer }, align 32
@init_srcu_struct_nodes.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&sdp->delay_work)\00", [45 x i8] zeroinitializer }, align 32
@srcu_invoke_callbacks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__call_srcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"call_srcu(): Leaked duplicate callback\0A\00", [56 x i8] zeroinitializer }, align 32
@__synchronize_srcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_sched_lock_map = external dso_local global %struct.lockdep_map, align 4
@.str.33 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Illegal synchronize_srcu() in same-type SRCU (or in RCU) read-side critical section\00", [44 x i8] zeroinitializer }, align 32
@rcu_scheduler_active = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@srcu_funnel_gp_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_seq_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rcuhead_debug_descr = external dso_local constant %struct.debug_obj_descr, align 4
@rcu_seq_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srcu_bootup_announce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.1, i32 1382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016rcu: Hierarchical SRCU implementation.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"srcu_bootup_announce\00", [43 x i8] zeroinitializer }, align 32
@srcu_bootup_announce._entry_ptr = internal global ptr @srcu_bootup_announce._entry, section ".printk_index", align 4
@srcu_bootup_announce._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.1, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016rcu: \09Non-default auto-expedite holdoff of %lu ns.\0A\00", [42 x i8] zeroinitializer }, align 32
@srcu_bootup_announce._entry_ptr.40 = internal global ptr @srcu_bootup_announce._entry.38, section ".printk_index", align 4
@srcu_module_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @srcu_module_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@init_srcu_module_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.1, i32 1465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014rcu: Failed to register srcu module notifier\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"init_srcu_module_notifier\00", [38 x i8] zeroinitializer }, align 32
@init_srcu_module_notifier._entry_ptr = internal global ptr @init_srcu_module_notifier._entry, section ".printk_index", align 4
@srcu_module_coming.__srcu_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"*(sspp++)\00", [22 x i8] zeroinitializer }, align 32
@srcu_module_coming.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"exp_holdoff\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 34, i32 14 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"counter_wrap_check\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 38, i32 14 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 192, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 371, i32 6 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 386, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1347, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1370, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1376, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"srcu_boot_list\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 42, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 165, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 166, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 170, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 172, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"../kernel/rcu/rcu.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 50, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 104, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 138, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 150, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 151, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 879, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 917, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 87, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1382, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1384, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"srcu_module_nb\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1454, i32 30 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1465, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [11 x i8] c"__srcu_key\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [25 x i8] c"../kernel/rcu/srcutree.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 1417, i32 9 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_counter_wrap_checktype230, ptr @__UNIQUE_ID_exp_holdofftype229, ptr @__initcall__kmod_srcutree__266_1387_srcu_bootup_announceearly, ptr @__initcall__kmod_srcutree__267_1468_init_srcu_module_notifier7, ptr @__ksymtab___init_srcu_struct, ptr @__ksymtab___srcu_read_lock, ptr @__ksymtab___srcu_read_unlock, ptr @__ksymtab_call_srcu, ptr @__ksymtab_cleanup_srcu_struct, ptr @__ksymtab_get_state_synchronize_srcu, ptr @__ksymtab_poll_state_synchronize_srcu, ptr @__ksymtab_srcu_barrier, ptr @__ksymtab_srcu_batches_completed, ptr @__ksymtab_srcu_torture_stats_print, ptr @__ksymtab_srcutorture_get_gp_data, ptr @__ksymtab_start_poll_synchronize_srcu, ptr @__ksymtab_synchronize_srcu, ptr @__ksymtab_synchronize_srcu_expedited, ptr @__param_counter_wrap_check, ptr @__param_exp_holdoff, ptr @cleanup_srcu_struct._entry, ptr @cleanup_srcu_struct._entry_ptr, ptr @init_srcu_module_notifier._entry, ptr @init_srcu_module_notifier._entry_ptr, ptr @srcu_bootup_announce._entry, ptr @srcu_bootup_announce._entry.38, ptr @srcu_bootup_announce._entry_ptr, ptr @srcu_bootup_announce._entry_ptr.40, ptr @srcu_torture_stats_print._entry, ptr @srcu_torture_stats_print._entry.10, ptr @srcu_torture_stats_print._entry.6, ptr @srcu_torture_stats_print._entry_ptr, ptr @srcu_torture_stats_print._entry_ptr.12, ptr @srcu_torture_stats_print._entry_ptr.8, ptr @exp_holdoff, ptr @counter_wrap_check, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @srcu_boot_list, ptr @init_srcu_struct_fields.__key, ptr @.str.13, ptr @init_srcu_struct_fields.__key.14, ptr @.str.15, ptr @init_srcu_struct_fields.__key.16, ptr @.str.17, ptr @init_srcu_struct_fields.__key.18, ptr @.str.19, ptr @init_srcu_struct_fields.__key.20, ptr @.str.21, ptr @.str.23, ptr @init_srcu_struct_nodes.__key, ptr @.str.24, ptr @init_srcu_struct_nodes.__key.26, ptr @.str.27, ptr @init_srcu_struct_nodes.__key.28, ptr @.str.29, ptr @init_srcu_struct_nodes.__key.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @init_completion.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @srcu_module_nb, ptr @.str.41, ptr @.str.42, ptr @srcu_module_coming.__srcu_key, ptr @.str.43], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exp_holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_wrap_check to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleanup_srcu_struct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_torture_stats_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_torture_stats_print._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_torture_stats_print._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_boot_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_srcu_struct_fields.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_srcu_struct_fields.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_srcu_struct_fields.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_srcu_struct_fields.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_srcu_struct_fields.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_srcu_struct_nodes.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_srcu_struct_nodes.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_srcu_struct_nodes.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_srcu_struct_nodes.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_bootup_announce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_bootup_announce._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_module_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_srcu_module_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srcu_module_coming.__srcu_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__init_srcu_struct(ptr noundef %ssp, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_check_no_locks_freed(ptr noundef %ssp, i32 noundef 824) #12
  %dep_map = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %lock = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @__init_srcu_struct.__key, i16 noundef signext 3) #12
  %call1 = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %ssp, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_srcu_struct_fields(ptr noundef %ssp, i1 noundef zeroext %is_static) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %levelspread.i = alloca [2 x i32], align 4
  %srcu_cb_mutex = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %srcu_cb_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_srcu_struct_fields.__key) #12
  %srcu_gp_mutex = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %srcu_gp_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_srcu_struct_fields.__key.14) #12
  %srcu_idx = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 5
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %srcu_idx, align 4
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %1 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %srcu_gp_seq, align 4
  %srcu_barrier_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 11
  %2 = ptrtoint ptr %srcu_barrier_seq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %srcu_barrier_seq, align 4
  %srcu_barrier_mutex = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %srcu_barrier_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_srcu_struct_fields.__key.16) #12
  %srcu_barrier_cpu_cnt = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %srcu_barrier_cpu_cnt, i32 noundef 4) #12
  %3 = ptrtoint ptr %srcu_barrier_cpu_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %srcu_barrier_cpu_cnt, align 4
  %work = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_srcu_struct_fields.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry14 = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15, i32 0, i32 1
  %5 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @process_srcu, ptr %func, align 4
  %timer = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_srcu_struct_fields.__key.20) #12
  br i1 %is_static, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 384, i32 noundef 128) #14
  %sda = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  %8 = ptrtoint ptr %sda to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %sda, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sda22 = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  %9 = ptrtoint ptr %sda22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sda22, align 4
  %tobool23.not = icmp eq ptr %10, null
  br i1 %tobool23.not, label %return, label %if.end25

if.end25:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %levelspread.i) #12
  %11 = getelementptr inbounds [2 x i32], ptr %levelspread.i, i32 0, i32 1
  tail call void @rcu_init_geometry() #12
  %level1.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 1
  %12 = ptrtoint ptr %level1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ssp, ptr %level1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_num_lvls to i32))
  %13 = load i32, ptr @rcu_num_lvls, align 4
  %cmp255.i = icmp sgt i32 %13, 1
  br i1 %cmp255.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.body.i, %if.end25
  %i.0256.i = phi i32 [ %inc.i, %for.body.i ], [ 1, %if.end25 ]
  %sub.i = add nsw i32 %i.0256.i, -1
  %arrayidx4.i = getelementptr %struct.srcu_struct, ptr %ssp, i32 0, i32 1, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [0 x i32], ptr @num_rcu_lvl, i32 0, i32 %sub.i
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 4
  %add.ptr.i = getelementptr %struct.srcu_node, ptr %15, i32 %17
  %arrayidx8.i = getelementptr %struct.srcu_struct, ptr %ssp, i32 0, i32 1, i32 %i.0256.i
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %arrayidx8.i, align 4
  %inc.i = add nuw nsw i32 %i.0256.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_num_lvls to i32))
  %19 = load i32, ptr @rcu_num_lvls, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i, %if.end25
  %.lcssa.i = phi i32 [ %13, %if.end25 ], [ %19, %for.body.i ]
  %20 = ptrtoint ptr %levelspread.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -2147483648, ptr %levelspread.i, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -2147483648, ptr %11, align 4
  %i.22.i.i = add i32 %.lcssa.i, -1
  %cmp113.i.i = icmp sgt i32 %i.22.i.i, -1
  br i1 %cmp113.i.i, label %for.body12.preheader.i.i, label %rcu_init_levelspread.exit.i

for.body12.preheader.i.i:                         ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.body12.i.i

for.body12.i.i:                                   ; preds = %for.body12.i.i, %for.body12.preheader.i.i
  %i.25.i.i = phi i32 [ %i.2.i.i, %for.body12.i.i ], [ %i.22.i.i, %for.body12.preheader.i.i ]
  %cprv.04.i.i = phi i32 [ %24, %for.body12.i.i ], [ %22, %for.body12.preheader.i.i ]
  %arrayidx13.i.i = getelementptr i32, ptr @num_rcu_lvl, i32 %i.25.i.i
  %23 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx13.i.i, align 4
  %add.i.i = add i32 %cprv.04.i.i, -1
  %sub14.i.i = add i32 %add.i.i, %24
  %div.i.i = sdiv i32 %sub14.i.i, %24
  %arrayidx15.i.i = getelementptr i32, ptr %levelspread.i, i32 %i.25.i.i
  %25 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div.i.i, ptr %arrayidx15.i.i, align 4
  %i.2.i.i = add nsw i32 %i.25.i.i, -1
  %cmp11.i.not.i = icmp eq i32 %i.25.i.i, 0
  br i1 %cmp11.i.not.i, label %rcu_init_levelspread.exit.i, label %for.body12.i.i

rcu_init_levelspread.exit.i:                      ; preds = %for.body12.i.i, %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_num_nodes to i32))
  %26 = load i32, ptr @rcu_num_nodes, align 4
  %arrayidx13258.i = getelementptr [3 x %struct.srcu_node], ptr %ssp, i32 0, i32 %26
  %cmp14259.i = icmp ugt ptr %arrayidx13258.i, %ssp
  br i1 %cmp14259.i, label %do.body.i, label %if.end121.i

do.body.i:                                        ; preds = %for.inc79.i, %rcu_init_levelspread.exit.i
  %level.0262.i = phi i32 [ %level.2.i, %for.inc79.i ], [ 0, %rcu_init_levelspread.exit.i ]
  %snp.0260.i = phi ptr [ %incdec.ptr.i, %for.inc79.i ], [ %ssp, %rcu_init_levelspread.exit.i ]
  tail call void @__raw_spin_lock_init(ptr noundef %snp.0260.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_srcu_struct_nodes.__key, i16 noundef signext 3) #12
  %arrayidx54.i = getelementptr %struct.srcu_node, ptr %snp.0260.i, i32 0, i32 1, i32 0
  %grplo.i = getelementptr inbounds %struct.srcu_node, ptr %snp.0260.i, i32 0, i32 5
  %27 = call ptr @memset(ptr %arrayidx54.i, i32 0, i32 36)
  %28 = ptrtoint ptr %grplo.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %grplo.i, align 4
  %grphi.i = getelementptr inbounds %struct.srcu_node, ptr %snp.0260.i, i32 0, i32 6
  %29 = ptrtoint ptr %grphi.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %grphi.i, align 4
  %cmp61.i = icmp eq ptr %snp.0260.i, %ssp
  br i1 %cmp61.i, label %for.inc79.i, label %if.end63.i

if.end63.i:                                       ; preds = %do.body.i
  %add.i = add i32 %level.0262.i, 1
  %arrayidx65.i = getelementptr %struct.srcu_struct, ptr %ssp, i32 0, i32 1, i32 %add.i
  %30 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx65.i, align 4
  %cmp66.i = icmp eq ptr %snp.0260.i, %31
  %spec.select.i = select i1 %cmp66.i, i32 %add.i, i32 %level.0262.i
  %sub71.i = add i32 %spec.select.i, -1
  %arrayidx72.i = getelementptr %struct.srcu_struct, ptr %ssp, i32 0, i32 1, i32 %sub71.i
  %32 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx72.i, align 4
  %arrayidx74.i = getelementptr %struct.srcu_struct, ptr %ssp, i32 0, i32 1, i32 %spec.select.i
  %34 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx74.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %snp.0260.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 92
  %arrayidx76.i = getelementptr [2 x i32], ptr %levelspread.i, i32 0, i32 %sub71.i
  %36 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx76.i, align 4
  %div.i = sdiv i32 %sub.ptr.div.i, %37
  %add.ptr77.i = getelementptr %struct.srcu_node, ptr %33, i32 %div.i
  br label %for.inc79.i

for.inc79.i:                                      ; preds = %if.end63.i, %do.body.i
  %add.ptr77.sink.i = phi ptr [ %add.ptr77.i, %if.end63.i ], [ null, %do.body.i ]
  %level.2.i = phi i32 [ %spec.select.i, %if.end63.i ], [ %level.0262.i, %do.body.i ]
  %38 = getelementptr inbounds %struct.srcu_node, ptr %snp.0260.i, i32 0, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr77.sink.i, ptr %38, align 4
  %incdec.ptr.i = getelementptr %struct.srcu_node, ptr %snp.0260.i, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_num_nodes to i32))
  %40 = load i32, ptr @rcu_num_nodes, align 4
  %arrayidx13.i = getelementptr [3 x %struct.srcu_node], ptr %ssp, i32 0, i32 %40
  %cmp14.i = icmp ult ptr %incdec.ptr.i, %arrayidx13.i
  br i1 %cmp14.i, label %do.body.i, label %if.end121.i

if.end121.i:                                      ; preds = %for.inc79.i, %rcu_init_levelspread.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_num_lvls to i32))
  %41 = load i32, ptr @rcu_num_lvls, align 4
  %sub129.i = add i32 %41, -1
  %arrayidx131.i = getelementptr %struct.srcu_struct, ptr %ssp, i32 0, i32 1, i32 %sub129.i
  %42 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx131.i, align 4
  %call133265.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %cmp134266.i = icmp ult i32 %call133265.i, %44
  br i1 %cmp134266.i, label %do.body136.lr.ph.i, label %init_srcu_struct_nodes.exit

do.body136.lr.ph.i:                               ; preds = %if.end121.i
  %arrayidx150.i = getelementptr [2 x i32], ptr %levelspread.i, i32 0, i32 %sub129.i
  br label %do.body136.i

do.body136.i:                                     ; preds = %for.end165.i, %do.body136.lr.ph.i
  %call133267.i = phi i32 [ %call133265.i, %do.body136.lr.ph.i ], [ %call133.i, %for.end165.i ]
  %45 = ptrtoint ptr %sda22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sda22, align 4
  %47 = ptrtoint ptr %46 to i32
  %arrayidx141.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call133267.i
  %48 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx141.i, align 4
  %add142.i = add i32 %49, %47
  %50 = inttoptr i32 %add142.i to ptr
  %lock144.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock144.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_srcu_struct_nodes.__key.26, i16 noundef signext 3) #12
  %srcu_cblist.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 4
  tail call void @rcu_segcblist_init(ptr noundef %srcu_cblist.i) #12
  %srcu_cblist_invoking.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %srcu_cblist_invoking.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %srcu_cblist_invoking.i, align 16
  %52 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %srcu_gp_seq, align 4
  %srcu_gp_seq_needed.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 5
  %54 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %srcu_gp_seq_needed.i, align 8
  %55 = load i32, ptr %srcu_gp_seq, align 4
  %srcu_gp_seq_needed_exp149.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 6
  %56 = ptrtoint ptr %srcu_gp_seq_needed_exp149.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %srcu_gp_seq_needed_exp149.i, align 4
  %57 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx150.i, align 4
  %div151.i = sdiv i32 %call133267.i, %58
  %arrayidx152.i = getelementptr %struct.srcu_node, ptr %43, i32 %div151.i
  %mynode.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 11
  %59 = ptrtoint ptr %mynode.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx152.i, ptr %mynode.i, align 8
  %cmp155.not263.i = icmp eq ptr %arrayidx152.i, null
  br i1 %cmp155.not263.i, label %for.end165.i, label %for.body156.i

for.body156.i:                                    ; preds = %if.end161.i, %do.body136.i
  %snp.1264.i = phi ptr [ %65, %if.end161.i ], [ %arrayidx152.i, %do.body136.i ]
  %grplo157.i = getelementptr inbounds %struct.srcu_node, ptr %snp.1264.i, i32 0, i32 5
  %60 = ptrtoint ptr %grplo157.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %grplo157.i, align 4
  %cmp158.i = icmp slt i32 %61, 0
  br i1 %cmp158.i, label %if.then159.i, label %if.end161.i

if.then159.i:                                     ; preds = %for.body156.i
  %62 = ptrtoint ptr %grplo157.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call133267.i, ptr %grplo157.i, align 4
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then159.i, %for.body156.i
  %grphi162.i = getelementptr inbounds %struct.srcu_node, ptr %snp.1264.i, i32 0, i32 6
  %63 = ptrtoint ptr %grphi162.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call133267.i, ptr %grphi162.i, align 4
  %srcu_parent164.i = getelementptr inbounds %struct.srcu_node, ptr %snp.1264.i, i32 0, i32 4
  %64 = ptrtoint ptr %srcu_parent164.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %srcu_parent164.i, align 4
  %cmp155.not.i = icmp eq ptr %65, null
  br i1 %cmp155.not.i, label %for.end165.i, label %for.body156.i

for.end165.i:                                     ; preds = %if.end161.i, %do.body136.i
  %cpu166.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 13
  %66 = ptrtoint ptr %cpu166.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call133267.i, ptr %cpu166.i, align 32
  %work.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 9
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #12
  %67 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_srcu_struct_nodes.__key.28, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry171.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 9, i32 1
  %68 = ptrtoint ptr %entry171.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %entry171.i, ptr %entry171.i, align 4
  %prev.i.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 9, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %entry171.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 9, i32 2
  %70 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @srcu_invoke_callbacks, ptr %func.i, align 4
  %delay_work.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %delay_work.i, ptr noundef nonnull @srcu_delay_timer, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_srcu_struct_nodes.__key.30) #12
  %ssp178.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 14
  %71 = ptrtoint ptr %ssp178.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %ssp, ptr %ssp178.i, align 4
  %72 = ptrtoint ptr %mynode.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mynode.i, align 8
  %grplo180.i = getelementptr inbounds %struct.srcu_node, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %grplo180.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %grplo180.i, align 4
  %sub181.i = sub i32 %call133267.i, %75
  %shl.i = shl nuw i32 1, %sub181.i
  %grpmask.i = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 12
  %76 = ptrtoint ptr %grpmask.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shl.i, ptr %grpmask.i, align 4
  %call133.i = tail call i32 @cpumask_next(i32 noundef %call133267.i, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %77 = load i32, ptr @nr_cpu_ids, align 4
  %cmp134.i = icmp ult i32 %call133.i, %77
  br i1 %cmp134.i, label %do.body136.i, label %init_srcu_struct_nodes.exit

init_srcu_struct_nodes.exit:                      ; preds = %for.end165.i, %if.end121.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %levelspread.i) #12
  %srcu_gp_seq_needed_exp = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 8
  %78 = ptrtoint ptr %srcu_gp_seq_needed_exp to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %srcu_gp_seq_needed_exp, align 4
  %call26 = tail call i64 @ktime_get_mono_fast_ns() #12
  %conv = trunc i64 %call26 to i32
  %srcu_last_gp_end = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 9
  %79 = ptrtoint ptr %srcu_last_gp_end to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv, ptr %srcu_last_gp_end, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 7
  %80 = ptrtoint ptr %srcu_gp_seq_needed to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 0, ptr %srcu_gp_seq_needed, align 4
  br label %return

return:                                           ; preds = %init_srcu_struct_nodes.exit, %if.end
  %retval.0 = phi i32 [ 0, %init_srcu_struct_nodes.exit ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_srcu_struct(ptr noundef %ssp) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu_gp_seq.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %0 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %srcu_gp_seq_needed_exp.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 8
  %2 = ptrtoint ptr %srcu_gp_seq_needed_exp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %srcu_gp_seq_needed_exp.i, align 4
  %4 = xor i32 %1, -1
  %5 = add i32 %3, %4
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !171

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 371, i32 noundef 9, ptr noundef null) #12
  br label %cleanup187

if.end23:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call38.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  %cmp39.i = icmp ult i32 %call38.i, %6
  br i1 %cmp39.i, label %for.body.lr.ph.i, label %if.end57

for.body.lr.ph.i:                                 ; preds = %if.end23
  %sda.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  %7 = ptrtoint ptr %sda.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sda.i, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %call41.i = phi i32 [ %call38.i, %for.body.lr.ph.i ], [ %call.i, %for.body.i ]
  %sum.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %sub26.i, %for.body.i ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call41.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %9
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 128
  %arrayidx13.i = getelementptr [2 x i32], ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx13.i, align 4
  %srcu_unlock_count.i = getelementptr inbounds %struct.srcu_data, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %srcu_unlock_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %srcu_unlock_count.i, align 8
  %arrayidx25.i = getelementptr %struct.srcu_data, ptr %12, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx25.i, align 4
  %.neg234 = add i32 %14, %sum.040.i
  %.neg37.i = add i32 %.neg234, %16
  %21 = add i32 %18, %20
  %sub26.i = sub i32 %.neg37.i, %21
  %call.i = tail call i32 @cpumask_next(i32 noundef %call41.i, ptr noundef nonnull @__cpu_possible_mask) #15
  %cmp.i = icmp ult i32 %call.i, %6
  br i1 %cmp.i, label %for.body.i, label %srcu_readers_active.exit

srcu_readers_active.exit:                         ; preds = %for.body.i
  %phi.cmp.i.not = icmp eq i32 %sub26.i, 0
  br i1 %phi.cmp.i.not, label %if.end57, label %do.end41, !prof !172

do.end41:                                         ; preds = %srcu_readers_active.exit
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 373, i32 noundef 9, ptr noundef null) #12
  br label %cleanup187

if.end57:                                         ; preds = %srcu_readers_active.exit, %if.end23
  %work = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15
  %call58 = tail call zeroext i1 @flush_delayed_work(ptr noundef %work) #12
  %sda = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end57
  %cpu.0 = phi i32 [ -1, %if.end57 ], [ %call59, %for.body ]
  %call59 = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call59, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = ptrtoint ptr %sda to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sda, align 4
  %25 = ptrtoint ptr %24 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call59
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %add = add i32 %27, %25
  %28 = inttoptr i32 %add to ptr
  %delay_work = getelementptr inbounds %struct.srcu_data, ptr %28, i32 0, i32 8
  %call65 = tail call i32 @del_timer_sync(ptr noundef %delay_work) #12
  %work66 = getelementptr inbounds %struct.srcu_data, ptr %28, i32 0, i32 9
  %call67 = tail call zeroext i1 @flush_work(ptr noundef %work66) #12
  %len.i = getelementptr inbounds %struct.srcu_data, ptr %28, i32 0, i32 4, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %len.i, i32 noundef 4) #12
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %len.i, align 4
  %tobool70.not = icmp eq i32 %30, 0
  br i1 %tobool70.not, label %for.cond, label %do.end86, !prof !172

do.end86:                                         ; preds = %for.body
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 381, i32 noundef 9, ptr noundef null) #12
  br label %cleanup187

for.end:                                          ; preds = %for.cond
  %31 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %and.i = and i32 %32, 3
  %cmp109.not = icmp eq i32 %and.i, 0
  br i1 %cmp109.not, label %lor.lhs.false.critedge, label %do.end175, !prof !172

lor.lhs.false.critedge:                           ; preds = %for.end
  %call38.i209 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  %cmp39.i210 = icmp ult i32 %call38.i209, %22
  br i1 %cmp39.i210, label %for.body.lr.ph.i212, label %if.end184

for.body.lr.ph.i212:                              ; preds = %lor.lhs.false.critedge
  %33 = ptrtoint ptr %sda to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sda, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %for.body.i225

for.body.i225:                                    ; preds = %for.body.i225, %for.body.lr.ph.i212
  %call41.i213 = phi i32 [ %call38.i209, %for.body.lr.ph.i212 ], [ %call.i223, %for.body.i225 ]
  %sum.040.i214 = phi i32 [ 0, %for.body.lr.ph.i212 ], [ %sub26.i222, %for.body.i225 ]
  %arrayidx.i215 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call41.i213
  %36 = ptrtoint ptr %arrayidx.i215 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i215, align 4
  %add.i216 = add i32 %37, %35
  %38 = inttoptr i32 %add.i216 to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 128
  %arrayidx13.i217 = getelementptr [2 x i32], ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx13.i217 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx13.i217, align 4
  %srcu_unlock_count.i218 = getelementptr inbounds %struct.srcu_data, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %srcu_unlock_count.i218 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %srcu_unlock_count.i218, align 8
  %arrayidx25.i219 = getelementptr %struct.srcu_data, ptr %38, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx25.i219 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx25.i219, align 4
  %.neg237 = add i32 %40, %sum.040.i214
  %.neg37.i220 = add i32 %.neg237, %42
  %47 = add i32 %44, %46
  %sub26.i222 = sub i32 %.neg37.i220, %47
  %call.i223 = tail call i32 @cpumask_next(i32 noundef %call41.i213, ptr noundef nonnull @__cpu_possible_mask) #15
  %cmp.i224 = icmp ult i32 %call.i223, %22
  br i1 %cmp.i224, label %for.body.i225, label %srcu_readers_active.exit229

srcu_readers_active.exit229:                      ; preds = %for.body.i225
  %phi.cmp.i226.not = icmp eq i32 %sub26.i222, 0
  br i1 %phi.cmp.i226.not, label %if.end184, label %do.end175, !prof !172

do.end175:                                        ; preds = %srcu_readers_active.exit229, %for.end
  %.sink = phi i32 [ 384, %for.end ], [ 385, %srcu_readers_active.exit229 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #12
  %48 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %and.i230 = and i32 %49, 3
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %ssp, i32 noundef %and.i230) #16
  br label %cleanup187

if.end184:                                        ; preds = %srcu_readers_active.exit229, %lor.lhs.false.critedge
  %50 = ptrtoint ptr %sda to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sda, align 4
  tail call void @free_percpu(ptr noundef %51) #12
  %52 = ptrtoint ptr %sda to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %sda, align 4
  br label %cleanup187

cleanup187:                                       ; preds = %if.end184, %do.end175, %do.end86, %do.end41, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__srcu_read_lock(ptr noundef %ssp) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu_idx = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 5
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %srcu_idx, align 4
  %and = and i32 %1, 1
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !173
  %sda = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  %3 = ptrtoint ptr %sda to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sda, align 4
  %arrayidx = getelementptr [2 x i32], ptr %4, i32 0, i32 %and
  %5 = ptrtoint ptr %arrayidx to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !160) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx18 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx18, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add19 = add i32 %14, 1
  store i32 %add19, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !174
  %and.i.i = and i32 %15, 128
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.end34, !prof !171

if.then:                                          ; preds = %entry
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end34

do.end34:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__srcu_read_unlock(ptr nocapture noundef readonly %ssp, i32 noundef %idx) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !177
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !173
  %sda = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  %1 = ptrtoint ptr %sda to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sda, align 4
  %arrayidx = getelementptr %struct.srcu_data, ptr %2, i32 0, i32 1, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !160) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx17, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add18 = add i32 %12, 1
  store i32 %add18, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !174
  %and.i.i = and i32 %13, 128
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.end33, !prof !171

if.then:                                          ; preds = %entry
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end33

do.end33:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !175
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @call_srcu(ptr noundef %ssp, ptr noundef %rhp, ptr noundef %func) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @debug_object_activate(ptr noundef %rhp, ptr noundef nonnull @rcuhead_debug_descr) #12
  tail call void @debug_object_active_state(ptr noundef %rhp, ptr noundef nonnull @rcuhead_debug_descr, i32 noundef 0, i32 noundef 1) #12
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %func43.i = getelementptr inbounds %struct.callback_head, ptr %rhp, i32 0, i32 1
  br i1 %tobool.not.i, label %if.end42.i, label %do.body2.i

do.body2.i:                                       ; preds = %entry
  %0 = ptrtoint ptr %func43.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr @srcu_leak_callback, ptr %func43.i, align 4
  %.b51.i = load i1, ptr @__call_srcu.__already_done, align 1
  br i1 %.b51.i, label %__call_srcu.exit, label %if.then11.i, !prof !172

if.then11.i:                                      ; preds = %do.body2.i
  store i1 true, ptr @__call_srcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 879, i32 noundef 9, ptr noundef nonnull @.str.32) #12
  br label %__call_srcu.exit

if.end42.i:                                       ; preds = %entry
  %1 = ptrtoint ptr %func43.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %func43.i, align 4
  %call45.i = tail call fastcc i32 @srcu_gp_start_if_needed(ptr noundef %ssp, ptr noundef %rhp, i1 noundef zeroext true) #12
  br label %__call_srcu.exit

__call_srcu.exit:                                 ; preds = %if.end42.i, %if.then11.i, %do.body2.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @synchronize_srcu_expedited(ptr noundef %ssp) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @rcu_gp_is_normal() #12
  tail call fastcc void @__synchronize_srcu(ptr noundef %ssp, i1 noundef zeroext %call)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__synchronize_srcu(ptr noundef %ssp, i1 noundef zeroext %do_norm) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rcu = alloca %struct.rcu_synchronize, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rcu) #12
  %0 = call ptr @memset(ptr %rcu, i32 255, i32 64)
  %dep_map = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 16
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %call.i34 = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef -1) #12
  %tobool2.not = icmp eq i32 %call.i34, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %land.lhs.true

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call.i35 = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_lock_map, i32 noundef -1) #12
  %tobool5.not = icmp eq i32 %call.i35, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %land.lhs.true

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call.i36 = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_sched_lock_map, i32 noundef -1) #12
  %tobool8.not = icmp eq i32 %call.i36, 0
  br i1 %tobool8.not, label %do.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #12
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b33 = load i1, ptr @__synchronize_srcu.__warned, align 1
  br i1 %.b33, label %do.end, label %if.then

if.then:                                          ; preds = %land.lhs.true11
  store i1 true, ptr @__synchronize_srcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 921, ptr noundef nonnull @.str.33) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true11, %land.lhs.true, %lor.lhs.false6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_scheduler_active to i32))
  %1 = load i32, ptr @rcu_scheduler_active, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cleanup, label %do.body15

do.body15:                                        ; preds = %do.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 925) #12
  %srcu_gp_seq_needed.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 7
  %2 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %srcu_gp_seq_needed.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  %and.i.i = and i32 %3, 3
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %check_init_srcu_struct.exit, label %do.body7.i

do.body7.i:                                       ; preds = %do.body15
  %lock.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 3
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %4 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srcu_gp_seq_needed.i, align 4
  %and.i34.i = and i32 %5, 3
  %tobool22.not.i = icmp eq i32 %and.i34.i, 0
  br i1 %tobool22.not.i, label %cleanup.sink.split.i, label %if.end25.i

if.end25.i:                                       ; preds = %do.body7.i
  %call26.i = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %ssp, i1 noundef zeroext true) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end25.i, %do.body7.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #12
  br label %check_init_srcu_struct.exit

check_init_srcu_struct.exit:                      ; preds = %cleanup.sink.split.i, %do.body15
  %completion = getelementptr inbounds %struct.rcu_synchronize, ptr %rcu, i32 0, i32 1
  %6 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.rcu_synchronize, ptr %rcu, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #12
  call void @init_rcu_head_on_stack(ptr noundef nonnull %rcu) #12
  %call.i.i = call i32 @debug_object_activate(ptr noundef nonnull %rcu, ptr noundef nonnull @rcuhead_debug_descr) #12
  call void @debug_object_active_state(ptr noundef nonnull %rcu, ptr noundef nonnull @rcuhead_debug_descr, i32 noundef 0, i32 noundef 1) #12
  %tobool.not.i37 = icmp eq i32 %call.i.i, 0
  %func43.i = getelementptr inbounds %struct.callback_head, ptr %rcu, i32 0, i32 1
  br i1 %tobool.not.i37, label %if.end42.i, label %do.body2.i

do.body2.i:                                       ; preds = %check_init_srcu_struct.exit
  %7 = ptrtoint ptr %func43.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr @srcu_leak_callback, ptr %func43.i, align 4
  %.b51.i = load i1, ptr @__call_srcu.__already_done, align 1
  br i1 %.b51.i, label %__call_srcu.exit, label %if.then11.i, !prof !172

if.then11.i:                                      ; preds = %do.body2.i
  store i1 true, ptr @__call_srcu.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 879, i32 noundef 9, ptr noundef nonnull @.str.32) #12
  br label %__call_srcu.exit

if.end42.i:                                       ; preds = %check_init_srcu_struct.exit
  %8 = ptrtoint ptr %func43.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @wakeme_after_rcu, ptr %func43.i, align 4
  %call45.i = call fastcc i32 @srcu_gp_start_if_needed(ptr noundef %ssp, ptr noundef nonnull %rcu, i1 noundef zeroext %do_norm) #12
  br label %__call_srcu.exit

__call_srcu.exit:                                 ; preds = %if.end42.i, %if.then11.i, %do.body2.i
  call void @wait_for_completion(ptr noundef %completion) #12
  call void @destroy_rcu_head_on_stack(ptr noundef nonnull %rcu) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !179
  br label %cleanup

cleanup:                                          ; preds = %__call_srcu.exit, %do.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rcu) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_normal() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @synchronize_srcu(ptr noundef %ssp) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu_gp_seq_needed.i.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 7
  %0 = ptrtoint ptr %srcu_gp_seq_needed.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %srcu_gp_seq_needed.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  %and.i.i.i = and i32 %1, 3
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %check_init_srcu_struct.exit.i, label %do.body7.i.i

do.body7.i.i:                                     ; preds = %entry
  %lock.i.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 3
  %call10.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #12
  %2 = ptrtoint ptr %srcu_gp_seq_needed.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srcu_gp_seq_needed.i.i, align 4
  %and.i34.i.i = and i32 %3, 3
  %tobool22.not.i.i = icmp eq i32 %and.i34.i.i, 0
  br i1 %tobool22.not.i.i, label %cleanup.sink.split.i.i, label %if.end25.i.i

if.end25.i.i:                                     ; preds = %do.body7.i.i
  %call26.i.i = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %ssp, i1 noundef zeroext true) #12
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end25.i.i, %do.body7.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call10.i.i) #12
  br label %check_init_srcu_struct.exit.i

check_init_srcu_struct.exit.i:                    ; preds = %cleanup.sink.split.i.i, %entry
  %sda.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  %4 = ptrtoint ptr %sda.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sda.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !160) #12
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %lock.i = getelementptr inbounds %struct.srcu_data, ptr %13, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %srcu_cblist.i = getelementptr inbounds %struct.srcu_data, ptr %13, i32 0, i32 4
  %call17.i = tail call zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %srcu_cblist.i) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #12
  br i1 %call17.i, label %lor.lhs.false, label %if.end.i

if.end.i:                                         ; preds = %check_init_srcu_struct.exit.i
  %call20.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %conv21.i = trunc i64 %call20.i to i32
  %srcu_last_gp_end.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 9
  %14 = ptrtoint ptr %srcu_last_gp_end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %srcu_last_gp_end.i, align 4
  %16 = load i32, ptr @exp_holdoff, align 4
  %cmp26.i = icmp eq i32 %16, 0
  br i1 %cmp26.i, label %lor.lhs.false, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %sub.i = sub i32 %conv21.i, %15
  %cmp28.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp28.i, label %land.lhs.true.i, label %if.end35.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %17 = add i32 %15, %16
  %sub31.i = sub i32 %conv21.i, %17
  %cmp32.i = icmp slt i32 %sub31.i, 0
  br i1 %cmp32.i, label %lor.lhs.false, label %if.end35.i

if.end35.i:                                       ; preds = %land.lhs.true.i, %lor.lhs.false.i
  %srcu_gp_seq.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %18 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !180
  %20 = ptrtoint ptr %srcu_gp_seq_needed.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %srcu_gp_seq_needed.i.i, align 4
  %sub47.i = sub i32 %19, %21
  %cmp48.i = icmp slt i32 %sub47.i, 0
  br i1 %cmp48.i, label %lor.lhs.false, label %srcu_might_be_idle.exit

srcu_might_be_idle.exit:                          ; preds = %if.end35.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !181
  %22 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %cmp60.not.i = icmp eq i32 %19, %23
  br i1 %cmp60.not.i, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %srcu_might_be_idle.exit, %if.end35.i, %land.lhs.true.i, %if.end.i, %check_init_srcu_struct.exit.i
  %call1 = tail call zeroext i1 @rcu_gp_is_expedited() #12
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %srcu_might_be_idle.exit
  %call.i = tail call zeroext i1 @rcu_gp_is_normal() #12
  tail call fastcc void @__synchronize_srcu(ptr noundef %ssp, i1 noundef zeroext %call.i) #12
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  tail call fastcc void @__synchronize_srcu(ptr noundef %ssp, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_expedited() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_state_synchronize_srcu(ptr noundef %ssp) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !182
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %0 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %srcu_gp_seq, align 4
  %add1.i = add i32 %1, 7
  %and.i = and i32 %add1.i, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !183
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @start_poll_synchronize_srcu(ptr noundef %ssp) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @srcu_gp_start_if_needed(ptr noundef %ssp, ptr noundef null, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @srcu_gp_start_if_needed(ptr noundef %ssp, ptr noundef %rhp, i1 noundef zeroext %do_norm) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu_gp_seq_needed.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 7
  %0 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %srcu_gp_seq_needed.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  %and.i.i = and i32 %1, 3
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %check_init_srcu_struct.exit, label %do.body7.i

do.body7.i:                                       ; preds = %entry
  %lock.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 3
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %2 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srcu_gp_seq_needed.i, align 4
  %and.i34.i = and i32 %3, 3
  %tobool22.not.i = icmp eq i32 %and.i34.i, 0
  br i1 %tobool22.not.i, label %cleanup.sink.split.i, label %if.end25.i

if.end25.i:                                       ; preds = %do.body7.i
  %call26.i = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %ssp, i1 noundef zeroext true) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end25.i, %do.body7.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #12
  br label %check_init_srcu_struct.exit

check_init_srcu_struct.exit:                      ; preds = %cleanup.sink.split.i, %entry
  %srcu_idx.i.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 5
  %4 = ptrtoint ptr %srcu_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %srcu_idx.i.i, align 4
  %and.i.i70 = and i32 %5, 1
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !173
  %sda.i.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  %7 = ptrtoint ptr %sda.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sda.i.i, align 4
  %arrayidx.i.i = getelementptr [2 x i32], ptr %8, i32 0, i32 %and.i.i70
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !160) #12
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i, align 4
  %arrayidx18.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18.i.i, align 4
  %add.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add19.i.i = add i32 %18, 1
  store i32 %add19.i.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !174
  %and.i.i.i.i = and i32 %19, 128
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %srcu_read_lock.exit, !prof !171

if.then.i.i:                                      ; preds = %check_init_srcu_struct.exit
  tail call void @warn_bogus_irq_restore() #12
  br label %srcu_read_lock.exit

srcu_read_lock.exit:                              ; preds = %if.then.i.i, %check_init_srcu_struct.exit
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #12, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !176
  %dep_map.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #12
  %20 = ptrtoint ptr %sda.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sda.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !160) #12
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, %22
  %29 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tobool.not = icmp eq ptr %rhp, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %srcu_read_lock.exit
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 4
  tail call void @rcu_segcblist_enqueue(ptr noundef %srcu_cblist, ptr noundef nonnull %rhp) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %srcu_read_lock.exit
  %srcu_cblist18 = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 4
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %30 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %srcu_gp_seq, align 4
  tail call void @rcu_segcblist_advance(ptr noundef %srcu_cblist18, i32 noundef %31) #12
  %32 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %srcu_gp_seq, align 4
  %add1.i = add i32 %33, 7
  %and.i71 = and i32 %add1.i, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !183
  %call23 = tail call zeroext i1 @rcu_segcblist_accelerate(ptr noundef %srcu_cblist18, i32 noundef %and.i71) #12
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 5
  %34 = ptrtoint ptr %srcu_gp_seq_needed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %srcu_gp_seq_needed, align 8
  %sub = sub i32 %35, %and.i71
  %cmp24 = icmp slt i32 %sub, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %36 = ptrtoint ptr %srcu_gp_seq_needed to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i71, ptr %srcu_gp_seq_needed, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  br i1 %do_norm, label %if.end35, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %srcu_gp_seq_needed_exp = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 6
  %37 = ptrtoint ptr %srcu_gp_seq_needed_exp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %srcu_gp_seq_needed_exp, align 4
  %sub30 = sub i32 %38, %and.i71
  %cmp31 = icmp slt i32 %sub30, 0
  br i1 %cmp31, label %if.end35.thread, label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %if.end28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #12
  br i1 %cmp24, label %if.then38, label %if.end43

if.end35.thread:                                  ; preds = %land.lhs.true
  %39 = ptrtoint ptr %srcu_gp_seq_needed_exp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.i71, ptr %srcu_gp_seq_needed_exp, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #12
  br i1 %cmp24, label %if.then38, label %if.then41

if.then38:                                        ; preds = %if.end35.thread, %if.end35
  %shr.i.i = lshr i32 %add1.i, 2
  %rem.i = and i32 %shr.i.i, 3
  %mynode.i = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 11
  %40 = ptrtoint ptr %mynode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %snp.0296.i = load ptr, ptr %mynode.i, align 4
  %cmp.not297.i = icmp eq ptr %snp.0296.i, null
  br i1 %cmp.not297.i, label %do.body75.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then38
  %grpmask50.i = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end71.i, %for.body.lr.ph.i
  %snp.0298.i = phi ptr [ %snp.0296.i, %for.body.lr.ph.i ], [ %snp.0.i, %if.end71.i ]
  %41 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %srcu_gp_seq, align 4
  %sub.i.i = sub i32 %42, %and.i71
  %cmp.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp.i.i, label %land.lhs.true.i, label %do.body5.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %43 = ptrtoint ptr %mynode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mynode.i, align 8
  %cmp3.not.i = icmp eq ptr %snp.0298.i, %44
  br i1 %cmp3.not.i, label %do.body5.i, label %if.end43

do.body5.i:                                       ; preds = %land.lhs.true.i, %for.body.i
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %snp.0298.i) #12
  %arrayidx.i = getelementptr %struct.srcu_node, ptr %snp.0298.i, i32 0, i32 1, i32 %rem.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %46, %and.i71
  %cmp16.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp16.i, label %if.then18.i, label %if.end43.i

if.then18.i:                                      ; preds = %do.body5.i
  %47 = ptrtoint ptr %mynode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mynode.i, align 8
  %cmp22.i = icmp eq ptr %snp.0298.i, %48
  %cmp25.i = icmp eq i32 %46, %and.i71
  %or.cond.i = select i1 %cmp22.i, i1 %cmp25.i, i1 false
  br i1 %or.cond.i, label %if.then27.i, label %if.end29.i

if.then27.i:                                      ; preds = %if.then18.i
  %49 = ptrtoint ptr %grpmask50.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %grpmask50.i, align 4
  %arrayidx28.i = getelementptr %struct.srcu_node, ptr %snp.0298.i, i32 0, i32 2, i32 %rem.i
  %51 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx28.i, align 4
  %or.i = or i32 %52, %50
  store i32 %or.i, ptr %arrayidx28.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.then18.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %snp.0298.i, i32 noundef %call8.i) #12
  %53 = ptrtoint ptr %mynode.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mynode.i, align 8
  %cmp32.i = icmp ne ptr %snp.0298.i, %54
  %or.cond287.i = select i1 %cmp32.i, i1 true, i1 %cmp25.i
  br i1 %or.cond287.i, label %if.end39.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end29.i
  br i1 %do_norm, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then37.i
  %cpu.i.i.i = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 13
  %55 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i.i.i, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_gp_wq to i32))
  %57 = load ptr, ptr @rcu_gp_wq, align 4
  %work.i.i.i = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef %56, ptr noundef %57, ptr noundef %work.i.i.i) #12
  br label %if.end43

if.end.i.i.i:                                     ; preds = %if.then37.i
  %delay_work.i.i.i = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %58, 1
  %call1.i.i.i = tail call i32 @timer_reduce(ptr noundef %delay_work.i.i.i, i32 noundef %add.i.i.i) #12
  br label %if.end43

if.end39.i:                                       ; preds = %if.end29.i
  br i1 %do_norm, label %if.end43, label %if.then41.i

if.then41.i:                                      ; preds = %if.end39.i
  tail call fastcc void @srcu_funnel_exp_start(ptr noundef %ssp, ptr noundef nonnull %snp.0298.i, i32 noundef %and.i71) #12
  br label %if.end43

if.end43.i:                                       ; preds = %do.body5.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and.i71, ptr %arrayidx.i, align 4
  %60 = ptrtoint ptr %mynode.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mynode.i, align 8
  %cmp47.i = icmp eq ptr %snp.0298.i, %61
  br i1 %cmp47.i, label %if.then49.i, label %if.end54.i

if.then49.i:                                      ; preds = %if.end43.i
  %62 = ptrtoint ptr %grpmask50.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %grpmask50.i, align 4
  %arrayidx52.i = getelementptr %struct.srcu_node, ptr %snp.0298.i, i32 0, i32 2, i32 %rem.i
  %64 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx52.i, align 4
  %or53.i = or i32 %65, %63
  store i32 %or53.i, ptr %arrayidx52.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then49.i, %if.end43.i
  br i1 %do_norm, label %if.end71.i, label %land.lhs.true56.i

land.lhs.true56.i:                                ; preds = %if.end54.i
  %srcu_gp_seq_needed_exp.i = getelementptr inbounds %struct.srcu_node, ptr %snp.0298.i, i32 0, i32 3
  %66 = ptrtoint ptr %srcu_gp_seq_needed_exp.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %srcu_gp_seq_needed_exp.i, align 4
  %sub57.i = sub i32 %67, %and.i71
  %cmp58.i = icmp slt i32 %sub57.i, 0
  br i1 %cmp58.i, label %do.body65.i, label %if.end71.i

do.body65.i:                                      ; preds = %land.lhs.true56.i
  %68 = ptrtoint ptr %srcu_gp_seq_needed_exp.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 %and.i71, ptr %srcu_gp_seq_needed_exp.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %do.body65.i, %land.lhs.true56.i, %if.end54.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %snp.0298.i, i32 noundef %call8.i) #12
  %srcu_parent.i = getelementptr inbounds %struct.srcu_node, ptr %snp.0298.i, i32 0, i32 4
  %69 = ptrtoint ptr %srcu_parent.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %snp.0.i = load ptr, ptr %srcu_parent.i, align 4
  %cmp.not.i = icmp eq ptr %snp.0.i, null
  br i1 %cmp.not.i, label %do.body75.i, label %for.body.i

do.body75.i:                                      ; preds = %if.end71.i, %if.then38
  %lock81.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 3
  %call83.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock81.i) #12
  %70 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %srcu_gp_seq_needed.i, align 4
  %sub93.i = sub i32 %71, %and.i71
  %cmp94.i = icmp slt i32 %sub93.i, 0
  br i1 %cmp94.i, label %do.end104.i, label %if.end119.i

do.end104.i:                                      ; preds = %do.body75.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !184
  %72 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %and.i71, ptr %srcu_gp_seq_needed.i, align 4
  br label %if.end119.i

if.end119.i:                                      ; preds = %do.end104.i, %do.body75.i
  br i1 %do_norm, label %if.end137.i, label %land.lhs.true121.i

land.lhs.true121.i:                               ; preds = %if.end119.i
  %srcu_gp_seq_needed_exp122.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 8
  %73 = ptrtoint ptr %srcu_gp_seq_needed_exp122.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %srcu_gp_seq_needed_exp122.i, align 4
  %sub123.i = sub i32 %74, %and.i71
  %cmp124.i = icmp slt i32 %sub123.i, 0
  br i1 %cmp124.i, label %do.body131.i, label %if.end137.i

do.body131.i:                                     ; preds = %land.lhs.true121.i
  %75 = ptrtoint ptr %srcu_gp_seq_needed_exp122.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %and.i71, ptr %srcu_gp_seq_needed_exp122.i, align 4
  br label %if.end137.i

if.end137.i:                                      ; preds = %do.body131.i, %land.lhs.true121.i, %if.end119.i
  %76 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %srcu_gp_seq, align 4
  %sub.i288.i = sub i32 %77, %and.i71
  %cmp.i289.i = icmp slt i32 %sub.i288.i, 0
  %and.i.i73 = and i32 %77, 3
  %cmp143.i = icmp eq i32 %and.i.i73, 0
  %or.cond293.i = and i1 %cmp.i289.i, %cmp143.i
  br i1 %or.cond293.i, label %if.then145.i, label %if.end215.i

if.then145.i:                                     ; preds = %if.end137.i
  %78 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %srcu_gp_seq_needed.i, align 4
  %sub148.i = sub i32 %77, %79
  %cmp149.i = icmp sgt i32 %sub148.i, -1
  br i1 %cmp149.i, label %land.rhs.i, label %if.end186.i

land.rhs.i:                                       ; preds = %if.then145.i
  %.b284286.i = load i1, ptr @srcu_funnel_gp_start.__already_done, align 1
  br i1 %.b284286.i, label %if.end186.i, label %if.then160.i, !prof !172

if.then160.i:                                     ; preds = %land.rhs.i
  store i1 true, ptr @srcu_funnel_gp_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 679, i32 noundef 9, ptr noundef null) #12
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.then160.i, %land.rhs.i, %if.then145.i
  tail call fastcc void @srcu_gp_start(ptr noundef %ssp) #12
  %.b285.i = load i1, ptr @srcu_init_done, align 1
  br i1 %.b285.i, label %if.then201.i, label %if.else.i, !prof !172

if.then201.i:                                     ; preds = %if.end186.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_gp_wq to i32))
  %80 = load ptr, ptr @rcu_gp_wq, align 4
  %work.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15
  %81 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %srcu_gp_seq, align 4
  %srcu_gp_seq_needed_exp.i.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 8
  %83 = ptrtoint ptr %srcu_gp_seq_needed_exp.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %srcu_gp_seq_needed_exp.i.i, align 4
  %85 = xor i32 %82, -1
  %86 = add i32 %84, %85
  %sub.lobit.not.i.i = lshr i32 %86, 31
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %80, ptr noundef %work.i, i32 noundef %sub.lobit.not.i.i) #12
  br label %if.end215.i

if.else.i:                                        ; preds = %if.end186.i
  %entry206.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15, i32 0, i32 1
  %87 = ptrtoint ptr %entry206.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %entry206.i, align 4
  %cmp.i290.not.i = icmp eq ptr %88, %entry206.i
  br i1 %cmp.i290.not.i, label %if.then209.i, label %if.end215.i

if.then209.i:                                     ; preds = %if.else.i
  %89 = load ptr, ptr @srcu_boot_list, align 4
  %call.i.i291.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry206.i, ptr noundef nonnull @srcu_boot_list, ptr noundef %89) #12
  br i1 %call.i.i291.i, label %if.end.i.i292.i, label %if.end215.i

if.end.i.i292.i:                                  ; preds = %if.then209.i
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %entry206.i, ptr %prev1.i.i.i, align 4
  %91 = ptrtoint ptr %entry206.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %89, ptr %entry206.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15, i32 0, i32 1, i32 1
  %92 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @srcu_boot_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %entry206.i, ptr @srcu_boot_list, align 4
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.end.i.i292.i, %if.then209.i, %if.else.i, %if.then201.i, %if.end137.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock81.i, i32 noundef %call83.i) #12
  br label %if.end43

if.then41:                                        ; preds = %if.end35.thread
  %mynode = getelementptr inbounds %struct.srcu_data, ptr %29, i32 0, i32 11
  %93 = ptrtoint ptr %mynode to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mynode, align 8
  tail call fastcc void @srcu_funnel_exp_start(ptr noundef %ssp, ptr noundef %94, i32 noundef %and.i71)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end215.i, %if.then41.i, %if.end39.i, %if.end.i.i.i, %if.then.i.i.i, %land.lhs.true.i, %if.end35
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !177
  %95 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !173
  %96 = ptrtoint ptr %sda.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sda.i.i, align 4
  %arrayidx.i.i76 = getelementptr %struct.srcu_data, ptr %97, i32 0, i32 1, i32 %and.i.i70
  %98 = ptrtoint ptr %arrayidx.i.i76 to i32
  %99 = tail call i32 @llvm.read_register.i32(metadata !160) #12
  %and.i.i.i77 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i77 to ptr
  %cpu.i.i78 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %cpu.i.i78 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cpu.i.i78, align 4
  %arrayidx17.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %102
  %103 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx17.i.i, align 4
  %add.i.i79 = add i32 %104, %98
  %105 = inttoptr i32 %add.i.i79 to ptr
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %add18.i.i = add i32 %107, 1
  store i32 %add18.i.i, ptr %105, align 4
  %108 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !174
  %and.i.i.i.i80 = and i32 %108, 128
  %tobool.not.i.i81 = icmp eq i32 %and.i.i.i.i80, 0
  br i1 %tobool.not.i.i81, label %if.then.i.i82, label %srcu_read_unlock.exit, !prof !171

if.then.i.i82:                                    ; preds = %if.end43
  tail call void @warn_bogus_irq_restore() #12
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i.i82, %if.end43
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %95) #12, !srcloc !175
  ret i32 %and.i71
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @poll_state_synchronize_srcu(ptr noundef %ssp, i32 noundef %cookie) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %0 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %srcu_gp_seq, align 4
  %sub.i = sub i32 %1, %cookie
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %do.end, label %return

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !185
  br label %return

return:                                           ; preds = %do.end, %entry
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @srcu_barrier(ptr noundef %ssp) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu_barrier_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 11
  %0 = ptrtoint ptr %srcu_barrier_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %srcu_barrier_seq, align 4
  %add1.i = add i32 %1, 7
  %and.i = and i32 %add1.i, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !183
  %srcu_gp_seq_needed.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 7
  %2 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %srcu_gp_seq_needed.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  %and.i.i = and i32 %3, 3
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %check_init_srcu_struct.exit, label %do.body7.i

do.body7.i:                                       ; preds = %entry
  %lock.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 3
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %4 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srcu_gp_seq_needed.i, align 4
  %and.i34.i = and i32 %5, 3
  %tobool22.not.i = icmp eq i32 %and.i34.i, 0
  br i1 %tobool22.not.i, label %cleanup.sink.split.i, label %if.end25.i

if.end25.i:                                       ; preds = %do.body7.i
  %call26.i = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %ssp, i1 noundef zeroext true) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end25.i, %do.body7.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #12
  br label %check_init_srcu_struct.exit

check_init_srcu_struct.exit:                      ; preds = %cleanup.sink.split.i, %entry
  %srcu_barrier_mutex = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %srcu_barrier_mutex, i32 noundef 0) #12
  %6 = ptrtoint ptr %srcu_barrier_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %srcu_barrier_seq, align 4
  %sub.i = sub i32 %7, %and.i
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %check_init_srcu_struct.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  br label %cleanup

if.end:                                           ; preds = %check_init_srcu_struct.exit
  %add.i = add i32 %7, 1
  %8 = ptrtoint ptr %srcu_barrier_seq to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %add.i, ptr %srcu_barrier_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  %9 = ptrtoint ptr %srcu_barrier_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srcu_barrier_seq, align 4
  %and.i.i65 = and i32 %10, 3
  %cmp.not.i = icmp eq i32 %and.i.i65, 1
  br i1 %cmp.not.i, label %rcu_seq_start.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end
  %.b49.i = load i1, ptr @rcu_seq_start.__already_done, align 1
  br i1 %.b49.i, label %rcu_seq_start.exit, label %if.then.i, !prof !172

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @rcu_seq_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %rcu_seq_start.exit

rcu_seq_start.exit:                               ; preds = %if.then.i, %land.rhs.i, %if.end
  %srcu_barrier_completion = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 13
  %11 = ptrtoint ptr %srcu_barrier_completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %srcu_barrier_completion, align 4
  %wait.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #12
  %srcu_barrier_cpu_cnt = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %srcu_barrier_cpu_cnt, i32 noundef 4) #12
  %12 = ptrtoint ptr %srcu_barrier_cpu_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %srcu_barrier_cpu_cnt, align 4
  %call870 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp71 = icmp ult i32 %call870, %13
  br i1 %cmp71, label %do.body9.lr.ph, label %for.end

do.body9.lr.ph:                                   ; preds = %rcu_seq_start.exit
  %sda = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  br label %do.body9

do.body9:                                         ; preds = %if.end27, %do.body9.lr.ph
  %call872 = phi i32 [ %call870, %do.body9.lr.ph ], [ %call8, %if.end27 ]
  %14 = ptrtoint ptr %sda to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sda, align 4
  %16 = ptrtoint ptr %15 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call872
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, %16
  %19 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.srcu_data, ptr %19, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %call.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %srcu_barrier_cpu_cnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %srcu_barrier_cpu_cnt, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %srcu_barrier_cpu_cnt, ptr %srcu_barrier_cpu_cnt, i32 1, ptr elementtype(i32) %srcu_barrier_cpu_cnt) #12, !srcloc !188
  %srcu_barrier_head = getelementptr inbounds %struct.srcu_data, ptr %19, i32 0, i32 10
  %func = getelementptr inbounds %struct.srcu_data, ptr %19, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @srcu_barrier_cb, ptr %func, align 4
  %call.i = tail call i32 @debug_object_activate(ptr noundef %srcu_barrier_head, ptr noundef nonnull @rcuhead_debug_descr) #12
  tail call void @debug_object_active_state(ptr noundef %srcu_barrier_head, ptr noundef nonnull @rcuhead_debug_descr, i32 noundef 0, i32 noundef 1) #12
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, ptr %19, i32 0, i32 4
  %call23 = tail call zeroext i1 @rcu_segcblist_entrain(ptr noundef %srcu_cblist, ptr noundef %srcu_barrier_head) #12
  br i1 %call23, label %if.end27, label %if.then24

if.then24:                                        ; preds = %do.body9
  tail call void @debug_object_active_state(ptr noundef %srcu_barrier_head, ptr noundef nonnull @rcuhead_debug_descr, i32 noundef 1, i32 noundef 0) #12
  tail call void @debug_object_deactivate(ptr noundef %srcu_barrier_head, ptr noundef nonnull @rcuhead_debug_descr) #12
  %call.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %srcu_barrier_cpu_cnt, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %srcu_barrier_cpu_cnt, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %srcu_barrier_cpu_cnt, ptr %srcu_barrier_cpu_cnt, i32 1, ptr elementtype(i32) %srcu_barrier_cpu_cnt) #12, !srcloc !189
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %do.body9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %call8 = tail call i32 @cpumask_next(i32 noundef %call872, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call8, %23
  br i1 %cmp, label %do.body9, label %for.end

for.end:                                          ; preds = %if.end27, %rcu_seq_start.exit
  %call.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %srcu_barrier_cpu_cnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  tail call void @llvm.prefetch.p0(ptr %srcu_barrier_cpu_cnt, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %srcu_barrier_cpu_cnt, ptr %srcu_barrier_cpu_cnt, i32 1, ptr elementtype(i32) %srcu_barrier_cpu_cnt) #12, !srcloc !191
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then31, label %if.end33

if.then31:                                        ; preds = %for.end
  tail call void @complete(ptr noundef %srcu_barrier_completion) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %for.end
  tail call void @wait_for_completion(ptr noundef %srcu_barrier_completion) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !193
  %25 = ptrtoint ptr %srcu_barrier_seq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %srcu_barrier_seq, align 4
  %and.i.i66 = and i32 %26, 3
  %tobool.not.i67 = icmp eq i32 %and.i.i66, 0
  br i1 %tobool.not.i67, label %land.rhs.i68, label %rcu_seq_end.exit

land.rhs.i68:                                     ; preds = %if.end33
  %.b55.i = load i1, ptr @rcu_seq_end.__already_done, align 1
  br i1 %.b55.i, label %rcu_seq_end.exit, label %if.then.i69, !prof !172

if.then.i69:                                      ; preds = %land.rhs.i68
  store i1 true, ptr @rcu_seq_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 72, i32 noundef 9, ptr noundef null) #12
  br label %rcu_seq_end.exit

rcu_seq_end.exit:                                 ; preds = %if.then.i69, %land.rhs.i68, %if.end33
  %27 = ptrtoint ptr %srcu_barrier_seq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %srcu_barrier_seq, align 4
  %or.i.i = or i32 %28, 3
  %add.i.i = add i32 %or.i.i, 1
  store volatile i32 %add.i.i, ptr %srcu_barrier_seq, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_seq_end.exit, %do.end
  tail call void @mutex_unlock(ptr noundef %srcu_barrier_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_barrier_cb(ptr nocapture noundef readonly %rhp) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %ssp1 = getelementptr i8, ptr %rhp, i32 20
  %0 = ptrtoint ptr %ssp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssp1, align 4
  %srcu_barrier_cpu_cnt = getelementptr inbounds %struct.srcu_struct, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %srcu_barrier_cpu_cnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !190
  tail call void @llvm.prefetch.p0(ptr %srcu_barrier_cpu_cnt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %srcu_barrier_cpu_cnt, ptr %srcu_barrier_cpu_cnt, i32 1, ptr elementtype(i32) %srcu_barrier_cpu_cnt) #12, !srcloc !191
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %srcu_barrier_completion = getelementptr inbounds %struct.srcu_struct, ptr %1, i32 0, i32 13
  tail call void @complete(ptr noundef %srcu_barrier_completion) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_entrain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @srcu_batches_completed(ptr noundef %ssp) #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu_idx = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 5
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %srcu_idx, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @srcutorture_get_gp_data(i32 noundef %test_type, ptr noundef %ssp, ptr nocapture noundef writeonly %flags, ptr nocapture noundef writeonly %gp_seq) #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq i32 %test_type, 5
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %1 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %srcu_gp_seq, align 4
  %3 = ptrtoint ptr %gp_seq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %gp_seq, align 4
  br label %return

return:                                           ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @srcu_torture_stats_print(ptr noundef %ssp, ptr noundef %tt, ptr noundef %tf) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %srcu_idx = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 5
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srcu_idx, align 4
  %and = and i32 %1, 1
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %2 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %srcu_gp_seq, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %tt, ptr noundef %tf, i32 noundef %3, i32 noundef %and) #16
  %call266 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp67 = icmp ult i32 %call266, %4
  br i1 %cmp67, label %for.body.lr.ph, label %do.end46

for.body.lr.ph:                                   ; preds = %entry
  %sda = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  %5 = xor i32 %and, 1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %call270 = phi i32 [ %call266, %for.body.lr.ph ], [ %call2, %for.body ]
  %s0.069 = phi i32 [ 0, %for.body.lr.ph ], [ %add42, %for.body ]
  %s1.068 = phi i32 [ 0, %for.body.lr.ph ], [ %add43, %for.body ]
  %6 = ptrtoint ptr %sda to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sda, align 4
  %8 = ptrtoint ptr %7 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call270
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %8
  %11 = inttoptr i32 %add to ptr
  %arrayidx9 = getelementptr %struct.srcu_data, ptr %11, i32 0, i32 1, i32 %5
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %arrayidx14 = getelementptr %struct.srcu_data, ptr %11, i32 0, i32 1, i32 %and
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !194
  %arrayidx27 = getelementptr [2 x i32], ptr %11, i32 0, i32 %5
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx27, align 4
  %arrayidx32 = getelementptr [2 x i32], ptr %11, i32 0, i32 %and
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx32, align 4
  %sub = sub i32 %17, %13
  %sub34 = sub i32 %19, %15
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, ptr %11, i32 0, i32 4
  %20 = ptrtoint ptr %srcu_cblist to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %srcu_cblist, align 4
  %tobool.not.i = icmp eq ptr %21, null
  %idxprom = zext i1 %tobool.not.i to i32
  %arrayidx40 = getelementptr [3 x i8], ptr @.str.9, i32 0, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx40, align 1
  %conv = zext i8 %23 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call270, i32 noundef %sub, i32 noundef %sub34, i32 noundef %conv) #16
  %add42 = add i32 %sub, %s0.069
  %add43 = add i32 %sub34, %s1.068
  %call2 = tail call i32 @cpumask_next(i32 noundef %call270, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %24
  br i1 %cmp, label %for.body, label %do.end46

do.end46:                                         ; preds = %for.body, %entry
  %s1.0.lcssa = phi i32 [ 0, %entry ], [ %add43, %for.body ]
  %s0.0.lcssa = phi i32 [ 0, %entry ], [ %add42, %for.body ]
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %s0.0.lcssa, i32 noundef %s1.0.lcssa) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @srcu_bootup_announce() #6 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #16
  %0 = load i32, ptr @exp_holdoff, align 4
  %cmp.not = icmp eq i32 %0, 25000
  br i1 %cmp.not, label %if.end, label %do.end2

do.end2:                                          ; preds = %entry
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %0) #16
  br label %if.end

if.end:                                           ; preds = %do.end2, %entry
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @srcu_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @srcu_init_done, align 1
  %0 = load volatile ptr, ptr @srcu_boot_list, align 4
  %cmp.i.not7 = icmp eq ptr %0, @srcu_boot_list
  br i1 %cmp.i.not7, label %while.end, label %while.body

while.body:                                       ; preds = %list_del_init.exit, %entry
  %1 = phi ptr [ %11, %list_del_init.exit ], [ %0, %entry ]
  %work = getelementptr i8, ptr %1, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
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
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_gp_wq to i32))
  %10 = load ptr, ptr @rcu_gp_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work) #12
  %11 = load volatile ptr, ptr @srcu_boot_list, align 4
  %cmp.i.not = icmp eq ptr %11, @srcu_boot_list
  br i1 %cmp.i.not, label %while.end, label %while.body

while.end:                                        ; preds = %list_del_init.exit, %entry
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_srcu_module_notifier() #6 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_module_notifier(ptr noundef nonnull @srcu_module_nb) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @process_srcu(ptr noundef %work) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -696
  %srcu_gp_mutex.i = getelementptr i8, ptr %work, i32 -272
  tail call void @mutex_lock_nested(ptr noundef %srcu_gp_mutex.i, i32 noundef 0) #12
  %srcu_gp_seq.i = getelementptr i8, ptr %work, i32 -176
  %0 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !195
  %and.i.i = and i32 %1, 3
  %cmp.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i, label %do.body5.i, label %do.end76.i

do.body5.i:                                       ; preds = %entry
  %lock.i = getelementptr i8, ptr %work, i32 -316
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %2 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srcu_gp_seq.i, align 4
  %srcu_gp_seq_needed.i = getelementptr i8, ptr %work, i32 -172
  %4 = ptrtoint ptr %srcu_gp_seq_needed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srcu_gp_seq_needed.i, align 4
  %sub.i = sub i32 %3, %5
  %cmp12.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp12.i, label %if.then13.i, label %do.end61.i

if.then13.i:                                      ; preds = %do.body5.i
  %and.i143.i = and i32 %3, 3
  %tobool.not.i = icmp eq i32 %and.i143.i, 0
  br i1 %tobool.not.i, label %if.end48.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then13.i
  %.b142.i = load i1, ptr @srcu_advance_state.__already_done, align 1
  br i1 %.b142.i, label %if.end48.i, label %if.then23.i, !prof !172

if.then23.i:                                      ; preds = %land.rhs.i
  store i1 true, ptr @srcu_advance_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1193, i32 noundef 9, ptr noundef null) #12
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then23.i, %land.rhs.i, %if.then13.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  tail call void @mutex_unlock(ptr noundef %srcu_gp_mutex.i) #12
  br label %srcu_advance_state.exit

do.end61.i:                                       ; preds = %do.body5.i
  %6 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %and.i144.i = and i32 %7, 3
  %cmp65.i = icmp eq i32 %and.i144.i, 0
  br i1 %cmp65.i, label %if.end67.thread.i, label %if.then70.i

if.end67.thread.i:                                ; preds = %do.end61.i
  tail call fastcc void @srcu_gp_start(ptr noundef %add.ptr) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br label %do.end76.i

if.then70.i:                                      ; preds = %do.end61.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  tail call void @mutex_unlock(ptr noundef %srcu_gp_mutex.i) #12
  br label %srcu_advance_state.exit

do.end76.i:                                       ; preds = %if.end67.thread.i, %entry
  %8 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %and.i145.i = and i32 %9, 3
  %cmp80.i = icmp eq i32 %and.i145.i, 1
  br i1 %cmp80.i, label %if.then81.i, label %do.end98.i

if.then81.i:                                      ; preds = %do.end76.i
  %srcu_idx.i = getelementptr i8, ptr %work, i32 -180
  %10 = ptrtoint ptr %srcu_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %srcu_idx.i, align 4
  %and.i = and i32 %11, 1
  %xor.i = xor i32 %and.i, 1
  %call82.i = tail call fastcc zeroext i1 @try_check_zero(ptr noundef %add.ptr, i32 noundef %xor.i, i32 noundef 1) #12
  br i1 %call82.i, label %if.end85.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.then81.i
  tail call void @mutex_unlock(ptr noundef %srcu_gp_mutex.i) #12
  br label %srcu_advance_state.exit

if.end85.i:                                       ; preds = %if.then81.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !196
  %12 = ptrtoint ptr %srcu_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %srcu_idx.i, align 4
  %add.i.i = add i32 %13, 1
  store volatile i32 %add.i.i, ptr %srcu_idx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !197
  %lock87.i = getelementptr i8, ptr %work, i32 -316
  tail call void @_raw_spin_lock_irq(ptr noundef %lock87.i) #12
  %14 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %srcu_gp_seq.i, align 4
  %and41.i.i = and i32 %15, -4
  %add.i146.i = or i32 %and41.i.i, 2
  store volatile i32 %add.i146.i, ptr %srcu_gp_seq.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock87.i) #12
  br label %do.end98.i

do.end98.i:                                       ; preds = %if.end85.i, %do.end76.i
  %16 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %and.i147.i = and i32 %17, 3
  %cmp102.i = icmp eq i32 %and.i147.i, 2
  br i1 %cmp102.i, label %if.then103.i, label %srcu_advance_state.exit

if.then103.i:                                     ; preds = %do.end98.i
  %srcu_idx104.i = getelementptr i8, ptr %work, i32 -180
  %18 = ptrtoint ptr %srcu_idx104.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srcu_idx104.i, align 4
  %and105.i = and i32 %19, 1
  %xor106.i = xor i32 %and105.i, 1
  %call107.i = tail call fastcc zeroext i1 @try_check_zero(ptr noundef %add.ptr, i32 noundef %xor106.i, i32 noundef 2) #12
  br i1 %call107.i, label %if.end110.i, label %if.then108.i

if.then108.i:                                     ; preds = %if.then103.i
  tail call void @mutex_unlock(ptr noundef %srcu_gp_mutex.i) #12
  br label %srcu_advance_state.exit

if.end110.i:                                      ; preds = %if.then103.i
  %srcu_cb_mutex.i.i = getelementptr i8, ptr %work, i32 -408
  tail call void @mutex_lock_nested(ptr noundef %srcu_cb_mutex.i.i, i32 noundef 0) #12
  %lock.i.i = getelementptr i8, ptr %work, i32 -316
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %20 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %srcu_gp_seq.i, align 4
  %and.i.i.i = and i32 %21, 3
  %cmp.not.i.i = icmp eq i32 %and.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.end33.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end110.i
  %.b258.i.i = load i1, ptr @srcu_gp_end.__already_done, align 1
  br i1 %.b258.i.i, label %if.end33.i.i, label %if.then.i.i, !prof !172

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @srcu_gp_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 528, i32 noundef 9, ptr noundef null) #12
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i, %if.end110.i
  %22 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %srcu_gp_seq_needed_exp.i.i.i = getelementptr i8, ptr %work, i32 -168
  %24 = ptrtoint ptr %srcu_gp_seq_needed_exp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %srcu_gp_seq_needed_exp.i.i.i, align 4
  %26 = xor i32 %23, -1
  %27 = add i32 %25, %26
  %call47.i.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %conv.i.i = trunc i64 %call47.i.i to i32
  %srcu_last_gp_end.i.i = getelementptr i8, ptr %work, i32 -164
  %28 = ptrtoint ptr %srcu_last_gp_end.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %conv.i.i, ptr %srcu_last_gp_end.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !193
  %29 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %srcu_gp_seq.i, align 4
  %and.i.i.i.i = and i32 %30, 3
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %rcu_seq_end.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end33.i.i
  %.b55.i.i.i = load i1, ptr @rcu_seq_end.__already_done, align 1
  br i1 %.b55.i.i.i, label %rcu_seq_end.exit.i.i, label %if.then.i.i.i, !prof !172

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @rcu_seq_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 72, i32 noundef 9, ptr noundef null) #12
  br label %rcu_seq_end.exit.i.i

rcu_seq_end.exit.i.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %if.end33.i.i
  %31 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %srcu_gp_seq.i, align 4
  %or.i.i.i.i = or i32 %32, 3
  %add.i.i.i.i = add i32 %or.i.i.i.i, 1
  store volatile i32 %add.i.i.i.i, ptr %srcu_gp_seq.i, align 4
  %33 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %34 = ptrtoint ptr %srcu_gp_seq_needed_exp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %srcu_gp_seq_needed_exp.i.i.i, align 4
  %sub.i.i = sub i32 %35, %33
  %cmp55.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp55.i.i, label %do.body62.i.i, label %if.end68.i.i

do.body62.i.i:                                    ; preds = %rcu_seq_end.exit.i.i
  %36 = ptrtoint ptr %srcu_gp_seq_needed_exp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %33, ptr %srcu_gp_seq_needed_exp.i.i.i, align 4
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %do.body62.i.i, %rcu_seq_end.exit.i.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #12
  tail call void @mutex_unlock(ptr noundef %srcu_gp_mutex.i) #12
  %shr.i.i.i = lshr i32 %33, 2
  %rem.i.i = and i32 %shr.i.i.i, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_num_nodes to i32))
  %37 = load i32, ptr @rcu_num_nodes, align 4
  %arrayidx72266.i.i = getelementptr [3 x %struct.srcu_node], ptr %add.ptr, i32 0, i32 %37
  %cmp73267.i.i = icmp ugt ptr %arrayidx72266.i.i, %add.ptr
  br i1 %cmp73267.i.i, label %do.body75.lr.ph.i.i, label %for.end171.i.i

do.body75.lr.ph.i.i:                              ; preds = %if.end68.i.i
  %and41.i.i.i = and i32 %33, -4
  %add.i.i.i = or i32 %and41.i.i.i, 1
  %sda.i.i.i = getelementptr i8, ptr %work, i32 -160
  %tobool.not.i.i.i.i.i = icmp sgt i32 %27, -1
  %add153.neg.i.i = add i32 %33, -100
  br label %do.body75.i.i

do.body75.i.i:                                    ; preds = %for.inc170.i.i, %do.body75.lr.ph.i.i
  %snp.0268.i.i = phi ptr [ %add.ptr, %do.body75.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc170.i.i ]
  tail call void @_raw_spin_lock_irq(ptr noundef %snp.0268.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_num_lvls to i32))
  %38 = load i32, ptr @rcu_num_lvls, align 4
  %sub82.i.i = add i32 %38, -1
  %arrayidx83.i.i = getelementptr %struct.srcu_struct, ptr %add.ptr, i32 0, i32 1, i32 %sub82.i.i
  %39 = ptrtoint ptr %arrayidx83.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx83.i.i, align 4
  %cmp84.not.i.i = icmp ult ptr %snp.0268.i.i, %40
  br i1 %cmp84.not.i.i, label %if.end93.i.i, label %if.then88.i.i

if.then88.i.i:                                    ; preds = %do.body75.i.i
  %arrayidx89.i.i = getelementptr %struct.srcu_node, ptr %snp.0268.i.i, i32 0, i32 1, i32 %rem.i.i
  %41 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx89.i.i, align 4
  %cmp90.i.i = icmp eq i32 %42, %33
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %if.then88.i.i, %do.body75.i.i
  %cbs.0.off0.i.i = phi i1 [ %cmp90.i.i, %if.then88.i.i ], [ false, %do.body75.i.i ]
  %arrayidx95.i.i = getelementptr %struct.srcu_node, ptr %snp.0268.i.i, i32 0, i32 1, i32 %rem.i.i
  %43 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 %add.i.i.i, ptr %arrayidx95.i.i, align 4
  %srcu_gp_seq_needed_exp98.i.i = getelementptr inbounds %struct.srcu_node, ptr %snp.0268.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %srcu_gp_seq_needed_exp98.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %srcu_gp_seq_needed_exp98.i.i, align 4
  %sub99.i.i = sub i32 %45, %33
  %cmp100.i.i = icmp slt i32 %sub99.i.i, 0
  br i1 %cmp100.i.i, label %do.body107.i.i, label %if.end113.i.i

do.body107.i.i:                                   ; preds = %if.end93.i.i
  %46 = ptrtoint ptr %srcu_gp_seq_needed_exp98.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %33, ptr %srcu_gp_seq_needed_exp98.i.i, align 4
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %do.body107.i.i, %if.end93.i.i
  %arrayidx114.i.i = getelementptr %struct.srcu_node, ptr %snp.0268.i.i, i32 0, i32 2, i32 %rem.i.i
  %47 = ptrtoint ptr %arrayidx114.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx114.i.i, align 4
  store i32 0, ptr %arrayidx114.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %snp.0268.i.i) #12
  br i1 %cbs.0.off0.i.i, label %if.then119.i.i, label %if.end120.i.i

if.then119.i.i:                                   ; preds = %if.end113.i.i
  %grplo.i.i.i = getelementptr inbounds %struct.srcu_node, ptr %snp.0268.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %grplo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %grplo.i.i.i, align 4
  %grphi.i.i.i = getelementptr inbounds %struct.srcu_node, ptr %snp.0268.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %grphi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %grphi.i.i.i, align 4
  %cmp.not8.i.i.i = icmp sgt i32 %50, %52
  br i1 %cmp.not8.i.i.i, label %if.end120.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.then119.i.i
  %cpu.09.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i ], [ %50, %if.then119.i.i ]
  %53 = ptrtoint ptr %grplo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %grplo.i.i.i, align 4
  %sub.i.i.i = sub i32 %cpu.09.i.i.i, %54
  %shl.i.i.i = shl nuw i32 1, %sub.i.i.i
  %and.i259.i.i = and i32 %shl.i.i.i, %48
  %tobool.not.i260.i.i = icmp eq i32 %and.i259.i.i, 0
  br i1 %tobool.not.i260.i.i, label %for.inc.i.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %for.body.i.i.i
  %55 = ptrtoint ptr %sda.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sda.i.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.09.i.i.i
  %58 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i261.i.i = add i32 %59, %57
  %60 = inttoptr i32 %add.i261.i.i to ptr
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %do.body.i.i.i
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.srcu_data, ptr %60, i32 0, i32 13
  %61 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i.i.i.i.i, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_gp_wq to i32))
  %63 = load ptr, ptr @rcu_gp_wq, align 4
  %work.i.i.i.i.i = getelementptr inbounds %struct.srcu_data, ptr %60, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef %62, ptr noundef %63, ptr noundef %work.i.i.i.i.i) #12
  br label %for.inc.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body.i.i.i
  %delay_work.i.i.i.i.i = getelementptr inbounds %struct.srcu_data, ptr %60, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i.i.i = add i32 %64, 1
  %call1.i.i.i.i.i = tail call i32 @timer_reduce(ptr noundef %delay_work.i.i.i.i.i, i32 noundef %add.i.i.i.i.i) #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i, %for.body.i.i.i
  %inc.i.i.i = add i32 %cpu.09.i.i.i, 1
  %65 = ptrtoint ptr %grphi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %grphi.i.i.i, align 4
  %cmp.not.i.i.i = icmp sgt i32 %inc.i.i.i, %66
  br i1 %cmp.not.i.i.i, label %if.end120.i.i, label %for.body.i.i.i

if.end120.i.i:                                    ; preds = %for.inc.i.i.i, %if.then119.i.i, %if.end113.i.i
  %67 = load i32, ptr @counter_wrap_check, align 4
  %and.i148.i = and i32 %67, %33
  %tobool121.not.i.i = icmp ne i32 %and.i148.i, 0
  %brmerge.i.i = select i1 %tobool121.not.i.i, i1 true, i1 %cmp84.not.i.i
  br i1 %brmerge.i.i, label %for.inc170.i.i, label %if.then124.i.i

if.then124.i.i:                                   ; preds = %if.end120.i.i
  %grplo.i.i = getelementptr inbounds %struct.srcu_node, ptr %snp.0268.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %grplo.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %grplo.i.i, align 4
  %grphi.i.i = getelementptr inbounds %struct.srcu_node, ptr %snp.0268.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %grphi.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %grphi.i.i, align 4
  %cmp126.not264.i.i = icmp sgt i32 %69, %71
  br i1 %cmp126.not264.i.i, label %for.inc170.i.i, label %do.body129.i.i

do.body129.i.i:                                   ; preds = %if.end167.i.i, %if.then124.i.i
  %cpu.0265.i.i = phi i32 [ %inc.i.i, %if.end167.i.i ], [ %69, %if.then124.i.i ]
  %72 = ptrtoint ptr %sda.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sda.i.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  %arrayidx134.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.0265.i.i
  %75 = ptrtoint ptr %arrayidx134.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx134.i.i, align 4
  %add.i149.i = add i32 %76, %74
  %77 = inttoptr i32 %add.i149.i to ptr
  %lock141.i.i = getelementptr inbounds %struct.srcu_data, ptr %77, i32 0, i32 3
  %call143.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock141.i.i) #12
  %srcu_gp_seq_needed.i.i = getelementptr inbounds %struct.srcu_data, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %srcu_gp_seq_needed.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %srcu_gp_seq_needed.i.i, align 8
  %sub154.i.i = sub i32 %add153.neg.i.i, %79
  %cmp155.i.i = icmp sgt i32 %sub154.i.i, -1
  br i1 %cmp155.i.i, label %if.then157.i.i, label %if.end159.i.i

if.then157.i.i:                                   ; preds = %do.body129.i.i
  %80 = ptrtoint ptr %srcu_gp_seq_needed.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %33, ptr %srcu_gp_seq_needed.i.i, align 8
  br label %if.end159.i.i

if.end159.i.i:                                    ; preds = %if.then157.i.i, %do.body129.i.i
  %srcu_gp_seq_needed_exp160.i.i = getelementptr inbounds %struct.srcu_data, ptr %77, i32 0, i32 6
  %81 = ptrtoint ptr %srcu_gp_seq_needed_exp160.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %srcu_gp_seq_needed_exp160.i.i, align 4
  %sub162.i.i = sub i32 %add153.neg.i.i, %82
  %cmp163.i.i = icmp sgt i32 %sub162.i.i, -1
  br i1 %cmp163.i.i, label %if.then165.i.i, label %if.end167.i.i

if.then165.i.i:                                   ; preds = %if.end159.i.i
  %83 = ptrtoint ptr %srcu_gp_seq_needed_exp160.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %33, ptr %srcu_gp_seq_needed_exp160.i.i, align 4
  br label %if.end167.i.i

if.end167.i.i:                                    ; preds = %if.then165.i.i, %if.end159.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock141.i.i, i32 noundef %call143.i.i) #12
  %inc.i.i = add i32 %cpu.0265.i.i, 1
  %84 = ptrtoint ptr %grphi.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %grphi.i.i, align 4
  %cmp126.not.i.i = icmp sgt i32 %inc.i.i, %85
  br i1 %cmp126.not.i.i, label %for.inc170.i.i, label %do.body129.i.i

for.inc170.i.i:                                   ; preds = %if.end167.i.i, %if.then124.i.i, %if.end120.i.i
  %incdec.ptr.i.i = getelementptr %struct.srcu_node, ptr %snp.0268.i.i, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_num_nodes to i32))
  %86 = load i32, ptr @rcu_num_nodes, align 4
  %arrayidx72.i.i = getelementptr [3 x %struct.srcu_node], ptr %add.ptr, i32 0, i32 %86
  %cmp73.i.i = icmp ult ptr %incdec.ptr.i.i, %arrayidx72.i.i
  br i1 %cmp73.i.i, label %do.body75.i.i, label %for.end171.i.i

for.end171.i.i:                                   ; preds = %for.inc170.i.i, %if.end68.i.i
  tail call void @mutex_unlock(ptr noundef %srcu_cb_mutex.i.i) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %87 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %and.i262.i.i = and i32 %88, 3
  %tobool183.not.i.i = icmp eq i32 %and.i262.i.i, 0
  br i1 %tobool183.not.i.i, label %land.lhs.true184.i.i, label %if.else.i.i

land.lhs.true184.i.i:                             ; preds = %for.end171.i.i
  %srcu_gp_seq_needed185.i.i = getelementptr i8, ptr %work, i32 -172
  %89 = ptrtoint ptr %srcu_gp_seq_needed185.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %srcu_gp_seq_needed185.i.i, align 4
  %sub186.i.i = sub i32 %88, %90
  %cmp187.i.i = icmp slt i32 %sub186.i.i, 0
  br i1 %cmp187.i.i, label %if.then189.i.i, label %if.else.i.i

if.then189.i.i:                                   ; preds = %land.lhs.true184.i.i
  tail call fastcc void @srcu_gp_start(ptr noundef %add.ptr) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #12
  tail call fastcc void @srcu_reschedule(ptr noundef %add.ptr, i32 noundef 0) #12
  br label %srcu_advance_state.exit

if.else.i.i:                                      ; preds = %land.lhs.true184.i.i, %for.end171.i.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #12
  br label %srcu_advance_state.exit

srcu_advance_state.exit:                          ; preds = %if.else.i.i, %if.then189.i.i, %if.then108.i, %do.end98.i, %if.then83.i, %if.then70.i, %if.end48.i
  %91 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %srcu_gp_seq_needed_exp.i = getelementptr i8, ptr %work, i32 -168
  %93 = ptrtoint ptr %srcu_gp_seq_needed_exp.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %srcu_gp_seq_needed_exp.i, align 4
  %95 = xor i32 %92, -1
  %96 = add i32 %94, %95
  %sub.lobit.not.i = lshr i32 %96, 31
  tail call fastcc void @srcu_reschedule(ptr noundef %add.ptr, i32 noundef %sub.lobit.not.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srcu_reschedule(ptr noundef %ssp, i32 noundef %delay) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %0 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srcu_gp_seq, align 4
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 7
  %2 = ptrtoint ptr %srcu_gp_seq_needed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srcu_gp_seq_needed, align 4
  %sub = sub i32 %1, %3
  %cmp = icmp sgt i32 %sub, -1
  %and.i = and i32 %1, 3
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end36, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %.b67 = load i1, ptr @srcu_reschedule.__already_done, align 1
  br i1 %.b67, label %if.then55, label %if.then12, !prof !172

if.then12:                                        ; preds = %land.rhs
  store i1 true, ptr @srcu_reschedule.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1302, i32 noundef 9, ptr noundef null) #12
  br label %if.then55

if.end36:                                         ; preds = %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %if.end57

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then50, label %if.then55

if.then50:                                        ; preds = %if.else
  tail call fastcc void @srcu_gp_start(ptr noundef %ssp)
  br label %if.then55

if.then55:                                        ; preds = %if.then50, %if.else, %if.then12, %land.rhs
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_gp_wq to i32))
  %4 = load ptr, ptr @rcu_gp_wq, align 4
  %work = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 15
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef %delay) #12
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srcu_gp_start(ptr noundef %ssp) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sda = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  %0 = ptrtoint ptr %sda to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sda, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !160) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end15, label %if.end, !prof !171

do.end15:                                         ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end15, %land.rhs, %entry
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %11 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %srcu_gp_seq, align 4
  %srcu_gp_seq_needed = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 7
  %13 = ptrtoint ptr %srcu_gp_seq_needed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %srcu_gp_seq_needed, align 4
  %sub = sub i32 %12, %14
  %cmp30 = icmp sgt i32 %sub, -1
  br i1 %cmp30, label %land.rhs36, label %if.end74

land.rhs36:                                       ; preds = %if.end
  %.b176 = load i1, ptr @srcu_gp_start.__already_done, align 1
  br i1 %.b176, label %if.end74, label %if.then47, !prof !172

if.then47:                                        ; preds = %land.rhs36
  store i1 true, ptr @srcu_gp_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 441, i32 noundef 9, ptr noundef null) #12
  br label %if.end74

if.end74:                                         ; preds = %if.then47, %land.rhs36, %if.end
  %lock83 = getelementptr inbounds %struct.srcu_data, ptr %9, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock83) #12
  %srcu_cblist = getelementptr inbounds %struct.srcu_data, ptr %9, i32 0, i32 4
  %15 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %srcu_gp_seq, align 4
  tail call void @rcu_segcblist_advance(ptr noundef %srcu_cblist, i32 noundef %16) #12
  %17 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %srcu_gp_seq, align 4
  %add1.i = add i32 %18, 7
  %and.i177 = and i32 %add1.i, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !183
  %call94 = tail call zeroext i1 @rcu_segcblist_accelerate(ptr noundef %srcu_cblist, i32 noundef %and.i177) #12
  tail call void @_raw_spin_unlock(ptr noundef %lock83) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !198
  %19 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %srcu_gp_seq, align 4
  %add.i = add i32 %20, 1
  store volatile i32 %add.i, ptr %srcu_gp_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !187
  %21 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %srcu_gp_seq, align 4
  %and.i.i = and i32 %22, 3
  %cmp.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.not.i, label %rcu_seq_start.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end74
  %.b49.i = load i1, ptr @rcu_seq_start.__already_done, align 1
  br i1 %.b49.i, label %rcu_seq_start.exit, label %if.then.i, !prof !172

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @rcu_seq_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %rcu_seq_start.exit

rcu_seq_start.exit:                               ; preds = %if.then.i, %land.rhs.i, %if.end74
  %23 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %srcu_gp_seq, align 4
  %and.i178 = and i32 %24, 3
  %cmp106.not = icmp eq i32 %and.i178, 1
  br i1 %cmp106.not, label %if.end151, label %land.rhs113

land.rhs113:                                      ; preds = %rcu_seq_start.exit
  %.b174175 = load i1, ptr @srcu_gp_start.__already_done.22, align 1
  br i1 %.b174175, label %if.end151, label %if.then124, !prof !172

if.then124:                                       ; preds = %land.rhs113
  store i1 true, ptr @srcu_gp_start.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 451, i32 noundef 9, ptr noundef null) #12
  br label %if.end151

if.end151:                                        ; preds = %if.then124, %land.rhs113, %rcu_seq_start.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @try_check_zero(ptr noundef %ssp, i32 noundef %idx, i32 noundef %trycount) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sda.i.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 10
  %srcu_gp_seq.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  %srcu_gp_seq_needed_exp.i = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %if.end3, %entry
  %trycount.addr.0 = phi i32 [ %trycount, %entry ], [ %dec, %if.end3 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call11.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  %cmp12.i.i = icmp ult i32 %call11.i.i, %0
  br i1 %cmp12.i.i, label %for.body.lr.ph.i.i, label %srcu_readers_unlock_idx.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond
  %1 = ptrtoint ptr %sda.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sda.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.lr.ph.i.i
  %call14.i.i = phi i32 [ %call11.i.i, %for.body.lr.ph.i.i ], [ %call.i.i, %for.body.i.i ]
  %sum.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add7.i.i, %for.body.i.i ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call14.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %5, %3
  %6 = inttoptr i32 %add.i.i to ptr
  %arrayidx6.i.i = getelementptr %struct.srcu_data, ptr %6, i32 0, i32 1, i32 %idx
  %7 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx6.i.i, align 4
  %add7.i.i = add i32 %8, %sum.013.i.i
  %call.i.i = tail call i32 @cpumask_next(i32 noundef %call14.i.i, ptr noundef nonnull @__cpu_possible_mask) #15
  %cmp.i.i = icmp ult i32 %call.i.i, %0
  br i1 %cmp.i.i, label %for.body.i.i, label %srcu_readers_unlock_idx.exit.i

srcu_readers_unlock_idx.exit.i:                   ; preds = %for.body.i.i, %for.cond
  %sum.0.lcssa.i.i = phi i32 [ 0, %for.cond ], [ %add7.i.i, %for.body.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call11.i7.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  %cmp12.i8.i = icmp ult i32 %call11.i7.i, %9
  br i1 %cmp12.i8.i, label %for.body.lr.ph.i10.i, label %srcu_readers_active_idx_check.exit

for.body.lr.ph.i10.i:                             ; preds = %srcu_readers_unlock_idx.exit.i
  %10 = ptrtoint ptr %sda.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sda.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %for.body.i19.i

for.body.i19.i:                                   ; preds = %for.body.i19.i, %for.body.lr.ph.i10.i
  %call14.i11.i = phi i32 [ %call11.i7.i, %for.body.lr.ph.i10.i ], [ %call.i17.i, %for.body.i19.i ]
  %sum.013.i12.i = phi i32 [ 0, %for.body.lr.ph.i10.i ], [ %add7.i16.i, %for.body.i19.i ]
  %arrayidx.i13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call14.i11.i
  %13 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i13.i, align 4
  %add.i14.i = add i32 %14, %12
  %15 = inttoptr i32 %add.i14.i to ptr
  %arrayidx6.i15.i = getelementptr [2 x i32], ptr %15, i32 0, i32 %idx
  %16 = ptrtoint ptr %arrayidx6.i15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx6.i15.i, align 4
  %add7.i16.i = add i32 %17, %sum.013.i12.i
  %call.i17.i = tail call i32 @cpumask_next(i32 noundef %call14.i11.i, ptr noundef nonnull @__cpu_possible_mask) #15
  %cmp.i18.i = icmp ult i32 %call.i17.i, %9
  br i1 %cmp.i18.i, label %for.body.i19.i, label %srcu_readers_active_idx_check.exit

srcu_readers_active_idx_check.exit:               ; preds = %for.body.i19.i, %srcu_readers_unlock_idx.exit.i
  %sum.0.lcssa.i20.i = phi i32 [ 0, %srcu_readers_unlock_idx.exit.i ], [ %add7.i16.i, %for.body.i19.i ]
  %cmp.i = icmp eq i32 %sum.0.lcssa.i20.i, %sum.0.lcssa.i.i
  br i1 %cmp.i, label %return, label %if.end

if.end:                                           ; preds = %srcu_readers_active_idx_check.exit
  %dec = add i32 %trycount.addr.0, -1
  %18 = ptrtoint ptr %srcu_gp_seq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %srcu_gp_seq.i, align 4
  %20 = ptrtoint ptr %srcu_gp_seq_needed_exp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %srcu_gp_seq_needed_exp.i, align 4
  %22 = sub i32 %19, %21
  %.lobit.not = lshr i32 %22, 31
  %add = add i32 %.lobit.not, %dec
  %cmp = icmp slt i32 %add, 1
  br i1 %cmp, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 1073740) #12
  br label %for.cond

return:                                           ; preds = %if.end, %srcu_readers_active_idx_check.exit
  ret i1 %cmp.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_accelerate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_init_geometry() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_invoke_callbacks(ptr noundef %work) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %ready_cbs = alloca %struct.rcu_cblist, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ready_cbs) #12
  %0 = ptrtoint ptr %ready_cbs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ready_cbs, align 4, !annotation !200
  %1 = getelementptr inbounds %struct.rcu_cblist, ptr %ready_cbs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !200
  %3 = getelementptr inbounds %struct.rcu_cblist, ptr %ready_cbs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !200
  %ssp1 = getelementptr i8, ptr %work, i32 64
  %5 = ptrtoint ptr %ssp1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ssp1, align 4
  call void @rcu_cblist_init(ptr noundef nonnull %ready_cbs) #12
  %lock = getelementptr i8, ptr %work, i32 -164
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %srcu_cblist = getelementptr i8, ptr %work, i32 -120
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %srcu_gp_seq, align 4
  call void @rcu_segcblist_advance(ptr noundef %srcu_cblist, i32 noundef %8) #12
  %srcu_cblist_invoking = getelementptr i8, ptr %work, i32 -52
  %9 = ptrtoint ptr %srcu_cblist_invoking to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %srcu_cblist_invoking, align 16, !range !201
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call6 = call zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %srcu_cblist) #12
  br i1 %call6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %srcu_cblist_invoking to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %srcu_cblist_invoking, align 16
  call void @rcu_segcblist_extract_done_cbs(ptr noundef %srcu_cblist, ptr noundef nonnull %ready_cbs) #12
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %call12 = call ptr @rcu_cblist_dequeue(ptr noundef nonnull %ready_cbs) #12
  %cmp.not104 = icmp eq ptr %call12, null
  br i1 %cmp.not104, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %rhp.0105 = phi ptr [ %call13, %for.body ], [ %call12, %if.end ]
  call void @debug_object_active_state(ptr noundef nonnull %rhp.0105, ptr noundef nonnull @rcuhead_debug_descr, i32 noundef 1, i32 noundef 0) #12
  call void @debug_object_deactivate(ptr noundef nonnull %rhp.0105, ptr noundef nonnull @rcuhead_debug_descr) #12
  call fastcc void @local_bh_disable()
  %func = getelementptr inbounds %struct.callback_head, ptr %rhp.0105, i32 0, i32 1
  %14 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func, align 4
  call void %15(ptr noundef nonnull %rhp.0105) #12
  call fastcc void @local_bh_enable()
  %call13 = call ptr @rcu_cblist_dequeue(ptr noundef nonnull %ready_cbs) #12
  %cmp.not = icmp eq ptr %call13, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.end49, label %land.rhs

land.rhs:                                         ; preds = %for.end
  %.b103 = load i1, ptr @srcu_invoke_callbacks.__already_done, align 1
  br i1 %.b103, label %if.end49, label %if.then23, !prof !172

if.then23:                                        ; preds = %land.rhs
  store i1 true, ptr @srcu_invoke_callbacks.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1275, i32 noundef 9, ptr noundef null) #12
  br label %if.end49

if.end49:                                         ; preds = %if.then23, %land.rhs, %for.end
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %sub = sub i32 0, %13
  call void @rcu_segcblist_add_len(ptr noundef %srcu_cblist, i32 noundef %sub) #12
  %18 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %srcu_gp_seq, align 4
  %add1.i = add i32 %19, 7
  %and.i = and i32 %add1.i, -4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !183
  %call68 = call zeroext i1 @rcu_segcblist_accelerate(ptr noundef %srcu_cblist, i32 noundef %and.i) #12
  %20 = ptrtoint ptr %srcu_cblist_invoking to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %srcu_cblist_invoking, align 16
  %call71 = call zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %srcu_cblist) #12
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br i1 %call71, label %if.then75, label %cleanup

if.then75:                                        ; preds = %if.end49
  %cpu.i.i = getelementptr i8, ptr %work, i32 60
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_gp_wq to i32))
  %23 = load ptr, ptr @rcu_gp_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef %22, ptr noundef %23, ptr noundef %work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.end49, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ready_cbs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @srcu_delay_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr i8, ptr %t, i32 108
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_gp_wq to i32))
  %2 = load ptr, ptr @rcu_gp_wq, align 4
  %work = getelementptr i8, ptr %t, i32 48
  %call = tail call zeroext i1 @queue_work_on(i32 noundef %1, ptr noundef %2, ptr noundef %work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_cblist_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_extract_done_cbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcu_cblist_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_add_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @srcu_leak_callback(ptr nocapture noundef %rhp) #10 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rcu_head_on_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeme_after_rcu(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_rcu_head_on_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @srcu_funnel_exp_start(ptr noundef %ssp, ptr noundef %snp, i32 noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not93 = icmp eq ptr %snp, null
  br i1 %cmp.not93, label %do.body38, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %srcu_gp_seq = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %do.body29, %for.body.lr.ph
  %snp.addr.094 = phi ptr [ %snp, %for.body.lr.ph ], [ %8, %do.body29 ]
  %0 = ptrtoint ptr %srcu_gp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %srcu_gp_seq, align 4
  %sub.i = sub i32 %1, %s
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %cleanup, label %do.end

do.end:                                           ; preds = %for.body
  %srcu_gp_seq_needed_exp = getelementptr inbounds %struct.srcu_node, ptr %snp.addr.094, i32 0, i32 3
  %2 = ptrtoint ptr %srcu_gp_seq_needed_exp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %srcu_gp_seq_needed_exp, align 4
  %sub = sub i32 %3, %s
  %cmp1 = icmp sgt i32 %sub, -1
  br i1 %cmp1, label %cleanup, label %do.body4

do.body4:                                         ; preds = %do.end
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %snp.addr.094) #12
  %4 = ptrtoint ptr %srcu_gp_seq_needed_exp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srcu_gp_seq_needed_exp, align 4
  %sub19 = sub i32 %5, %s
  %cmp20 = icmp sgt i32 %sub19, -1
  br i1 %cmp20, label %if.then22, label %do.body29

if.then22:                                        ; preds = %do.body4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %snp.addr.094, i32 noundef %call8) #12
  br label %cleanup

do.body29:                                        ; preds = %do.body4
  %6 = ptrtoint ptr %srcu_gp_seq_needed_exp to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %s, ptr %srcu_gp_seq_needed_exp, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %snp.addr.094, i32 noundef %call8) #12
  %srcu_parent = getelementptr inbounds %struct.srcu_node, ptr %snp.addr.094, i32 0, i32 4
  %7 = ptrtoint ptr %srcu_parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %srcu_parent, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %do.body38, label %for.body

do.body38:                                        ; preds = %do.body29, %entry
  %lock44 = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 3
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock44) #12
  %srcu_gp_seq_needed_exp56 = getelementptr inbounds %struct.srcu_struct, ptr %ssp, i32 0, i32 8
  %9 = ptrtoint ptr %srcu_gp_seq_needed_exp56 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srcu_gp_seq_needed_exp56, align 4
  %sub57 = sub i32 %10, %s
  %cmp58 = icmp slt i32 %sub57, 0
  br i1 %cmp58, label %do.body65, label %if.end71

do.body65:                                        ; preds = %do.body38
  %11 = ptrtoint ptr %srcu_gp_seq_needed_exp56 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %s, ptr %srcu_gp_seq_needed_exp56, align 4
  br label %if.end71

if.end71:                                         ; preds = %do.body65, %do.body38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock44, i32 noundef %call46) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then22, %do.end, %for.body
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #8 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #8 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_active_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_deactivate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srcu_module_notify(ptr nocapture noundef readnone %self, i32 noundef %val, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  switch i32 %val, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %num_srcu_structs.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 43
  %0 = ptrtoint ptr %num_srcu_structs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_srcu_structs.i, align 32
  %cmp49.not.i = icmp eq i32 %1, 0
  br i1 %cmp49.not.i, label %sw.epilog, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %sw.bb
  %srcu_struct_ptrs.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 44
  %2 = ptrtoint ptr %srcu_struct_ptrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srcu_struct_ptrs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.preheader.i
  %i.051.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %for.body.preheader.i ]
  %sspp.050.i = phi ptr [ %incdec.ptr.i, %for.inc.i ], [ %3, %for.body.preheader.i ]
  %4 = ptrtoint ptr %sspp.050.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sspp.050.i, align 4
  tail call void @debug_check_no_locks_freed(ptr noundef %5, i32 noundef 824) #12
  %dep_map.i.i = getelementptr inbounds %struct.srcu_struct, ptr %5, i32 0, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @srcu_module_coming.__srcu_key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %lock.i.i = getelementptr inbounds %struct.srcu_struct, ptr %5, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @__init_srcu_struct.__key, i16 noundef signext 3) #12
  %call1.i.i = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %5, i1 noundef zeroext false) #12
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i
  %.b47.i = load i1, ptr @srcu_module_coming.__already_done, align 1
  br i1 %.b47.i, label %sw.epilog, label %if.then.i, !prof !172

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @srcu_module_coming.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1418, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr ptr, ptr %sspp.050.i, i32 1
  %inc.i = add nuw i32 %i.051.i, 1
  %6 = ptrtoint ptr %num_srcu_structs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_srcu_structs.i, align 32
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i, label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %num_srcu_structs.i3 = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 43
  %8 = ptrtoint ptr %num_srcu_structs.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_srcu_structs.i3, align 32
  %cmp3.not.i = icmp eq i32 %9, 0
  br i1 %cmp3.not.i, label %sw.epilog, label %for.body.preheader.i5

for.body.preheader.i5:                            ; preds = %sw.bb1
  %srcu_struct_ptrs.i4 = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 44
  %10 = ptrtoint ptr %srcu_struct_ptrs.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srcu_struct_ptrs.i4, align 4
  br label %for.body.i9

for.body.i9:                                      ; preds = %for.body.i9, %for.body.preheader.i5
  %sspp.05.i = phi ptr [ %incdec.ptr.i6, %for.body.i9 ], [ %11, %for.body.preheader.i5 ]
  %i.04.i = phi i32 [ %inc.i7, %for.body.i9 ], [ 0, %for.body.preheader.i5 ]
  %incdec.ptr.i6 = getelementptr ptr, ptr %sspp.05.i, i32 1
  %12 = ptrtoint ptr %sspp.05.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sspp.05.i, align 4
  tail call void @cleanup_srcu_struct(ptr noundef %13) #12
  %inc.i7 = add nuw i32 %i.04.i, 1
  %14 = ptrtoint ptr %num_srcu_structs.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_srcu_structs.i3, align 32
  %cmp.i8 = icmp ult i32 %inc.i7, %15
  br i1 %cmp.i8, label %for.body.i9, label %sw.epilog

sw.epilog:                                        ; preds = %for.body.i9, %sw.bb1, %for.inc.i, %if.then.i, %land.rhs.i, %sw.bb, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %call1.i.i, %if.then.i ], [ %call1.i.i, %land.rhs.i ], [ 0, %sw.bb ], [ 0, %sw.bb1 ], [ 0, %for.inc.i ], [ 0, %for.body.i9 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !67, !68, !70, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !86, !88, !90, !92, !93, !95, !97, !99, !100, !102, !104, !106, !107, !109, !110, !112, !113, !115, !117, !119, !121, !122, !124, !125, !127, !129, !130, !132, !134, !135, !137, !139, !140, !141, !142, !144, !145, !146, !148, !150, !151, !152, !153, !155, !157, !158}
!llvm.named.register.sp = !{!160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__param_exp_holdoff, !1, !"__param_exp_holdoff", i1 false, i1 false}
!1 = !{!"../kernel/rcu/srcutree.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_exp_holdofftype229, !1, !"__UNIQUE_ID_exp_holdofftype229", i1 false, i1 false}
!3 = !{ptr @__param_counter_wrap_check, !4, !"__param_counter_wrap_check", i1 false, i1 false}
!4 = !{!"../kernel/rcu/srcutree.c", i32 39, i32 1}
!5 = !{ptr @__UNIQUE_ID_counter_wrap_checktype230, !4, !"__UNIQUE_ID_counter_wrap_checktype230", i1 false, i1 false}
!6 = !{ptr @__init_srcu_struct.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../kernel/rcu/srcutree.c", i32 192, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab___init_srcu_struct, !10, !"__ksymtab___init_srcu_struct", i1 false, i1 false}
!10 = !{!"../kernel/rcu/srcutree.c", i32 195, i32 1}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/rcu/srcutree.c", i32 371, i32 6}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/rcu/srcutree.c", i32 386, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cleanup_srcu_struct._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @cleanup_srcu_struct._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_cleanup_srcu_struct, !19, !"__ksymtab_cleanup_srcu_struct", i1 false, i1 false}
!19 = !{!"../kernel/rcu/srcutree.c", i32 393, i32 1}
!20 = !{ptr @__ksymtab___srcu_read_lock, !21, !"__ksymtab___srcu_read_lock", i1 false, i1 false}
!21 = !{!"../kernel/rcu/srcutree.c", i32 409, i32 1}
!22 = !{ptr @__ksymtab___srcu_read_unlock, !23, !"__ksymtab___srcu_read_unlock", i1 false, i1 false}
!23 = !{!"../kernel/rcu/srcutree.c", i32 421, i32 1}
!24 = !{ptr @__ksymtab_call_srcu, !25, !"__ksymtab_call_srcu", i1 false, i1 false}
!25 = !{!"../kernel/rcu/srcutree.c", i32 908, i32 1}
!26 = !{ptr @__ksymtab_synchronize_srcu_expedited, !27, !"__ksymtab_synchronize_srcu_expedited", i1 false, i1 false}
!27 = !{!"../kernel/rcu/srcutree.c", i32 957, i32 1}
!28 = !{ptr @__ksymtab_synchronize_srcu, !29, !"__ksymtab_synchronize_srcu", i1 false, i1 false}
!29 = !{!"../kernel/rcu/srcutree.c", i32 1013, i32 1}
!30 = !{ptr @__ksymtab_get_state_synchronize_srcu, !31, !"__ksymtab_get_state_synchronize_srcu", i1 false, i1 false}
!31 = !{!"../kernel/rcu/srcutree.c", i32 1032, i32 1}
!32 = !{ptr @__ksymtab_start_poll_synchronize_srcu, !33, !"__ksymtab_start_poll_synchronize_srcu", i1 false, i1 false}
!33 = !{!"../kernel/rcu/srcutree.c", i32 1048, i32 1}
!34 = !{ptr @__ksymtab_poll_state_synchronize_srcu, !35, !"__ksymtab_poll_state_synchronize_srcu", i1 false, i1 false}
!35 = !{!"../kernel/rcu/srcutree.c", i32 1084, i32 1}
!36 = !{ptr @__ksymtab_srcu_barrier, !37, !"__ksymtab_srcu_barrier", i1 false, i1 false}
!37 = !{!"../kernel/rcu/srcutree.c", i32 1153, i32 1}
!38 = !{ptr @__ksymtab_srcu_batches_completed, !39, !"__ksymtab_srcu_batches_completed", i1 false, i1 false}
!39 = !{!"../kernel/rcu/srcutree.c", i32 1166, i32 1}
!40 = !{ptr @__ksymtab_srcutorture_get_gp_data, !41, !"__ksymtab_srcutorture_get_gp_data", i1 false, i1 false}
!41 = !{!"../kernel/rcu/srcutree.c", i32 1338, i32 1}
!42 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/rcu/srcutree.c", i32 1347, i32 2}
!44 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @srcu_torture_stats_print._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @srcu_torture_stats_print._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/rcu/srcutree.c", i32 1370, i32 3}
!49 = !{ptr @srcu_torture_stats_print._entry.6, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @srcu_torture_stats_print._entry_ptr.8, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/rcu/srcutree.c", i32 1376, i32 2}
!54 = !{ptr @srcu_torture_stats_print._entry.10, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @srcu_torture_stats_print._entry_ptr.12, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__ksymtab_srcu_torture_stats_print, !57, !"__ksymtab_srcu_torture_stats_print", i1 false, i1 false}
!57 = !{!"../kernel/rcu/srcutree.c", i32 1378, i32 1}
!58 = !{ptr @__initcall__kmod_srcutree__266_1387_srcu_bootup_announceearly, !59, !"__initcall__kmod_srcutree__266_1387_srcu_bootup_announceearly", i1 false, i1 false}
!59 = !{!"../kernel/rcu/srcutree.c", i32 1387, i32 1}
!60 = !{ptr @__initcall__kmod_srcutree__267_1468_init_srcu_module_notifier7, !61, !"__initcall__kmod_srcutree__267_1468_init_srcu_module_notifier7", i1 false, i1 false}
!61 = !{!"../kernel/rcu/srcutree.c", i32 1468, i32 1}
!62 = distinct !{null, !63, !"srcu_init_done", i1 false, i1 false}
!63 = !{!"../kernel/rcu/srcutree.c", i32 43, i32 27}
!64 = !{ptr @__param_str_exp_holdoff, !1, !"__param_str_exp_holdoff", i1 false, i1 false}
!65 = !{ptr @exp_holdoff, !66, !"exp_holdoff", i1 false, i1 false}
!66 = !{!"../kernel/rcu/srcutree.c", i32 34, i32 14}
!67 = !{ptr @__param_str_counter_wrap_check, !4, !"__param_str_counter_wrap_check", i1 false, i1 false}
!68 = !{ptr @counter_wrap_check, !69, !"counter_wrap_check", i1 false, i1 false}
!69 = !{!"../kernel/rcu/srcutree.c", i32 38, i32 14}
!70 = !{ptr @init_srcu_struct_fields.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../kernel/rcu/srcutree.c", i32 165, i32 2}
!72 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @init_srcu_struct_fields.__key.14, !74, !"__key", i1 false, i1 false}
!74 = !{!"../kernel/rcu/srcutree.c", i32 166, i32 2}
!75 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @init_srcu_struct_fields.__key.16, !77, !"__key", i1 false, i1 false}
!77 = !{!"../kernel/rcu/srcutree.c", i32 170, i32 2}
!78 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @init_srcu_struct_fields.__key.18, !80, !"__key", i1 false, i1 false}
!80 = !{!"../kernel/rcu/srcutree.c", i32 172, i32 2}
!81 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @init_srcu_struct_fields.__key.20, !80, !"__key", i1 false, i1 false}
!83 = !{ptr @.str.21, !80, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../kernel/rcu/srcutree.c", i32 1193, i32 4}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../kernel/rcu/srcutree.c", i32 441, i32 2}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../kernel/rcu/srcutree.c", i32 451, i32 2}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../kernel/rcu/rcu.h", i32 50, i32 2}
!92 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../kernel/rcu/srcutree.c", i32 528, i32 2}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../kernel/rcu/srcutree.c", i32 1302, i32 8}
!97 = !{ptr @init_srcu_struct_nodes.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../kernel/rcu/srcutree.c", i32 104, i32 3}
!99 = !{ptr @.str.24, !98, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../kernel/rcu/srcutree.c", i32 105, i32 3}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../kernel/rcu/srcutree.c", i32 132, i32 2}
!104 = !{ptr @init_srcu_struct_nodes.__key.26, !105, !"__key", i1 false, i1 false}
!105 = !{!"../kernel/rcu/srcutree.c", i32 138, i32 3}
!106 = !{ptr @.str.27, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @init_srcu_struct_nodes.__key.28, !108, !"__key", i1 false, i1 false}
!108 = !{!"../kernel/rcu/srcutree.c", i32 150, i32 3}
!109 = !{ptr @.str.29, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @init_srcu_struct_nodes.__key.30, !111, !"__key", i1 false, i1 false}
!111 = !{!"../kernel/rcu/srcutree.c", i32 151, i32 3}
!112 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"rcu_fanout_exact", i1 false, i1 false}
!114 = !{!"../kernel/rcu/rcu.h", i32 281, i32 13}
!115 = distinct !{null, !116, !"rcu_fanout_leaf", i1 false, i1 false}
!116 = !{!"../kernel/rcu/rcu.h", i32 282, i32 12}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../kernel/rcu/srcutree.c", i32 1275, i32 2}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../kernel/rcu/srcutree.c", i32 879, i32 3}
!121 = !{ptr @.str.32, !120, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../kernel/rcu/srcutree.c", i32 917, i32 2}
!124 = !{ptr @.str.33, !123, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../kernel/rcu/srcutree.c", i32 679, i32 3}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!129 = distinct !{null, !128, !"<string literal>", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../kernel/rcu/rcu.h", i32 59, i32 2}
!132 = !{ptr @init_completion.__key, !133, !"__key", i1 false, i1 false}
!133 = !{!"../include/linux/completion.h", i32 87, i32 2}
!134 = !{ptr @.str.35, !133, !"<string literal>", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../kernel/rcu/rcu.h", i32 72, i32 2}
!137 = !{ptr @.str.36, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../kernel/rcu/srcutree.c", i32 1382, i32 2}
!139 = !{ptr @.str.37, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @srcu_bootup_announce._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @srcu_bootup_announce._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.39, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../kernel/rcu/srcutree.c", i32 1384, i32 3}
!144 = !{ptr @srcu_bootup_announce._entry.38, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @srcu_bootup_announce._entry_ptr.40, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @srcu_boot_list, !147, !"srcu_boot_list", i1 false, i1 false}
!147 = !{!"../kernel/rcu/srcutree.c", i32 42, i32 8}
!148 = !{ptr @.str.41, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../kernel/rcu/srcutree.c", i32 1465, i32 3}
!150 = !{ptr @.str.42, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @init_srcu_module_notifier._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @init_srcu_module_notifier._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @srcu_module_nb, !154, !"srcu_module_nb", i1 false, i1 false}
!154 = !{!"../kernel/rcu/srcutree.c", i32 1454, i32 30}
!155 = !{ptr @srcu_module_coming.__srcu_key, !156, !"__srcu_key", i1 false, i1 false}
!156 = !{!"../kernel/rcu/srcutree.c", i32 1417, i32 9}
!157 = !{ptr @.str.43, !156, !"<string literal>", i1 false, i1 false}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../kernel/rcu/srcutree.c", i32 1418, i32 7}
!160 = !{!"sp"}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2152937534}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 793755, i64 793816}
!174 = !{i64 796487}
!175 = !{i64 796772}
!176 = !{i64 2153009617}
!177 = !{i64 2153011239}
!178 = !{i64 2152948060}
!179 = !{i64 2153083420}
!180 = !{i64 2153072102}
!181 = !{i64 2153076492}
!182 = !{i64 2153086762}
!183 = !{i64 2152854727}
!184 = !{i64 2153057284}
!185 = !{i64 2153094452}
!186 = !{i64 2153097656}
!187 = !{i64 2152847329}
!188 = !{i64 2148399497, i64 2148399523, i64 2148399552, i64 2148399586, i64 2148399617, i64 2148399640}
!189 = !{i64 2148401962, i64 2148401988, i64 2148402017, i64 2148402051, i64 2148402082, i64 2148402105}
!190 = !{i64 2148487949}
!191 = !{i64 2148402682, i64 2148402714, i64 2148402743, i64 2148402777, i64 2148402808, i64 2148402831}
!192 = !{i64 2148488178}
!193 = !{i64 2152848862}
!194 = !{i64 2153133011}
!195 = !{i64 2153110679}
!196 = !{i64 2153064254}
!197 = !{i64 2153066551}
!198 = !{i64 2153025638}
!199 = !{i64 2152957268}
!200 = !{!"auto-init"}
!201 = !{i8 0, i8 2}
