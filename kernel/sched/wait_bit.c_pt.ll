; ModuleID = '/llk/IR_all_yes/kernel/sched/wait_bit.c_pt.bc'
source_filename = "../kernel/sched/wait_bit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bit_waitqueue\22, \22a\22\09"
module asm "\09.weak\09__crc_bit_waitqueue\09\09\09\09"
module asm "\09.long\09__crc_bit_waitqueue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bit_waitqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22bit_waitqueue\22\09\09\09\09\09"
module asm "__kstrtabns_bit_waitqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wake_bit_function\22, \22a\22\09"
module asm "\09.weak\09__crc_wake_bit_function\09\09\09\09"
module asm "\09.long\09__crc_wake_bit_function\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wake_bit_function:\09\09\09\09\09"
module asm "\09.asciz \09\22wake_bit_function\22\09\09\09\09\09"
module asm "__kstrtabns_wake_bit_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__wait_on_bit\22, \22a\22\09"
module asm "\09.weak\09__crc___wait_on_bit\09\09\09\09"
module asm "\09.long\09__crc___wait_on_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wait_on_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22__wait_on_bit\22\09\09\09\09\09"
module asm "__kstrtabns___wait_on_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+out_of_line_wait_on_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_out_of_line_wait_on_bit\09\09\09\09"
module asm "\09.long\09__crc_out_of_line_wait_on_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_out_of_line_wait_on_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22out_of_line_wait_on_bit\22\09\09\09\09\09"
module asm "__kstrtabns_out_of_line_wait_on_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+out_of_line_wait_on_bit_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_out_of_line_wait_on_bit_timeout\09\09\09\09"
module asm "\09.long\09__crc_out_of_line_wait_on_bit_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_out_of_line_wait_on_bit_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22out_of_line_wait_on_bit_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_out_of_line_wait_on_bit_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__wait_on_bit_lock\22, \22a\22\09"
module asm "\09.weak\09__crc___wait_on_bit_lock\09\09\09\09"
module asm "\09.long\09__crc___wait_on_bit_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wait_on_bit_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__wait_on_bit_lock\22\09\09\09\09\09"
module asm "__kstrtabns___wait_on_bit_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+out_of_line_wait_on_bit_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_out_of_line_wait_on_bit_lock\09\09\09\09"
module asm "\09.long\09__crc_out_of_line_wait_on_bit_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_out_of_line_wait_on_bit_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22out_of_line_wait_on_bit_lock\22\09\09\09\09\09"
module asm "__kstrtabns_out_of_line_wait_on_bit_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__wake_up_bit\22, \22a\22\09"
module asm "\09.weak\09__crc___wake_up_bit\09\09\09\09"
module asm "\09.long\09__crc___wake_up_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_bit\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wake_up_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_wake_up_bit\09\09\09\09"
module asm "\09.long\09__crc_wake_up_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wake_up_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22wake_up_bit\22\09\09\09\09\09"
module asm "__kstrtabns_wake_up_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__var_waitqueue\22, \22a\22\09"
module asm "\09.weak\09__crc___var_waitqueue\09\09\09\09"
module asm "\09.long\09__crc___var_waitqueue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___var_waitqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22__var_waitqueue\22\09\09\09\09\09"
module asm "__kstrtabns___var_waitqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+init_wait_var_entry\22, \22a\22\09"
module asm "\09.weak\09__crc_init_wait_var_entry\09\09\09\09"
module asm "\09.long\09__crc_init_wait_var_entry\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_wait_var_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22init_wait_var_entry\22\09\09\09\09\09"
module asm "__kstrtabns_init_wait_var_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wake_up_var\22, \22a\22\09"
module asm "\09.weak\09__crc_wake_up_var\09\09\09\09"
module asm "\09.long\09__crc_wake_up_var\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wake_up_var:\09\09\09\09\09"
module asm "\09.asciz \09\22wake_up_var\22\09\09\09\09\09"
module asm "__kstrtabns_wake_up_var:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bit_wait\22, \22a\22\09"
module asm "\09.weak\09__crc_bit_wait\09\09\09\09"
module asm "\09.long\09__crc_bit_wait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bit_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22bit_wait\22\09\09\09\09\09"
module asm "__kstrtabns_bit_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bit_wait_io\22, \22a\22\09"
module asm "\09.weak\09__crc_bit_wait_io\09\09\09\09"
module asm "\09.long\09__crc_bit_wait_io\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bit_wait_io:\09\09\09\09\09"
module asm "\09.asciz \09\22bit_wait_io\22\09\09\09\09\09"
module asm "__kstrtabns_bit_wait_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bit_wait_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_bit_wait_timeout\09\09\09\09"
module asm "\09.long\09__crc_bit_wait_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bit_wait_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22bit_wait_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_bit_wait_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bit_wait_io_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_bit_wait_io_timeout\09\09\09\09"
module asm "\09.long\09__crc_bit_wait_io_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bit_wait_io_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22bit_wait_io_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_bit_wait_io_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.132 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@bit_wait_table = internal global [256 x %struct.wait_queue_head] zeroinitializer, section ".data..cacheline_aligned", align 128
@__kstrtab_bit_waitqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_bit_waitqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_bit_waitqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bit_waitqueue to i32), ptr @__kstrtab_bit_waitqueue, ptr @__kstrtabns_bit_waitqueue }, section "___ksymtab+bit_waitqueue", align 4
@__kstrtab_wake_bit_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_wake_bit_function = external dso_local constant [0 x i8], align 1
@__ksymtab_wake_bit_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wake_bit_function to i32), ptr @__kstrtab_wake_bit_function, ptr @__kstrtabns_wake_bit_function }, section "___ksymtab+wake_bit_function", align 4
@__kstrtab___wait_on_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns___wait_on_bit = external dso_local constant [0 x i8], align 1
@__ksymtab___wait_on_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wait_on_bit to i32), ptr @__kstrtab___wait_on_bit, ptr @__kstrtabns___wait_on_bit }, section "___ksymtab+__wait_on_bit", align 4
@__kstrtab_out_of_line_wait_on_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_out_of_line_wait_on_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_out_of_line_wait_on_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @out_of_line_wait_on_bit to i32), ptr @__kstrtab_out_of_line_wait_on_bit, ptr @__kstrtabns_out_of_line_wait_on_bit }, section "___ksymtab+out_of_line_wait_on_bit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_out_of_line_wait_on_bit_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_out_of_line_wait_on_bit_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_out_of_line_wait_on_bit_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @out_of_line_wait_on_bit_timeout to i32), ptr @__kstrtab_out_of_line_wait_on_bit_timeout, ptr @__kstrtabns_out_of_line_wait_on_bit_timeout }, section "___ksymtab_gpl+out_of_line_wait_on_bit_timeout", align 4
@__kstrtab___wait_on_bit_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___wait_on_bit_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___wait_on_bit_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wait_on_bit_lock to i32), ptr @__kstrtab___wait_on_bit_lock, ptr @__kstrtabns___wait_on_bit_lock }, section "___ksymtab+__wait_on_bit_lock", align 4
@__kstrtab_out_of_line_wait_on_bit_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_out_of_line_wait_on_bit_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_out_of_line_wait_on_bit_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @out_of_line_wait_on_bit_lock to i32), ptr @__kstrtab_out_of_line_wait_on_bit_lock, ptr @__kstrtabns_out_of_line_wait_on_bit_lock }, section "___ksymtab+out_of_line_wait_on_bit_lock", align 4
@__kstrtab___wake_up_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_bit = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_bit to i32), ptr @__kstrtab___wake_up_bit, ptr @__kstrtabns___wake_up_bit }, section "___ksymtab+__wake_up_bit", align 4
@__kstrtab_wake_up_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_wake_up_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_wake_up_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wake_up_bit to i32), ptr @__kstrtab_wake_up_bit, ptr @__kstrtabns_wake_up_bit }, section "___ksymtab+wake_up_bit", align 4
@__kstrtab___var_waitqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns___var_waitqueue = external dso_local constant [0 x i8], align 1
@__ksymtab___var_waitqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__var_waitqueue to i32), ptr @__kstrtab___var_waitqueue, ptr @__kstrtabns___var_waitqueue }, section "___ksymtab+__var_waitqueue", align 4
@__kstrtab_init_wait_var_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_wait_var_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_init_wait_var_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_wait_var_entry to i32), ptr @__kstrtab_init_wait_var_entry, ptr @__kstrtabns_init_wait_var_entry }, section "___ksymtab+init_wait_var_entry", align 4
@__kstrtab_wake_up_var = external dso_local constant [0 x i8], align 1
@__kstrtabns_wake_up_var = external dso_local constant [0 x i8], align 1
@__ksymtab_wake_up_var = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wake_up_var to i32), ptr @__kstrtab_wake_up_var, ptr @__kstrtabns_wake_up_var }, section "___ksymtab+wake_up_var", align 4
@__kstrtab_bit_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_bit_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_bit_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bit_wait to i32), ptr @__kstrtab_bit_wait, ptr @__kstrtabns_bit_wait }, section "___ksymtab+bit_wait", align 4
@__kstrtab_bit_wait_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_bit_wait_io = external dso_local constant [0 x i8], align 1
@__ksymtab_bit_wait_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bit_wait_io to i32), ptr @__kstrtab_bit_wait_io, ptr @__kstrtabns_bit_wait_io }, section "___ksymtab+bit_wait_io", align 4
@__kstrtab_bit_wait_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_bit_wait_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_bit_wait_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bit_wait_timeout to i32), ptr @__kstrtab_bit_wait_timeout, ptr @__kstrtabns_bit_wait_timeout }, section "___ksymtab_gpl+bit_wait_timeout", align 4
@__kstrtab_bit_wait_io_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_bit_wait_io_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_bit_wait_io_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bit_wait_io_timeout to i32), ptr @__kstrtab_bit_wait_io_timeout, ptr @__kstrtabns_bit_wait_io_timeout }, section "___ksymtab_gpl+bit_wait_io_timeout", align 4
@wait_bit_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bit_wait_table + i\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../kernel/sched/wait_bit.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 250, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab___var_waitqueue, ptr @__ksymtab___wait_on_bit, ptr @__ksymtab___wait_on_bit_lock, ptr @__ksymtab___wake_up_bit, ptr @__ksymtab_bit_wait, ptr @__ksymtab_bit_wait_io, ptr @__ksymtab_bit_wait_io_timeout, ptr @__ksymtab_bit_wait_timeout, ptr @__ksymtab_bit_waitqueue, ptr @__ksymtab_init_wait_var_entry, ptr @__ksymtab_out_of_line_wait_on_bit, ptr @__ksymtab_out_of_line_wait_on_bit_lock, ptr @__ksymtab_out_of_line_wait_on_bit_timeout, ptr @__ksymtab_wake_bit_function, ptr @__ksymtab_wake_up_bit, ptr @__ksymtab_wake_up_var, ptr @wait_bit_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_bit_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @bit_waitqueue(ptr noundef %word, i32 noundef %bit) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %word to i32
  %shl = shl i32 %0, 5
  %or = or i32 %shl, %bit
  %mul.i.i = mul i32 %or, 1640531527
  %shr.i = lshr i32 %mul.i.i, 24
  %add.ptr = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %shr.i
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wake_bit_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %sync, ptr noundef %arg) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wq_entry, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bit_nr = getelementptr i8, ptr %wq_entry, i32 -8
  %4 = ptrtoint ptr %bit_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bit_nr, align 4
  %bit_nr4 = getelementptr inbounds %struct.wait_bit_key, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %bit_nr4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit_nr4, align 4
  %cmp5.not = icmp eq i32 %5, %7
  br i1 %cmp5.not, label %lor.lhs.false6, label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %div3.i = lshr i32 %5, 5
  %arrayidx.i = getelementptr i32, ptr %1, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %call9 = tail call i32 @autoremove_wake_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %sync, ptr noundef %arg) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false6, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ %call9, %if.end ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__wait_on_bit(ptr noundef %wq_head, ptr noundef %wbq_entry, ptr nocapture noundef readonly %action, i32 noundef %mode) #2 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_entry = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wbq_entry, i32 0, i32 1
  %bit_nr = getelementptr inbounds %struct.wait_bit_key, ptr %wbq_entry, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  tail call void @prepare_to_wait(ptr noundef %wq_head, ptr noundef %wq_entry, i32 noundef %mode) #7
  %0 = ptrtoint ptr %bit_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit_nr, align 4
  %2 = ptrtoint ptr %wbq_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wbq_entry, align 4
  %div3.i = lshr i32 %1, 5
  %arrayidx.i = getelementptr i32, ptr %3, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.cond, label %if.then

if.then:                                          ; preds = %do.body
  %call3 = tail call i32 %action(ptr noundef %wbq_entry, i32 noundef %mode) #7
  br label %do.cond

do.cond:                                          ; preds = %if.then, %do.body
  %ret.1 = phi i32 [ %call3, %if.then ], [ 0, %do.body ]
  %8 = ptrtoint ptr %bit_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bit_nr, align 4
  %10 = ptrtoint ptr %wbq_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wbq_entry, align 4
  %div3.i21 = lshr i32 %9, 5
  %arrayidx.i22 = getelementptr i32, ptr %11, i32 %div3.i21
  %12 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i22, align 4
  %and.i23 = and i32 %9, 31
  %14 = shl nuw i32 1, %and.i23
  %15 = and i32 %13, %14
  %tobool9.not = icmp ne i32 %15, 0
  %tobool10.not = icmp eq i32 %ret.1, 0
  %or.cond = select i1 %tobool9.not, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  tail call void @finish_wait(ptr noundef %wq_head, ptr noundef %wq_entry) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @out_of_line_wait_on_bit(ptr noundef %word, i32 noundef %bit, ptr nocapture noundef readonly %action, i32 noundef %mode) #2 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_entry = alloca %struct.wait_bit_queue_entry, align 4
  %0 = ptrtoint ptr %word to i32
  %shl.i = shl i32 %0, 5
  %or.i = or i32 %shl.i, %bit
  %mul.i.i.i = mul i32 %or.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %add.ptr.i = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %shr.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wq_entry) #7
  %1 = getelementptr inbounds %struct.wait_bit_key, ptr %wq_entry, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_bit_key, ptr %wq_entry, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 2
  %6 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 3
  %7 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 3, i32 1
  %8 = ptrtoint ptr %wq_entry to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %word, ptr %wq_entry, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bit, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %3, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %4, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @wake_bit_function, ptr %5, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %6, ptr %6, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %6, ptr %7, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i, %entry
  call void @prepare_to_wait(ptr noundef %add.ptr.i, ptr noundef %3, i32 noundef %mode) #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %22 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wq_entry, align 4
  %div3.i.i = lshr i32 %21, 5
  %arrayidx.i.i = getelementptr i32, ptr %23, i32 %div3.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %21, 31
  %26 = shl nuw i32 1, %and.i.i
  %27 = and i32 %25, %26
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %do.cond.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  %call3.i = call i32 %action(ptr noundef nonnull %wq_entry, i32 noundef %mode) #7
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then.i, %do.body.i
  %ret.1.i = phi i32 [ %call3.i, %if.then.i ], [ 0, %do.body.i ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %30 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq_entry, align 4
  %div3.i21.i = lshr i32 %29, 5
  %arrayidx.i22.i = getelementptr i32, ptr %31, i32 %div3.i21.i
  %32 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i22.i, align 4
  %and.i23.i = and i32 %29, 31
  %34 = shl nuw i32 1, %and.i23.i
  %35 = and i32 %33, %34
  %tobool9.not.i = icmp ne i32 %35, 0
  %tobool10.not.i = icmp eq i32 %ret.1.i, 0
  %or.cond.i = select i1 %tobool9.not.i, i1 %tobool10.not.i, i1 false
  br i1 %or.cond.i, label %do.body.i, label %__wait_on_bit.exit

__wait_on_bit.exit:                               ; preds = %do.cond.i
  call void @finish_wait(ptr noundef %add.ptr.i, ptr noundef %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wq_entry) #7
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @out_of_line_wait_on_bit_timeout(ptr noundef %word, i32 noundef %bit, ptr nocapture noundef readonly %action, i32 noundef %mode, i32 noundef %timeout) #2 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_entry = alloca %struct.wait_bit_queue_entry, align 4
  %0 = ptrtoint ptr %word to i32
  %shl.i = shl i32 %0, 5
  %or.i = or i32 %shl.i, %bit
  %mul.i.i.i = mul i32 %or.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %add.ptr.i = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %shr.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wq_entry) #7
  %1 = getelementptr inbounds %struct.wait_bit_key, ptr %wq_entry, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_bit_key, ptr %wq_entry, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 2
  %6 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 3
  %7 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 3, i32 1
  %8 = ptrtoint ptr %wq_entry to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %word, ptr %wq_entry, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bit, ptr %1, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %3, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %4, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @wake_bit_function, ptr %5, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %6, ptr %6, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %6, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %19, %timeout
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %2, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i, %entry
  call void @prepare_to_wait(ptr noundef %add.ptr.i, ptr noundef %3, i32 noundef %mode) #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %23 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wq_entry, align 4
  %div3.i.i = lshr i32 %22, 5
  %arrayidx.i.i = getelementptr i32, ptr %24, i32 %div3.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %22, 31
  %27 = shl nuw i32 1, %and.i.i
  %28 = and i32 %26, %27
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %do.cond.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  %call3.i = call i32 %action(ptr noundef nonnull %wq_entry, i32 noundef %mode) #7
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then.i, %do.body.i
  %ret.1.i = phi i32 [ %call3.i, %if.then.i ], [ 0, %do.body.i ]
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %31 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wq_entry, align 4
  %div3.i21.i = lshr i32 %30, 5
  %arrayidx.i22.i = getelementptr i32, ptr %32, i32 %div3.i21.i
  %33 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i22.i, align 4
  %and.i23.i = and i32 %30, 31
  %35 = shl nuw i32 1, %and.i23.i
  %36 = and i32 %34, %35
  %tobool9.not.i = icmp ne i32 %36, 0
  %tobool10.not.i = icmp eq i32 %ret.1.i, 0
  %or.cond.i = select i1 %tobool9.not.i, i1 %tobool10.not.i, i1 false
  br i1 %or.cond.i, label %do.body.i, label %__wait_on_bit.exit

__wait_on_bit.exit:                               ; preds = %do.cond.i
  call void @finish_wait(ptr noundef %add.ptr.i, ptr noundef %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wq_entry) #7
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__wait_on_bit_lock(ptr noundef %wq_head, ptr noundef %wbq_entry, ptr nocapture noundef readonly %action, i32 noundef %mode) #2 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_entry = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wbq_entry, i32 0, i32 1
  %bit_nr = getelementptr inbounds %struct.wait_bit_key, ptr %wbq_entry, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.else, %entry
  %call = tail call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %wq_head, ptr noundef %wq_entry, i32 noundef %mode) #7
  %0 = ptrtoint ptr %bit_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit_nr, align 4
  %2 = ptrtoint ptr %wbq_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wbq_entry, align 4
  %div3.i = lshr i32 %1, 5
  %arrayidx.i = getelementptr i32, ptr %3, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %5, %6
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %for.cond
  %call4 = tail call i32 %action(ptr noundef %wbq_entry, i32 noundef %mode) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.then
  tail call void @finish_wait(ptr noundef %wq_head, ptr noundef %wq_entry) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then, %for.cond
  %ret.1 = phi i32 [ %call4, %if.then6 ], [ 0, %if.then ], [ 0, %for.cond ]
  %8 = ptrtoint ptr %bit_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bit_nr, align 4
  %10 = ptrtoint ptr %wbq_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wbq_entry, align 4
  %call13 = tail call i32 @_test_and_set_bit(i32 noundef %9, ptr noundef %11) #7
  %tobool14.not = icmp eq i32 %call13, 0
  %tobool16.not = icmp eq i32 %ret.1, 0
  br i1 %tobool14.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end8
  br i1 %tobool16.not, label %if.then17, label %cleanup

if.then17:                                        ; preds = %if.then15
  tail call void @finish_wait(ptr noundef %wq_head, ptr noundef %wq_entry) #7
  br label %cleanup

if.else:                                          ; preds = %if.end8
  br i1 %tobool16.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %if.else, %if.then17, %if.then15
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 0, %if.then15 ], [ %ret.1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef %word, i32 noundef %bit, ptr nocapture noundef readonly %action, i32 noundef %mode) #2 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_entry = alloca %struct.wait_bit_queue_entry, align 4
  %0 = ptrtoint ptr %word to i32
  %shl.i = shl i32 %0, 5
  %or.i = or i32 %shl.i, %bit
  %mul.i.i.i = mul i32 %or.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %add.ptr.i = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %shr.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wq_entry) #7
  %1 = getelementptr inbounds %struct.wait_bit_key, ptr %wq_entry, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_bit_key, ptr %wq_entry, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 2
  %6 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 3
  %7 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wq_entry, i32 0, i32 1, i32 3, i32 1
  %8 = ptrtoint ptr %wq_entry to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %word, ptr %wq_entry, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bit, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %3, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %4, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @wake_bit_function, ptr %5, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %6, ptr %6, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %6, ptr %7, align 4
  %call9 = call i32 @__wait_on_bit_lock(ptr noundef %add.ptr.i, ptr noundef nonnull %wq_entry, ptr noundef %action, i32 noundef %mode)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wq_entry) #7
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wake_up_bit(ptr noundef %wq_head, ptr noundef %word, i32 noundef %bit) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %key = alloca %struct.wait_bit_key, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key) #7
  %0 = getelementptr inbounds %struct.wait_bit_key, ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_bit_key, ptr %key, i32 0, i32 2
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %word, ptr %key, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bit, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %6, %head.i
  br i1 %cmp.i.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__wake_up(ptr noundef %wq_head, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %key) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wake_up_bit(ptr noundef %word, i32 noundef %bit) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %key.i = alloca %struct.wait_bit_key, align 4
  %0 = ptrtoint ptr %word to i32
  %shl.i = shl i32 %0, 5
  %or.i = or i32 %shl.i, %bit
  %mul.i.i.i = mul i32 %or.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i) #7
  %1 = getelementptr inbounds %struct.wait_bit_key, ptr %key.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_bit_key, ptr %key.i, i32 0, i32 2
  %3 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %word, ptr %key.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bit, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %2, align 4
  %head.i.i = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %shr.i.i, i32 1
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %7, %head.i.i
  br i1 %cmp.i.i.not.i, label %__wake_up_bit.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %shr.i.i
  call void @__wake_up(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %key.i) #7
  br label %__wake_up_bit.exit

__wake_up_bit.exit:                               ; preds = %if.then.i, %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @__var_waitqueue(ptr noundef %p) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  %mul.i.i.i = mul i32 %0, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %add.ptr = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %shr.i.i
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_wait_var_entry(ptr noundef %wbq_entry, ptr noundef %var, i32 noundef %flags) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %entry5 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %wbq_entry, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %wbq_entry to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %var, ptr %wbq_entry, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %wbq_entry, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %wbq_entry, i32 8
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %wbq_entry, i32 12
  %7 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %wbq_entry, i32 16
  %8 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %wbq_entry, i32 20
  %9 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @var_wake_function, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %10 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry5, ptr %entry5, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %wbq_entry, i32 28
  %11 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry5, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @var_wake_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %sync, ptr noundef %arg) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wq_entry, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bit_nr = getelementptr i8, ptr %wq_entry, i32 -8
  %4 = ptrtoint ptr %bit_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bit_nr, align 4
  %bit_nr4 = getelementptr inbounds %struct.wait_bit_key, ptr %arg, i32 0, i32 1
  %6 = ptrtoint ptr %bit_nr4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bit_nr4, align 4
  %cmp5.not = icmp eq i32 %5, %7
  br i1 %cmp5.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @autoremove_wake_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %sync, ptr noundef %arg) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wake_up_var(ptr noundef %var) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %key.i = alloca %struct.wait_bit_key, align 4
  %0 = ptrtoint ptr %var to i32
  %mul.i.i.i.i = mul i32 %0, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i) #7
  %1 = getelementptr inbounds %struct.wait_bit_key, ptr %key.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_bit_key, ptr %key.i, i32 0, i32 2
  %3 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %var, ptr %key.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %2, align 4
  %head.i.i = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %shr.i.i.i, i32 1
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %7, %head.i.i
  br i1 %cmp.i.i.not.i, label %__wake_up_bit.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %shr.i.i.i
  call void @__wake_up(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %key.i) #7
  br label %__wake_up_bit.exit

__wake_up_bit.exit:                               ; preds = %if.then.i, %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bit_wait(ptr nocapture readnone %word, i32 noundef %mode) #2 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @schedule() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %and.i2 = and i32 %mode, 257
  %tobool.not.i = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i, label %signal_pending_state.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %entry
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end3.i, !prof !47

signal_pending.exit.i:                            ; preds = %if.end.i
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i.i = and i32 %10, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %signal_pending_state.exit.thread, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i
  %and4.i = and i32 %mode, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %signal_pending_state.exit.thread5

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %11 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signal.i.i, align 4
  %13 = and i32 %12, 256
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %signal_pending_state.exit.thread, label %signal_pending_state.exit.thread5

signal_pending_state.exit.thread:                 ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %entry
  br label %signal_pending_state.exit.thread5

signal_pending_state.exit.thread5:                ; preds = %signal_pending_state.exit.thread, %signal_pending_state.exit, %if.end3.i
  %14 = phi i32 [ 0, %signal_pending_state.exit.thread ], [ -4, %signal_pending_state.exit ], [ -4, %if.end3.i ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bit_wait_io(ptr nocapture readnone %word, i32 noundef %mode) #2 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @io_schedule() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %and.i2 = and i32 %mode, 257
  %tobool.not.i = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i, label %signal_pending_state.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %entry
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end3.i, !prof !47

signal_pending.exit.i:                            ; preds = %if.end.i
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i.i = and i32 %10, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %signal_pending_state.exit.thread, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i
  %and4.i = and i32 %mode, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %signal_pending_state.exit.thread5

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %11 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signal.i.i, align 4
  %13 = and i32 %12, 256
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %signal_pending_state.exit.thread, label %signal_pending_state.exit.thread5

signal_pending_state.exit.thread:                 ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %entry
  br label %signal_pending_state.exit.thread5

signal_pending_state.exit.thread5:                ; preds = %signal_pending_state.exit.thread, %signal_pending_state.exit, %if.end3.i
  %14 = phi i32 [ 0, %signal_pending_state.exit.thread ], [ -4, %signal_pending_state.exit ], [ -4, %if.end3.i ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bit_wait_timeout(ptr nocapture noundef readonly %word, i32 noundef %mode) #2 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.wait_bit_key, ptr %word, i32 0, i32 2
  %1 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout, align 4
  %sub = sub i32 %0, %2
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub2 = sub i32 %2, %0
  %call = tail call i32 @schedule_timeout(i32 noundef %sub2) #7
  %3 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %and.i9 = and i32 %mode, 257
  %tobool.not.i = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i, label %signal_pending_state.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end3.i, !prof !47

signal_pending.exit.i:                            ; preds = %if.end.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and1.i.i.i.i.i.i = and i32 %13, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %signal_pending_state.exit.thread, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i
  %and4.i = and i32 %mode, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %cleanup

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 116, i32 1
  %14 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %signal.i.i, align 4
  %16 = and i32 %15, 256
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %signal_pending_state.exit.thread, label %cleanup

signal_pending_state.exit.thread:                 ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %if.end
  br label %cleanup

cleanup:                                          ; preds = %signal_pending_state.exit.thread, %signal_pending_state.exit, %if.end3.i, %entry
  %retval.0 = phi i32 [ -11, %entry ], [ 0, %signal_pending_state.exit.thread ], [ -4, %signal_pending_state.exit ], [ -4, %if.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bit_wait_io_timeout(ptr nocapture noundef readonly %word, i32 noundef %mode) #2 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.wait_bit_key, ptr %word, i32 0, i32 2
  %1 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout, align 4
  %sub = sub i32 %0, %2
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub2 = sub i32 %2, %0
  %call = tail call i32 @io_schedule_timeout(i32 noundef %sub2) #7
  %3 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %and.i9 = and i32 %mode, 257
  %tobool.not.i = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i, label %signal_pending_state.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 256
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end3.i, !prof !47

signal_pending.exit.i:                            ; preds = %if.end.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and1.i.i.i.i.i.i = and i32 %13, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %signal_pending_state.exit.thread, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i
  %and4.i = and i32 %mode, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %cleanup

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 116, i32 1
  %14 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %signal.i.i, align 4
  %16 = and i32 %15, 256
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %signal_pending_state.exit.thread, label %cleanup

signal_pending_state.exit.thread:                 ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %if.end
  br label %cleanup

cleanup:                                          ; preds = %signal_pending_state.exit.thread, %signal_pending_state.exit, %if.end3.i, %entry
  %retval.0 = phi i32 [ -11, %entry ], [ 0, %signal_pending_state.exit.thread ], [ -4, %signal_pending_state.exit ], [ -4, %if.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @wait_bit_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %do.body ]
  %add.ptr = getelementptr %struct.wait_queue_head, ptr @bit_wait_table, i32 %i.03
  tail call void @__init_waitqueue_head(ptr noundef %add.ptr, ptr noundef nonnull @.str, ptr noundef nonnull @wait_bit_init.__key) #7
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %do.body

for.end:                                          ; preds = %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__ksymtab_bit_waitqueue, !1, !"__ksymtab_bit_waitqueue", i1 false, i1 false}
!1 = !{!"../kernel/sched/wait_bit.c", i32 19, i32 1}
!2 = !{ptr @__ksymtab_wake_bit_function, !3, !"__ksymtab_wake_bit_function", i1 false, i1 false}
!3 = !{!"../kernel/sched/wait_bit.c", i32 33, i32 1}
!4 = !{ptr @__ksymtab___wait_on_bit, !5, !"__ksymtab___wait_on_bit", i1 false, i1 false}
!5 = !{!"../kernel/sched/wait_bit.c", i32 56, i32 1}
!6 = !{ptr @__ksymtab_out_of_line_wait_on_bit, !7, !"__ksymtab_out_of_line_wait_on_bit", i1 false, i1 false}
!7 = !{!"../kernel/sched/wait_bit.c", i32 66, i32 1}
!8 = !{ptr @__ksymtab_out_of_line_wait_on_bit_timeout, !9, !"__ksymtab_out_of_line_wait_on_bit_timeout", i1 false, i1 false}
!9 = !{!"../kernel/sched/wait_bit.c", i32 79, i32 1}
!10 = !{ptr @__ksymtab___wait_on_bit_lock, !11, !"__ksymtab___wait_on_bit_lock", i1 false, i1 false}
!11 = !{!"../kernel/sched/wait_bit.c", i32 109, i32 1}
!12 = !{ptr @__ksymtab_out_of_line_wait_on_bit_lock, !13, !"__ksymtab_out_of_line_wait_on_bit_lock", i1 false, i1 false}
!13 = !{!"../kernel/sched/wait_bit.c", i32 119, i32 1}
!14 = !{ptr @__ksymtab___wake_up_bit, !15, !"__ksymtab___wake_up_bit", i1 false, i1 false}
!15 = !{!"../kernel/sched/wait_bit.c", i32 128, i32 1}
!16 = !{ptr @__ksymtab_wake_up_bit, !17, !"__ksymtab_wake_up_bit", i1 false, i1 false}
!17 = !{!"../kernel/sched/wait_bit.c", i32 151, i32 1}
!18 = !{ptr @__ksymtab___var_waitqueue, !19, !"__ksymtab___var_waitqueue", i1 false, i1 false}
!19 = !{!"../kernel/sched/wait_bit.c", i32 157, i32 1}
!20 = !{ptr @__ksymtab_init_wait_var_entry, !21, !"__ksymtab_init_wait_var_entry", i1 false, i1 false}
!21 = !{!"../kernel/sched/wait_bit.c", i32 189, i32 1}
!22 = !{ptr @__ksymtab_wake_up_var, !23, !"__ksymtab_wake_up_var", i1 false, i1 false}
!23 = !{!"../kernel/sched/wait_bit.c", i32 195, i32 1}
!24 = !{ptr @__ksymtab_bit_wait, !25, !"__ksymtab_bit_wait", i1 false, i1 false}
!25 = !{!"../kernel/sched/wait_bit.c", i32 205, i32 1}
!26 = !{ptr @__ksymtab_bit_wait_io, !27, !"__ksymtab_bit_wait_io", i1 false, i1 false}
!27 = !{!"../kernel/sched/wait_bit.c", i32 215, i32 1}
!28 = !{ptr @__ksymtab_bit_wait_timeout, !29, !"__ksymtab_bit_wait_timeout", i1 false, i1 false}
!29 = !{!"../kernel/sched/wait_bit.c", i32 229, i32 1}
!30 = !{ptr @__ksymtab_bit_wait_io_timeout, !31, !"__ksymtab_bit_wait_io_timeout", i1 false, i1 false}
!31 = !{!"../kernel/sched/wait_bit.c", i32 243, i32 1}
!32 = !{ptr @wait_bit_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../kernel/sched/wait_bit.c", i32 250, i32 3}
!34 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bit_wait_table, !36, !"bit_wait_table", i1 false, i1 false}
!36 = !{!"../kernel/sched/wait_bit.c", i32 10, i32 26}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 2000, i32 1}
