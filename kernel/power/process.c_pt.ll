; ModuleID = '/llk/IR_all_yes/kernel/power/process.c_pt.bc'
source_filename = "../kernel/power/process.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.97, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.97 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@freeze_timeout_msecs = dso_local local_unnamed_addr global i32 20000, section ".data..read_mostly", align 4
@pm_freezing = external dso_local local_unnamed_addr global i8, align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@freeze_processes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016Freezing user space processes ... \00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"freeze_processes\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/power/process.c\00", [41 x i8] zeroinitializer }, align 32
@freeze_processes._entry_ptr = internal global ptr @freeze_processes._entry, section ".printk_index", align 4
@freeze_processes._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cdone.\00", [24 x i8] zeroinitializer }, align 32
@freeze_processes._entry_ptr.5 = internal global ptr @freeze_processes._entry.3, section ".printk_index", align 4
@freeze_processes._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@freeze_processes._entry_ptr.8 = internal global ptr @freeze_processes._entry.6, section ".printk_index", align 4
@freeze_kernel_threads._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Freezing remaining freezable tasks ... \00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"freeze_kernel_threads\00", [42 x i8] zeroinitializer }, align 32
@freeze_kernel_threads._entry_ptr = internal global ptr @freeze_kernel_threads._entry, section ".printk_index", align 4
@pm_nosig_freezing = external dso_local local_unnamed_addr global i8, align 1
@freeze_kernel_threads._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@freeze_kernel_threads._entry_ptr.12 = internal global ptr @freeze_kernel_threads._entry.11, section ".printk_index", align 4
@freeze_kernel_threads._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.10, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@freeze_kernel_threads._entry_ptr.14 = internal global ptr @freeze_kernel_threads._entry.13, section ".printk_index", align 4
@thaw_processes.___tp_str = internal global ptr @.str.15, section "__tracepoint_str", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"thaw_processes\00", [17 x i8] zeroinitializer }, align 32
@thaw_processes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.15, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016Restarting tasks ... \00", [40 x i8] zeroinitializer }, align 32
@thaw_processes._entry_ptr = internal global ptr @thaw_processes._entry, section ".printk_index", align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 128
@thaw_processes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@thaw_processes._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cdone.\0A\00", [23 x i8] zeroinitializer }, align 32
@thaw_processes._entry_ptr.20 = internal global ptr @thaw_processes._entry.18, section ".printk_index", align 4
@thaw_processes.___tp_str.21 = internal global ptr @.str.15, section "__tracepoint_str", align 4
@thaw_kernel_threads._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Restarting kernel threads ... \00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"thaw_kernel_threads\00", [44 x i8] zeroinitializer }, align 32
@thaw_kernel_threads._entry_ptr = internal global ptr @thaw_kernel_threads._entry, section ".printk_index", align 4
@thaw_kernel_threads.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@thaw_kernel_threads._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.23, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@thaw_kernel_threads._entry_ptr.25 = internal global ptr @thaw_kernel_threads._entry.24, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@try_to_freeze_tasks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@try_to_freeze_tasks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.26, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"try_to_freeze_tasks\00", [44 x i8] zeroinitializer }, align 32
@try_to_freeze_tasks._entry_ptr = internal global ptr @try_to_freeze_tasks._entry, section ".printk_index", align 4
@try_to_freeze_tasks._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013Freezing of tasks %s after %d.%03d seconds (%d tasks refusing to freeze, wq_busy=%d):\0A\00", [39 x i8] zeroinitializer }, align 32
@try_to_freeze_tasks._entry_ptr.29 = internal global ptr @try_to_freeze_tasks._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aborted\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@pm_debug_messages_on = external dso_local local_unnamed_addr global i8, align 1
@try_to_freeze_tasks.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@try_to_freeze_tasks._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\01c(elapsed %d.%03d seconds) \00", [35 x i8] zeroinitializer }, align 32
@try_to_freeze_tasks._entry_ptr.35 = internal global ptr @try_to_freeze_tasks._entry.33, section ".printk_index", align 4
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/power.h\00", [35 x i8] zeroinitializer }, align 32
@trace_suspend_resume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 138, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 143, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 145, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 174, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 179, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 181, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 194, i32 23 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 202, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 210, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 223, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 232, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 244, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 89, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 90, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private constant [26 x i8] c"../kernel/power/process.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 109, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [32 x i8] c"../include/trace/events/power.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 226, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 108, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @freeze_kernel_threads._entry, ptr @freeze_kernel_threads._entry.11, ptr @freeze_kernel_threads._entry.13, ptr @freeze_kernel_threads._entry_ptr, ptr @freeze_kernel_threads._entry_ptr.12, ptr @freeze_kernel_threads._entry_ptr.14, ptr @freeze_processes._entry, ptr @freeze_processes._entry.3, ptr @freeze_processes._entry.6, ptr @freeze_processes._entry_ptr, ptr @freeze_processes._entry_ptr.5, ptr @freeze_processes._entry_ptr.8, ptr @thaw_kernel_threads._entry, ptr @thaw_kernel_threads._entry.24, ptr @thaw_kernel_threads._entry_ptr, ptr @thaw_kernel_threads._entry_ptr.25, ptr @thaw_processes.___tp_str, ptr @thaw_processes.___tp_str.21, ptr @thaw_processes._entry, ptr @thaw_processes._entry.18, ptr @thaw_processes._entry_ptr, ptr @thaw_processes._entry_ptr.20, ptr @try_to_freeze_tasks._entry, ptr @try_to_freeze_tasks._entry.27, ptr @try_to_freeze_tasks._entry.33, ptr @try_to_freeze_tasks._entry_ptr, ptr @try_to_freeze_tasks._entry_ptr.29, ptr @try_to_freeze_tasks._entry_ptr.35, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_processes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_processes._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_processes._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_kernel_threads._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_kernel_threads._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_kernel_threads._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thaw_processes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thaw_processes._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thaw_kernel_threads._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thaw_kernel_threads._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_to_freeze_tasks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_to_freeze_tasks._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @try_to_freeze_tasks._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freeze_processes() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__usermodehelper_disable(i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, -2147483648
  store i32 %or, ptr %flags, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pm_freezing to i32))
  %6 = load i8, ptr @pm_freezing, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @system_freezing_cnt, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @system_freezing_cnt, ptr nonnull @system_freezing_cnt, i32 1, ptr nonnull elementtype(i32) @system_freezing_cnt) #7, !srcloc !90
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @pm_wakeup_clear(i32 noundef 0) #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @pm_freezing to i32))
  store i8 1, ptr @pm_freezing, align 1
  %call6 = tail call fastcc i32 @try_to_freeze_tasks(i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end4.do.end17_crit_edge

if.end4.do.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__usermodehelper_set_disable_depth(i32 noundef 2) #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then8, %if.end4.do.end17_crit_edge
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.end33, label %do.body25, !prof !91

do.body25:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/process.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #7, !srcloc !92
  unreachable

do.end33:                                         ; preds = %do.end17
  br i1 %tobool7.not, label %if.else.i, label %do.end33.if.then40_crit_edge

do.end33.if.then40_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

if.else.i:                                        ; preds = %do.end33
  %12 = load i32, ptr @freeze_timeout_msecs, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %12) #7
  %call36 = tail call zeroext i1 @oom_killer_disable(i32 noundef %call2.i) #7
  br i1 %call36, label %if.else.i.cleanup_crit_edge, label %if.else.i.if.then40_crit_edge

if.else.i.if.then40_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then40:                                        ; preds = %if.else.i.if.then40_crit_edge, %do.end33.if.then40_crit_edge
  %error.0.ph = phi i32 [ -16, %if.else.i.if.then40_crit_edge ], [ %call6, %do.end33.if.then40_crit_edge ]
  tail call void @thaw_processes()
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %error.0.ph, %if.then40 ], [ 0, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usermodehelper_disable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_clear(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_to_freeze_tasks(i1 noundef zeroext %user_only) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @freeze_timeout_msecs, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #7
  %add = add i32 %call2.i, %0
  br i1 %user_only, label %entry.while.cond.preheader_crit_edge, label %if.then

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @freeze_workqueues_begin() #7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %entry.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %if.end60, %while.cond.preheader
  %sleep_usecs.0 = phi i32 [ %spec.select213, %if.end60 ], [ 1000, %while.cond.preheader ]
  %wq_busy.0.off0 = phi i1 [ %wq_busy.1.off0, %if.end60 ], [ false, %while.cond.preheader ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr233 = getelementptr i8, ptr %2, i32 -1136
  %cmp.not234 = icmp eq ptr %add.ptr233, @init_task
  br i1 %cmp.not234, label %while.cond.for.end44_crit_edge, label %while.cond.do.body3_crit_edge

while.cond.do.body3_crit_edge:                    ; preds = %while.cond
  br label %do.body3

while.cond.for.end44_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %do.end13.for.cond.loopexit_crit_edge
  %todo.1.lcssa = phi i32 [ %todo.0235, %do.end13.for.cond.loopexit_crit_edge ], [ %todo.2, %for.inc.for.cond.loopexit_crit_edge ]
  %3 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %5, align 16
  %add.ptr = getelementptr i8, ptr %4, i32 -1136
  %cmp.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp.not, label %for.cond.loopexit.for.end44_crit_edge, label %for.cond.loopexit.do.body3_crit_edge

for.cond.loopexit.do.body3_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3

for.cond.loopexit.for.end44_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end44

do.body3:                                         ; preds = %for.cond.loopexit.do.body3_crit_edge, %while.cond.do.body3_crit_edge
  %5 = phi ptr [ %4, %for.cond.loopexit.do.body3_crit_edge ], [ %2, %while.cond.do.body3_crit_edge ]
  %todo.0235 = phi i32 [ %todo.1.lcssa, %for.cond.loopexit.do.body3_crit_edge ], [ 0, %while.cond.do.body3_crit_edge ]
  %call4 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %do.body3.do.end13_crit_edge

do.body3.do.end13_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.lhs.true:                                    ; preds = %do.body3
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b212 = load i1, ptr @try_to_freeze_tasks.__warned, align 1
  br i1 %.b212, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @try_to_freeze_tasks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 52, ptr noundef nonnull @.str.17) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %do.body3.do.end13_crit_edge
  %signal = getelementptr i8, ptr %5, i32 544
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn211226 = load volatile ptr, ptr %thread_head, align 4
  %cmp25.not229 = icmp eq ptr %.pn211226, %thread_head
  br i1 %cmp25.not229, label %do.end13.for.cond.loopexit_crit_edge, label %do.end13.for.body26_crit_edge

do.end13.for.body26_crit_edge:                    ; preds = %do.end13
  br label %for.body26

do.end13.for.cond.loopexit_crit_edge:             ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body26:                                       ; preds = %for.inc.for.body26_crit_edge, %do.end13.for.body26_crit_edge
  %.pn211231 = phi ptr [ %.pn211, %for.inc.for.body26_crit_edge ], [ %.pn211226, %do.end13.for.body26_crit_edge ]
  %todo.1230 = phi i32 [ %todo.2, %for.inc.for.body26_crit_edge ], [ %todo.0235, %do.end13.for.body26_crit_edge ]
  %p.0232 = getelementptr i8, ptr %.pn211231, i32 -1404
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cmp28 = icmp eq ptr %p.0232, %12
  br i1 %cmp28, label %for.body26.for.inc_crit_edge, label %lor.lhs.false

for.body26.for.inc_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body26
  %call29 = tail call zeroext i1 @freeze_task(ptr noundef %p.0232) #7
  br i1 %call29, label %if.end31, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end31:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  %flags.i = getelementptr i8, ptr %.pn211231, i32 -1392
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i214 = lshr i32 %14, 30
  %and.i214.lobit = and i32 %and.i214, 1
  %15 = xor i32 %and.i214.lobit, 1
  %spec.select = add i32 %15, %todo.1230
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %lor.lhs.false.for.inc_crit_edge, %for.body26.for.inc_crit_edge
  %todo.2 = phi i32 [ %todo.1230, %for.body26.for.inc_crit_edge ], [ %todo.1230, %lor.lhs.false.for.inc_crit_edge ], [ %spec.select, %if.end31 ]
  %16 = ptrtoint ptr %.pn211231 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn211 = load volatile ptr, ptr %.pn211231, align 4
  %17 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signal, align 16
  %thread_head24 = getelementptr inbounds %struct.signal_struct, ptr %18, i32 0, i32 3
  %cmp25.not = icmp eq ptr %.pn211, %thread_head24
  br i1 %cmp25.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body26_crit_edge

for.inc.for.body26_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.end44:                                        ; preds = %for.cond.loopexit.for.end44_crit_edge, %while.cond.for.end44_crit_edge
  %todo.0.lcssa = phi i32 [ 0, %while.cond.for.end44_crit_edge ], [ %todo.1.lcssa, %for.cond.loopexit.for.end44_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #7
  br i1 %user_only, label %for.end44.if.end51_crit_edge, label %if.then46

for.end44.if.end51_crit_edge:                     ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then46:                                        ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call zeroext i1 @freeze_workqueues_busy() #7
  %conv = zext i1 %call47 to i32
  %add50 = add i32 %todo.0.lcssa, %conv
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %for.end44.if.end51_crit_edge
  %wq_busy.1.off0 = phi i1 [ %wq_busy.0.off0, %for.end44.if.end51_crit_edge ], [ %call47, %if.then46 ]
  %todo.3 = phi i32 [ %todo.0.lcssa, %for.end44.if.end51_crit_edge ], [ %add50, %if.then46 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %todo.3)
  %tobool52.not = icmp eq i32 %todo.3, 0
  br i1 %tobool52.not, label %if.end51.while.end_crit_edge, label %lor.lhs.false53

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

lor.lhs.false53:                                  ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp54 = icmp slt i32 %sub, 0
  br i1 %cmp54, label %lor.lhs.false53.while.end_crit_edge, label %if.end57

lor.lhs.false53.while.end_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end57:                                         ; preds = %lor.lhs.false53
  %call58 = tail call zeroext i1 @pm_wakeup_pending() #7
  br i1 %call58, label %if.end57.while.end_crit_edge, label %if.end60

if.end57.while.end_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end60:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %div = sdiv i32 %sleep_usecs.0, 2
  tail call void @usleep_range_state(i32 noundef %div, i32 noundef %sleep_usecs.0, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %sleep_usecs.0)
  %cmp61 = icmp slt i32 %sleep_usecs.0, 8000
  %mul = zext i1 %cmp61 to i32
  %spec.select213 = shl i32 %sleep_usecs.0, %mul
  br label %while.cond

while.end:                                        ; preds = %if.end57.while.end_crit_edge, %lor.lhs.false53.while.end_crit_edge, %if.end51.while.end_crit_edge
  %wakeup.0.off0 = phi i1 [ true, %if.end57.while.end_crit_edge ], [ false, %if.end51.while.end_crit_edge ], [ false, %lor.lhs.false53.while.end_crit_edge ]
  %call.i215 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #7
  %sub66 = sub i64 %call.i215, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub66)
  %cmp8.i.i = icmp slt i64 %sub66, 0
  %20 = tail call i64 @llvm.abs.i64(i64 %sub66, i1 false) #7
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %20) #11, !srcloc !94
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %20, i64 %21, i32 0) #11, !srcloc !95
  %asmresult10.i.i.i = extractvalue { i64, i32 } %22, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv68 = trunc i64 %cond213.i.i to i32
  br i1 %tobool52.not, label %do.end167, label %do.end73

do.end73:                                         ; preds = %while.end
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  %cond = select i1 %wakeup.0.off0, ptr @.str.30, ptr @.str.31
  %div82 = udiv i32 %conv68, 1000
  %rem = urem i32 %conv68, 1000
  %conv84 = zext i1 %wq_busy.1.off0 to i32
  %sub85 = sub nuw i32 %todo.3, %conv84
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull %cond, i32 noundef %div82, i32 noundef %rem, i32 noundef %sub85, i32 noundef %conv84) #10
  br i1 %wq_busy.1.off0, label %if.then90, label %do.end73.if.end91_crit_edge

do.end73.if.end91_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then90:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @show_all_workqueues() #7
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %do.end73.if.end91_crit_edge
  br i1 %wakeup.0.off0, label %lor.lhs.false93, label %if.end91.if.then96_crit_edge

if.end91.if.then96_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

lor.lhs.false93:                                  ; preds = %if.end91
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pm_debug_messages_on to i32))
  %23 = load i8, ptr @pm_debug_messages_on, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool94.not = icmp eq i8 %23, 0
  br i1 %tobool94.not, label %lor.lhs.false93.if.end172_crit_edge, label %lor.lhs.false93.if.then96_crit_edge

lor.lhs.false93.if.then96_crit_edge:              ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then96

lor.lhs.false93.if.end172_crit_edge:              ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

if.then96:                                        ; preds = %lor.lhs.false93.if.then96_crit_edge, %if.end91.if.then96_crit_edge
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %24 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr106244 = getelementptr i8, ptr %24, i32 -1136
  %cmp107.not245 = icmp eq ptr %add.ptr106244, @init_task
  br i1 %cmp107.not245, label %if.then96.for.end163_crit_edge, label %if.then96.do.body110_crit_edge

if.then96.do.body110_crit_edge:                   ; preds = %if.then96
  br label %do.body110

if.then96.for.end163_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end163

for.cond97.loopexit:                              ; preds = %for.inc152.for.cond97.loopexit_crit_edge, %do.end121.for.cond97.loopexit_crit_edge
  %25 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %27, align 16
  %add.ptr106 = getelementptr i8, ptr %26, i32 -1136
  %cmp107.not = icmp eq ptr %add.ptr106, @init_task
  br i1 %cmp107.not, label %for.cond97.loopexit.for.end163_crit_edge, label %for.cond97.loopexit.do.body110_crit_edge

for.cond97.loopexit.do.body110_crit_edge:         ; preds = %for.cond97.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body110

for.cond97.loopexit.for.end163_crit_edge:         ; preds = %for.cond97.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end163

do.body110:                                       ; preds = %for.cond97.loopexit.do.body110_crit_edge, %if.then96.do.body110_crit_edge
  %27 = phi ptr [ %26, %for.cond97.loopexit.do.body110_crit_edge ], [ %24, %if.then96.do.body110_crit_edge ]
  %call111 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %land.lhs.true113, label %do.body110.do.end121_crit_edge

do.body110.do.end121_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end121

land.lhs.true113:                                 ; preds = %do.body110
  %call114 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %land.lhs.true113.do.end121_crit_edge, label %land.lhs.true116

land.lhs.true113.do.end121_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end121

land.lhs.true116:                                 ; preds = %land.lhs.true113
  %.b207210 = load i1, ptr @try_to_freeze_tasks.__warned.32, align 1
  br i1 %.b207210, label %land.lhs.true116.do.end121_crit_edge, label %if.then118

land.lhs.true116.do.end121_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end121

if.then118:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @try_to_freeze_tasks.__warned.32, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 101, ptr noundef nonnull @.str.17) #7
  br label %do.end121

do.end121:                                        ; preds = %if.then118, %land.lhs.true116.do.end121_crit_edge, %land.lhs.true113.do.end121_crit_edge, %do.body110.do.end121_crit_edge
  %signal127 = getelementptr i8, ptr %27, i32 544
  %28 = ptrtoint ptr %signal127 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %signal127, align 16
  %thread_head128 = getelementptr inbounds %struct.signal_struct, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %thread_head128 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn238 = load volatile ptr, ptr %thread_head128, align 4
  %cmp136.not241 = icmp eq ptr %.pn238, %thread_head128
  br i1 %cmp136.not241, label %do.end121.for.cond97.loopexit_crit_edge, label %do.end121.for.body138_crit_edge

do.end121.for.body138_crit_edge:                  ; preds = %do.end121
  br label %for.body138

do.end121.for.cond97.loopexit_crit_edge:          ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond97.loopexit

for.body138:                                      ; preds = %for.inc152.for.body138_crit_edge, %do.end121.for.body138_crit_edge
  %.pn242 = phi ptr [ %.pn, %for.inc152.for.body138_crit_edge ], [ %.pn238, %do.end121.for.body138_crit_edge ]
  %p.1243 = getelementptr i8, ptr %.pn242, i32 -1404
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i216 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i216 to ptr
  %task140 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task140, align 8
  %cmp141.not = icmp eq ptr %p.1243, %34
  br i1 %cmp141.not, label %for.body138.for.inc152_crit_edge, label %land.lhs.true143

for.body138.for.inc152_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc152

land.lhs.true143:                                 ; preds = %for.body138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  %flags.i217 = getelementptr i8, ptr %.pn242, i32 -1392
  %35 = ptrtoint ptr %flags.i217 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i217, align 4
  %and.i218 = and i32 %36, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i218)
  %tobool.i219.not = icmp eq i32 %and.i218, 0
  br i1 %tobool.i219.not, label %land.lhs.true145, label %land.lhs.true143.for.inc152_crit_edge

land.lhs.true143.for.inc152_crit_edge:            ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc152

land.lhs.true145:                                 ; preds = %land.lhs.true143
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %37 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %land.lhs.true145.for.inc152_crit_edge, label %freezing.exit, !prof !91

land.lhs.true145.for.inc152_crit_edge:            ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc152

freezing.exit:                                    ; preds = %land.lhs.true145
  %call4.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %p.1243) #7
  br i1 %call4.i, label %land.lhs.true148, label %freezing.exit.for.inc152_crit_edge

freezing.exit.for.inc152_crit_edge:               ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc152

land.lhs.true148:                                 ; preds = %freezing.exit
  %38 = ptrtoint ptr %flags.i217 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i217, align 4
  %and.i223 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i223)
  %tobool.i224.not = icmp eq i32 %and.i223, 0
  br i1 %tobool.i224.not, label %if.then150, label %land.lhs.true148.for.inc152_crit_edge

land.lhs.true148.for.inc152_crit_edge:            ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc152

if.then150:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sched_show_task(ptr noundef %p.1243) #7
  br label %for.inc152

for.inc152:                                       ; preds = %if.then150, %land.lhs.true148.for.inc152_crit_edge, %freezing.exit.for.inc152_crit_edge, %land.lhs.true145.for.inc152_crit_edge, %land.lhs.true143.for.inc152_crit_edge, %for.body138.for.inc152_crit_edge
  %40 = ptrtoint ptr %.pn242 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load volatile ptr, ptr %.pn242, align 4
  %41 = ptrtoint ptr %signal127 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %signal127, align 16
  %thread_head135 = getelementptr inbounds %struct.signal_struct, ptr %42, i32 0, i32 3
  %cmp136.not = icmp eq ptr %.pn, %thread_head135
  br i1 %cmp136.not, label %for.inc152.for.cond97.loopexit_crit_edge, label %for.inc152.for.body138_crit_edge

for.inc152.for.body138_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body138

for.inc152.for.cond97.loopexit_crit_edge:         ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond97.loopexit

for.end163:                                       ; preds = %for.cond97.loopexit.for.end163_crit_edge, %if.then96.for.end163_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #7
  br label %if.end172

do.end167:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv68.frozen = freeze i32 %conv68
  %div169 = udiv i32 %conv68.frozen, 1000
  %43 = mul i32 %div169, 1000
  %rem170.decomposed = sub i32 %conv68.frozen, %43
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %div169, i32 noundef %rem170.decomposed) #10
  br label %if.end172

if.end172:                                        ; preds = %do.end167, %for.end163, %lor.lhs.false93.if.end172_crit_edge
  %cond174 = phi i32 [ -16, %lor.lhs.false93.if.end172_crit_edge ], [ -16, %for.end163 ], [ 0, %do.end167 ]
  ret i32 %cond174
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__usermodehelper_set_disable_depth(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @oom_killer_disable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thaw_processes() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %4 = load ptr, ptr @thaw_processes.___tp_str, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %4, i1 noundef zeroext true)
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pm_freezing to i32))
  %5 = load i8, ptr @pm_freezing, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @system_freezing_cnt, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @system_freezing_cnt, ptr nonnull @system_freezing_cnt, i32 1, ptr nonnull elementtype(i32) @system_freezing_cnt) #7, !srcloc !96
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @pm_freezing to i32))
  store i8 0, ptr @pm_freezing, align 1
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @pm_nosig_freezing to i32))
  store i8 0, ptr @pm_nosig_freezing, align 1
  tail call void @oom_killer_enable() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  tail call void @__usermodehelper_set_disable_depth(i32 noundef 1) #7
  tail call void @thaw_workqueues() #7
  tail call void @cpuset_wait_for_hotplug() #7
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr129 = getelementptr i8, ptr %7, i32 -1136
  %cmp.not130 = icmp eq ptr %add.ptr129, @init_task
  br i1 %cmp.not130, label %if.end.for.end68_crit_edge, label %if.end.do.body8_crit_edge

if.end.do.body8_crit_edge:                        ; preds = %if.end
  br label %do.body8

if.end.for.end68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end68

for.cond.loopexit:                                ; preds = %if.end51.for.cond.loopexit_crit_edge, %do.end18.for.cond.loopexit_crit_edge
  %8 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %10, align 16
  %add.ptr = getelementptr i8, ptr %9, i32 -1136
  %cmp.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp.not, label %for.cond.loopexit.for.end68_crit_edge, label %for.cond.loopexit.do.body8_crit_edge

for.cond.loopexit.do.body8_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

for.cond.loopexit.for.end68_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end68

do.body8:                                         ; preds = %for.cond.loopexit.do.body8_crit_edge, %if.end.do.body8_crit_edge
  %10 = phi ptr [ %9, %for.cond.loopexit.do.body8_crit_edge ], [ %7, %if.end.do.body8_crit_edge ]
  %call9 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %do.body8.do.end18_crit_edge

do.body8.do.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true:                                    ; preds = %do.body8
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b122 = load i1, ptr @thaw_processes.__warned, align 1
  br i1 %.b122, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @thaw_processes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 210, ptr noundef nonnull @.str.17) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %do.body8.do.end18_crit_edge
  %signal = getelementptr i8, ptr %10, i32 544
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn123 = load volatile ptr, ptr %thread_head, align 4
  %cmp30.not126 = icmp eq ptr %.pn123, %thread_head
  br i1 %cmp30.not126, label %do.end18.for.cond.loopexit_crit_edge, label %do.end18.for.body31_crit_edge

do.end18.for.body31_crit_edge:                    ; preds = %do.end18
  br label %for.body31

do.end18.for.cond.loopexit_crit_edge:             ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body31:                                       ; preds = %if.end51.for.body31_crit_edge, %do.end18.for.body31_crit_edge
  %.pn127 = phi ptr [ %.pn, %if.end51.for.body31_crit_edge ], [ %.pn123, %do.end18.for.body31_crit_edge ]
  %p.0128 = getelementptr i8, ptr %.pn127, i32 -1404
  %cmp32.not = icmp eq ptr %p.0128, %3
  br i1 %cmp32.not, label %for.body31.if.end51_crit_edge, label %land.rhs

for.body31.if.end51_crit_edge:                    ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

land.rhs:                                         ; preds = %for.body31
  %flags = getelementptr i8, ptr %.pn127, i32 -1392
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool33 = icmp slt i32 %15, 0
  br i1 %tobool33, label %do.end45, label %land.rhs.if.end51_crit_edge, !prof !97

land.rhs.if.end51_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end45:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 212, i32 noundef 9, ptr noundef null) #7
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %land.rhs.if.end51_crit_edge, %for.body31.if.end51_crit_edge
  tail call void @__thaw_task(ptr noundef %p.0128) #7
  %16 = ptrtoint ptr %.pn127 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load volatile ptr, ptr %.pn127, align 4
  %17 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signal, align 16
  %thread_head29 = getelementptr inbounds %struct.signal_struct, ptr %18, i32 0, i32 3
  %cmp30.not = icmp eq ptr %.pn, %thread_head29
  br i1 %cmp30.not, label %if.end51.for.cond.loopexit_crit_edge, label %if.end51.for.body31_crit_edge

if.end51.for.body31_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31

if.end51.for.cond.loopexit_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.end68:                                        ; preds = %for.cond.loopexit.for.end68_crit_edge, %if.end.for.end68_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #7
  %flags70 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool72.not = icmp sgt i32 %20, -1
  br i1 %tobool72.not, label %do.end90, label %for.end68.if.end96_crit_edge, !prof !97

for.end68.if.end96_crit_edge:                     ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

do.end90:                                         ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 217, i32 noundef 9, ptr noundef null) #7
  br label %if.end96

if.end96:                                         ; preds = %do.end90, %for.end68.if.end96_crit_edge
  %21 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags70, align 4
  %and105 = and i32 %22, 2147483647
  store i32 %and105, ptr %flags70, align 4
  tail call void @__usermodehelper_set_disable_depth(i32 noundef 0) #7
  tail call void @schedule() #7
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  %23 = load ptr, ptr @thaw_processes.___tp_str.21, align 4
  tail call fastcc void @trace_suspend_resume(ptr noundef %23, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freeze_kernel_threads() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @pm_nosig_freezing to i32))
  store i8 1, ptr @pm_nosig_freezing, align 1
  %call1 = tail call fastcc i32 @try_to_freeze_tasks(i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end4, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end4, %entry.do.end9_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.end25, label %do.body17, !prof !91

do.body17:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/process.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #7, !srcloc !98
  unreachable

do.end25:                                         ; preds = %do.end9
  br i1 %tobool.not, label %do.end25.if.end28_crit_edge, label %if.then27

do.end25.if.end28_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @thaw_kernel_threads()
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.end25.if.end28_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thaw_kernel_threads() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @pm_nosig_freezing to i32))
  store i8 0, ptr @pm_nosig_freezing, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  tail call void @thaw_workqueues() #7
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr57 = getelementptr i8, ptr %0, i32 -1136
  %cmp.not58 = icmp eq ptr %add.ptr57, @init_task
  br i1 %cmp.not58, label %entry.for.end39_crit_edge, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  br label %do.body6

entry.for.end39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %do.end13.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %3, align 16
  %add.ptr = getelementptr i8, ptr %2, i32 -1136
  %cmp.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp.not, label %for.cond.loopexit.for.end39_crit_edge, label %for.cond.loopexit.do.body6_crit_edge

for.cond.loopexit.do.body6_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

for.cond.loopexit.for.end39_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39

do.body6:                                         ; preds = %for.cond.loopexit.do.body6_crit_edge, %entry.do.body6_crit_edge
  %3 = phi ptr [ %2, %for.cond.loopexit.do.body6_crit_edge ], [ %0, %entry.do.body6_crit_edge ]
  %call7 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body6.do.end13_crit_edge

do.body6.do.end13_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.lhs.true:                                    ; preds = %do.body6
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b50 = load i1, ptr @thaw_kernel_threads.__warned, align 1
  br i1 %.b50, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @thaw_kernel_threads.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 237, ptr noundef nonnull @.str.17) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %do.body6.do.end13_crit_edge
  %signal = getelementptr i8, ptr %3, i32 544
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn51 = load volatile ptr, ptr %thread_head, align 4
  %cmp25.not54 = icmp eq ptr %.pn51, %thread_head
  br i1 %cmp25.not54, label %do.end13.for.cond.loopexit_crit_edge, label %do.end13.for.body26_crit_edge

do.end13.for.body26_crit_edge:                    ; preds = %do.end13
  br label %for.body26

do.end13.for.cond.loopexit_crit_edge:             ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.body26:                                       ; preds = %for.inc.for.body26_crit_edge, %do.end13.for.body26_crit_edge
  %.pn55 = phi ptr [ %.pn, %for.inc.for.body26_crit_edge ], [ %.pn51, %do.end13.for.body26_crit_edge ]
  %flags = getelementptr i8, ptr %.pn55, i32 -1392
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %for.body26.for.inc_crit_edge, label %if.then28

for.body26.for.inc_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then28:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  %p.056 = getelementptr i8, ptr %.pn55, i32 -1404
  tail call void @__thaw_task(ptr noundef %p.056) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body26.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load volatile ptr, ptr %.pn55, align 4
  %10 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal, align 16
  %thread_head24 = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 3
  %cmp25.not = icmp eq ptr %.pn, %thread_head24
  br i1 %cmp25.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body26_crit_edge

for.inc.for.body26_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.end39:                                        ; preds = %for.cond.loopexit.for.end39_crit_edge, %entry.for.end39_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #7
  tail call void @schedule() #7
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_suspend_resume(ptr noundef %action, i1 noundef zeroext %start) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), ptr blockaddress(@trace_suspend_resume, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !99

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !91

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !100
  %call43 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %action, i32 noundef 0, i1 noundef zeroext %start) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !91

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_suspend_resume.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_suspend_resume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 246, ptr noundef nonnull @.str.37) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oom_killer_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_workqueues() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuset_wait_for_hotplug() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__thaw_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @freeze_workqueues_begin() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freeze_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freeze_workqueues_busy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_all_workqueues() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_show_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !53, !55, !57, !58, !59, !61, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !76, !78}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @freeze_timeout_msecs, !1, !"freeze_timeout_msecs", i1 false, i1 false}
!1 = !{!"../kernel/power/process.c", i32 29, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/power/process.c", i32 138, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @freeze_processes._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @freeze_processes._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/power/process.c", i32 143, i32 3}
!10 = !{ptr @freeze_processes._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @freeze_processes._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/power/process.c", i32 145, i32 2}
!14 = !{ptr @freeze_processes._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @freeze_processes._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/power/process.c", i32 174, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @freeze_kernel_threads._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @freeze_kernel_threads._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @freeze_kernel_threads._entry.11, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../kernel/power/process.c", i32 179, i32 3}
!23 = !{ptr @freeze_kernel_threads._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @freeze_kernel_threads._entry.13, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../kernel/power/process.c", i32 181, i32 2}
!26 = !{ptr @freeze_kernel_threads._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/power/process.c", i32 194, i32 23}
!29 = !{ptr @thaw_processes.___tp_str, !28, !"___tp_str", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/power/process.c", i32 202, i32 2}
!32 = !{ptr @thaw_processes._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @thaw_processes._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../kernel/power/process.c", i32 210, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/power/process.c", i32 223, i32 2}
!39 = !{ptr @thaw_processes._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @thaw_processes._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @thaw_processes.___tp_str.21, !42, !"___tp_str", i1 false, i1 false}
!42 = !{!"../kernel/power/process.c", i32 224, i32 23}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/power/process.c", i32 232, i32 2}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @thaw_kernel_threads._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @thaw_kernel_threads._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../kernel/power/process.c", i32 237, i32 2}
!50 = !{ptr @thaw_kernel_threads._entry.24, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../kernel/power/process.c", i32 244, i32 2}
!52 = !{ptr @thaw_kernel_threads._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../kernel/power/process.c", i32 52, i32 3}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/power/process.c", i32 89, i32 3}
!57 = !{ptr @try_to_freeze_tasks._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @try_to_freeze_tasks._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/power/process.c", i32 90, i32 3}
!61 = !{ptr @try_to_freeze_tasks._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @try_to_freeze_tasks._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../kernel/power/process.c", i32 101, i32 4}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../kernel/power/process.c", i32 109, i32 3}
!69 = !{ptr @try_to_freeze_tasks._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @try_to_freeze_tasks._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/trace/events/power.h", i32 226, i32 1}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!75 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
!90 = !{i64 2148239156, i64 2148239182, i64 2148239211, i64 2148239245, i64 2148239276, i64 2148239299}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2156341410, i64 2156341897, i64 2156341447, i64 2156341503, i64 2156341537, i64 2156341561, i64 2156341602, i64 2156341623, i64 2156341651, i64 2156341685}
!93 = !{i64 2154829648}
!94 = !{i64 1143859, i64 1143886}
!95 = !{i64 1144554, i64 1144581, i64 1144614, i64 1144635, i64 1144662, i64 1144688}
!96 = !{i64 2148241621, i64 2148241647, i64 2148241676, i64 2148241710, i64 2148241741, i64 2148241764}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2156347330, i64 2156347817, i64 2156347367, i64 2156347423, i64 2156347457, i64 2156347481, i64 2156347522, i64 2156347543, i64 2156347571, i64 2156347605}
!99 = !{i64 2148720971, i64 2148720976, i64 2148720989, i64 2148721033, i64 2148721067, i64 2148721088}
!100 = !{i64 2155902078}
!101 = !{i64 2155902305}
!102 = !{i64 2149302037}
!103 = !{i64 2149303073}
