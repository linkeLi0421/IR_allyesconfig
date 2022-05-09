; ModuleID = '/llk/IR_all_yes/kernel/acct.c_pt.bc'
source_filename = "../kernel/acct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon, %struct.trace_event, ptr, ptr, %union.anon.3, ptr, i32, i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.3 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.bsd_acct_struct = type { %struct.fs_pin, %struct.atomic_t, %struct.callback_head, %struct.mutex, i32, i32, ptr, ptr, %struct.work_struct, %struct.completion }
%struct.fs_pin = type { %struct.wait_queue_head, i32, %struct.hlist_node, %struct.hlist_node, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.13 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.14, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.acct_v3 = type { i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [16 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.43 = type { %struct.callback_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.98, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.99, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.100, ptr, %struct.address_space, %struct.list_head, %union.anon.101, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.98 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.99 = type { %struct.callback_head }
%union.anon.100 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.101 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }

@acct_parm = dso_local global { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 2, i32 30], [20 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_acct\00", [17 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__acct = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 1, ptr @types__acct, ptr @args__acct, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__acct, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__acct, i64 20) }, ptr @event_enter__acct, ptr @event_exit__acct }, align 4
@event_enter__acct = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__acct, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__acct = internal global ptr @event_enter__acct, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_acct\00", [18 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__acct = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__acct, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__acct = internal global ptr @event_exit__acct, section "_ftrace_events", align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_acct\00", [23 x i8] zeroinitializer }, align 32
@types__acct = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@args__acct = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.4], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__acct = internal global ptr @__syscall_meta__acct, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@acct_on_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @acct_on_mutex, i64 52), ptr getelementptr (i8, ptr @acct_on_mutex, i64 52) }, ptr @acct_on_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"acct_on_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acct_on_mutex\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@acct_on.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&acct->lock\00", [20 x i8] zeroinitializer }, align 32
@acct_on.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&acct->work)\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_fs_pin.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&p->wait\00", [23 x i8] zeroinitializer }, align 32
@do_acct_process.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kernel/acct.c\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@check_free_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.11, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Process accounting paused\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_free_space\00", [47 x i8] zeroinitializer }, align 32
@check_free_space._entry_ptr = internal global ptr @check_free_space._entry, section ".printk_index", align 4
@check_free_space._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.11, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Process accounting resumed\0A\00", [34 x i8] zeroinitializer }, align 32
@check_free_space._entry_ptr.17 = internal global ptr @check_free_space._entry.15, section ".printk_index", align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"acct_parm\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 73, i32 5 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"event_enter__acct\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"event_exit__acct\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"types__acct\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"args__acct\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 272, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"acct_on_mutex\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 259, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 244, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 245, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [26 x i8] c"../include/linux/fs_pin.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 16, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 506, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 116, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private constant [17 x i8] c"../kernel/acct.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 123, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 723, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 34, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 87, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 695, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__event_enter__acct, ptr @__event_exit__acct, ptr @__p_syscall_meta__acct, ptr @__syscall_meta__acct, ptr @check_free_space._entry, ptr @check_free_space._entry.15, ptr @check_free_space._entry_ptr, ptr @check_free_space._entry_ptr.17, ptr @event_enter__acct, ptr @event_exit__acct, ptr @acct_parm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__acct, ptr @args__acct, ptr @.str.3, ptr @.str.4, ptr @acct_on_mutex, ptr @.str.5, ptr @.str.6, ptr @acct_on.__key, ptr @.str.7, ptr @acct_on.__key.8, ptr @.str.9, ptr @init_fs_pin.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @init_completion.__key, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acct_parm to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__acct to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__acct to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__acct to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__acct to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acct_on_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acct_on.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acct_on.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_fs_pin.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_free_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_free_space._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_acct = dso_local alias i32 (ptr), ptr @__se_sys_acct

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_acct(i32 noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %name to ptr
  %call.i = tail call zeroext i1 @capable(i32 noundef 20) #11
  br i1 %call.i, label %if.end.i, label %entry.__do_sys_acct.exit_crit_edge

entry.__do_sys_acct.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_acct.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %name)
  %tobool.not.i = icmp eq i32 %name, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %call2.i = tail call ptr @getname(ptr noundef nonnull %0) #11
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.thread.i, label %if.end6.i

cleanup.thread.i:                                 ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call2.i to i32
  br label %__do_sys_acct.exit

if.end6.i:                                        ; preds = %if.then1.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @acct_on_mutex, i32 noundef 0) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %call1.i16.i = tail call ptr @task_active_pid_ns(ptr noundef %5) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 296) #14
  %tobool.not.i17.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i17.i, label %if.end6.i.cleanup.i_crit_edge, label %if.end.i.i

if.end6.i.cleanup.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i.i:                                       ; preds = %if.end6.i
  %call3.i.i = tail call ptr @file_open_name(ptr noundef %call2.i, i32 noundef 132097, i16 noundef zeroext 0) #11
  %cmp.i.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %7 = ptrtoint ptr %call3.i.i to i32
  br label %cleanup.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %call3.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %12)
  %cmp.i18.i = icmp eq i16 %12, -32768
  br i1 %cmp.i18.i, label %if.end12.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %call11.i.i = tail call i32 @filp_close(ptr noundef %call3.i.i, ptr noundef null) #11
  br label %cleanup.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %call3.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_mode.i.i, align 8
  %and13.i.i = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end17.i.i

if.then15.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %call16.i.i = tail call i32 @filp_close(ptr noundef %call3.i.i, ptr noundef null) #11
  br label %cleanup.i

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %call3.i.i, i32 0, i32 1
  %call18.i.i = tail call ptr @mnt_clone_internal(ptr noundef %f_path.i.i) #11
  %cmp.i113.i.i = icmp ugt ptr %call18.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113.i.i, label %if.then20.i.i, label %if.end23.i.i

if.then20.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %call21.i.i = tail call i32 @filp_close(ptr noundef %call3.i.i, ptr noundef null) #11
  %15 = ptrtoint ptr %call18.i.i to i32
  br label %cleanup.i

if.end23.i.i:                                     ; preds = %if.end17.i.i
  %call24.i.i = tail call i32 @__mnt_want_write(ptr noundef %call18.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end28.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mntput(ptr noundef %call18.i.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %call27.i.i = tail call i32 @filp_close(ptr noundef %call3.i.i, ptr noundef null) #11
  br label %cleanup.i

if.end28.i.i:                                     ; preds = %if.end23.i.i
  %16 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_path.i.i, align 8
  store ptr %call18.i.i, ptr %f_path.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #11
  %18 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %count.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_fs_pin.__key) #11
  %s_list.i.i.i = getelementptr inbounds %struct.fs_pin, ptr %call7.i.i.i.i, i32 0, i32 2
  %kill1.i.i.i = getelementptr inbounds %struct.fs_pin, ptr %call7.i.i.i.i, i32 0, i32 4
  %19 = call ptr @memset(ptr %s_list.i.i.i, i32 0, i32 16)
  %20 = ptrtoint ptr %kill1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @acct_pin_kill, ptr %kill1.i.i.i, align 8
  %file33.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %file33.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call3.i.i, ptr %file33.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %needcheck.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %needcheck.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %needcheck.i.i, align 8
  %ns34.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %ns34.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i16.i, ptr %ns34.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @acct_on.__key) #11
  %work.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work.i.i, i32 noundef 0) #11
  %25 = ptrtoint ptr %work.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @acct_on.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry39.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %entry39.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry39.i.i, ptr %entry39.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 8, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry39.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 8, i32 2
  %28 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @close_work, ptr %func.i.i, align 8
  %done.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %done.i.i, align 8
  %wait.i.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %call7.i.i.i.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 1) #11
  tail call void @pin_insert(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %17) #11
  %30 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %if.end28.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end28.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end28.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end28.i.i.rcu_read_lock.exit.i.i_crit_edge
  %bacct.i.i = getelementptr inbounds %struct.pid_namespace, ptr %call1.i16.i, i32 0, i32 7
  %call.i112.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bacct.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  %34 = ptrtoint ptr %call7.i.i.i.i to i32
  tail call void @llvm.prefetch.p0(ptr %bacct.i.i, i32 1, i32 3, i32 1) #11
  %35 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %34, ptr %bacct.i.i) #11, !srcloc !68
  %asmresult.i.i.i = extractvalue { i32, i32 } %35, 0
  %36 = inttoptr i32 %asmresult.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #11
  tail call void @pin_kill(ptr noundef %36) #11
  tail call void @__mnt_drop_write(ptr noundef %17) #11
  tail call void @mntput(ptr noundef %17) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %rcu_read_lock.exit.i.i, %if.then26.i.i, %if.then20.i.i, %if.then15.i.i, %if.then10.i.i, %if.then5.i.i, %if.end6.i.cleanup.i_crit_edge
  %retval.0.i.i = phi i32 [ %7, %if.then5.i.i ], [ %15, %if.then20.i.i ], [ %call24.i.i, %if.then26.i.i ], [ 0, %rcu_read_lock.exit.i.i ], [ -5, %if.then15.i.i ], [ -13, %if.then10.i.i ], [ -12, %if.end6.i.cleanup.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @acct_on_mutex) #11
  tail call void @putname(ptr noundef %call2.i) #11
  br label %__do_sys_acct.exit

if.else.i:                                        ; preds = %if.end.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.else.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.else.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.else.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.else.i.rcu_read_lock.exit.i_crit_edge
  %41 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i, align 8
  %call9.i = tail call ptr @task_active_pid_ns(ptr noundef %44) #11
  %bacct.i = getelementptr inbounds %struct.pid_namespace, ptr %call9.i, i32 0, i32 7
  %45 = ptrtoint ptr %bacct.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bacct.i, align 4
  tail call void @pin_kill(ptr noundef %46) #11
  br label %__do_sys_acct.exit

__do_sys_acct.exit:                               ; preds = %rcu_read_lock.exit.i, %cleanup.i, %cleanup.thread.i, %entry.__do_sys_acct.exit_crit_edge
  %retval.1.i = phi i32 [ -1, %entry.__do_sys_acct.exit_crit_edge ], [ %1, %cleanup.thread.i ], [ %retval.0.i.i, %cleanup.i ], [ 0, %rcu_read_lock.exit.i ]
  ret i32 %retval.1.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @acct_exit_ns(ptr nocapture noundef readonly %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %bacct = getelementptr inbounds %struct.pid_namespace, ptr %ns, i32 0, i32 7
  %4 = ptrtoint ptr %bacct to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bacct, align 4
  tail call void @pin_kill(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pin_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @acct_collect(i32 noundef %exitcode, i32 noundef %group_dead) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %pacct1 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group_dead)
  %tobool.not = icmp eq i32 %group_dead, 0
  br i1 %tobool.not, label %if.end.thread, label %land.lhs.true

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %sighand90 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 112
  %8 = ptrtoint ptr %sighand90 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sighand90, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #11
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %10 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm, align 8
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.if.then18_crit_edge, label %if.then

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@acct_collect, %if.then.i.i)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !70

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %11, i1 noundef zeroext false) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then
  %mmap_lock.i = getelementptr inbounds %struct.anon.13, ptr %11, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@acct_collect, %if.then.i3.i)) #11
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !70

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %11, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %mm10 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %mm10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mm10, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %vma.095 = load ptr, ptr %15, align 4
  %tobool11.not96 = icmp eq ptr %vma.095, null
  br i1 %tobool11.not96, label %mmap_read_lock.exit.while.end_crit_edge, label %mmap_read_lock.exit.while.body_crit_edge

mmap_read_lock.exit.while.body_crit_edge:         ; preds = %mmap_read_lock.exit
  br label %while.body

mmap_read_lock.exit.while.end_crit_edge:          ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %mmap_read_lock.exit.while.body_crit_edge
  %vma.098 = phi ptr [ %vma.0, %while.body.while.body_crit_edge ], [ %vma.095, %mmap_read_lock.exit.while.body_crit_edge ]
  %vsize.097 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %mmap_read_lock.exit.while.body_crit_edge ]
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.098, i32 0, i32 1
  %17 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_end, align 4
  %19 = ptrtoint ptr %vma.098 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vma.098, align 4
  %sub = add i32 %18, %vsize.097
  %add = sub i32 %sub, %20
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.098, i32 0, i32 2
  %21 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %21)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool11.not = icmp eq ptr %vma.0, null
  br i1 %tobool11.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %mmap_read_lock.exit.while.end_crit_edge
  %vsize.0.lcssa = phi i32 [ 0, %mmap_read_lock.exit.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@acct_collect, %if.then.i.i87)) #11
          to label %if.end [label %if.then.i.i87], !srcloc !70

if.then.i.i87:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %15, i1 noundef zeroext false) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i.i87, %while.end
  %mmap_lock.i88 = getelementptr inbounds %struct.anon.13, ptr %15, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i88) #11
  br label %if.then18

if.then18:                                        ; preds = %if.end, %land.lhs.true.if.then18_crit_edge
  %vsize.194 = phi i32 [ %vsize.0.lcssa, %if.end ], [ 0, %land.lhs.true.if.then18_crit_edge ]
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 112
  %24 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %25) #11
  %div86 = lshr i32 %vsize.194, 10
  %ac_mem = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 52, i32 2
  %26 = ptrtoint ptr %ac_mem to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div86, ptr %ac_mem, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end.thread
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %exit_signal.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 59
  %29 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i = icmp sgt i32 %30, -1
  br i1 %cmp.i, label %if.then23, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then23:                                        ; preds = %if.end19
  %ac_exitcode = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 52, i32 1
  %31 = ptrtoint ptr %ac_exitcode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %exitcode, ptr %ac_exitcode, align 4
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.then23.if.end29_crit_edge, label %if.then27

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %pacct1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pacct1, align 8
  %or = or i32 %37, 1
  store i32 %or, ptr %pacct1, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then23.if.end29_crit_edge, %if.end19.if.end29_crit_edge
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %flags32 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags32, align 4
  %and33 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end29.if.end38_crit_edge, label %if.then35

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %pacct1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pacct1, align 8
  %or37 = or i32 %43, 2
  store i32 %or37, ptr %pacct1, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end29.if.end38_crit_edge
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %flags41 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags41, align 4
  %and42 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end38.if.end47_crit_edge, label %if.then44

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %pacct1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pacct1, align 8
  %or46 = or i32 %49, 8
  store i32 %or46, ptr %pacct1, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end38.if.end47_crit_edge
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %flags50 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags50, align 4
  %and51 = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end47.if.end56_crit_edge, label %if.then53

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %pacct1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pacct1, align 8
  %or55 = or i32 %55, 16
  store i32 %or55, ptr %pacct1, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end47.if.end56_crit_edge
  %56 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task, align 8
  %utime1.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 86
  %58 = ptrtoint ptr %utime1.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %utime1.i, align 8
  %stime2.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 87
  %60 = ptrtoint ptr %stime2.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %stime2.i, align 32
  %ac_utime = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 52, i32 3
  %62 = ptrtoint ptr %ac_utime to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ac_utime, align 8
  %add60 = add i64 %63, %59
  store i64 %add60, ptr %ac_utime, align 8
  %ac_stime = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 52, i32 4
  %64 = ptrtoint ptr %ac_stime to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ac_stime, align 8
  %add61 = add i64 %65, %61
  store i64 %add61, ptr %ac_stime, align 8
  %66 = load ptr, ptr %task, align 8
  %min_flt = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 94
  %67 = ptrtoint ptr %min_flt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %min_flt, align 8
  %ac_minflt = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 52, i32 5
  %69 = ptrtoint ptr %ac_minflt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ac_minflt, align 8
  %add64 = add i32 %70, %68
  store i32 %add64, ptr %ac_minflt, align 8
  %71 = load ptr, ptr %task, align 8
  %maj_flt = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 95
  %72 = ptrtoint ptr %maj_flt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %maj_flt, align 4
  %ac_majflt = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 52, i32 6
  %74 = ptrtoint ptr %ac_majflt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ac_majflt, align 4
  %add67 = add i32 %75, %73
  store i32 %add67, ptr %ac_majflt, align 4
  %76 = load ptr, ptr %task, align 8
  %sighand70 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 112
  %77 = ptrtoint ptr %sighand70 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sighand70, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %78) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @acct_process() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call ptr @task_active_pid_ns(ptr noundef %3) #11
  %cmp.not14 = icmp eq ptr %call1, null
  br i1 %cmp.not14, label %entry.if.end6_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ns.015 = phi ptr [ %7, %for.inc.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %bacct = getelementptr inbounds %struct.pid_namespace, ptr %ns.015, i32 0, i32 7
  %4 = ptrtoint ptr %bacct to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bacct, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.inc, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.inc:                                          ; preds = %for.body
  %parent = getelementptr inbounds %struct.pid_namespace, ptr %ns.015, i32 0, i32 6
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %for.inc.if.end6_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %ns.addr.012.i = phi ptr [ %32, %if.end.i.for.body.i_crit_edge ], [ %ns.015, %for.body.for.body.i_crit_edge ]
  %bacct.i.i = getelementptr inbounds %struct.pid_namespace, ptr %ns.addr.012.i, i32 0, i32 7
  br label %again.i.i

again.i.i:                                        ; preds = %again.i.i.backedge, %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !71
  %8 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %again.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

again.i.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %again.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %again.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %again.i.i.rcu_read_lock.exit.i.i_crit_edge
  %12 = ptrtoint ptr %bacct.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %bacct.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %call.i35.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i35.i.i, label %if.then.i.i.acct_get.exit.thread.i_crit_edge, label %land.lhs.true.i38.i.i

if.then.i.i.acct_get.exit.thread.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %acct_get.exit.thread.i

land.lhs.true.i38.i.i:                            ; preds = %if.then.i.i
  %call1.i36.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36.i.i)
  %tobool.not.i37.i.i = icmp eq i32 %call1.i36.i.i, 0
  br i1 %tobool.not.i37.i.i, label %land.lhs.true.i38.i.i.acct_get.exit.thread.i_crit_edge, label %land.lhs.true2.i40.i.i

land.lhs.true.i38.i.i.acct_get.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %acct_get.exit.thread.i

land.lhs.true2.i40.i.i:                           ; preds = %land.lhs.true.i38.i.i
  %.b4.i39.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39.i.i, label %land.lhs.true2.i40.i.i.acct_get.exit.thread.i_crit_edge, label %if.then.i41.i.i

land.lhs.true2.i40.i.i.acct_get.exit.thread.i_crit_edge: ; preds = %land.lhs.true2.i40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %acct_get.exit.thread.i

if.then.i41.i.i:                                  ; preds = %land.lhs.true2.i40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #11
  br label %acct_get.exit.thread.i

acct_get.exit.thread.i:                           ; preds = %if.then.i41.i.i, %land.lhs.true2.i40.i.i.acct_get.exit.thread.i_crit_edge, %land.lhs.true.i38.i.i.acct_get.exit.thread.i_crit_edge, %if.then.i.i.acct_get.exit.thread.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %14 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i42.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i42.i.i to ptr
  %preempt_count.i.i.i.i43.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i43.i.i, align 4
  %sub.i.i.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i43.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %if.end.i

if.end.i.i:                                       ; preds = %rcu_read_lock.exit.i.i
  %count.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %13, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 0, i32 1, ptr elementtype(i32) %count.i.i) #11, !srcloc !74
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then8.i.i, label %if.end18.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %call.i44.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i44.i.i, label %if.then8.i.i.rcu_read_unlock.exit54.i.i_crit_edge, label %land.lhs.true.i47.i.i

if.then8.i.i.rcu_read_unlock.exit54.i.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit54.i.i

land.lhs.true.i47.i.i:                            ; preds = %if.then8.i.i
  %call1.i45.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45.i.i)
  %tobool.not.i46.i.i = icmp eq i32 %call1.i45.i.i, 0
  br i1 %tobool.not.i46.i.i, label %land.lhs.true.i47.i.i.rcu_read_unlock.exit54.i.i_crit_edge, label %land.lhs.true2.i49.i.i

land.lhs.true.i47.i.i.rcu_read_unlock.exit54.i.i_crit_edge: ; preds = %land.lhs.true.i47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit54.i.i

land.lhs.true2.i49.i.i:                           ; preds = %land.lhs.true.i47.i.i
  %.b4.i48.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48.i.i, label %land.lhs.true2.i49.i.i.rcu_read_unlock.exit54.i.i_crit_edge, label %if.then.i50.i.i

land.lhs.true2.i49.i.i.rcu_read_unlock.exit54.i.i_crit_edge: ; preds = %land.lhs.true2.i49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit54.i.i

if.then.i50.i.i:                                  ; preds = %land.lhs.true2.i49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #11
  br label %rcu_read_unlock.exit54.i.i

rcu_read_unlock.exit54.i.i:                       ; preds = %if.then.i50.i.i, %land.lhs.true2.i49.i.i.rcu_read_unlock.exit54.i.i_crit_edge, %land.lhs.true.i47.i.i.rcu_read_unlock.exit54.i.i_crit_edge, %if.then8.i.i.rcu_read_unlock.exit54.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %19 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i51.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i51.i.i to ptr
  %preempt_count.i.i.i.i52.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i52.i.i, align 4
  %sub.i.i.i53.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i53.i.i, ptr %preempt_count.i.i.i.i52.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !75
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !76
  br label %again.i.i.backedge

if.end18.i.i:                                     ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  %call.i55.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i55.i.i, label %if.end18.i.i.rcu_read_unlock.exit65.i.i_crit_edge, label %land.lhs.true.i58.i.i

if.end18.i.i.rcu_read_unlock.exit65.i.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit65.i.i

land.lhs.true.i58.i.i:                            ; preds = %if.end18.i.i
  %call1.i56.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i.i)
  %tobool.not.i57.i.i = icmp eq i32 %call1.i56.i.i, 0
  br i1 %tobool.not.i57.i.i, label %land.lhs.true.i58.i.i.rcu_read_unlock.exit65.i.i_crit_edge, label %land.lhs.true2.i60.i.i

land.lhs.true.i58.i.i.rcu_read_unlock.exit65.i.i_crit_edge: ; preds = %land.lhs.true.i58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit65.i.i

land.lhs.true2.i60.i.i:                           ; preds = %land.lhs.true.i58.i.i
  %.b4.i59.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59.i.i, label %land.lhs.true2.i60.i.i.rcu_read_unlock.exit65.i.i_crit_edge, label %if.then.i61.i.i

land.lhs.true2.i60.i.i.rcu_read_unlock.exit65.i.i_crit_edge: ; preds = %land.lhs.true2.i60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit65.i.i

if.then.i61.i.i:                                  ; preds = %land.lhs.true2.i60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #11
  br label %rcu_read_unlock.exit65.i.i

rcu_read_unlock.exit65.i.i:                       ; preds = %if.then.i61.i.i, %land.lhs.true2.i60.i.i.rcu_read_unlock.exit65.i.i_crit_edge, %land.lhs.true.i58.i.i.rcu_read_unlock.exit65.i.i_crit_edge, %if.end18.i.i.rcu_read_unlock.exit65.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %23 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i62.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i62.i.i to ptr
  %preempt_count.i.i.i.i63.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i63.i.i, align 4
  %sub.i.i.i64.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i64.i.i, ptr %preempt_count.i.i.i.i63.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %lock.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %13, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #11
  %27 = ptrtoint ptr %bacct.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %bacct.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %13, %28
  br i1 %cmp.not.i.i, label %if.then.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %rcu_read_unlock.exit65.i.i
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #11, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i66.not.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i66.not.i.i, label %do.end.i.i.i, label %if.then25.i.i.again.i.i.backedge_crit_edge

if.then25.i.i.again.i.i.backedge_crit_edge:       ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %again.i.i.backedge

do.end.i.i.i:                                     ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rcu.i.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %13, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 80 to ptr)) #11
  br label %again.i.i.backedge

again.i.i.backedge:                               ; preds = %do.end.i.i.i, %if.then25.i.i.again.i.i.backedge_crit_edge, %rcu_read_unlock.exit54.i.i
  br label %again.i.i

if.then.i:                                        ; preds = %rcu_read_unlock.exit65.i.i
  tail call fastcc void @do_acct_process(ptr noundef nonnull %13) #11
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #11
  %call.i.i.i8.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #11
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #11, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.not.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.not.i, label %do.end.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %rcu.i.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %13, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 80 to ptr)) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i.i, %if.then.i.if.end.i_crit_edge, %acct_get.exit.thread.i
  %parent.i = getelementptr inbounds %struct.pid_namespace, ptr %ns.addr.012.i, i32 0, i32 6
  %31 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end.i.if.end6_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.if.end6_crit_edge, %for.inc.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_name(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mnt_clone_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mnt_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acct_pin_kill(ptr noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.bsd_acct_struct, ptr %pin, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  tail call fastcc void @do_acct_process(ptr noundef %pin)
  %work = getelementptr inbounds %struct.bsd_acct_struct, ptr %pin, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #11
  %done = getelementptr inbounds %struct.bsd_acct_struct, ptr %pin, i32 0, i32 9
  tail call void @wait_for_completion(ptr noundef %done) #11
  %ns = getelementptr inbounds %struct.bsd_acct_struct, ptr %pin, i32 0, i32 7
  %1 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns, align 4
  %bacct = getelementptr inbounds %struct.pid_namespace, ptr %2, i32 0, i32 7
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bacct, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !81
  %3 = ptrtoint ptr %pin to i32
  tail call void @llvm.prefetch.p0(ptr %bacct, i32 1, i32 3, i32 1) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %4 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %bacct, i32 %3, i32 0) #11, !srcloc !82
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @pin_remove(ptr noundef %pin) #11
  %count.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %pin, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #11, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  %tobool.not.i27 = icmp eq ptr %pin, null
  %or.cond.i = or i1 %tobool.not.i27, %cmp.i.i.i.i
  br i1 %or.cond.i, label %__cmpxchg.exit.acct_put.exit_crit_edge, label %do.end.i

__cmpxchg.exit.acct_put.exit_crit_edge:           ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %acct_put.exit

do.end.i:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rcu.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %pin, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 80 to ptr)) #11
  br label %acct_put.exit

acct_put.exit:                                    ; preds = %do.end.i, %__cmpxchg.exit.acct_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @close_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %file1 = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file1, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_op, align 4
  %flush = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %5(ptr noundef %1, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__fput_sync(ptr noundef %1) #11
  %done = getelementptr i8, ptr %work, i32 44
  tail call void @complete(ptr noundef %done) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pin_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_acct_process(ptr nocapture noundef %acct) unnamed_addr #0 align 64 {
entry:
  %sbuf.i = alloca %struct.kstatfs, align 8
  %ac = alloca %struct.acct_v3, align 4
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ac) #11
  %0 = call ptr @memset(ptr %ac, i32 255, i32 64)
  %file1 = getelementptr inbounds %struct.bsd_acct_struct, ptr %acct, i32 0, i32 6
  %1 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %file1, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 111
  %7 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %8, i32 0, i32 51, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 111
  %15 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %signal, align 16
  %arrayidx = getelementptr %struct.signal_struct, ptr %16, i32 0, i32 51, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %arrayidx, align 8
  %f_cred = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 12
  %18 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_cred, align 8
  %call3 = tail call ptr @override_creds(ptr noundef %19) #11
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sbuf.i) #11
  %20 = call ptr @memset(ptr %sbuf.i, i32 255, i32 88)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %needcheck.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %acct, i32 0, i32 5
  %22 = ptrtoint ptr %needcheck.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %needcheck.i, align 4
  %sub.i = sub i32 %21, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.check_free_space.exit_crit_edge, label %if.end.i

entry.check_free_space.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_free_space.exit

if.end.i:                                         ; preds = %entry
  %24 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %file1, align 4
  %f_path.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 1
  %call.i52 = call i32 @vfs_statfs(ptr noundef %f_path.i, ptr noundef nonnull %sbuf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.end2.i, label %if.end.i.check_free_space.exit_crit_edge

if.end.i.check_free_space.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_free_space.exit

if.end2.i:                                        ; preds = %if.end.i
  %active.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %acct, i32 0, i32 4
  %26 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not.i = icmp eq i32 %27, 0
  %f_blocks201.i = getelementptr inbounds %struct.kstatfs, ptr %sbuf.i, i32 0, i32 2
  %28 = ptrtoint ptr %f_blocks201.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %f_blocks201.i, align 8
  br i1 %tobool3.not.i, label %if.end423.i, label %if.end191.i

if.end191.i:                                      ; preds = %if.end2.i
  %30 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @acct_parm, i32 0, i32 1), align 4
  %conv.i = sext i32 %30 to i64
  %mul.i = mul i64 %29, %conv.i
  %31 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i32 0) #15, !srcloc !84
  %asmresult.i.i = extractvalue { i64, i32 } %31, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %31, 1
  %32 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #15, !srcloc !85
  %asmresult10.i.i = extractvalue { i64, i32 } %32, 0
  %suspend.0.i = lshr i64 %asmresult10.i.i, 6
  %f_bavail.i = getelementptr inbounds %struct.kstatfs, ptr %sbuf.i, i32 0, i32 4
  %33 = ptrtoint ptr %f_bavail.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %f_bavail.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %suspend.0.i)
  %cmp193.not.i = icmp ugt i64 %34, %suspend.0.i
  br i1 %cmp193.not.i, label %if.end191.i.if.end436.i_crit_edge, label %if.end191.i.if.end436.sink.split.i_crit_edge

if.end191.i.if.end436.sink.split.i_crit_edge:     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end436.sink.split.i

if.end191.i.if.end436.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end436.i

if.end423.i:                                      ; preds = %if.end2.i
  %35 = load i32, ptr @acct_parm, align 4
  %conv202.i = sext i32 %35 to i64
  %mul203.i = mul i64 %29, %conv202.i
  %36 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul203.i, i32 0) #15, !srcloc !84
  %asmresult.i607.i = extractvalue { i64, i32 } %36, 0
  %asmresult4.i608.i = extractvalue { i64, i32 } %36, 1
  %37 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul203.i, i64 %asmresult.i607.i, i32 %asmresult4.i608.i) #15, !srcloc !85
  %asmresult10.i609.i = extractvalue { i64, i32 } %37, 0
  %resume.0.i = lshr i64 %asmresult10.i609.i, 6
  %f_bavail425.i = getelementptr inbounds %struct.kstatfs, ptr %sbuf.i, i32 0, i32 4
  %38 = ptrtoint ptr %f_bavail425.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %f_bavail425.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %resume.0.i)
  %cmp426.not.i = icmp ult i64 %39, %resume.0.i
  br i1 %cmp426.not.i, label %if.end423.i.if.end436.i_crit_edge, label %if.end423.i.if.end436.sink.split.i_crit_edge

if.end423.i.if.end436.sink.split.i_crit_edge:     ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end436.sink.split.i

if.end423.i.if.end436.i_crit_edge:                ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end436.i

if.end436.sink.split.i:                           ; preds = %if.end423.i.if.end436.sink.split.i_crit_edge, %if.end191.i.if.end436.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.end191.i.if.end436.sink.split.i_crit_edge ], [ 1, %if.end423.i.if.end436.sink.split.i_crit_edge ]
  %.str.16.sink.i = phi ptr [ @.str.13, %if.end191.i.if.end436.sink.split.i_crit_edge ], [ @.str.16, %if.end423.i.if.end436.sink.split.i_crit_edge ]
  %40 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink.i, ptr %active.i, align 4
  %call434.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink.i) #16
  br label %if.end436.i

if.end436.i:                                      ; preds = %if.end436.sink.split.i, %if.end423.i.if.end436.i_crit_edge, %if.end191.i.if.end436.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %42 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @acct_parm, i32 0, i32 2), align 4
  %mul437.i = mul i32 %42, 100
  %add438.i = add i32 %mul437.i, %41
  %43 = ptrtoint ptr %needcheck.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add438.i, ptr %needcheck.i, align 4
  br label %check_free_space.exit

check_free_space.exit:                            ; preds = %if.end436.i, %if.end.i.check_free_space.exit_crit_edge, %entry.check_free_space.exit_crit_edge
  %active440.i = getelementptr inbounds %struct.bsd_acct_struct, ptr %acct, i32 0, i32 4
  %44 = ptrtoint ptr %active440.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %active440.i, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sbuf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not = icmp eq i32 %45, 0
  br i1 %tobool.not, label %check_free_space.exit.out_crit_edge, label %if.end

check_free_space.exit.out_crit_edge:              ; preds = %check_free_space.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %check_free_space.exit
  %46 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i54 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i54 to ptr
  %task.i55 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i55 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i55, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 111
  %50 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %signal.i, align 16
  %52 = call ptr @memset(ptr %ac, i32 0, i32 64)
  %ac_version.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 1
  %53 = ptrtoint ptr %ac_version.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -125, ptr %ac_version.i, align 1
  %ac_comm.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 18
  %54 = load ptr, ptr %task.i55, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 101
  %call5.i = call i32 @strlcpy(ptr noundef %ac_comm.i, ptr noundef %comm.i, i32 noundef 16) #11
  %call.i.i = call i64 @ktime_get() #11
  %55 = ptrtoint ptr %task.i55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i55, align 8
  %group_leader.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 75
  %57 = ptrtoint ptr %group_leader.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %group_leader.i, align 4
  %start_time.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 92
  %59 = ptrtoint ptr %start_time.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %start_time.i, align 8
  %sub.i56 = sub i64 %call.i.i, %60
  %61 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i56) #15, !srcloc !86
  %62 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i56, i64 %61, i32 0) #15, !srcloc !85
  %asmresult10.i.i.i = extractvalue { i64, i32 } %62, 0
  %x.addr.0.i.i = lshr i64 %asmresult10.i.i.i, 23
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %asmresult10.i.i.i)
  %cmp.i.i = icmp ult i64 %asmresult10.i.i.i, 8388608
  br i1 %cmp.i.i, label %if.end.if.end190.i_crit_edge, label %if.end.while.body.i.i_crit_edge

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

if.end.if.end190.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end190.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  %exp.010.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 190, %if.end.while.body.i.i_crit_edge ]
  %value.addr.09.i.i = phi i64 [ %shl.i349.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %x.addr.0.i.i, %if.end.while.body.i.i_crit_edge ]
  %shl.i349.i = shl nuw i64 %value.addr.09.i.i, 1
  %dec.i.i = add nsw i32 %exp.010.i.i, -1
  %cmp1.i.i = icmp sgt i64 %shl.i349.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %extract12.i.i = lshr i64 %value.addr.09.i.i, 39
  %extract.t13.i.i = trunc i64 %extract12.i.i to i32
  %phi.bo.i.i = shl i32 %dec.i.i, 23
  %and.i350.i = and i32 %extract.t13.i.i, 8388607
  %or.i351.i = or i32 %and.i350.i, %phi.bo.i.i
  br label %if.end190.i

if.end190.i:                                      ; preds = %while.end.i.i, %if.end.if.end190.i_crit_edge
  %retval.0.i.i = phi i32 [ %or.i351.i, %while.end.i.i ], [ 0, %if.end.if.end190.i_crit_edge ]
  %ac_etime.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 9
  %63 = ptrtoint ptr %ac_etime.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %retval.0.i.i, ptr %ac_etime.i, align 4
  %64 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %x.addr.0.i.i, i32 0) #15, !srcloc !84
  %asmresult.i.i57 = extractvalue { i64, i32 } %64, 0
  %asmresult4.i.i58 = extractvalue { i64, i32 } %64, 1
  %65 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %x.addr.0.i.i, i64 %asmresult.i.i57, i32 %asmresult4.i.i58) #15, !srcloc !85
  %asmresult10.i.i59 = extractvalue { i64, i32 } %65, 0
  %elapsed.0.i = lshr i64 %asmresult10.i.i59, 6
  %call192.i = call i64 @ktime_get_real_seconds() #11
  %sub193.i = sub i64 %call192.i, %elapsed.0.i
  %66 = call i64 @llvm.smax.i64(i64 %sub193.i, i64 0) #11
  %67 = call i64 @llvm.umin.i64(i64 %66, i64 4294967295) #11
  %68 = trunc i64 %67 to i32
  %ac_btime.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 8
  %69 = ptrtoint ptr %ac_btime.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %ac_btime.i, align 4
  %70 = ptrtoint ptr %task.i55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i55, align 8
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 112
  %72 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sighand.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %73) #11
  %74 = ptrtoint ptr %task.i55 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i55, align 8
  %signal213.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 111
  %76 = ptrtoint ptr %signal213.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %signal213.i, align 16
  %tty214.i = getelementptr inbounds %struct.signal_struct, ptr %77, i32 0, i32 25
  %78 = ptrtoint ptr %tty214.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tty214.i, align 8
  %tobool215.not.i = icmp eq ptr %79, null
  br i1 %tobool215.not.i, label %if.end190.i.cond.end221.i_crit_edge, label %cond.true216.i

if.end190.i.cond.end221.i_crit_edge:              ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end221.i

cond.true216.i:                                   ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #13
  %call217.i = call i32 @tty_devnum(ptr noundef nonnull %79) #11
  %80 = lshr i32 %call217.i, 12
  %shl.i.i = and i32 %80, 65280
  %or.i.i = or i32 %shl.i.i, %call217.i
  %conv.i.i = trunc i32 %or.i.i to i16
  br label %cond.end221.i

cond.end221.i:                                    ; preds = %cond.true216.i, %if.end190.i.cond.end221.i_crit_edge
  %cond222.i = phi i16 [ %conv.i.i, %cond.true216.i ], [ 0, %if.end190.i.cond.end221.i_crit_edge ]
  %pacct1.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 52
  %ac_tty.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 2
  %81 = ptrtoint ptr %ac_tty.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %cond222.i, ptr %ac_tty.i, align 2
  %ac_utime.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 52, i32 3
  %82 = ptrtoint ptr %ac_utime.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %ac_utime.i, align 8
  %84 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %83) #15, !srcloc !86
  %85 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %83, i64 %84, i32 0) #15, !srcloc !85
  %asmresult10.i.i352.i = extractvalue { i64, i32 } %85, 0
  %x.addr.0.i353.i = lshr i64 %asmresult10.i.i352.i, 23
  %conv225.i = trunc i64 %x.addr.0.i353.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %conv225.i)
  %cmp15.i.i = icmp ugt i32 %conv225.i, 8191
  br i1 %cmp15.i.i, label %cond.end221.i.while.body.i355.i_crit_edge, label %cond.end221.i.encode_comp_t.exit.i_crit_edge

cond.end221.i.encode_comp_t.exit.i_crit_edge:     ; preds = %cond.end221.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %encode_comp_t.exit.i

cond.end221.i.while.body.i355.i_crit_edge:        ; preds = %cond.end221.i
  br label %while.body.i355.i

while.body.i355.i:                                ; preds = %while.body.i355.i.while.body.i355.i_crit_edge, %cond.end221.i.while.body.i355.i_crit_edge
  %exp.017.i.i = phi i32 [ %inc.i.i, %while.body.i355.i.while.body.i355.i_crit_edge ], [ 0, %cond.end221.i.while.body.i355.i_crit_edge ]
  %value.addr.016.i.i = phi i32 [ %shr.i.i, %while.body.i355.i.while.body.i355.i_crit_edge ], [ %conv225.i, %cond.end221.i.while.body.i355.i_crit_edge ]
  %shr.i.i = lshr i32 %value.addr.016.i.i, 3
  %inc.i.i = add nuw nsw i32 %exp.017.i.i, 1
  %cmp.i354.i = icmp ugt i32 %value.addr.016.i.i, 65535
  br i1 %cmp.i354.i, label %while.body.i355.i.while.body.i355.i_crit_edge, label %while.end.i356.i

while.body.i355.i.while.body.i355.i_crit_edge:    ; preds = %while.body.i355.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i355.i

while.end.i356.i:                                 ; preds = %while.body.i355.i
  %and.le.i.i = and i32 %value.addr.016.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.le.i.i)
  %phi.cmp.i.i = icmp eq i32 %and.le.i.i, 0
  br i1 %phi.cmp.i.i, label %while.end.i356.i.encode_comp_t.exit.i_crit_edge, label %land.lhs.true.i.i

while.end.i356.i.encode_comp_t.exit.i_crit_edge:  ; preds = %while.end.i356.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %encode_comp_t.exit.i

land.lhs.true.i.i:                                ; preds = %while.end.i356.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc1.i.i = add nuw nsw i32 %shr.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65527, i32 %value.addr.016.i.i)
  %cmp2.i.i = icmp ugt i32 %value.addr.016.i.i, 65527
  %spec.select.i.i = select i1 %cmp2.i.i, i32 1024, i32 %inc1.i.i
  %inc4.i.i = zext i1 %cmp2.i.i to i32
  %spec.select14.i.i = add nuw i32 %inc.i.i, %inc4.i.i
  br label %encode_comp_t.exit.i

encode_comp_t.exit.i:                             ; preds = %land.lhs.true.i.i, %while.end.i356.i.encode_comp_t.exit.i_crit_edge, %cond.end221.i.encode_comp_t.exit.i_crit_edge
  %value.addr.1.i.i = phi i32 [ %shr.i.i, %while.end.i356.i.encode_comp_t.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ], [ %conv225.i, %cond.end221.i.encode_comp_t.exit.i_crit_edge ]
  %exp.1.i.i = phi i32 [ %inc.i.i, %while.end.i356.i.encode_comp_t.exit.i_crit_edge ], [ %spec.select14.i.i, %land.lhs.true.i.i ], [ 0, %cond.end221.i.encode_comp_t.exit.i_crit_edge ]
  %shl.i357.i = shl i32 %exp.1.i.i, 13
  %add.i.i = add nuw i32 %shl.i357.i, %value.addr.1.i.i
  %conv.i358.i = trunc i32 %add.i.i to i16
  %ac_utime227.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 10
  %86 = ptrtoint ptr %ac_utime227.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i358.i, ptr %ac_utime227.i, align 4
  %ac_stime.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 52, i32 4
  %87 = ptrtoint ptr %ac_stime.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %ac_stime.i, align 8
  %89 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %88) #15, !srcloc !86
  %90 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %88, i64 %89, i32 0) #15, !srcloc !85
  %asmresult10.i.i359.i = extractvalue { i64, i32 } %90, 0
  %x.addr.0.i360.i = lshr i64 %asmresult10.i.i359.i, 23
  %conv229.i = trunc i64 %x.addr.0.i360.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %conv229.i)
  %cmp15.i361.i = icmp ugt i32 %conv229.i, 8191
  br i1 %cmp15.i361.i, label %encode_comp_t.exit.i.while.body.i367.i_crit_edge, label %encode_comp_t.exit.i.encode_comp_t.exit382.i_crit_edge

encode_comp_t.exit.i.encode_comp_t.exit382.i_crit_edge: ; preds = %encode_comp_t.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %encode_comp_t.exit382.i

encode_comp_t.exit.i.while.body.i367.i_crit_edge: ; preds = %encode_comp_t.exit.i
  br label %while.body.i367.i

while.body.i367.i:                                ; preds = %while.body.i367.i.while.body.i367.i_crit_edge, %encode_comp_t.exit.i.while.body.i367.i_crit_edge
  %exp.017.i362.i = phi i32 [ %inc.i365.i, %while.body.i367.i.while.body.i367.i_crit_edge ], [ 0, %encode_comp_t.exit.i.while.body.i367.i_crit_edge ]
  %value.addr.016.i363.i = phi i32 [ %shr.i364.i, %while.body.i367.i.while.body.i367.i_crit_edge ], [ %conv229.i, %encode_comp_t.exit.i.while.body.i367.i_crit_edge ]
  %shr.i364.i = lshr i32 %value.addr.016.i363.i, 3
  %inc.i365.i = add nuw nsw i32 %exp.017.i362.i, 1
  %cmp.i366.i = icmp ugt i32 %value.addr.016.i363.i, 65535
  br i1 %cmp.i366.i, label %while.body.i367.i.while.body.i367.i_crit_edge, label %while.end.i370.i

while.body.i367.i.while.body.i367.i_crit_edge:    ; preds = %while.body.i367.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i367.i

while.end.i370.i:                                 ; preds = %while.body.i367.i
  %and.le.i368.i = and i32 %value.addr.016.i363.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.le.i368.i)
  %phi.cmp.i369.i = icmp eq i32 %and.le.i368.i, 0
  br i1 %phi.cmp.i369.i, label %while.end.i370.i.encode_comp_t.exit382.i_crit_edge, label %land.lhs.true.i376.i

while.end.i370.i.encode_comp_t.exit382.i_crit_edge: ; preds = %while.end.i370.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %encode_comp_t.exit382.i

land.lhs.true.i376.i:                             ; preds = %while.end.i370.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc1.i371.i = add nuw nsw i32 %shr.i364.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65527, i32 %value.addr.016.i363.i)
  %cmp2.i372.i = icmp ugt i32 %value.addr.016.i363.i, 65527
  %spec.select.i373.i = select i1 %cmp2.i372.i, i32 1024, i32 %inc1.i371.i
  %inc4.i374.i = zext i1 %cmp2.i372.i to i32
  %spec.select14.i375.i = add nuw i32 %inc.i365.i, %inc4.i374.i
  br label %encode_comp_t.exit382.i

encode_comp_t.exit382.i:                          ; preds = %land.lhs.true.i376.i, %while.end.i370.i.encode_comp_t.exit382.i_crit_edge, %encode_comp_t.exit.i.encode_comp_t.exit382.i_crit_edge
  %value.addr.1.i377.i = phi i32 [ %shr.i364.i, %while.end.i370.i.encode_comp_t.exit382.i_crit_edge ], [ %spec.select.i373.i, %land.lhs.true.i376.i ], [ %conv229.i, %encode_comp_t.exit.i.encode_comp_t.exit382.i_crit_edge ]
  %exp.1.i378.i = phi i32 [ %inc.i365.i, %while.end.i370.i.encode_comp_t.exit382.i_crit_edge ], [ %spec.select14.i375.i, %land.lhs.true.i376.i ], [ 0, %encode_comp_t.exit.i.encode_comp_t.exit382.i_crit_edge ]
  %shl.i379.i = shl i32 %exp.1.i378.i, 13
  %add.i380.i = add nuw i32 %shl.i379.i, %value.addr.1.i377.i
  %conv.i381.i = trunc i32 %add.i380.i to i16
  %ac_stime231.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 11
  %91 = ptrtoint ptr %ac_stime231.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.i381.i, ptr %ac_stime231.i, align 2
  %92 = ptrtoint ptr %pacct1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pacct1.i, align 8
  %conv232.i = trunc i32 %93 to i8
  %94 = ptrtoint ptr %ac to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv232.i, ptr %ac, align 4
  %ac_mem.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 52, i32 2
  %95 = ptrtoint ptr %ac_mem.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ac_mem.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %96)
  %cmp15.i383.i = icmp ugt i32 %96, 8191
  br i1 %cmp15.i383.i, label %encode_comp_t.exit382.i.while.body.i389.i_crit_edge, label %encode_comp_t.exit382.i.encode_comp_t.exit404.i_crit_edge

encode_comp_t.exit382.i.encode_comp_t.exit404.i_crit_edge: ; preds = %encode_comp_t.exit382.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %encode_comp_t.exit404.i

encode_comp_t.exit382.i.while.body.i389.i_crit_edge: ; preds = %encode_comp_t.exit382.i
  br label %while.body.i389.i

while.body.i389.i:                                ; preds = %while.body.i389.i.while.body.i389.i_crit_edge, %encode_comp_t.exit382.i.while.body.i389.i_crit_edge
  %exp.017.i384.i = phi i32 [ %inc.i387.i, %while.body.i389.i.while.body.i389.i_crit_edge ], [ 0, %encode_comp_t.exit382.i.while.body.i389.i_crit_edge ]
  %value.addr.016.i385.i = phi i32 [ %shr.i386.i, %while.body.i389.i.while.body.i389.i_crit_edge ], [ %96, %encode_comp_t.exit382.i.while.body.i389.i_crit_edge ]
  %shr.i386.i = lshr i32 %value.addr.016.i385.i, 3
  %inc.i387.i = add nuw nsw i32 %exp.017.i384.i, 1
  %cmp.i388.i = icmp ugt i32 %value.addr.016.i385.i, 65535
  br i1 %cmp.i388.i, label %while.body.i389.i.while.body.i389.i_crit_edge, label %while.end.i392.i

while.body.i389.i.while.body.i389.i_crit_edge:    ; preds = %while.body.i389.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i389.i

while.end.i392.i:                                 ; preds = %while.body.i389.i
  %and.le.i390.i = and i32 %value.addr.016.i385.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.le.i390.i)
  %phi.cmp.i391.i = icmp eq i32 %and.le.i390.i, 0
  br i1 %phi.cmp.i391.i, label %while.end.i392.i.encode_comp_t.exit404.i_crit_edge, label %land.lhs.true.i398.i

while.end.i392.i.encode_comp_t.exit404.i_crit_edge: ; preds = %while.end.i392.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %encode_comp_t.exit404.i

land.lhs.true.i398.i:                             ; preds = %while.end.i392.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc1.i393.i = add nuw nsw i32 %shr.i386.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65527, i32 %value.addr.016.i385.i)
  %cmp2.i394.i = icmp ugt i32 %value.addr.016.i385.i, 65527
  %spec.select.i395.i = select i1 %cmp2.i394.i, i32 1024, i32 %inc1.i393.i
  %inc4.i396.i = zext i1 %cmp2.i394.i to i32
  %spec.select14.i397.i = add nuw i32 %inc.i387.i, %inc4.i396.i
  br label %encode_comp_t.exit404.i

encode_comp_t.exit404.i:                          ; preds = %land.lhs.true.i398.i, %while.end.i392.i.encode_comp_t.exit404.i_crit_edge, %encode_comp_t.exit382.i.encode_comp_t.exit404.i_crit_edge
  %value.addr.1.i399.i = phi i32 [ %shr.i386.i, %while.end.i392.i.encode_comp_t.exit404.i_crit_edge ], [ %spec.select.i395.i, %land.lhs.true.i398.i ], [ %96, %encode_comp_t.exit382.i.encode_comp_t.exit404.i_crit_edge ]
  %exp.1.i400.i = phi i32 [ %inc.i387.i, %while.end.i392.i.encode_comp_t.exit404.i_crit_edge ], [ %spec.select14.i397.i, %land.lhs.true.i398.i ], [ 0, %encode_comp_t.exit382.i.encode_comp_t.exit404.i_crit_edge ]
  %shl.i401.i = shl i32 %exp.1.i400.i, 13
  %add.i402.i = add nuw i32 %shl.i401.i, %value.addr.1.i399.i
  %conv.i403.i = trunc i32 %add.i402.i to i16
  %ac_mem235.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 12
  %97 = ptrtoint ptr %ac_mem235.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i403.i, ptr %ac_mem235.i, align 4
  %ac_minflt.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 52, i32 5
  %98 = ptrtoint ptr %ac_minflt.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ac_minflt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %99)
  %cmp15.i405.i = icmp ugt i32 %99, 8191
  br i1 %cmp15.i405.i, label %encode_comp_t.exit404.i.while.body.i411.i_crit_edge, label %encode_comp_t.exit404.i.encode_comp_t.exit426.i_crit_edge

encode_comp_t.exit404.i.encode_comp_t.exit426.i_crit_edge: ; preds = %encode_comp_t.exit404.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %encode_comp_t.exit426.i

encode_comp_t.exit404.i.while.body.i411.i_crit_edge: ; preds = %encode_comp_t.exit404.i
  br label %while.body.i411.i

while.body.i411.i:                                ; preds = %while.body.i411.i.while.body.i411.i_crit_edge, %encode_comp_t.exit404.i.while.body.i411.i_crit_edge
  %exp.017.i406.i = phi i32 [ %inc.i409.i, %while.body.i411.i.while.body.i411.i_crit_edge ], [ 0, %encode_comp_t.exit404.i.while.body.i411.i_crit_edge ]
  %value.addr.016.i407.i = phi i32 [ %shr.i408.i, %while.body.i411.i.while.body.i411.i_crit_edge ], [ %99, %encode_comp_t.exit404.i.while.body.i411.i_crit_edge ]
  %shr.i408.i = lshr i32 %value.addr.016.i407.i, 3
  %inc.i409.i = add nuw nsw i32 %exp.017.i406.i, 1
  %cmp.i410.i = icmp ugt i32 %value.addr.016.i407.i, 65535
  br i1 %cmp.i410.i, label %while.body.i411.i.while.body.i411.i_crit_edge, label %while.end.i414.i

while.body.i411.i.while.body.i411.i_crit_edge:    ; preds = %while.body.i411.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i411.i

while.end.i414.i:                                 ; preds = %while.body.i411.i
  %and.le.i412.i = and i32 %value.addr.016.i407.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.le.i412.i)
  %phi.cmp.i413.i = icmp eq i32 %and.le.i412.i, 0
  br i1 %phi.cmp.i413.i, label %while.end.i414.i.encode_comp_t.exit426.i_crit_edge, label %land.lhs.true.i420.i

while.end.i414.i.encode_comp_t.exit426.i_crit_edge: ; preds = %while.end.i414.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %encode_comp_t.exit426.i

land.lhs.true.i420.i:                             ; preds = %while.end.i414.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc1.i415.i = add nuw nsw i32 %shr.i408.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65527, i32 %value.addr.016.i407.i)
  %cmp2.i416.i = icmp ugt i32 %value.addr.016.i407.i, 65527
  %spec.select.i417.i = select i1 %cmp2.i416.i, i32 1024, i32 %inc1.i415.i
  %inc4.i418.i = zext i1 %cmp2.i416.i to i32
  %spec.select14.i419.i = add nuw i32 %inc.i409.i, %inc4.i418.i
  br label %encode_comp_t.exit426.i

encode_comp_t.exit426.i:                          ; preds = %land.lhs.true.i420.i, %while.end.i414.i.encode_comp_t.exit426.i_crit_edge, %encode_comp_t.exit404.i.encode_comp_t.exit426.i_crit_edge
  %value.addr.1.i421.i = phi i32 [ %shr.i408.i, %while.end.i414.i.encode_comp_t.exit426.i_crit_edge ], [ %spec.select.i417.i, %land.lhs.true.i420.i ], [ %99, %encode_comp_t.exit404.i.encode_comp_t.exit426.i_crit_edge ]
  %exp.1.i422.i = phi i32 [ %inc.i409.i, %while.end.i414.i.encode_comp_t.exit426.i_crit_edge ], [ %spec.select14.i419.i, %land.lhs.true.i420.i ], [ 0, %encode_comp_t.exit404.i.encode_comp_t.exit426.i_crit_edge ]
  %shl.i423.i = shl i32 %exp.1.i422.i, 13
  %add.i424.i = add nuw i32 %shl.i423.i, %value.addr.1.i421.i
  %conv.i425.i = trunc i32 %add.i424.i to i16
  %ac_minflt237.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 15
  %100 = ptrtoint ptr %ac_minflt237.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv.i425.i, ptr %ac_minflt237.i, align 2
  %ac_majflt.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 52, i32 6
  %101 = ptrtoint ptr %ac_majflt.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ac_majflt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %102)
  %cmp15.i427.i = icmp ugt i32 %102, 8191
  br i1 %cmp15.i427.i, label %encode_comp_t.exit426.i.while.body.i433.i_crit_edge, label %encode_comp_t.exit426.i.fill_ac.exit_crit_edge

encode_comp_t.exit426.i.fill_ac.exit_crit_edge:   ; preds = %encode_comp_t.exit426.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_ac.exit

encode_comp_t.exit426.i.while.body.i433.i_crit_edge: ; preds = %encode_comp_t.exit426.i
  br label %while.body.i433.i

while.body.i433.i:                                ; preds = %while.body.i433.i.while.body.i433.i_crit_edge, %encode_comp_t.exit426.i.while.body.i433.i_crit_edge
  %exp.017.i428.i = phi i32 [ %inc.i431.i, %while.body.i433.i.while.body.i433.i_crit_edge ], [ 0, %encode_comp_t.exit426.i.while.body.i433.i_crit_edge ]
  %value.addr.016.i429.i = phi i32 [ %shr.i430.i, %while.body.i433.i.while.body.i433.i_crit_edge ], [ %102, %encode_comp_t.exit426.i.while.body.i433.i_crit_edge ]
  %shr.i430.i = lshr i32 %value.addr.016.i429.i, 3
  %inc.i431.i = add nuw nsw i32 %exp.017.i428.i, 1
  %cmp.i432.i = icmp ugt i32 %value.addr.016.i429.i, 65535
  br i1 %cmp.i432.i, label %while.body.i433.i.while.body.i433.i_crit_edge, label %while.end.i436.i

while.body.i433.i.while.body.i433.i_crit_edge:    ; preds = %while.body.i433.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i433.i

while.end.i436.i:                                 ; preds = %while.body.i433.i
  %and.le.i434.i = and i32 %value.addr.016.i429.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.le.i434.i)
  %phi.cmp.i435.i = icmp eq i32 %and.le.i434.i, 0
  br i1 %phi.cmp.i435.i, label %while.end.i436.i.fill_ac.exit_crit_edge, label %land.lhs.true.i442.i

while.end.i436.i.fill_ac.exit_crit_edge:          ; preds = %while.end.i436.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_ac.exit

land.lhs.true.i442.i:                             ; preds = %while.end.i436.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc1.i437.i = add nuw nsw i32 %shr.i430.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65527, i32 %value.addr.016.i429.i)
  %cmp2.i438.i = icmp ugt i32 %value.addr.016.i429.i, 65527
  %spec.select.i439.i = select i1 %cmp2.i438.i, i32 1024, i32 %inc1.i437.i
  %inc4.i440.i = zext i1 %cmp2.i438.i to i32
  %spec.select14.i441.i = add nuw i32 %inc.i431.i, %inc4.i440.i
  br label %fill_ac.exit

fill_ac.exit:                                     ; preds = %land.lhs.true.i442.i, %while.end.i436.i.fill_ac.exit_crit_edge, %encode_comp_t.exit426.i.fill_ac.exit_crit_edge
  %value.addr.1.i443.i = phi i32 [ %shr.i430.i, %while.end.i436.i.fill_ac.exit_crit_edge ], [ %spec.select.i439.i, %land.lhs.true.i442.i ], [ %102, %encode_comp_t.exit426.i.fill_ac.exit_crit_edge ]
  %exp.1.i444.i = phi i32 [ %inc.i431.i, %while.end.i436.i.fill_ac.exit_crit_edge ], [ %spec.select14.i441.i, %land.lhs.true.i442.i ], [ 0, %encode_comp_t.exit426.i.fill_ac.exit_crit_edge ]
  %shl.i445.i = shl i32 %exp.1.i444.i, 13
  %add.i446.i = add nuw i32 %shl.i445.i, %value.addr.1.i443.i
  %conv.i447.i = trunc i32 %add.i446.i to i16
  %ac_majflt239.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 16
  %103 = ptrtoint ptr %ac_majflt239.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv.i447.i, ptr %ac_majflt239.i, align 4
  %ac_exitcode.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 52, i32 1
  %104 = ptrtoint ptr %ac_exitcode.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ac_exitcode.i, align 4
  %ac_exitcode240.i = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 3
  %106 = ptrtoint ptr %ac_exitcode240.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %ac_exitcode240.i, align 4
  %107 = ptrtoint ptr %task.i55 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task.i55, align 8
  %sighand243.i = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 112
  %109 = ptrtoint ptr %sighand243.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sighand243.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %110) #11
  %111 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %f_cred, align 8
  %user_ns = getelementptr inbounds %struct.cred, ptr %112, i32 0, i32 25
  %113 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.cred, ptr %call3, i32 0, i32 4
  %115 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %115)
  %.unpack = load i32, ptr %uid, align 4
  %116 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call6 = call i32 @from_kuid_munged(ptr noundef %114, [1 x i32] %116) #11
  %ac_uid = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 4
  %117 = ptrtoint ptr %ac_uid to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call6, ptr %ac_uid, align 4
  %118 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %f_cred, align 8
  %user_ns8 = getelementptr inbounds %struct.cred, ptr %119, i32 0, i32 25
  %120 = ptrtoint ptr %user_ns8 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %user_ns8, align 4
  %gid = getelementptr inbounds %struct.cred, ptr %call3, i32 0, i32 5
  %122 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %122)
  %.unpack50 = load i32, ptr %gid, align 4
  %123 = insertvalue [1 x i32] undef, i32 %.unpack50, 0
  %call10 = call i32 @from_kgid_munged(ptr noundef %121, [1 x i32] %123) #11
  %ac_gid = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 5
  %124 = ptrtoint ptr %ac_gid to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call10, ptr %ac_gid, align 4
  %ns11 = getelementptr inbounds %struct.bsd_acct_struct, ptr %acct, i32 0, i32 7
  %125 = ptrtoint ptr %ns11 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ns11, align 4
  %127 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task, align 8
  %call.i60 = call i32 @__task_pid_nr_ns(ptr noundef %128, i32 noundef 1, ptr noundef %126) #11
  %ac_pid = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 6
  %129 = ptrtoint ptr %ac_pid to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %call.i60, ptr %ac_pid, align 4
  %130 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %133, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %fill_ac.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

fill_ac.exit.rcu_read_lock.exit_crit_edge:        ; preds = %fill_ac.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %fill_ac.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %fill_ac.exit.rcu_read_lock.exit_crit_edge
  %134 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %task, align 8
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 71
  %136 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile ptr, ptr %real_parent, align 4
  %call18 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end27_crit_edge

rcu_read_lock.exit.do.end27_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call20 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b51 = load i1, ptr @do_acct_process.__warned, align 1
  br i1 %.b51, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @do_acct_process.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 506, ptr noundef nonnull @.str.12) #11
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %rcu_read_lock.exit.do.end27_crit_edge
  %call.i61 = call i32 @__task_pid_nr_ns(ptr noundef %137, i32 noundef 1, ptr noundef %126) #11
  %ac_ppid = getelementptr inbounds %struct.acct_v3, ptr %ac, i32 0, i32 7
  %138 = ptrtoint ptr %ac_ppid to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %call.i61, ptr %ac_ppid, align 4
  %call.i62 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i62, label %do.end27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i65

do.end27.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i65:                                ; preds = %do.end27
  %call1.i63 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit_crit_edge, %do.end27.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %139 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i69 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i = add i32 %142, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i70, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %143 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %f_inode.i.i, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %144, align 8
  %147 = and i16 %146, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %147)
  %cmp.i71 = icmp eq i16 %147, -32768
  br i1 %cmp.i71, label %if.end.i72, label %rcu_read_unlock.exit.if.then31_crit_edge

rcu_read_unlock.exit.if.then31_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.end.i72:                                       ; preds = %rcu_read_unlock.exit
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %144, i32 0, i32 8
  %148 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i_sb.i, align 4
  %add.ptr1.i.i.i = getelementptr %struct.super_block, ptr %149, i32 0, i32 32, i32 2
  %150 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i.i.i = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %153, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  %call.i.i.i.i.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i72.rcu_sync_is_idle.exit.i.i.i.i_crit_edge

if.end.i72.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i72
  %call1.i.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b8.i.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @.str.21) #11
  br label %rcu_sync_is_idle.exit.i.i.i.i

rcu_sync_is_idle.exit.i.i.i.i:                    ; preds = %if.then.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, %if.end.i72.rcu_sync_is_idle.exit.i.i.i.i_crit_edge
  %154 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %add.ptr1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %155, 0
  br i1 %tobool7.not.i.i.i.i.i, label %do.body3.i.i.i.i, label %if.else.i.i.i.i, !prof !88

do.body3.i.i.i.i:                                 ; preds = %rcu_sync_is_idle.exit.i.i.i.i
  %156 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !89
  %read_count.i.i.i.i = getelementptr %struct.super_block, ptr %149, i32 0, i32 32, i32 2, i32 0, i32 1
  %157 = ptrtoint ptr %read_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %read_count.i.i.i.i, align 4
  %159 = ptrtoint ptr %158 to i32
  %160 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i73 = and i32 %160, -16384
  %161 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %163
  %164 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %165, %159
  %166 = inttoptr i32 %add.i.i.i.i to ptr
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %166, align 4
  %add19.i.i.i.i = add i32 %168, 1
  store i32 %add19.i.i.i.i, ptr %166, align 4
  %169 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !90
  %and.i.i.i.i.i.i = and i32 %169, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool30.not.i.i.i.i, label %if.then39.i.i.i.i, label %do.body3.i.i.i.i.do.end41.i.i.i.i_crit_edge, !prof !91

do.body3.i.i.i.i.do.end41.i.i.i.i_crit_edge:      ; preds = %do.body3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41.i.i.i.i

if.then39.i.i.i.i:                                ; preds = %do.body3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end41.i.i.i.i

do.end41.i.i.i.i:                                 ; preds = %if.then39.i.i.i.i, %do.body3.i.i.i.i.do.end41.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %156) #11, !srcloc !92
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %170 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i61.i.i.i.c.i = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i.i61.i.i.i.c.i to ptr
  %preempt_count.i.i62.i.i.i.c.i = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %preempt_count.i.i62.i.i.i.c.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %preempt_count.i.i62.i.i.i.c.i, align 4
  %sub.i.i.i.i.c.i = add i32 %173, -1
  store volatile i32 %sub.i.i.i.i.c.i, ptr %preempt_count.i.i62.i.i.i.c.i, align 4
  br label %if.then54.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %rcu_sync_is_idle.exit.i.i.i.i
  %call48.i.i.i.i = call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i.i, i1 noundef zeroext true) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %174 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i61.i.i.i.i = and i32 %174, -16384
  %175 = inttoptr i32 %and.i.i.i61.i.i.i.i to ptr
  %preempt_count.i.i62.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %preempt_count.i.i62.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %preempt_count.i.i62.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %177, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i62.i.i.i.i, align 4
  br i1 %call48.i.i.i.i, label %if.else.i.i.i.i.if.then54.i.i.i.i_crit_edge, label %if.else.i.i.i.i.out_crit_edge

if.else.i.i.i.i.out_crit_edge:                    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else.i.i.i.i.if.then54.i.i.i.i_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54.i.i.i.i

if.then54.i.i.i.i:                                ; preds = %if.else.i.i.i.i.if.then54.i.i.i.i_crit_edge, %do.end41.i.i.i.i
  %dep_map.i.i.i.i = getelementptr %struct.super_block, ptr %149, i32 0, i32 32, i32 2, i32 0, i32 5
  %178 = call ptr @llvm.returnaddress(i32 0) #11
  %179 = ptrtoint ptr %178 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %179) #11
  br label %if.then31

if.then31:                                        ; preds = %if.then54.i.i.i.i, %rcu_read_unlock.exit.if.then31_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #11
  %180 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 0, ptr %pos, align 8
  %call32 = call i32 @__kernel_write(ptr noundef %2, ptr noundef nonnull %ac, i32 noundef 64, ptr noundef nonnull %pos) #11
  %181 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %f_inode.i.i, align 8
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %182, align 8
  %185 = and i16 %184, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %185)
  %cmp.i75 = icmp eq i16 %185, -32768
  br i1 %cmp.i75, label %if.end.i79, label %if.then31.file_end_write.exit_crit_edge

if.then31.file_end_write.exit_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_end_write.exit

if.end.i79:                                       ; preds = %if.then31
  %i_sb.i76 = getelementptr inbounds %struct.inode, ptr %182, i32 0, i32 8
  %186 = ptrtoint ptr %i_sb.i76 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %i_sb.i76, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %187, i32 0, i32 32, i32 2
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %187, i32 0, i32 32, i32 2, i32 0, i32 5
  %188 = call ptr @llvm.returnaddress(i32 0) #11
  %189 = ptrtoint ptr %188 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %189) #11
  %190 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i.i.i77 = and i32 %190, -16384
  %191 = inttoptr i32 %and.i.i.i.i.i.i77 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i78 = add i32 %193, 1
  store volatile i32 %add.i.i.i.i78, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  %call.i.i.i.i = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i79.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end.i79.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i79
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 35, ptr noundef nonnull @.str.21) #11
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end.i79.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %194 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool7.not.i.i.i.i = icmp eq i32 %195, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !88

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %196 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !89
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %187, i32 0, i32 32, i32 2, i32 0, i32 1
  %197 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %read_count.i.i.i, align 4
  %199 = ptrtoint ptr %198 to i32
  %200 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i.i = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %203
  %204 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i80 = add i32 %205, %199
  %206 = inttoptr i32 %add.i.i.i80 to ptr
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %206, align 4
  %add17.i.i.i = add i32 %208, -1
  store i32 %add17.i.i.i, ptr %206, align 4
  %209 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !90
  %and.i.i.i.i.i81 = and i32 %209, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i81)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i81, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !91

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %196) #11, !srcloc !92
  br label %__sb_end_write.exit.i

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  %210 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !89
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %187, i32 0, i32 32, i32 2, i32 0, i32 1
  %211 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %read_count75.i.i.i, align 4
  %213 = ptrtoint ptr %212 to i32
  %214 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i122.i.i.i = and i32 %214, -16384
  %215 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %217
  %218 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %219, %213
  %220 = inttoptr i32 %add80.i.i.i to ptr
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %220, align 4
  %add81.i.i.i = add i32 %222, -1
  store i32 %add81.i.i.i, ptr %220, align 4
  %223 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !90
  %and.i.i123.i.i.i = and i32 %223, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !91

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %210) #11, !srcloc !92
  %writer.i.i.i = getelementptr %struct.super_block, ptr %187, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #11
  br label %__sb_end_write.exit.i

__sb_end_write.exit.i:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !96
  %224 = call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i120.i.i.i = and i32 %224, -16384
  %225 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i = add i32 %227, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %file_end_write.exit

file_end_write.exit:                              ; preds = %__sb_end_write.exit.i, %if.then31.file_end_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #11
  br label %out

out:                                              ; preds = %file_end_write.exit, %if.else.i.i.i.i.out_crit_edge, %check_free_space.exit.out_crit_edge
  %228 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %task, align 8
  %signal36 = getelementptr inbounds %struct.task_struct, ptr %229, i32 0, i32 111
  %230 = ptrtoint ptr %signal36 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %signal36, align 16
  %arrayidx38 = getelementptr %struct.signal_struct, ptr %231, i32 0, i32 51, i32 1
  %232 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %10, ptr %arrayidx38, align 8
  call void @revert_creds(ptr noundef %call3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ac) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pin_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_statfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_devnum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fput_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @acct_parm, !1, !"acct_parm", i1 false, i1 false}
!1 = !{!"../kernel/acct.c", i32 73, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/acct.c", i32 272, i32 1}
!4 = !{ptr @event_enter__acct, !3, !"event_enter__acct", i1 false, i1 false}
!5 = !{ptr @__event_enter__acct, !3, !"__event_enter__acct", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @event_exit__acct, !3, !"event_exit__acct", i1 false, i1 false}
!8 = !{ptr @__event_exit__acct, !3, !"__event_exit__acct", i1 false, i1 false}
!9 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__syscall_meta__acct, !3, !"__syscall_meta__acct", i1 false, i1 false}
!11 = !{ptr @__p_syscall_meta__acct, !3, !"__p_syscall_meta__acct", i1 false, i1 false}
!12 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @types__acct, !3, !"types__acct", i1 false, i1 false}
!14 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @args__acct, !3, !"args__acct", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/acct.c", i32 259, i32 8}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @acct_on_mutex, !17, !"acct_on_mutex", i1 false, i1 false}
!20 = !{ptr @acct_on.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../kernel/acct.c", i32 244, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @acct_on.__key.8, !24, !"__key", i1 false, i1 false}
!24 = !{!"../kernel/acct.c", i32 245, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @init_fs_pin.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../include/linux/fs_pin.h", i32 16, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../kernel/acct.c", i32 506, i32 32}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/acct.c", i32 116, i32 4}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @check_free_space._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @check_free_space._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/acct.c", i32 123, i32 4}
!40 = !{ptr @check_free_space._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @check_free_space._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @init_completion.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/completion.h", i32 87, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2150014354}
!67 = !{i64 2155143403}
!68 = !{i64 1185789, i64 1185806, i64 1185830, i64 1185856, i64 1185874}
!69 = !{i64 2155143755}
!70 = !{i64 2148279698, i64 2148279703, i64 2148279716, i64 2148279760, i64 2148279794, i64 2148279815}
!71 = !{i64 2155132890}
!72 = !{i64 2150014620}
!73 = !{i64 2148678440}
!74 = !{i64 1165040, i64 1165065, i64 1165087, i64 1165103, i64 1165115, i64 1165135, i64 1165159, i64 1165175, i64 1165187}
!75 = !{i64 2155135918}
!76 = !{i64 2155135760}
!77 = !{i64 2148678628}
!78 = !{i64 2148767497}
!79 = !{i64 2148682206, i64 2148682238, i64 2148682267, i64 2148682301, i64 2148682332, i64 2148682355}
!80 = !{i64 2148767726}
!81 = !{i64 2155139717}
!82 = !{i64 1188513, i64 1188534, i64 1188557, i64 1188576, i64 1188595}
!83 = !{i64 2155140130}
!84 = !{i64 1043262, i64 1043289, i64 1043311, i64 1043339}
!85 = !{i64 1043670, i64 1043697, i64 1043730, i64 1043751, i64 1043778, i64 1043804}
!86 = !{i64 1042975, i64 1043002}
!87 = !{i64 2152919126}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 1083701, i64 1083762}
!90 = !{i64 1086433}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 1086718}
!93 = !{i64 2152927976}
!94 = !{i64 2152928718}
!95 = !{i64 2152938213}
!96 = !{i64 2152947690}
