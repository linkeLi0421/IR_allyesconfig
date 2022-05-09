; ModuleID = '/llk/IR_all_yes/init/init_task.c_pt.bc'
source_filename = "../init/init_task.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+init_task\22, \22a\22\09"
module asm "\09.weak\09__crc_init_task\09\09\09\09"
module asm "\09.long\09__crc_init_task\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_task:\09\09\09\09\09"
module asm "\09.asciz \09\22init_task\22\09\09\09\09\09"
module asm "__kstrtabns_init_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.task_group = type opaque
%struct.mm_struct = type { %struct.anon.2, [0 x i32] }
%struct.anon.2 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.upid = type { i32, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.sigset_t = type { [2 x i32] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.95 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@init_stack = external dso_local global [4096 x i32], align 4
@root_task_group = external dso_local global %struct.task_group, align 1
@init_mm = external dso_local global %struct.mm_struct, align 8
@init_struct_pid = external dso_local global %struct.pid, align 4
@init_signals = internal global { %struct.signal_struct, [280 x i8] } { %struct.signal_struct { %struct.refcount_struct zeroinitializer, %struct.atomic_t zeroinitializer, i32 1, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1404), ptr getelementptr (i8, ptr @init_task, i64 1404) }, %struct.wait_queue_head { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 64), ptr getelementptr (i8, ptr @init_signals, i64 64) } }, ptr null, %struct.sigpending { %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 76), ptr getelementptr (i8, ptr @init_signals, i64 76) }, %struct.sigset_t zeroinitializer }, %struct.hlist_head zeroinitializer, i32 0, i32 0, ptr null, i32 0, i32 0, ptr null, i8 0, i32 0, %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 128), ptr getelementptr (i8, ptr @init_signals, i64 128) }, %struct.hrtimer zeroinitializer, i64 0, [2 x %struct.cpu_itimer] zeroinitializer, %struct.thread_group_cputimer zeroinitializer, %struct.posix_cputimers { [3 x %struct.posix_cputimer_base] [%struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }, %struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }, %struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }], i32 0, i32 0 }, [4 x ptr] [ptr @init_struct_pid, ptr @init_struct_pid, ptr @init_struct_pid, ptr @init_struct_pid], ptr null, i32 0, ptr null, ptr null, %struct.seqlock_t zeroinitializer, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, %struct.prev_cputime { i64 0, i64 0, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } } }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.task_io_accounting zeroinitializer, i64 0, [16 x %struct.rlimit] [%struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit { i32 8388608, i32 -1 }, %struct.rlimit { i32 0, i32 -1 }, %struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit zeroinitializer, %struct.rlimit { i32 1024, i32 4096 }, %struct.rlimit { i32 8388608, i32 8388608 }, %struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit { i32 -1, i32 -1 }, %struct.rlimit zeroinitializer, %struct.rlimit { i32 819200, i32 819200 }, %struct.rlimit zeroinitializer, %struct.rlimit zeroinitializer, %struct.rlimit { i32 -1, i32 -1 }], %struct.pacct_struct zeroinitializer, ptr null, i32 0, ptr null, i8 0, i16 0, i16 0, ptr null, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 892), ptr getelementptr (i8, ptr @init_signals, i64 892) }, ptr getelementptr (i8, ptr @init_signals, i64 840), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 988), ptr getelementptr (i8, ptr @init_signals, i64 988) }, ptr getelementptr (i8, ptr @init_signals, i64 932), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } } }, [280 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"init_task.prev_cputime.lock\00", [36 x i8] zeroinitializer }, align 32
@init_cred = external dso_local global %struct.cred, align 4
@init_fs = external dso_local global %struct.fs_struct, align 1
@init_files = external dso_local global %struct.files_struct, align 1
@init_nsproxy = external dso_local global %struct.nsproxy, align 4
@init_sighand = internal global { %struct.sighand_struct, [348 x i8] } { %struct.sighand_struct { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.wait_queue_head { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @init_sighand, i64 92), ptr getelementptr (i8, ptr @init_sighand, i64 92) } }, [64 x %struct.k_sigaction] zeroinitializer }, [348 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init_task.alloc_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init_task.pi_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"init_task.mems_allowed_seq.seqcount\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"init_task.perf_event_mutex.wait_lock\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"init_task.perf_event_mutex\00", [37 x i8] zeroinitializer }, align 32
@init_task = dso_local global { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.95, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] } { i32 0, ptr @init_stack, %struct.refcount_struct { %struct.atomic_t { i32 2 } }, i32 2097152, i32 0, i32 0, %struct.__call_single_node zeroinitializer, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 120, i32 120, i32 120, i32 0, [56 x i8] undef, %struct.sched_entity { %struct.load_weight zeroinitializer, %struct.rb_node zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 148), ptr getelementptr (i8, ptr @init_task, i64 148) }, i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, i32 0, ptr null, ptr null, ptr null, i32 0, [36 x i8] undef, %struct.sched_avg zeroinitializer }, %struct.sched_rt_entity { %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 384), ptr getelementptr (i8, ptr @init_task, i64 384) }, i32 0, i32 0, i32 10, i16 0, i16 0, ptr null, ptr null, ptr null, ptr null }, %struct.sched_dl_entity zeroinitializer, ptr null, %struct.rb_node zeroinitializer, i32 0, i32 0, ptr @root_task_group, [2 x %struct.uclamp_se] zeroinitializer, [2 x %struct.uclamp_se] zeroinitializer, [116 x i8] undef, %struct.sched_statistics zeroinitializer, i32 0, i32 0, i32 4, ptr getelementptr (i8, ptr @init_task, i64 1044), ptr null, %struct.cpumask { [1 x i32] [i32 15] }, ptr null, i16 0, i16 0, i32 0, i8 0, i8 0, i32 -1, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1068), ptr getelementptr (i8, ptr @init_task, i64 1068) }, i32 0, i32 0, %union.rcu_special zeroinitializer, i8 0, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1092), ptr getelementptr (i8, ptr @init_task, i64 1092) }, %struct.sched_info zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1136), ptr getelementptr (i8, ptr @init_task, i64 1136) }, %struct.plist_node { i32 140, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1148), ptr getelementptr (i8, ptr @init_task, i64 1148) }, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1156), ptr getelementptr (i8, ptr @init_task, i64 1156) } }, %struct.rb_node zeroinitializer, ptr null, ptr @init_mm, %struct.vmacache zeroinitializer, %struct.task_rss_stat zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, [3 x i8] undef, i8 0, i8 0, i32 0, %struct.restart_block { i32 0, ptr @do_no_restart_syscall, %union.anon.49 zeroinitializer }, i32 0, i32 0, i32 0, ptr @init_task, ptr @init_task, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1324), ptr getelementptr (i8, ptr @init_task, i64 1324) }, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1332), ptr getelementptr (i8, ptr @init_task, i64 1332) }, ptr @init_task, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1344), ptr getelementptr (i8, ptr @init_task, i64 1344) }, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1352), ptr getelementptr (i8, ptr @init_task, i64 1352) }, ptr @init_struct_pid, [4 x %struct.hlist_node] zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1396), ptr getelementptr (i8, ptr @init_task, i64 1396) }, %struct.list_head { ptr getelementptr (i8, ptr @init_signals, i64 12), ptr getelementptr (i8, ptr @init_signals, i64 12) }, ptr null, ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, %struct.prev_cputime { i64 0, i64 0, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } } }, i32 0, i32 0, i64 0, i64 0, i32 0, i32 0, %struct.posix_cputimers { [3 x %struct.posix_cputimer_base] [%struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }, %struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }, %struct.posix_cputimer_base { i64 -1, %struct.timerqueue_head zeroinitializer }], i32 0, i32 0 }, ptr null, ptr @init_cred, ptr @init_cred, ptr null, [16 x i8] c"swapper\00\00\00\00\00\00\00\00\00", ptr null, %struct.sysv_sem zeroinitializer, %struct.sysv_shm zeroinitializer, i32 0, i32 0, ptr @init_fs, ptr @init_files, ptr null, ptr @init_nsproxy, ptr @init_signals, ptr @init_sighand, %struct.sigset_t zeroinitializer, %struct.sigset_t zeroinitializer, %struct.sigset_t zeroinitializer, %struct.sigpending { %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 1712), ptr getelementptr (i8, ptr @init_task, i64 1712) }, %struct.sigset_t zeroinitializer }, i32 0, i32 0, i32 0, ptr null, %struct.kuid_t { i32 -1 }, i32 -1, %struct.seccomp zeroinitializer, %struct.syscall_user_dispatch zeroinitializer, i64 0, i64 0, %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.wake_q_node zeroinitializer, %struct.rb_root_cached zeroinitializer, ptr null, ptr null, ptr null, i32 0, %struct.irqtrace_events zeroinitializer, i32 0, i64 0, i32 1, i32 0, i32 0, i64 -1, i32 0, i32 0, [48 x %struct.held_lock] zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, %struct.task_io_accounting zeroinitializer, i32 0, i64 0, i64 0, i64 0, %struct.nodemask_t zeroinitializer, %struct.seqcount_spinlock { %struct.seqcount { i32 0, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr getelementptr (i8, ptr @init_task, i64 1784) }, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, ptr null, %struct.mutex zeroinitializer, i32 0, [2 x ptr] zeroinitializer, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 4648), ptr getelementptr (i8, ptr @init_task, i64 4648) }, ptr getelementptr (i8, ptr @init_task, i64 4596), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @init_task, i64 4688), ptr getelementptr (i8, ptr @init_task, i64 4688) }, ptr null, i32 0, i32 0, %struct.tlbflush_unmap_batch zeroinitializer, %union.anon.95 zeroinitializer, ptr null, %struct.page_frag zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [32 x %struct.latency_record] zeroinitializer, i64 50000, i64 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i64 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, i32 0, %struct.kmap_ctrl zeroinitializer, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.llist_head zeroinitializer, %struct.thread_struct zeroinitializer, [84 x i8] undef }, align 128
@__kstrtab_init_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_task = external dso_local constant [0 x i8], align 1
@__ksymtab_init_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_task to i32), ptr @__kstrtab_init_task, ptr @__kstrtabns_init_task }, section "___ksymtab+init_task", align 4
@init_thread_info = dso_local local_unnamed_addr global %struct.thread_info { i32 0, i32 1, ptr @init_task, i32 0, i32 0, %struct.cpu_context_save zeroinitializer, i32 0, [16 x i8] zeroinitializer, [2 x i32] zeroinitializer, %union.fp_state zeroinitializer, %union.vfp_state zeroinitializer, i32 0 }, section ".data..init_thread_info", align 8
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"init_signals.wait_chldexit.lock\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"init_signals.prev_cputime.lock\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"init_signals.cred_guard_mutex.wait_lock\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"init_signals.cred_guard_mutex\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"init_signals.exec_update_lock.wait_lock\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"init_signals.exec_update_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init_sighand.siglock\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"init_sighand.signalfd_wqh.lock\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"init_signals\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 18, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 169, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"init_sighand\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 46, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 129, i32 16 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 132, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 162, i32 22 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 142, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 21, i32 19 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 43, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 28, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 29, i32 22 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 49, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [20 x i8] c"../init/init_task.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 50, i32 18 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_init_task, ptr @init_signals, ptr @.str, ptr @init_sighand, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_signals to i32), i32 1032, i32 1312, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sighand to i32), i32 1380, i32 1728, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_no_restart_syscall(ptr noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../init/init_task.c", i32 169, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../init/init_task.c", i32 129, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../init/init_task.c", i32 132, i32 13}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../init/init_task.c", i32 162, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../init/init_task.c", i32 142, i32 22}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @init_task, !12, !"init_task", i1 false, i1 false}
!12 = !{!"../init/init_task.c", i32 64, i32 20}
!13 = !{ptr @__ksymtab_init_task, !14, !"__ksymtab_init_task", i1 false, i1 false}
!14 = !{!"../init/init_task.c", i32 213, i32 1}
!15 = !{ptr @init_thread_info, !16, !"init_thread_info", i1 false, i1 false}
!16 = !{!"../init/init_task.c", i32 220, i32 20}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../init/init_task.c", i32 21, i32 19}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../init/init_task.c", i32 43, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../init/init_task.c", i32 28, i32 22}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../init/init_task.c", i32 29, i32 22}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @init_signals, !28, !"init_signals", i1 false, i1 false}
!28 = !{!"../init/init_task.c", i32 18, i32 29}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../init/init_task.c", i32 49, i32 13}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../init/init_task.c", i32 50, i32 18}
!33 = !{ptr @init_sighand, !34, !"init_sighand", i1 false, i1 false}
!34 = !{!"../init/init_task.c", i32 46, i32 30}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
