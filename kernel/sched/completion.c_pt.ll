; ModuleID = '/llk/IR_all_yes/kernel/sched/completion.c_pt.bc'
source_filename = "../kernel/sched/completion.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+complete\22, \22a\22\09"
module asm "\09.weak\09__crc_complete\09\09\09\09"
module asm "\09.long\09__crc_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22complete\22\09\09\09\09\09"
module asm "__kstrtabns_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+complete_all\22, \22a\22\09"
module asm "\09.weak\09__crc_complete_all\09\09\09\09"
module asm "\09.long\09__crc_complete_all\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_complete_all:\09\09\09\09\09"
module asm "\09.asciz \09\22complete_all\22\09\09\09\09\09"
module asm "__kstrtabns_complete_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_for_completion\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_completion\09\09\09\09"
module asm "\09.long\09__crc_wait_for_completion\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_for_completion_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_completion_timeout\09\09\09\09"
module asm "\09.long\09__crc_wait_for_completion_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_for_completion_io\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_completion_io\09\09\09\09"
module asm "\09.long\09__crc_wait_for_completion_io\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_io:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_io\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_for_completion_io_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_completion_io_timeout\09\09\09\09"
module asm "\09.long\09__crc_wait_for_completion_io_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_io_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_io_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_io_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_for_completion_interruptible\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_completion_interruptible\09\09\09\09"
module asm "\09.long\09__crc_wait_for_completion_interruptible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_for_completion_interruptible_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_completion_interruptible_timeout\09\09\09\09"
module asm "\09.long\09__crc_wait_for_completion_interruptible_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_interruptible_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_interruptible_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_interruptible_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_for_completion_killable\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_completion_killable\09\09\09\09"
module asm "\09.long\09__crc_wait_for_completion_killable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_killable\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_for_completion_killable_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_for_completion_killable_timeout\09\09\09\09"
module asm "\09.long\09__crc_wait_for_completion_killable_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_completion_killable_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_completion_killable_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_completion_killable_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+try_wait_for_completion\22, \22a\22\09"
module asm "\09.weak\09__crc_try_wait_for_completion\09\09\09\09"
module asm "\09.long\09__crc_try_wait_for_completion\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_wait_for_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22try_wait_for_completion\22\09\09\09\09\09"
module asm "__kstrtabns_try_wait_for_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+completion_done\22, \22a\22\09"
module asm "\09.weak\09__crc_completion_done\09\09\09\09"
module asm "\09.long\09__crc_completion_done\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_completion_done:\09\09\09\09\09"
module asm "\09.asciz \09\22completion_done\22\09\09\09\09\09"
module asm "__kstrtabns_completion_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.swait_queue = type { ptr, %struct.list_head }

@__kstrtab_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @complete to i32), ptr @__kstrtab_complete, ptr @__kstrtabns_complete }, section "___ksymtab+complete", align 4
@complete_all.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@hardirq_context = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/sched/completion.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Not in threaded context on PREEMPT_RT as expected\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_complete_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_complete_all = external dso_local constant [0 x i8], align 1
@__ksymtab_complete_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @complete_all to i32), ptr @__kstrtab_complete_all, ptr @__kstrtabns_complete_all }, section "___ksymtab+complete_all", align 4
@__kstrtab_wait_for_completion = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion to i32), ptr @__kstrtab_wait_for_completion, ptr @__kstrtabns_wait_for_completion }, section "___ksymtab+wait_for_completion", align 4
@__kstrtab_wait_for_completion_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_timeout to i32), ptr @__kstrtab_wait_for_completion_timeout, ptr @__kstrtabns_wait_for_completion_timeout }, section "___ksymtab+wait_for_completion_timeout", align 4
@__kstrtab_wait_for_completion_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_io = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_io to i32), ptr @__kstrtab_wait_for_completion_io, ptr @__kstrtabns_wait_for_completion_io }, section "___ksymtab+wait_for_completion_io", align 4
@__kstrtab_wait_for_completion_io_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_io_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_io_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_io_timeout to i32), ptr @__kstrtab_wait_for_completion_io_timeout, ptr @__kstrtabns_wait_for_completion_io_timeout }, section "___ksymtab+wait_for_completion_io_timeout", align 4
@__kstrtab_wait_for_completion_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_interruptible to i32), ptr @__kstrtab_wait_for_completion_interruptible, ptr @__kstrtabns_wait_for_completion_interruptible }, section "___ksymtab+wait_for_completion_interruptible", align 4
@__kstrtab_wait_for_completion_interruptible_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_interruptible_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_interruptible_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_interruptible_timeout to i32), ptr @__kstrtab_wait_for_completion_interruptible_timeout, ptr @__kstrtabns_wait_for_completion_interruptible_timeout }, section "___ksymtab+wait_for_completion_interruptible_timeout", align 4
@__kstrtab_wait_for_completion_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_killable to i32), ptr @__kstrtab_wait_for_completion_killable, ptr @__kstrtabns_wait_for_completion_killable }, section "___ksymtab+wait_for_completion_killable", align 4
@__kstrtab_wait_for_completion_killable_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_completion_killable_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_completion_killable_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_completion_killable_timeout to i32), ptr @__kstrtab_wait_for_completion_killable_timeout, ptr @__kstrtabns_wait_for_completion_killable_timeout }, section "___ksymtab+wait_for_completion_killable_timeout", align 4
@__kstrtab_try_wait_for_completion = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_wait_for_completion = external dso_local constant [0 x i8], align 1
@__ksymtab_try_wait_for_completion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_wait_for_completion to i32), ptr @__kstrtab_try_wait_for_completion, ptr @__kstrtabns_try_wait_for_completion }, section "___ksymtab+try_wait_for_completion", align 4
@__kstrtab_completion_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_completion_done = external dso_local constant [0 x i8], align 1
@__ksymtab_completion_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @completion_done to i32), ptr @__kstrtab_completion_done, ptr @__kstrtabns_completion_done }, section "___ksymtab+completion_done", align 4
@do_wait_for_common.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [29 x i8] c"../kernel/sched/completion.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 61, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_complete, ptr @__ksymtab_complete_all, ptr @__ksymtab_completion_done, ptr @__ksymtab_try_wait_for_completion, ptr @__ksymtab_wait_for_completion, ptr @__ksymtab_wait_for_completion_interruptible, ptr @__ksymtab_wait_for_completion_interruptible_timeout, ptr @__ksymtab_wait_for_completion_io, ptr @__ksymtab_wait_for_completion_io_timeout, ptr @__ksymtab_wait_for_completion_killable, ptr @__ksymtab_wait_for_completion_killable_timeout, ptr @__ksymtab_wait_for_completion_timeout, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @complete(ptr noundef %x) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wait = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait) #5
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %x, align 4
  %cmp1.not = icmp eq i32 %1, -1
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @swake_up_locked(ptr noundef %wait) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait, i32 noundef %call) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @swake_up_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @complete_all(ptr noundef %x) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end53, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %lockdep_recursion = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 143
  %5 = ptrtoint ptr %lockdep_recursion to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lockdep_recursion, align 4
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %if.end53

land.lhs.true2:                                   ; preds = %land.lhs.true
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @hardirq_context to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %if.end53, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true2
  %hardirq_threaded = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 136
  %14 = ptrtoint ptr %hardirq_threaded to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hardirq_threaded, align 16
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %lor.rhs, label %if.end53

lor.rhs:                                          ; preds = %land.rhs
  %irq_config = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 140
  %16 = ptrtoint ptr %irq_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_config, align 8
  %tobool18 = icmp eq i32 %17, 0
  br i1 %tobool18, label %land.rhs22, label %if.end53

land.rhs22:                                       ; preds = %lor.rhs
  %.b84 = load i1, ptr @complete_all.__already_done, align 1
  br i1 %.b84, label %if.end53, label %if.then, !prof !40

if.then:                                          ; preds = %land.rhs22
  store i1 true, ptr @complete_all.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then, %land.rhs22, %lor.rhs, %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %wait = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  %call65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait) #5
  %18 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %x, align 4
  tail call void @swake_up_all_locked(ptr noundef %wait) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait, i32 noundef %call65) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @swake_up_all_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wait_for_completion(ptr noundef %x) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 101) #5
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait.i.i) #5
  %call.i.i = tail call fastcc i32 @do_wait_for_common(ptr noundef %x, ptr noundef nonnull @schedule_timeout, i32 noundef 2147483647, i32 noundef 2) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait.i.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_timeout(ptr noundef %x, i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 101) #5
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait.i.i) #5
  %call.i.i = tail call fastcc i32 @do_wait_for_common(ptr noundef %x, ptr noundef nonnull @schedule_timeout, i32 noundef %timeout, i32 noundef 2) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait.i.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wait_for_completion_io(ptr noundef %x) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 101) #5
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait.i.i) #5
  %call.i.i = tail call fastcc i32 @do_wait_for_common(ptr noundef %x, ptr noundef nonnull @io_schedule_timeout, i32 noundef 2147483647, i32 noundef 2) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait.i.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_io_timeout(ptr noundef %x, i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 101) #5
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait.i.i) #5
  %call.i.i = tail call fastcc i32 @do_wait_for_common(ptr noundef %x, ptr noundef nonnull @io_schedule_timeout, i32 noundef %timeout, i32 noundef 2) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait.i.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_interruptible(ptr noundef %x) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 101) #5
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait.i.i) #5
  %call.i.i = tail call fastcc i32 @do_wait_for_common(ptr noundef %x, ptr noundef nonnull @schedule_timeout, i32 noundef 2147483647, i32 noundef 1) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait.i.i) #5
  %cmp = icmp eq i32 %call.i.i, -512
  %. = select i1 %cmp, i32 -512, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef %x, i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 101) #5
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait.i.i) #5
  %call.i.i = tail call fastcc i32 @do_wait_for_common(ptr noundef %x, ptr noundef nonnull @schedule_timeout, i32 noundef %timeout, i32 noundef 1) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait.i.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_killable(ptr noundef %x) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 101) #5
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait.i.i) #5
  %call.i.i = tail call fastcc i32 @do_wait_for_common(ptr noundef %x, ptr noundef nonnull @schedule_timeout, i32 noundef 2147483647, i32 noundef 258) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait.i.i) #5
  %cmp = icmp eq i32 %call.i.i, -512
  %. = select i1 %cmp, i32 -512, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_for_completion_killable_timeout(ptr noundef %x, i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 101) #5
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait.i.i) #5
  %call.i.i = tail call fastcc i32 @do_wait_for_common(ptr noundef %x, ptr noundef nonnull @schedule_timeout, i32 noundef %timeout, i32 noundef 258) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait.i.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @try_wait_for_completion(ptr noundef %x) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %x, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %do.body1

do.body1:                                         ; preds = %entry
  %wait = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait) #5
  %2 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %x, align 4
  %tobool6.not = icmp ne i32 %3, 0
  switch i32 %3, label %if.then11 [
    i32 -1, label %do.body15
    i32 0, label %do.body15
  ]

if.then11:                                        ; preds = %do.body1
  %dec = add i32 %3, -1
  %4 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %x, align 4
  br label %do.body15

do.body15:                                        ; preds = %if.then11, %do.body1, %do.body1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait, i32 noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body15, %entry
  %retval.0 = phi i1 [ %tobool6.not, %do.body15 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @completion_done(ptr noundef %x) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %x, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %do.body1

do.body1:                                         ; preds = %entry
  %wait = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait, i32 noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry
  %2 = xor i1 %tobool.not, true
  ret i1 %2
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_wait_for_common(ptr noundef %x, ptr nocapture noundef readonly %action, i32 noundef %timeout, i32 noundef %state) #4 section ".sched.text" align 64 {
entry:
  %wait = alloca %struct.swait_queue, align 4
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %x, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end85

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wait) #5
  %2 = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.swait_queue, ptr %wait, i32 0, i32 1, i32 1
  %4 = tail call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task1, align 8
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %wait, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %2, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %3, align 4
  %and.i107 = and i32 %state, 257
  %tobool.not.i = icmp eq i32 %and.i107, 0
  %and4.i = and i32 %state, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %wait9 = getelementptr inbounds %struct.completion, ptr %x, i32 0, i32 1
  %and = and i32 %state, 204
  %tobool12.not = icmp eq i32 %and, 0
  br label %do.body

do.body:                                          ; preds = %land.rhs76, %if.then
  %timeout.addr.0 = phi i32 [ %timeout, %if.then ], [ %call70, %land.rhs76 ]
  %11 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task1, align 8
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %do.body
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stack.i.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 256
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end3.i, !prof !40

signal_pending.exit.i:                            ; preds = %if.end.i
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %14, align 4
  %and1.i.i.i.i.i.i = and i32 %19, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %if.end, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %do.end79

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 116, i32 1
  %20 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %signal.i.i, align 4
  %22 = and i32 %21, 256
  %tobool7.not = icmp eq i32 %22, 0
  br i1 %tobool7.not, label %if.end, label %do.end79

if.end:                                           ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %do.body
  call void @__prepare_to_swait(ptr noundef %wait9, ptr noundef nonnull %wait) #5
  br i1 %tobool12.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b106 = load i1, ptr @do_wait_for_common.__already_done, align 1
  br i1 %.b106, label %__here, label %if.then20, !prof !40

if.then20:                                        ; preds = %land.rhs
  store i1 true, ptr @do_wait_for_common.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 9, ptr noundef null) #5
  br label %__here

__here:                                           ; preds = %if.then20, %land.rhs, %if.end
  %23 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task1, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@do_wait_for_common, %__here) to i32), ptr %task_state_change, align 4
  %26 = load ptr, ptr %task1, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %state, ptr %26, align 128
  call void @_raw_spin_unlock_irq(ptr noundef %wait9) #5
  %call70 = call i32 %action(i32 noundef %timeout.addr.0) #5, !callees !41
  call void @_raw_spin_lock_irq(ptr noundef %wait9) #5
  %28 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %x, align 4
  %tobool75.not = icmp eq i32 %29, 0
  br i1 %tobool75.not, label %land.rhs76, label %do.end79

land.rhs76:                                       ; preds = %__here
  %tobool77.not = icmp eq i32 %call70, 0
  br i1 %tobool77.not, label %do.end79, label %do.body

do.end79:                                         ; preds = %land.rhs76, %__here, %signal_pending_state.exit, %if.end3.i
  %timeout.addr.1 = phi i32 [ %call70, %__here ], [ 0, %land.rhs76 ], [ -512, %signal_pending_state.exit ], [ -512, %if.end3.i ]
  call void @__finish_swait(ptr noundef %wait9, ptr noundef nonnull %wait) #5
  %30 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %x, align 4
  %tobool82.not.not = icmp eq i32 %31, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wait) #5
  br i1 %tobool82.not.not, label %return, label %if.end85

if.end85:                                         ; preds = %do.end79, %entry
  %32 = phi i32 [ %31, %do.end79 ], [ %1, %entry ]
  %timeout.addr.2 = phi i32 [ %timeout.addr.1, %do.end79 ], [ %timeout, %entry ]
  %cmp.not = icmp eq i32 %32, -1
  br i1 %cmp.not, label %if.end89, label %if.then87

if.then87:                                        ; preds = %if.end85
  %dec = add i32 %32, -1
  %33 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dec, ptr %x, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end85
  %tobool90.not = icmp eq i32 %timeout.addr.2, 0
  %. = select i1 %tobool90.not, i32 1, i32 %timeout.addr.2
  br label %return

return:                                           ; preds = %if.end89, %do.end79
  %retval.1 = phi i32 [ %., %if.end89 ], [ %timeout.addr.1, %do.end79 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__prepare_to_swait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__finish_swait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab_complete, !1, !"__ksymtab_complete", i1 false, i1 false}
!1 = !{!"../kernel/sched/completion.c", i32 39, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../kernel/sched/completion.c", i32 61, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_complete_all, !7, !"__ksymtab_complete_all", i1 false, i1 false}
!7 = !{!"../kernel/sched/completion.c", i32 68, i32 1}
!8 = !{ptr @__ksymtab_wait_for_completion, !9, !"__ksymtab_wait_for_completion", i1 false, i1 false}
!9 = !{!"../kernel/sched/completion.c", i32 140, i32 1}
!10 = !{ptr @__ksymtab_wait_for_completion_timeout, !11, !"__ksymtab_wait_for_completion_timeout", i1 false, i1 false}
!11 = !{!"../kernel/sched/completion.c", i32 159, i32 1}
!12 = !{ptr @__ksymtab_wait_for_completion_io, !13, !"__ksymtab_wait_for_completion_io", i1 false, i1 false}
!13 = !{!"../kernel/sched/completion.c", i32 173, i32 1}
!14 = !{ptr @__ksymtab_wait_for_completion_io_timeout, !15, !"__ksymtab_wait_for_completion_io_timeout", i1 false, i1 false}
!15 = !{!"../kernel/sched/completion.c", i32 193, i32 1}
!16 = !{ptr @__ksymtab_wait_for_completion_interruptible, !17, !"__ksymtab_wait_for_completion_interruptible", i1 false, i1 false}
!17 = !{!"../kernel/sched/completion.c", i32 211, i32 1}
!18 = !{ptr @__ksymtab_wait_for_completion_interruptible_timeout, !19, !"__ksymtab_wait_for_completion_interruptible_timeout", i1 false, i1 false}
!19 = !{!"../kernel/sched/completion.c", i32 230, i32 1}
!20 = !{ptr @__ksymtab_wait_for_completion_killable, !21, !"__ksymtab_wait_for_completion_killable", i1 false, i1 false}
!21 = !{!"../kernel/sched/completion.c", i32 248, i32 1}
!22 = !{ptr @__ksymtab_wait_for_completion_killable_timeout, !23, !"__ksymtab_wait_for_completion_killable_timeout", i1 false, i1 false}
!23 = !{!"../kernel/sched/completion.c", i32 268, i32 1}
!24 = !{ptr @__ksymtab_try_wait_for_completion, !25, !"__ksymtab_try_wait_for_completion", i1 false, i1 false}
!25 = !{!"../kernel/sched/completion.c", i32 304, i32 1}
!26 = !{ptr @__ksymtab_completion_done, !27, !"__ksymtab_completion_done", i1 false, i1 false}
!27 = !{!"../kernel/sched/completion.c", i32 331, i32 1}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../kernel/sched/completion.c", i32 83, i32 4}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{ptr @io_schedule_timeout, ptr @schedule_timeout}
