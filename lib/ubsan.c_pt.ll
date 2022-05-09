; ModuleID = '/llk/IR_all_yes/lib/ubsan.c_pt.bc'
source_filename = "../lib/ubsan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__ubsan_handle_divrem_overflow\22, \22a\22\09"
module asm "\09.weak\09__crc___ubsan_handle_divrem_overflow\09\09\09\09"
module asm "\09.long\09__crc___ubsan_handle_divrem_overflow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ubsan_handle_divrem_overflow:\09\09\09\09\09"
module asm "\09.asciz \09\22__ubsan_handle_divrem_overflow\22\09\09\09\09\09"
module asm "__kstrtabns___ubsan_handle_divrem_overflow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ubsan_handle_type_mismatch\22, \22a\22\09"
module asm "\09.weak\09__crc___ubsan_handle_type_mismatch\09\09\09\09"
module asm "\09.long\09__crc___ubsan_handle_type_mismatch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ubsan_handle_type_mismatch:\09\09\09\09\09"
module asm "\09.asciz \09\22__ubsan_handle_type_mismatch\22\09\09\09\09\09"
module asm "__kstrtabns___ubsan_handle_type_mismatch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ubsan_handle_type_mismatch_v1\22, \22a\22\09"
module asm "\09.weak\09__crc___ubsan_handle_type_mismatch_v1\09\09\09\09"
module asm "\09.long\09__crc___ubsan_handle_type_mismatch_v1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ubsan_handle_type_mismatch_v1:\09\09\09\09\09"
module asm "\09.asciz \09\22__ubsan_handle_type_mismatch_v1\22\09\09\09\09\09"
module asm "__kstrtabns___ubsan_handle_type_mismatch_v1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ubsan_handle_out_of_bounds\22, \22a\22\09"
module asm "\09.weak\09__crc___ubsan_handle_out_of_bounds\09\09\09\09"
module asm "\09.long\09__crc___ubsan_handle_out_of_bounds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ubsan_handle_out_of_bounds:\09\09\09\09\09"
module asm "\09.asciz \09\22__ubsan_handle_out_of_bounds\22\09\09\09\09\09"
module asm "__kstrtabns___ubsan_handle_out_of_bounds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ubsan_handle_shift_out_of_bounds\22, \22a\22\09"
module asm "\09.weak\09__crc___ubsan_handle_shift_out_of_bounds\09\09\09\09"
module asm "\09.long\09__crc___ubsan_handle_shift_out_of_bounds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ubsan_handle_shift_out_of_bounds:\09\09\09\09\09"
module asm "\09.asciz \09\22__ubsan_handle_shift_out_of_bounds\22\09\09\09\09\09"
module asm "__kstrtabns___ubsan_handle_shift_out_of_bounds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ubsan_handle_builtin_unreachable\22, \22a\22\09"
module asm "\09.weak\09__crc___ubsan_handle_builtin_unreachable\09\09\09\09"
module asm "\09.long\09__crc___ubsan_handle_builtin_unreachable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ubsan_handle_builtin_unreachable:\09\09\09\09\09"
module asm "\09.asciz \09\22__ubsan_handle_builtin_unreachable\22\09\09\09\09\09"
module asm "__kstrtabns___ubsan_handle_builtin_unreachable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ubsan_handle_load_invalid_value\22, \22a\22\09"
module asm "\09.weak\09__crc___ubsan_handle_load_invalid_value\09\09\09\09"
module asm "\09.long\09__crc___ubsan_handle_load_invalid_value\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ubsan_handle_load_invalid_value:\09\09\09\09\09"
module asm "\09.asciz \09\22__ubsan_handle_load_invalid_value\22\09\09\09\09\09"
module asm "__kstrtabns___ubsan_handle_load_invalid_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ubsan_handle_alignment_assumption\22, \22a\22\09"
module asm "\09.weak\09__crc___ubsan_handle_alignment_assumption\09\09\09\09"
module asm "\09.long\09__crc___ubsan_handle_alignment_assumption\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ubsan_handle_alignment_assumption:\09\09\09\09\09"
module asm "\09.asciz \09\22__ubsan_handle_alignment_assumption\22\09\09\09\09\09"
module asm "__kstrtabns___ubsan_handle_alignment_assumption:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.25, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.25 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.source_location = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.overflow_data = type { %struct.source_location, ptr }
%struct.type_descriptor = type { i16, i16, [1 x i8] }
%struct.type_mismatch_data_common = type { ptr, ptr, i32, i8 }
%struct.type_mismatch_data = type { %struct.source_location, ptr, i32, i8 }
%struct.type_mismatch_data_v1 = type { %struct.source_location, ptr, i8, i8 }
%struct.out_of_bounds_data = type { %struct.source_location, ptr, ptr }
%struct.shift_out_of_bounds_data = type { %struct.source_location, ptr, ptr }
%struct.invalid_value_data = type { %struct.source_location, ptr }
%struct.alignment_assumption_data = type { %struct.source_location, %struct.source_location, ptr }

@.str = private unnamed_addr constant [18 x i8] c"division-overflow\00", align 1
@__ubsan_handle_divrem_overflow._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 183, ptr null, ptr null }, align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"\013division of %s by -1 cannot be represented in type %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"__ubsan_handle_divrem_overflow\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"lib/ubsan.c\00", align 1
@__ubsan_handle_divrem_overflow._entry_ptr = internal global ptr @__ubsan_handle_divrem_overflow._entry, section ".printk_index", align 4
@__ubsan_handle_divrem_overflow._entry.4 = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 185, ptr null, ptr null }, align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\013division by zero\0A\00", align 1
@__ubsan_handle_divrem_overflow._entry_ptr.6 = internal global ptr @__ubsan_handle_divrem_overflow._entry.4, section ".printk_index", align 4
@__kstrtab___ubsan_handle_divrem_overflow = external dso_local constant [0 x i8], align 1
@__kstrtabns___ubsan_handle_divrem_overflow = external dso_local constant [0 x i8], align 1
@__ksymtab___ubsan_handle_divrem_overflow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ubsan_handle_divrem_overflow to i32), ptr @__kstrtab___ubsan_handle_divrem_overflow, ptr @__kstrtabns___ubsan_handle_divrem_overflow }, section "___ksymtab+__ubsan_handle_divrem_overflow", align 4
@__kstrtab___ubsan_handle_type_mismatch = external dso_local constant [0 x i8], align 1
@__kstrtabns___ubsan_handle_type_mismatch = external dso_local constant [0 x i8], align 1
@__ksymtab___ubsan_handle_type_mismatch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ubsan_handle_type_mismatch to i32), ptr @__kstrtab___ubsan_handle_type_mismatch, ptr @__kstrtabns___ubsan_handle_type_mismatch }, section "___ksymtab+__ubsan_handle_type_mismatch", align 4
@__kstrtab___ubsan_handle_type_mismatch_v1 = external dso_local constant [0 x i8], align 1
@__kstrtabns___ubsan_handle_type_mismatch_v1 = external dso_local constant [0 x i8], align 1
@__ksymtab___ubsan_handle_type_mismatch_v1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ubsan_handle_type_mismatch_v1 to i32), ptr @__kstrtab___ubsan_handle_type_mismatch_v1, ptr @__kstrtabns___ubsan_handle_type_mismatch_v1 }, section "___ksymtab+__ubsan_handle_type_mismatch_v1", align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"array-index-out-of-bounds\00", align 1
@__ubsan_handle_out_of_bounds._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 290, ptr null, ptr null }, align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"\013index %s is out of range for type %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"__ubsan_handle_out_of_bounds\00", align 1
@__ubsan_handle_out_of_bounds._entry_ptr = internal global ptr @__ubsan_handle_out_of_bounds._entry, section ".printk_index", align 4
@__kstrtab___ubsan_handle_out_of_bounds = external dso_local constant [0 x i8], align 1
@__kstrtabns___ubsan_handle_out_of_bounds = external dso_local constant [0 x i8], align 1
@__ksymtab___ubsan_handle_out_of_bounds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ubsan_handle_out_of_bounds to i32), ptr @__kstrtab___ubsan_handle_out_of_bounds, ptr @__kstrtabns___ubsan_handle_out_of_bounds }, section "___ksymtab+__ubsan_handle_out_of_bounds", align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"shift-out-of-bounds\00", align 1
@__ubsan_handle_shift_out_of_bounds._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 313, ptr null, ptr null }, align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"\013shift exponent %s is negative\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"__ubsan_handle_shift_out_of_bounds\00", align 1
@__ubsan_handle_shift_out_of_bounds._entry_ptr = internal global ptr @__ubsan_handle_shift_out_of_bounds._entry, section ".printk_index", align 4
@__ubsan_handle_shift_out_of_bounds._entry.13 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 320, ptr null, ptr null }, align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"\013shift exponent %s is too large for %u-bit type %s\0A\00", align 1
@__ubsan_handle_shift_out_of_bounds._entry_ptr.15 = internal global ptr @__ubsan_handle_shift_out_of_bounds._entry.13, section ".printk_index", align 4
@__ubsan_handle_shift_out_of_bounds._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 323, ptr null, ptr null }, align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"\013left shift of negative value %s\0A\00", align 1
@__ubsan_handle_shift_out_of_bounds._entry_ptr.18 = internal global ptr @__ubsan_handle_shift_out_of_bounds._entry.16, section ".printk_index", align 4
@__ubsan_handle_shift_out_of_bounds._entry.19 = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 328, ptr null, ptr null }, align 1
@.str.20 = private unnamed_addr constant [66 x i8] c"\013left shift of %s by %s places cannot be represented in type %s\0A\00", align 1
@__ubsan_handle_shift_out_of_bounds._entry_ptr.21 = internal global ptr @__ubsan_handle_shift_out_of_bounds._entry.19, section ".printk_index", align 4
@__kstrtab___ubsan_handle_shift_out_of_bounds = external dso_local constant [0 x i8], align 1
@__kstrtabns___ubsan_handle_shift_out_of_bounds = external dso_local constant [0 x i8], align 1
@__ksymtab___ubsan_handle_shift_out_of_bounds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ubsan_handle_shift_out_of_bounds to i32), ptr @__kstrtab___ubsan_handle_shift_out_of_bounds, ptr @__kstrtabns___ubsan_handle_shift_out_of_bounds }, section "___ksymtab+__ubsan_handle_shift_out_of_bounds", align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@__ubsan_handle_builtin_unreachable._entry = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 341, ptr null, ptr null }, align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"\013calling __builtin_unreachable()\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"__ubsan_handle_builtin_unreachable\00", align 1
@__ubsan_handle_builtin_unreachable._entry_ptr = internal global ptr @__ubsan_handle_builtin_unreachable._entry, section ".printk_index", align 4
@.str.25 = private unnamed_addr constant [42 x i8] c"can't return from __builtin_unreachable()\00", align 1
@__kstrtab___ubsan_handle_builtin_unreachable = external dso_local constant [0 x i8], align 1
@__kstrtabns___ubsan_handle_builtin_unreachable = external dso_local constant [0 x i8], align 1
@__ksymtab___ubsan_handle_builtin_unreachable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ubsan_handle_builtin_unreachable to i32), ptr @__kstrtab___ubsan_handle_builtin_unreachable, ptr @__kstrtabns___ubsan_handle_builtin_unreachable }, section "___ksymtab+__ubsan_handle_builtin_unreachable", align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"invalid-load\00", align 1
@__ubsan_handle_load_invalid_value._entry = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 360, ptr null, ptr null }, align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"\013load of value %s is not a valid value for type %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"__ubsan_handle_load_invalid_value\00", align 1
@__ubsan_handle_load_invalid_value._entry_ptr = internal global ptr @__ubsan_handle_load_invalid_value._entry, section ".printk_index", align 4
@__kstrtab___ubsan_handle_load_invalid_value = external dso_local constant [0 x i8], align 1
@__kstrtabns___ubsan_handle_load_invalid_value = external dso_local constant [0 x i8], align 1
@__ksymtab___ubsan_handle_load_invalid_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ubsan_handle_load_invalid_value to i32), ptr @__kstrtab___ubsan_handle_load_invalid_value, ptr @__kstrtabns___ubsan_handle_load_invalid_value }, section "___ksymtab+__ubsan_handle_load_invalid_value", align 4
@.str.29 = private unnamed_addr constant [21 x i8] c"alignment-assumption\00", align 1
@__ubsan_handle_alignment_assumption._entry = internal constant %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 383, ptr null, ptr null }, align 1
@.str.30 = private unnamed_addr constant [91 x i8] c"\013assumption of %lu byte alignment (with offset of %lu byte) for pointer of type %s failed\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"__ubsan_handle_alignment_assumption\00", align 1
@__ubsan_handle_alignment_assumption._entry_ptr = internal global ptr @__ubsan_handle_alignment_assumption._entry, section ".printk_index", align 4
@__ubsan_handle_alignment_assumption._entry.32 = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 386, ptr null, ptr null }, align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"\013assumption of %lu byte alignment for pointer of type %s failed\00", align 1
@__ubsan_handle_alignment_assumption._entry_ptr.34 = internal global ptr @__ubsan_handle_alignment_assumption._entry.32, section ".printk_index", align 4
@__ubsan_handle_alignment_assumption._entry.35 = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 391, ptr null, ptr null }, align 1
@.str.36 = private unnamed_addr constant [61 x i8] c"\013%saddress is %lu aligned, misalignment offset is %lu bytes\00", align 1
@__ubsan_handle_alignment_assumption._entry_ptr.37 = internal global ptr @__ubsan_handle_alignment_assumption._entry.35, section ".printk_index", align 4
@.str.38 = private unnamed_addr constant [8 x i8] c"offset \00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab___ubsan_handle_alignment_assumption = external dso_local constant [0 x i8], align 1
@__kstrtabns___ubsan_handle_alignment_assumption = external dso_local constant [0 x i8], align 1
@__ksymtab___ubsan_handle_alignment_assumption = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ubsan_handle_alignment_assumption to i32), ptr @__kstrtab___ubsan_handle_alignment_assumption, ptr @__kstrtabns___ubsan_handle_alignment_assumption }, section "___ksymtab+__ubsan_handle_alignment_assumption", align 4
@ubsan_prologue._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 142, ptr null, ptr null }, align 1
@.str.40 = private unnamed_addr constant [84 x i8] c"\013================================================================================\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"ubsan_prologue\00", align 1
@ubsan_prologue._entry_ptr = internal global ptr @ubsan_prologue._entry, section ".printk_index", align 4
@ubsan_prologue._entry.42 = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 144, ptr null, ptr null }, align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"\013UBSAN: %s in %s:%d:%d\0A\00", align 1
@ubsan_prologue._entry_ptr.44 = internal global ptr @ubsan_prologue._entry.42, section ".printk_index", align 4
@.str.45 = private unnamed_addr constant [9 x i8] c"%s in %s\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@ubsan_epilogue._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.48, ptr @.str.3, i32 153, ptr null, ptr null }, align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"ubsan_epilogue\00", align 1
@ubsan_epilogue._entry_ptr = internal global ptr @ubsan_epilogue._entry, section ".printk_index", align 4
@panic_on_warn = external dso_local local_unnamed_addr global i32, align 4
@.str.49 = private unnamed_addr constant [23 x i8] c"panic_on_warn set ...\0A\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"null-ptr-deref\00", align 1
@handle_null_ptr_deref._entry = internal constant %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 200, ptr null, ptr null }, align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"\013%s null pointer of type %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"handle_null_ptr_deref\00", align 1
@handle_null_ptr_deref._entry_ptr = internal global ptr @handle_null_ptr_deref._entry, section ".printk_index", align 4
@type_check_kinds = internal unnamed_addr constant [8 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.59], align 4
@.str.53 = private unnamed_addr constant [8 x i8] c"load of\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"store to\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"reference binding to\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"member access within\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"member call on\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"constructor call on\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"downcast of\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"misaligned-access\00", align 1
@handle_misaligned_access._entry = internal constant %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 215, ptr null, ptr null }, align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"\013%s misaligned address %p for type %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"handle_misaligned_access\00", align 1
@handle_misaligned_access._entry_ptr = internal global ptr @handle_misaligned_access._entry, section ".printk_index", align 4
@handle_misaligned_access._entry.63 = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 216, ptr null, ptr null }, align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"\013which requires %ld byte alignment\0A\00", align 1
@handle_misaligned_access._entry_ptr.65 = internal global ptr @handle_misaligned_access._entry.63, section ".printk_index", align 4
@.str.66 = private unnamed_addr constant [21 x i8] c"object-size-mismatch\00", align 1
@handle_object_size_mismatch._entry = internal constant %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 230, ptr null, ptr null }, align 1
@.str.67 = private unnamed_addr constant [41 x i8] c"\013%s address %p with insufficient space\0A\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"handle_object_size_mismatch\00", align 1
@handle_object_size_mismatch._entry_ptr = internal global ptr @handle_object_size_mismatch._entry, section ".printk_index", align 4
@handle_object_size_mismatch._entry.69 = internal constant %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 231, ptr null, ptr null }, align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"\013for an object of type %s\0A\00", align 1
@handle_object_size_mismatch._entry_ptr.71 = internal global ptr @handle_object_size_mismatch._entry.69, section ".printk_index", align 4
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab___ubsan_handle_alignment_assumption, ptr @__ksymtab___ubsan_handle_builtin_unreachable, ptr @__ksymtab___ubsan_handle_divrem_overflow, ptr @__ksymtab___ubsan_handle_load_invalid_value, ptr @__ksymtab___ubsan_handle_out_of_bounds, ptr @__ksymtab___ubsan_handle_shift_out_of_bounds, ptr @__ksymtab___ubsan_handle_type_mismatch, ptr @__ksymtab___ubsan_handle_type_mismatch_v1, ptr @__ubsan_handle_alignment_assumption._entry, ptr @__ubsan_handle_alignment_assumption._entry.32, ptr @__ubsan_handle_alignment_assumption._entry.35, ptr @__ubsan_handle_alignment_assumption._entry_ptr, ptr @__ubsan_handle_alignment_assumption._entry_ptr.34, ptr @__ubsan_handle_alignment_assumption._entry_ptr.37, ptr @__ubsan_handle_builtin_unreachable._entry, ptr @__ubsan_handle_builtin_unreachable._entry_ptr, ptr @__ubsan_handle_divrem_overflow._entry, ptr @__ubsan_handle_divrem_overflow._entry.4, ptr @__ubsan_handle_divrem_overflow._entry_ptr, ptr @__ubsan_handle_divrem_overflow._entry_ptr.6, ptr @__ubsan_handle_load_invalid_value._entry, ptr @__ubsan_handle_load_invalid_value._entry_ptr, ptr @__ubsan_handle_out_of_bounds._entry, ptr @__ubsan_handle_out_of_bounds._entry_ptr, ptr @__ubsan_handle_shift_out_of_bounds._entry, ptr @__ubsan_handle_shift_out_of_bounds._entry.13, ptr @__ubsan_handle_shift_out_of_bounds._entry.16, ptr @__ubsan_handle_shift_out_of_bounds._entry.19, ptr @__ubsan_handle_shift_out_of_bounds._entry_ptr, ptr @__ubsan_handle_shift_out_of_bounds._entry_ptr.15, ptr @__ubsan_handle_shift_out_of_bounds._entry_ptr.18, ptr @__ubsan_handle_shift_out_of_bounds._entry_ptr.21, ptr @handle_misaligned_access._entry, ptr @handle_misaligned_access._entry.63, ptr @handle_misaligned_access._entry_ptr, ptr @handle_misaligned_access._entry_ptr.65, ptr @handle_null_ptr_deref._entry, ptr @handle_null_ptr_deref._entry_ptr, ptr @handle_object_size_mismatch._entry, ptr @handle_object_size_mismatch._entry.69, ptr @handle_object_size_mismatch._entry_ptr, ptr @handle_object_size_mismatch._entry_ptr.71, ptr @ubsan_epilogue._entry, ptr @ubsan_epilogue._entry_ptr, ptr @ubsan_prologue._entry, ptr @ubsan_prologue._entry.42, ptr @ubsan_prologue._entry_ptr, ptr @ubsan_prologue._entry_ptr.44], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__ubsan_handle_divrem_overflow(ptr noundef %_data, ptr nocapture readnone %lhs, ptr noundef %rhs) #0 align 64 {
entry:
  %rhs_val_str = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rhs_val_str) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %rhs_val_str, i8 -1, i32 40, i1 false), !annotation !9
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task.i, align 8
  %in_ubsan.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 145
  %3 = load i32, ptr %in_ubsan.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %suppress_report.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

suppress_report.exit:                             ; preds = %entry
  %4 = getelementptr inbounds %struct.source_location, ptr %_data, i32 0, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i.not, label %if.end, label %suppress_report.exit.cleanup_crit_edge

suppress_report.exit.cleanup_crit_edge:           ; preds = %suppress_report.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %suppress_report.exit
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i24 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i24 to ptr
  %task.i25 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %task.i25, align 8
  %in_ubsan.i26 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 145
  %8 = load i32, ptr %in_ubsan.i26, align 64
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %in_ubsan.i26, align 64
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %9 = load ptr, ptr %_data, align 4
  %10 = load i32, ptr %4, align 4
  %and.i = and i32 %10, 2147483647
  %column.i = getelementptr inbounds %struct.source_location, ptr %_data, i32 0, i32 1, i32 0, i32 1
  %11 = load i32, ptr %column.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str, ptr noundef %9, i32 noundef %and.i, i32 noundef %11) #12
  %12 = load ptr, ptr %_data, align 4
  tail call void (ptr, i32, ptr, ...) @__kunit_fail_current_test(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str, ptr noundef %12) #11
  %type = getelementptr inbounds %struct.overflow_data, ptr %_data, i32 0, i32 1
  %13 = load ptr, ptr %type, align 4
  call fastcc void @val_to_string(ptr noundef nonnull %rhs_val_str, ptr noundef %13, ptr noundef %rhs) #13
  %14 = load ptr, ptr %type, align 4
  %15 = load i16, ptr %14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.i = icmp eq i16 %15, 0
  br i1 %cmp.i.i, label %if.end.type_is_signed.exit_crit_edge, label %do.end.i, !prof !10

if.end.type_is_signed.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %type_is_signed.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 61, i32 noundef 9, ptr noundef null) #11
  br label %type_is_signed.exit

type_is_signed.exit:                              ; preds = %do.end.i, %if.end.type_is_signed.exit_crit_edge
  %type_info.i = getelementptr inbounds %struct.type_descriptor, ptr %14, i32 0, i32 1
  %16 = load i16, ptr %type_info.i, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool20.i.not = icmp eq i16 %17, 0
  br i1 %tobool20.i.not, label %type_is_signed.exit.do.end13_crit_edge, label %land.lhs.true

type_is_signed.exit.do.end13_crit_edge:           ; preds = %type_is_signed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.lhs.true:                                    ; preds = %type_is_signed.exit
  %18 = load ptr, ptr %type, align 4
  %type_info.i.i.i = getelementptr inbounds %struct.type_descriptor, ptr %18, i32 0, i32 1
  %19 = load i16, ptr %type_info.i.i.i, align 2
  %20 = load i16, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i.i.i = icmp eq i16 %20, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.is_inline_int.exit.i_crit_edge, label %do.end.i.i, !prof !10

land.lhs.true.is_inline_int.exit.i_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_inline_int.exit.i

do.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 75, i32 noundef 9, ptr noundef null) #11
  br label %is_inline_int.exit.i

is_inline_int.exit.i:                             ; preds = %do.end.i.i, %land.lhs.true.is_inline_int.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %19)
  %cmp.i.i27 = icmp ult i16 %19, 12
  br i1 %cmp.i.i27, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %is_inline_int.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = load i16, ptr %type_info.i.i.i, align 2
  %22 = lshr i16 %21, 1
  %23 = zext i16 %22 to i32
  %shl.i.neg.i = shl nsw i32 -1, %23
  %sub.i = add nsw i32 %shl.i.neg.i, 64
  %24 = ptrtoint ptr %rhs to i32
  %conv.i = zext i32 %24 to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %shr.i = ashr i64 %shl.i, %sh_prom.i
  br label %get_signed_val.exit

if.end.i:                                         ; preds = %is_inline_int.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = load i64, ptr %rhs, align 8
  br label %get_signed_val.exit

get_signed_val.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %shr.i, %if.then.i ], [ %25, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %retval.0.i)
  %cmp = icmp eq i64 %retval.0.i, -1
  br i1 %cmp, label %do.end, label %get_signed_val.exit.do.end13_crit_edge

get_signed_val.exit.do.end13_crit_edge:           ; preds = %get_signed_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %get_signed_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = load ptr, ptr %type, align 4
  %type_name = getelementptr inbounds %struct.type_descriptor, ptr %26, i32 0, i32 2
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %rhs_val_str, ptr noundef %type_name) #12
  br label %if.end16

do.end13:                                         ; preds = %get_signed_val.exit.do.end13_crit_edge, %type_is_signed.exit.do.end13_crit_edge
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %do.end
  call void @dump_stack() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %27 = call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i28 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i28 to ptr
  %task.i29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %task.i29, align 8
  %in_ubsan.i30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 145
  %30 = load i32, ptr %in_ubsan.i30, align 64
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr %in_ubsan.i30, align 64
  %31 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i31 = icmp eq i32 %31, 0
  br i1 %tobool.not.i31, label %if.end16.cleanup_crit_edge, label %if.then.i32

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i32:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @panic_on_warn, align 4
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #14
  unreachable

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %suppress_report.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rhs_val_str) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @ubsan_prologue(ptr nocapture noundef readonly %loc, ptr noundef %reason) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task, align 8
  %in_ubsan = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 145
  %3 = load i32, ptr %in_ubsan, align 64
  %inc = add i32 %3, 1
  store i32 %inc, ptr %in_ubsan, align 64
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %4 = load ptr, ptr %loc, align 4
  %5 = getelementptr inbounds %struct.source_location, ptr %loc, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %and = and i32 %6, 2147483647
  %column = getelementptr inbounds %struct.source_location, ptr %loc, i32 0, i32 1, i32 0, i32 1
  %7 = load i32, ptr %column, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %reason, ptr noundef %4, i32 noundef %and, i32 noundef %7) #12
  %8 = load ptr, ptr %loc, align 4
  tail call void (ptr, i32, ptr, ...) @__kunit_fail_current_test(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.45, ptr noundef %reason, ptr noundef %8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @val_to_string(ptr noundef %str, ptr nocapture noundef readonly %type, ptr noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.i = icmp eq i16 %0, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then:                                          ; preds = %entry
  %type_info.i = getelementptr inbounds %struct.type_descriptor, ptr %type, i32 0, i32 1
  %1 = load i16, ptr %type_info.i, align 2
  %.mask = and i16 %1, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %.mask)
  %cmp = icmp eq i16 %.mask, 14
  br i1 %cmp, label %do.end, label %type_is_signed.exit

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 125, i32 noundef 9, ptr noundef null) #11
  br label %if.end27

type_is_signed.exit:                              ; preds = %if.then
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool20.i.not = icmp eq i16 %2, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %1)
  %cmp.i.i7 = icmp ult i16 %1, 12
  br i1 %tobool20.i.not, label %is_inline_int.exit.i8, label %is_inline_int.exit.i

is_inline_int.exit.i:                             ; preds = %type_is_signed.exit
  br i1 %cmp.i.i7, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %is_inline_int.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = lshr i16 %1, 1
  %4 = zext i16 %3 to i32
  %shl.i.neg.i = shl nsw i32 -1, %4
  %sub.i = add nsw i32 %shl.i.neg.i, 64
  %5 = ptrtoint ptr %value to i32
  %conv.i = zext i32 %5 to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i3 = shl i64 %conv.i, %sh_prom.i
  %shr.i = ashr i64 %shl.i3, %sh_prom.i
  br label %get_signed_val.exit

if.end.i:                                         ; preds = %is_inline_int.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load i64, ptr %value, align 8
  br label %get_signed_val.exit

get_signed_val.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %shr.i, %if.then.i ], [ %6, %if.end.i ]
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %str, i32 noundef 40, ptr noundef nonnull @.str.46, i64 noundef %retval.0.i) #11
  br label %if.end27

is_inline_int.exit.i8:                            ; preds = %type_is_signed.exit
  br i1 %cmp.i.i7, label %if.then.i10, label %if.end.i11

if.then.i10:                                      ; preds = %is_inline_int.exit.i8
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %value to i32
  %conv.i9 = zext i32 %7 to i64
  br label %get_unsigned_val.exit

if.end.i11:                                       ; preds = %is_inline_int.exit.i8
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i64, ptr %value, align 8
  br label %get_unsigned_val.exit

get_unsigned_val.exit:                            ; preds = %if.end.i11, %if.then.i10
  %retval.0.i12 = phi i64 [ %conv.i9, %if.then.i10 ], [ %8, %if.end.i11 ]
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %str, i32 noundef 40, ptr noundef nonnull @.str.47, i64 noundef %retval.0.i12) #11
  br label %if.end27

if.end27:                                         ; preds = %get_unsigned_val.exit, %get_signed_val.exit, %do.end, %entry.if.end27_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @ubsan_epilogue() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_stack() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task, align 8
  %in_ubsan = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 145
  %3 = load i32, ptr %in_ubsan, align 64
  %dec = add i32 %3, -1
  store i32 %dec, ptr %in_ubsan, align 64
  %4 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @panic_on_warn, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #14
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__ubsan_handle_type_mismatch(ptr noundef %data, ptr noundef %ptr) #0 align 64 {
entry:
  %common_data = alloca %struct.type_mismatch_data_common, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %common_data) #10
  %0 = getelementptr inbounds i8, ptr %common_data, i32 12
  store i32 -1, ptr %0, align 4
  store ptr %data, ptr %common_data, align 4
  %type = getelementptr inbounds %struct.type_mismatch_data_common, ptr %common_data, i32 0, i32 1
  %type2 = getelementptr inbounds %struct.type_mismatch_data, ptr %data, i32 0, i32 1
  %1 = load ptr, ptr %type2, align 4
  store ptr %1, ptr %type, align 4
  %alignment = getelementptr inbounds %struct.type_mismatch_data_common, ptr %common_data, i32 0, i32 2
  %alignment3 = getelementptr inbounds %struct.type_mismatch_data, ptr %data, i32 0, i32 2
  %2 = load i32, ptr %alignment3, align 4
  store i32 %2, ptr %alignment, align 4
  %type_check_kind = getelementptr inbounds %struct.type_mismatch_data_common, ptr %common_data, i32 0, i32 3
  %type_check_kind4 = getelementptr inbounds %struct.type_mismatch_data, ptr %data, i32 0, i32 3
  %3 = load i8, ptr %type_check_kind4, align 4
  store i8 %3, ptr %type_check_kind, align 4
  %4 = ptrtoint ptr %ptr to i32
  call fastcc void @ubsan_type_mismatch_common(ptr noundef nonnull %common_data, i32 noundef %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %common_data) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @ubsan_type_mismatch_common(ptr nocapture noundef readonly %data, i32 noundef %ptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptr)
  %tobool.not = icmp eq i32 %ptr, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task.i.i, align 8
  %in_ubsan.i.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 145
  %3 = load i32, ptr %in_ubsan.i.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %suppress_report.exit.i, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

suppress_report.exit.i:                           ; preds = %if.then
  %4 = load ptr, ptr %data, align 4
  %5 = getelementptr inbounds %struct.source_location, ptr %4, i32 0, i32 1
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end.i, label %suppress_report.exit.i.if.end5_crit_edge

suppress_report.exit.i.if.end5_crit_edge:         ; preds = %suppress_report.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.i:                                         ; preds = %suppress_report.exit.i
  %6 = load ptr, ptr %data, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i6.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i6.i to ptr
  %task.i7.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %task.i7.i, align 8
  %in_ubsan.i8.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 145
  %10 = load i32, ptr %in_ubsan.i8.i, align 64
  %inc.i.i = add i32 %10, 1
  store i32 %inc.i.i, ptr %in_ubsan.i8.i, align 64
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.source_location, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %and.i.i = and i32 %13, 2147483647
  %column.i.i = getelementptr inbounds %struct.source_location, ptr %6, i32 0, i32 1, i32 0, i32 1
  %14 = load i32, ptr %column.i.i, align 4
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.50, ptr noundef %11, i32 noundef %and.i.i, i32 noundef %14) #12
  %15 = load ptr, ptr %6, align 4
  tail call void (ptr, i32, ptr, ...) @__kunit_fail_current_test(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.50, ptr noundef %15) #11
  %type_check_kind.i = getelementptr inbounds %struct.type_mismatch_data_common, ptr %data, i32 0, i32 3
  %16 = load i8, ptr %type_check_kind.i, align 4
  %idxprom.i = zext i8 %16 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @type_check_kinds, i32 0, i32 %idxprom.i
  %17 = load ptr, ptr %arrayidx.i, align 4
  %type.i = getelementptr inbounds %struct.type_mismatch_data_common, ptr %data, i32 0, i32 1
  %18 = load ptr, ptr %type.i, align 4
  %type_name.i = getelementptr inbounds %struct.type_descriptor, ptr %18, i32 0, i32 2
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %17, ptr noundef %type_name.i) #12
  tail call void @dump_stack() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i9.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i9.i to ptr
  %task.i10.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %task.i10.i, align 8
  %in_ubsan.i11.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 145
  %22 = load i32, ptr %in_ubsan.i11.i, align 64
  %dec.i.i = add i32 %22, -1
  store i32 %dec.i.i, ptr %in_ubsan.i11.i, align 64
  %23 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i12.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i12.i, label %if.end.i.if.end5_crit_edge, label %if.then.i.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @panic_on_warn, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #14
  unreachable

if.else:                                          ; preds = %entry
  %alignment = getelementptr inbounds %struct.type_mismatch_data_common, ptr %data, i32 0, i32 2
  %24 = load i32, ptr %alignment, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool1.not = icmp eq i32 %24, 0
  br i1 %tobool1.not, label %if.else.if.else4_crit_edge, label %land.lhs.true

if.else.if.else4_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else4

land.lhs.true:                                    ; preds = %if.else
  %sub = add i32 %24, -1
  %and = and i32 %sub, %ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true.if.else4_crit_edge, label %if.then3

land.lhs.true.if.else4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else4

if.then3:                                         ; preds = %land.lhs.true
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i.i13 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i13 to ptr
  %task.i.i14 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %task.i.i14, align 8
  %in_ubsan.i.i15 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 145
  %28 = load i32, ptr %in_ubsan.i.i15, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i16 = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i16, label %suppress_report.exit.i19, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

suppress_report.exit.i19:                         ; preds = %if.then3
  %29 = load ptr, ptr %data, align 4
  %30 = getelementptr inbounds %struct.source_location, ptr %29, i32 0, i32 1
  %call.i.i.i17 = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i17)
  %tobool.i.i.not.i18 = icmp eq i32 %call.i.i.i17, 0
  br i1 %tobool.i.i.not.i18, label %if.end.i33, label %suppress_report.exit.i19.if.end5_crit_edge

suppress_report.exit.i19.if.end5_crit_edge:       ; preds = %suppress_report.exit.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.i33:                                       ; preds = %suppress_report.exit.i19
  %31 = load ptr, ptr %data, align 4
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i11.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i11.i to ptr
  %task.i12.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %task.i12.i, align 8
  %in_ubsan.i13.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 145
  %35 = load i32, ptr %in_ubsan.i13.i, align 64
  %inc.i.i20 = add i32 %35, 1
  store i32 %inc.i.i20, ptr %in_ubsan.i13.i, align 64
  %call1.i.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %36 = load ptr, ptr %31, align 4
  %37 = getelementptr inbounds %struct.source_location, ptr %31, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %and.i.i22 = and i32 %38, 2147483647
  %column.i.i23 = getelementptr inbounds %struct.source_location, ptr %31, i32 0, i32 1, i32 0, i32 1
  %39 = load i32, ptr %column.i.i23, align 4
  %call6.i.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.60, ptr noundef %36, i32 noundef %and.i.i22, i32 noundef %39) #12
  %40 = load ptr, ptr %31, align 4
  tail call void (ptr, i32, ptr, ...) @__kunit_fail_current_test(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, ptr noundef %40) #11
  %type_check_kind.i25 = getelementptr inbounds %struct.type_mismatch_data_common, ptr %data, i32 0, i32 3
  %41 = load i8, ptr %type_check_kind.i25, align 4
  %idxprom.i26 = zext i8 %41 to i32
  %arrayidx.i27 = getelementptr [8 x ptr], ptr @type_check_kinds, i32 0, i32 %idxprom.i26
  %42 = load ptr, ptr %arrayidx.i27, align 4
  %43 = inttoptr i32 %ptr to ptr
  %type.i28 = getelementptr inbounds %struct.type_mismatch_data_common, ptr %data, i32 0, i32 1
  %44 = load ptr, ptr %type.i28, align 4
  %type_name.i29 = getelementptr inbounds %struct.type_descriptor, ptr %44, i32 0, i32 2
  %call2.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %42, ptr noundef nonnull %43, ptr noundef %type_name.i29) #12
  %45 = load i32, ptr %alignment, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %45) #12
  tail call void @dump_stack() #12
  %call.i.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i14.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i14.i to ptr
  %task.i15.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %task.i15.i, align 8
  %in_ubsan.i16.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 145
  %49 = load i32, ptr %in_ubsan.i16.i, align 64
  %dec.i.i32 = add i32 %49, -1
  store i32 %dec.i.i32, ptr %in_ubsan.i16.i, align 64
  %50 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i17.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i17.i, label %if.end.i33.if.end5_crit_edge, label %if.then.i.i34

if.end.i33.if.end5_crit_edge:                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.i.i34:                                    ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @panic_on_warn, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #14
  unreachable

if.else4:                                         ; preds = %land.lhs.true.if.else4_crit_edge, %if.else.if.else4_crit_edge
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i.i35 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i35 to ptr
  %task.i.i36 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %task.i.i36, align 8
  %in_ubsan.i.i37 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 145
  %54 = load i32, ptr %in_ubsan.i.i37, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i38 = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i38, label %suppress_report.exit.i41, label %if.else4.if.end5_crit_edge

if.else4.if.end5_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

suppress_report.exit.i41:                         ; preds = %if.else4
  %55 = load ptr, ptr %data, align 4
  %56 = getelementptr inbounds %struct.source_location, ptr %55, i32 0, i32 1
  %call.i.i.i39 = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i39)
  %tobool.i.i.not.i40 = icmp eq i32 %call.i.i.i39, 0
  br i1 %tobool.i.i.not.i40, label %if.end.i56, label %suppress_report.exit.i41.if.end5_crit_edge

suppress_report.exit.i41.if.end5_crit_edge:       ; preds = %suppress_report.exit.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.i56:                                       ; preds = %suppress_report.exit.i41
  %57 = load ptr, ptr %data, align 4
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i10.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i10.i to ptr
  %task.i11.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %task.i11.i, align 8
  %in_ubsan.i12.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 145
  %61 = load i32, ptr %in_ubsan.i12.i, align 64
  %inc.i.i42 = add i32 %61, 1
  store i32 %inc.i.i42, ptr %in_ubsan.i12.i, align 64
  %call1.i.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr inbounds %struct.source_location, ptr %57, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %and.i.i44 = and i32 %64, 2147483647
  %column.i.i45 = getelementptr inbounds %struct.source_location, ptr %57, i32 0, i32 1, i32 0, i32 1
  %65 = load i32, ptr %column.i.i45, align 4
  %call6.i.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.66, ptr noundef %62, i32 noundef %and.i.i44, i32 noundef %65) #12
  %66 = load ptr, ptr %57, align 4
  tail call void (ptr, i32, ptr, ...) @__kunit_fail_current_test(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.66, ptr noundef %66) #11
  %type_check_kind.i47 = getelementptr inbounds %struct.type_mismatch_data_common, ptr %data, i32 0, i32 3
  %67 = load i8, ptr %type_check_kind.i47, align 4
  %idxprom.i48 = zext i8 %67 to i32
  %arrayidx.i49 = getelementptr [8 x ptr], ptr @type_check_kinds, i32 0, i32 %idxprom.i48
  %68 = load ptr, ptr %arrayidx.i49, align 4
  %69 = inttoptr i32 %ptr to ptr
  %call2.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %68, ptr noundef nonnull %69) #12
  %type.i51 = getelementptr inbounds %struct.type_mismatch_data_common, ptr %data, i32 0, i32 1
  %70 = load ptr, ptr %type.i51, align 4
  %type_name.i52 = getelementptr inbounds %struct.type_descriptor, ptr %70, i32 0, i32 2
  %call6.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %type_name.i52) #12
  tail call void @dump_stack() #12
  %call.i.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %71 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i13.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i13.i to ptr
  %task.i14.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = load ptr, ptr %task.i14.i, align 8
  %in_ubsan.i15.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 145
  %74 = load i32, ptr %in_ubsan.i15.i, align 64
  %dec.i.i55 = add i32 %74, -1
  store i32 %dec.i.i55, ptr %in_ubsan.i15.i, align 64
  %75 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i16.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i16.i, label %if.end.i56.if.end5_crit_edge, label %if.then.i.i57

if.end.i56.if.end5_crit_edge:                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.i.i57:                                    ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @panic_on_warn, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #14
  unreachable

if.end5:                                          ; preds = %if.end.i56.if.end5_crit_edge, %suppress_report.exit.i41.if.end5_crit_edge, %if.else4.if.end5_crit_edge, %if.end.i33.if.end5_crit_edge, %suppress_report.exit.i19.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %suppress_report.exit.i.if.end5_crit_edge, %if.then.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__ubsan_handle_type_mismatch_v1(ptr noundef %_data, ptr noundef %ptr) #0 align 64 {
entry:
  %common_data = alloca %struct.type_mismatch_data_common, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %common_data) #10
  %0 = getelementptr inbounds i8, ptr %common_data, i32 12
  store i32 -1, ptr %0, align 4
  store ptr %_data, ptr %common_data, align 4
  %type = getelementptr inbounds %struct.type_mismatch_data_common, ptr %common_data, i32 0, i32 1
  %type2 = getelementptr inbounds %struct.type_mismatch_data_v1, ptr %_data, i32 0, i32 1
  %1 = load ptr, ptr %type2, align 4
  store ptr %1, ptr %type, align 4
  %alignment = getelementptr inbounds %struct.type_mismatch_data_common, ptr %common_data, i32 0, i32 2
  %log_alignment = getelementptr inbounds %struct.type_mismatch_data_v1, ptr %_data, i32 0, i32 2
  %2 = load i8, ptr %log_alignment, align 4
  %conv = zext i8 %2 to i32
  %shl = shl nuw i32 1, %conv
  store i32 %shl, ptr %alignment, align 4
  %type_check_kind = getelementptr inbounds %struct.type_mismatch_data_common, ptr %common_data, i32 0, i32 3
  %type_check_kind3 = getelementptr inbounds %struct.type_mismatch_data_v1, ptr %_data, i32 0, i32 3
  %3 = load i8, ptr %type_check_kind3, align 1
  store i8 %3, ptr %type_check_kind, align 4
  %4 = ptrtoint ptr %ptr to i32
  call fastcc void @ubsan_type_mismatch_common(ptr noundef nonnull %common_data, i32 noundef %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %common_data) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__ubsan_handle_out_of_bounds(ptr noundef %_data, ptr noundef %index) #0 align 64 {
entry:
  %index_str = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %index_str) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %index_str, i8 -1, i32 40, i1 false), !annotation !9
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task.i, align 8
  %in_ubsan.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 145
  %3 = load i32, ptr %in_ubsan.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %suppress_report.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

suppress_report.exit:                             ; preds = %entry
  %4 = getelementptr inbounds %struct.source_location, ptr %_data, i32 0, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i.not, label %if.end, label %suppress_report.exit.cleanup_crit_edge

suppress_report.exit.cleanup_crit_edge:           ; preds = %suppress_report.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %suppress_report.exit
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i9 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i9 to ptr
  %task.i10 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %task.i10, align 8
  %in_ubsan.i11 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 145
  %8 = load i32, ptr %in_ubsan.i11, align 64
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %in_ubsan.i11, align 64
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %9 = load ptr, ptr %_data, align 4
  %10 = load i32, ptr %4, align 4
  %and.i = and i32 %10, 2147483647
  %column.i = getelementptr inbounds %struct.source_location, ptr %_data, i32 0, i32 1, i32 0, i32 1
  %11 = load i32, ptr %column.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.7, ptr noundef %9, i32 noundef %and.i, i32 noundef %11) #12
  %12 = load ptr, ptr %_data, align 4
  tail call void (ptr, i32, ptr, ...) @__kunit_fail_current_test(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.7, ptr noundef %12) #11
  %index_type = getelementptr inbounds %struct.out_of_bounds_data, ptr %_data, i32 0, i32 2
  %13 = load ptr, ptr %index_type, align 4
  call fastcc void @val_to_string(ptr noundef nonnull %index_str, ptr noundef %13, ptr noundef %index) #13
  %array_type = getelementptr inbounds %struct.out_of_bounds_data, ptr %_data, i32 0, i32 1
  %14 = load ptr, ptr %array_type, align 4
  %type_name = getelementptr inbounds %struct.type_descriptor, ptr %14, i32 0, i32 2
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %index_str, ptr noundef %type_name) #12
  call void @dump_stack() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %15 = call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i12 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i12 to ptr
  %task.i13 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %task.i13, align 8
  %in_ubsan.i14 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 145
  %18 = load i32, ptr %in_ubsan.i14, align 64
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %in_ubsan.i14, align 64
  %19 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i15 = icmp eq i32 %19, 0
  br i1 %tobool.not.i15, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @panic_on_warn, align 4
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #14
  unreachable

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %suppress_report.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %index_str) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__ubsan_handle_shift_out_of_bounds(ptr noundef %_data, ptr noundef %lhs, ptr noundef %rhs) #0 align 64 {
entry:
  %rhs_str = alloca [40 x i8], align 1
  %lhs_str = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  %rhs_type1 = getelementptr inbounds %struct.shift_out_of_bounds_data, ptr %_data, i32 0, i32 2
  %0 = load ptr, ptr %rhs_type1, align 4
  %lhs_type2 = getelementptr inbounds %struct.shift_out_of_bounds_data, ptr %_data, i32 0, i32 1
  %1 = load ptr, ptr %lhs_type2, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rhs_str) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %rhs_str, i8 -1, i32 40, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %lhs_str) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %lhs_str, i8 -1, i32 40, i1 false), !annotation !9
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %task.i, align 8
  %in_ubsan.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 145
  %5 = load i32, ptr %in_ubsan.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %suppress_report.exit, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

suppress_report.exit:                             ; preds = %entry
  %6 = getelementptr inbounds %struct.source_location, ptr %_data, i32 0, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i.not, label %if.end, label %suppress_report.exit.out_crit_edge

suppress_report.exit.out_crit_edge:               ; preds = %suppress_report.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %suppress_report.exit
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i57 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i57 to ptr
  %task.i58 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %task.i58, align 8
  %in_ubsan.i59 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 145
  %10 = load i32, ptr %in_ubsan.i59, align 64
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %in_ubsan.i59, align 64
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %11 = load ptr, ptr %_data, align 4
  %12 = load i32, ptr %6, align 4
  %and.i = and i32 %12, 2147483647
  %column.i = getelementptr inbounds %struct.source_location, ptr %_data, i32 0, i32 1, i32 0, i32 1
  %13 = load i32, ptr %column.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.10, ptr noundef %11, i32 noundef %and.i, i32 noundef %13) #12
  %14 = load ptr, ptr %_data, align 4
  tail call void (ptr, i32, ptr, ...) @__kunit_fail_current_test(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.10, ptr noundef %14) #11
  call fastcc void @val_to_string(ptr noundef nonnull %rhs_str, ptr noundef %0, ptr noundef %rhs) #13
  call fastcc void @val_to_string(ptr noundef nonnull %lhs_str, ptr noundef %1, ptr noundef %lhs) #13
  %15 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.i.i = icmp eq i16 %15, 0
  br i1 %cmp.i.i.i, label %if.end.type_is_signed.exit.i_crit_edge, label %do.end.i.i, !prof !10

if.end.type_is_signed.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %type_is_signed.exit.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 61, i32 noundef 9, ptr noundef null) #11
  br label %type_is_signed.exit.i

type_is_signed.exit.i:                            ; preds = %do.end.i.i, %if.end.type_is_signed.exit.i_crit_edge
  %type_info.i.i = getelementptr inbounds %struct.type_descriptor, ptr %0, i32 0, i32 1
  %16 = load i16, ptr %type_info.i.i, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool20.i.not.i = icmp eq i16 %17, 0
  br i1 %tobool20.i.not.i, label %type_is_signed.exit.i.if.else_crit_edge, label %land.rhs.i

type_is_signed.exit.i.if.else_crit_edge:          ; preds = %type_is_signed.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.rhs.i:                                       ; preds = %type_is_signed.exit.i
  %18 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i.i.i.i = icmp eq i16 %18, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.is_inline_int.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !10

land.rhs.i.is_inline_int.exit.i.i_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_inline_int.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 75, i32 noundef 9, ptr noundef null) #11
  br label %is_inline_int.exit.i.i

is_inline_int.exit.i.i:                           ; preds = %do.end.i.i.i, %land.rhs.i.is_inline_int.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %16)
  %cmp.i.i3.i = icmp ult i16 %16, 12
  br i1 %cmp.i.i3.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %is_inline_int.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = load i16, ptr %type_info.i.i, align 2
  %20 = lshr i16 %19, 1
  %21 = zext i16 %20 to i32
  %shl.i.neg.i.i = shl nsw i32 -1, %21
  %sub.i.i = add nsw i32 %shl.i.neg.i.i, 64
  %22 = ptrtoint ptr %rhs to i32
  %conv.i.i = zext i32 %22 to i64
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl i64 %conv.i.i, %sh_prom.i.i
  %shr.i.i = ashr i64 %shl.i.i, %sh_prom.i.i
  br label %val_is_negative.exit

if.end.i.i:                                       ; preds = %is_inline_int.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = load i64, ptr %rhs, align 8
  br label %val_is_negative.exit

val_is_negative.exit:                             ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i64 [ %shr.i.i, %if.then.i.i ], [ %23, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i.i)
  %cmp.i = icmp slt i64 %retval.0.i.i, 0
  br i1 %cmp.i, label %do.end, label %if.elsethread-pre-split

do.end:                                           ; preds = %val_is_negative.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %rhs_str) #12
  br label %if.end43

if.elsethread-pre-split:                          ; preds = %val_is_negative.exit
  call void @__sanitizer_cov_trace_pc() #9
  %.pr = load i16, ptr %type_info.i.i, align 2
  br label %if.else

if.else:                                          ; preds = %if.elsethread-pre-split, %type_is_signed.exit.i.if.else_crit_edge
  %24 = phi i16 [ %.pr, %if.elsethread-pre-split ], [ %16, %type_is_signed.exit.i.if.else_crit_edge ]
  %25 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i.i.i60 = icmp eq i16 %25, 0
  br i1 %cmp.i.i.i60, label %if.else.is_inline_int.exit.i_crit_edge, label %do.end.i.i61, !prof !10

if.else.is_inline_int.exit.i_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_inline_int.exit.i

do.end.i.i61:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 75, i32 noundef 9, ptr noundef null) #11
  br label %is_inline_int.exit.i

is_inline_int.exit.i:                             ; preds = %do.end.i.i61, %if.else.is_inline_int.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %24)
  %cmp.i.i = icmp ult i16 %24, 12
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %is_inline_int.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %rhs to i32
  %conv.i = zext i32 %26 to i64
  br label %get_unsigned_val.exit

if.end.i:                                         ; preds = %is_inline_int.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = load i64, ptr %rhs, align 8
  br label %get_unsigned_val.exit

get_unsigned_val.exit:                            ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %conv.i, %if.then.i ], [ %27, %if.end.i ]
  %type_info.i = getelementptr inbounds %struct.type_descriptor, ptr %1, i32 0, i32 1
  %28 = load i16, ptr %type_info.i, align 2
  %29 = lshr i16 %28, 1
  %30 = zext i16 %29 to i32
  %shl.i = shl nuw i32 1, %30
  %conv = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %conv)
  %cmp.not = icmp ult i64 %retval.0.i, %conv
  br i1 %cmp.not, label %if.else22, label %do.end16

do.end16:                                         ; preds = %get_unsigned_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  %type_name = getelementptr inbounds %struct.type_descriptor, ptr %1, i32 0, i32 2
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %rhs_str, i32 noundef %shl.i, ptr noundef %type_name) #12
  br label %if.end43

if.else22:                                        ; preds = %get_unsigned_val.exit
  %call23 = call fastcc zeroext i1 @val_is_negative(ptr noundef %1, ptr noundef %lhs) #13
  br i1 %call23, label %do.end27, label %do.end34

do.end27:                                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %lhs_str) #12
  br label %if.end43

do.end34:                                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  %type_name38 = getelementptr inbounds %struct.type_descriptor, ptr %1, i32 0, i32 2
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %lhs_str, ptr noundef nonnull %rhs_str, ptr noundef %type_name38) #12
  br label %if.end43

if.end43:                                         ; preds = %do.end34, %do.end27, %do.end16, %do.end
  call void @dump_stack() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i64 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i64 to ptr
  %task.i65 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %task.i65, align 8
  %in_ubsan.i66 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 145
  %34 = load i32, ptr %in_ubsan.i66, align 64
  %dec.i = add i32 %34, -1
  store i32 %dec.i, ptr %in_ubsan.i66, align 64
  %35 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i67 = icmp eq i32 %35, 0
  br i1 %tobool.not.i67, label %if.end43.out_crit_edge, label %if.then.i68

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i68:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @panic_on_warn, align 4
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #14
  unreachable

out:                                              ; preds = %if.end43.out_crit_edge, %suppress_report.exit.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %lhs_str) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rhs_str) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc zeroext i1 @val_is_negative(ptr nocapture noundef readonly %type, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.i.i = icmp eq i16 %0, 0
  br i1 %cmp.i.i, label %entry.type_is_signed.exit_crit_edge, label %do.end.i, !prof !10

entry.type_is_signed.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %type_is_signed.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 61, i32 noundef 9, ptr noundef null) #11
  br label %type_is_signed.exit

type_is_signed.exit:                              ; preds = %do.end.i, %entry.type_is_signed.exit_crit_edge
  %type_info.i = getelementptr inbounds %struct.type_descriptor, ptr %type, i32 0, i32 1
  %1 = load i16, ptr %type_info.i, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool20.i.not = icmp eq i16 %2, 0
  br i1 %tobool20.i.not, label %type_is_signed.exit.land.end_crit_edge, label %land.rhs

type_is_signed.exit.land.end_crit_edge:           ; preds = %type_is_signed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %type_is_signed.exit
  %3 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i.i.i = icmp eq i16 %3, 0
  br i1 %cmp.i.i.i, label %land.rhs.is_inline_int.exit.i_crit_edge, label %do.end.i.i, !prof !10

land.rhs.is_inline_int.exit.i_crit_edge:          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_inline_int.exit.i

do.end.i.i:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 75, i32 noundef 9, ptr noundef null) #11
  br label %is_inline_int.exit.i

is_inline_int.exit.i:                             ; preds = %do.end.i.i, %land.rhs.is_inline_int.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %1)
  %cmp.i.i3 = icmp ult i16 %1, 12
  br i1 %cmp.i.i3, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %is_inline_int.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i16, ptr %type_info.i, align 2
  %5 = lshr i16 %4, 1
  %6 = zext i16 %5 to i32
  %shl.i.neg.i = shl nsw i32 -1, %6
  %sub.i = add nsw i32 %shl.i.neg.i, 64
  %7 = ptrtoint ptr %val to i32
  %conv.i = zext i32 %7 to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %shr.i = ashr i64 %shl.i, %sh_prom.i
  br label %get_signed_val.exit

if.end.i:                                         ; preds = %is_inline_int.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load i64, ptr %val, align 8
  br label %get_signed_val.exit

get_signed_val.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %shr.i, %if.then.i ], [ %8, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i)
  %cmp = icmp slt i64 %retval.0.i, 0
  br label %land.end

land.end:                                         ; preds = %get_signed_val.exit, %type_is_signed.exit.land.end_crit_edge
  %9 = phi i1 [ false, %type_is_signed.exit.land.end_crit_edge ], [ %cmp, %get_signed_val.exit ]
  ret i1 %9
}

; Function Attrs: noreturn nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__ubsan_handle_builtin_unreachable(ptr nocapture noundef readonly %_data) #4 align 64 {
entry:
  tail call fastcc void @ubsan_prologue(ptr noundef %_data, ptr noundef nonnull @.str.22) #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  tail call fastcc void @ubsan_epilogue() #13
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.25) #14
  unreachable
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__ubsan_handle_load_invalid_value(ptr noundef %_data, ptr noundef %val) #0 align 64 {
entry:
  %val_str = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %val_str) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %val_str, i8 -1, i32 40, i1 false), !annotation !9
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task.i, align 8
  %in_ubsan.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 145
  %3 = load i32, ptr %in_ubsan.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %suppress_report.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

suppress_report.exit:                             ; preds = %entry
  %4 = getelementptr inbounds %struct.source_location, ptr %_data, i32 0, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i.not, label %if.end, label %suppress_report.exit.cleanup_crit_edge

suppress_report.exit.cleanup_crit_edge:           ; preds = %suppress_report.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %suppress_report.exit
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i10 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i10 to ptr
  %task.i11 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %task.i11, align 8
  %in_ubsan.i12 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 145
  %8 = load i32, ptr %in_ubsan.i12, align 64
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %in_ubsan.i12, align 64
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %9 = load ptr, ptr %_data, align 4
  %10 = load i32, ptr %4, align 4
  %and.i = and i32 %10, 2147483647
  %column.i = getelementptr inbounds %struct.source_location, ptr %_data, i32 0, i32 1, i32 0, i32 1
  %11 = load i32, ptr %column.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.26, ptr noundef %9, i32 noundef %and.i, i32 noundef %11) #12
  %12 = load ptr, ptr %_data, align 4
  tail call void (ptr, i32, ptr, ...) @__kunit_fail_current_test(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.26, ptr noundef %12) #11
  %type = getelementptr inbounds %struct.invalid_value_data, ptr %_data, i32 0, i32 1
  %13 = load ptr, ptr %type, align 4
  call fastcc void @val_to_string(ptr noundef nonnull %val_str, ptr noundef %13, ptr noundef %val) #13
  %14 = load ptr, ptr %type, align 4
  %type_name = getelementptr inbounds %struct.type_descriptor, ptr %14, i32 0, i32 2
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %val_str, ptr noundef %type_name) #12
  call void @dump_stack() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %15 = call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i13 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i13 to ptr
  %task.i14 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %task.i14, align 8
  %in_ubsan.i15 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 145
  %18 = load i32, ptr %in_ubsan.i15, align 64
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %in_ubsan.i15, align 64
  %19 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i16 = icmp eq i32 %19, 0
  br i1 %tobool.not.i16, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @panic_on_warn, align 4
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #14
  unreachable

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %suppress_report.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %val_str) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @__ubsan_handle_alignment_assumption(ptr noundef %_data, i32 noundef %ptr, i32 noundef %align, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task.i, align 8
  %in_ubsan.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 145
  %3 = load i32, ptr %in_ubsan.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %suppress_report.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

suppress_report.exit:                             ; preds = %entry
  %4 = getelementptr inbounds %struct.source_location, ptr %_data, i32 0, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i.not, label %if.end, label %suppress_report.exit.cleanup_crit_edge

suppress_report.exit.cleanup_crit_edge:           ; preds = %suppress_report.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %suppress_report.exit
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i34 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i34 to ptr
  %task.i35 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %task.i35, align 8
  %in_ubsan.i36 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 145
  %8 = load i32, ptr %in_ubsan.i36, align 64
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %in_ubsan.i36, align 64
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %9 = load ptr, ptr %_data, align 4
  %10 = load i32, ptr %4, align 4
  %and.i = and i32 %10, 2147483647
  %column.i = getelementptr inbounds %struct.source_location, ptr %_data, i32 0, i32 1, i32 0, i32 1
  %11 = load i32, ptr %column.i, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.29, ptr noundef %9, i32 noundef %and.i, i32 noundef %11) #12
  %12 = load ptr, ptr %_data, align 4
  tail call void (ptr, i32, ptr, ...) @__kunit_fail_current_test(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.29, ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not = icmp eq i32 %offset, 0
  %type8 = getelementptr inbounds %struct.alignment_assumption_data, ptr %_data, i32 0, i32 2
  %13 = load ptr, ptr %type8, align 4
  %type_name9 = getelementptr inbounds %struct.type_descriptor, ptr %13, i32 0, i32 2
  br i1 %tobool.not, label %do.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %align, i32 noundef %offset, ptr noundef %type_name9) #12
  br label %if.end12

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %align, ptr noundef %type_name9) #12
  br label %if.end12

if.end12:                                         ; preds = %do.end6, %do.end
  %cond = phi ptr [ @.str.39, %do.end6 ], [ @.str.38, %do.end ]
  %sub = sub i32 %ptr, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %ptr, i32 %offset)
  %tobool18.not = icmp eq i32 %ptr, %offset
  %14 = tail call i32 @llvm.cttz.i32(i32 %sub, i1 false) #10, !range !11
  %.op = shl nuw i32 1, %14
  %shl = select i1 %tobool18.not, i32 1, i32 %.op
  %sub21 = add i32 %align, -1
  %and = and i32 %sub, %sub21
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %cond, i32 noundef %shl, i32 noundef %and) #12
  tail call void @dump_stack() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %and.i.i37 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i37 to ptr
  %task.i38 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %task.i38, align 8
  %in_ubsan.i39 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 145
  %18 = load i32, ptr %in_ubsan.i39, align 64
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %in_ubsan.i39, align 64
  %19 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i40 = icmp eq i32 %19, 0
  br i1 %tobool.not.i40, label %if.end12.cleanup_crit_edge, label %if.then.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @panic_on_warn, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.49) #14
  unreachable

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %suppress_report.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kunit_fail_current_test(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noreturn nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nomerge }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { cold nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { cold nobuiltin noreturn nounwind "no-builtins" }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i32 0, i32 33}
