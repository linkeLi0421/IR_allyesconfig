; ModuleID = '/llk/IR_all_yes/fs/fsopen.c_pt.bc'
source_filename = "../fs/fsopen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.76, %struct.trace_event, ptr, ptr, %union.anon.77, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, ptr, [8 x ptr] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.36 }
%struct.llist_node = type { ptr }
%union.anon.36 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.fs_parameter = type { ptr, i8, %union.anon.20, i32, i32 }
%union.anon.20 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@fscontext_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @fscontext_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @fscontext_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_fsopen\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__fsopen = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 2, ptr @types__fsopen, ptr @args__fsopen, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fsopen, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fsopen, i64 20) }, ptr @event_enter__fsopen, ptr @event_exit__fsopen }, align 4
@event_enter__fsopen = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr @__syscall_meta__fsopen, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fsopen = internal global ptr @event_enter__fsopen, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_fsopen\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__fsopen = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr @__syscall_meta__fsopen, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fsopen = internal global ptr @event_exit__fsopen, section "_ftrace_events", align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_fsopen\00", [21 x i8] zeroinitializer }, align 32
@types__fsopen = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@args__fsopen = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.14, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fsopen = internal global ptr @__syscall_meta__fsopen, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_fspick\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__fspick = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 3, ptr @types__fspick, ptr @args__fspick, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fspick, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fspick, i64 20) }, ptr @event_enter__fspick, ptr @event_exit__fspick }, align 4
@event_enter__fspick = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr @__syscall_meta__fspick, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fspick = internal global ptr @event_enter__fspick, section "_ftrace_events", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_fspick\00", [16 x i8] zeroinitializer }, align 32
@event_exit__fspick = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr @__syscall_meta__fspick, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fspick = internal global ptr @event_exit__fspick, section "_ftrace_events", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_fspick\00", [21 x i8] zeroinitializer }, align 32
@types__fspick = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.17, ptr @.str.12, ptr @.str.13], [20 x i8] zeroinitializer }, align 32
@args__fspick = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.15], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fspick = internal global ptr @__syscall_meta__fspick, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_fsconfig\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__fsconfig = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 5, ptr @types__fsconfig, ptr @args__fsconfig, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fsconfig, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fsconfig, i64 20) }, ptr @event_enter__fsconfig, ptr @event_exit__fsconfig }, align 4
@event_enter__fsconfig = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr @__syscall_meta__fsconfig, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fsconfig = internal global ptr @event_enter__fsconfig, section "_ftrace_events", align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_fsconfig\00", [46 x i8] zeroinitializer }, align 32
@event_exit__fsconfig = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr @__syscall_meta__fsconfig, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fsconfig = internal global ptr @event_exit__fsconfig, section "_ftrace_events", align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_fsconfig\00", [19 x i8] zeroinitializer }, align 32
@types__fsconfig = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.17, ptr @.str.13, ptr @.str.12, ptr @.str.20, ptr @.str.17], [44 x i8] zeroinitializer }, align 32
@args__fsconfig = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fsconfig = internal global ptr @__syscall_meta__fsconfig, section "__syscalls_metadata", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_fs_name\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[fscontext]\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dfd\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"path\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const void *\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"_key\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"_value\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@legacy_fs_context_ops = external dso_local constant %struct.fs_context_operations, align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"fscontext_fops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 78, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"event_enter__fsopen\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"event_exit__fsopen\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"types__fsopen\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"args__fsopen\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"event_enter__fspick\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"event_exit__fspick\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"types__fspick\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"args__fspick\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"event_enter__fsconfig\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"event_exit__fsconfig\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"types__fsconfig\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"args__fsconfig\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 230, i32 6 }
@___asan_gen_.100 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 214, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 174, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 115, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 91, i32 24 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 158, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [15 x i8] c"../fs/fsopen.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 314, i32 1 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__event_enter__fsconfig, ptr @__event_enter__fsopen, ptr @__event_enter__fspick, ptr @__event_exit__fsconfig, ptr @__event_exit__fsopen, ptr @__event_exit__fspick, ptr @__p_syscall_meta__fsconfig, ptr @__p_syscall_meta__fsopen, ptr @__p_syscall_meta__fspick, ptr @__syscall_meta__fsconfig, ptr @__syscall_meta__fsopen, ptr @__syscall_meta__fspick, ptr @event_enter__fsconfig, ptr @event_enter__fsopen, ptr @event_enter__fspick, ptr @event_exit__fsconfig, ptr @event_exit__fsopen, ptr @event_exit__fspick, ptr @fscontext_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__fsopen, ptr @args__fsopen, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__fspick, ptr @args__fspick, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__fsconfig, ptr @args__fsconfig, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscontext_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fsopen to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fsopen to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fsopen to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fsopen to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fspick to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fspick to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fspick to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fspick to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fsconfig to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fsconfig to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fsconfig to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fsconfig to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_fsopen = dso_local alias i32 (ptr, i32), ptr @__se_sys_fsopen
@sys_fspick = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_fspick
@sys_fsconfig = dso_local alias i32 (i32, i32, ptr, ptr, i32), ptr @__se_sys_fsconfig

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fscontext_read(ptr nocapture noundef readonly %file, ptr noundef %_buf, i32 noundef %len, ptr nocapture noundef readnone %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %log2 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %log2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log2, align 4
  %uapi_mutex = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %uapi_mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.fc_log, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %head, align 4
  %tail = getelementptr inbounds %struct.fc_log, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tail, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp4 = icmp eq i8 %5, %7
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %uapi_mutex) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = and i8 %7, 7
  %and = zext i8 %8 to i32
  %arrayidx = getelementptr %struct.fc_log, ptr %3, i32 0, i32 5, i32 %and
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %need_free11 = getelementptr inbounds %struct.fc_log, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %need_free11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %need_free11, align 2
  %conv12 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 1, %and
  %and13 = and i32 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  %14 = trunc i32 %shl to i8
  %15 = xor i8 %14, -1
  %conv20 = and i8 %12, %15
  %16 = ptrtoint ptr %need_free11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv20, ptr %need_free11, align 2
  %inc = add i8 %7, 1
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %inc, ptr %tail, align 1
  tail call void @mutex_unlock(ptr noundef %uapi_mutex) #6
  %call23 = tail call i32 @strlen(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %len)
  %cmp24 = icmp ugt i32 %call23, %len
  br i1 %cmp24, label %if.end8.err_free_crit_edge, label %if.end8.i.i

if.end8.err_free_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.end8.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp9.i.i = icmp slt i32 %call23, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.err_free_crit_edge, label %if.then27.i.i, !prof !70

land.rhs16.i.i.err_free_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %err_free

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %10, i32 noundef %call23, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %_buf, i32 %call23, i32 -1226833920) #10, !srcloc !71
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %10, i32 noundef %call23) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %_buf, ptr noundef %10, i32 noundef %call23) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %call23, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %call23, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp29.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %cmp29.not, i32 %call23, i32 -14
  br label %err_free

err_free:                                         ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.err_free_crit_edge, %if.end8.err_free_crit_edge
  %ret.0 = phi i32 [ -90, %if.end8.err_free_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.err_free_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  br i1 %tobool.not, label %err_free.cleanup_crit_edge, label %if.then34

err_free.cleanup_crit_edge:                       ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %err_free.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %if.then6 ], [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %if.then34 ], [ %ret.0, %err_free.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fscontext_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  tail call void @put_fs_context(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fsopen(i32 noundef %_fs_name, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %_fs_name to ptr
  %1 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 110
  %5 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nsproxy.i, align 4
  %mnt_ns.i = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %mnt_ns.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mnt_ns.i, align 4
  %user_ns.i = getelementptr inbounds %struct.mnt_namespace, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns.i, align 8
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %10, i32 noundef 21) #6
  br i1 %call1.i, label %if.end.i, label %entry.__do_sys_fsopen.exit_crit_edge

entry.__do_sys_fsopen.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsopen.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not.i = icmp ult i32 %flags, 2
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.__do_sys_fsopen.exit_crit_edge

if.end.i.__do_sys_fsopen.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsopen.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @strndup_user(ptr noundef %0, i32 noundef 4096) #6
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call4.i to i32
  br label %__do_sys_fsopen.exit

if.end8.i:                                        ; preds = %if.end3.i
  %call9.i = tail call ptr @get_fs_type(ptr noundef %call4.i) #6
  tail call void @kfree(ptr noundef %call4.i) #6
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.__do_sys_fsopen.exit_crit_edge, label %if.end12.i

if.end8.i.__do_sys_fsopen.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsopen.exit

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = tail call ptr @fs_context_for_mount(ptr noundef nonnull %call9.i, i32 noundef 0) #6
  tail call void @put_filesystem(ptr noundef nonnull %call9.i) #6
  %cmp.i39.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call13.i to i32
  br label %__do_sys_fsopen.exit

if.end17.i:                                       ; preds = %if.end12.i
  %phase.i = getelementptr inbounds %struct.fs_context, ptr %call13.i, i32 0, i32 17
  %13 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %phase.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -16711681
  store i32 %bf.clear.i, ptr %phase.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 44) #11
  %log1.i.i = getelementptr inbounds %struct.fs_context, ptr %call13.i, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %log1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i.i, ptr %log1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %err_fc.i, label %if.end20.i

if.end20.i:                                       ; preds = %if.end17.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4) #6
  %16 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %call7.i.i.i.i, align 8
  %fs_type.i.i = getelementptr inbounds %struct.fs_context, ptr %call13.i, i32 0, i32 2
  %17 = ptrtoint ptr %fs_type.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fs_type.i.i, align 4
  %owner.i.i = getelementptr inbounds %struct.file_system_type, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner.i.i, align 4
  %21 = ptrtoint ptr %log1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log1.i.i, align 4
  %owner8.i.i = getelementptr inbounds %struct.fc_log, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %owner8.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %owner8.i.i, align 4
  %and21.i = shl nuw nsw i32 %flags, 19
  %24 = and i32 %and21.i, 524288
  %or.i.i = or i32 %24, 2
  %call.i.i = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.16, ptr noundef nonnull @fscontext_fops, ptr noundef %call13.i, i32 noundef %or.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i40.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i40.i, label %if.then.i.i, label %if.end20.i.__do_sys_fsopen.exit_crit_edge

if.end20.i.__do_sys_fsopen.exit_crit_edge:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsopen.exit

if.then.i.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_fs_context(ptr noundef %call13.i) #6
  br label %__do_sys_fsopen.exit

err_fc.i:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_fs_context(ptr noundef %call13.i) #6
  br label %__do_sys_fsopen.exit

__do_sys_fsopen.exit:                             ; preds = %err_fc.i, %if.then.i.i, %if.end20.i.__do_sys_fsopen.exit_crit_edge, %if.then15.i, %if.end8.i.__do_sys_fsopen.exit_crit_edge, %if.then6.i, %if.end.i.__do_sys_fsopen.exit_crit_edge, %entry.__do_sys_fsopen.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.then6.i ], [ %12, %if.then15.i ], [ -12, %err_fc.i ], [ -1, %entry.__do_sys_fsopen.exit_crit_edge ], [ -22, %if.end.i.__do_sys_fsopen.exit_crit_edge ], [ -19, %if.end8.i.__do_sys_fsopen.exit_crit_edge ], [ %call.i.i, %if.end20.i.__do_sys_fsopen.exit_crit_edge ], [ %call.i.i, %if.then.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fspick(i32 noundef %dfd, i32 noundef %path, i32 noundef %flags) #1 align 64 {
entry:
  %target.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %path to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target.i) #6
  %1 = ptrtoint ptr %target.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %target.i, align 4, !annotation !72
  %2 = getelementptr inbounds %struct.path, ptr %target.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !72
  %4 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 110
  %8 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nsproxy.i, align 4
  %mnt_ns.i = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mnt_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mnt_ns.i, align 4
  %user_ns.i = getelementptr inbounds %struct.mnt_namespace, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns.i, align 8
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %13, i32 noundef 21) #6
  br i1 %call1.i, label %if.end.i, label %entry.__do_sys_fspick.exit_crit_edge

entry.__do_sys_fspick.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fspick.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %flags)
  %cmp.not.i = icmp ult i32 %flags, 16
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.__do_sys_fspick.exit_crit_edge

if.end.i.__do_sys_fspick.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fspick.exit

if.end3.i:                                        ; preds = %if.end.i
  %and4.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 5, i32 4
  %and8.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %and11.i = and i32 %spec.select.i, 1
  %lookup_flags.1.i = select i1 %tobool9.not.i, i32 %spec.select.i, i32 %and11.i
  %and13.i = shl nuw nsw i32 %flags, 11
  %14 = and i32 %and13.i, 16384
  %15 = or i32 %lookup_flags.1.i, %14
  %call.i.i = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %0, i32 noundef %15, ptr noundef nonnull %target.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp18.i, label %if.end3.i.__do_sys_fspick.exit_crit_edge, label %if.end20.i

if.end3.i.__do_sys_fspick.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fspick.exit

if.end20.i:                                       ; preds = %if.end3.i
  %16 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %target.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %cmp21.not.i = icmp eq ptr %19, %21
  br i1 %cmp21.not.i, label %if.end23.i, label %if.end20.i.err_path.i_crit_edge

if.end20.i.err_path.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_path.i

if.end23.i:                                       ; preds = %if.end20.i
  %call25.i = call ptr @fs_context_for_reconfigure(ptr noundef %19, i32 noundef 0, i32 noundef 0) #6
  %cmp.i.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then27.i, label %if.end29.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call25.i to i32
  br label %err_path.i

if.end29.i:                                       ; preds = %if.end23.i
  %phase.i = getelementptr inbounds %struct.fs_context, ptr %call25.i, i32 0, i32 17
  %23 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.i = load i32, ptr %phase.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -16711681
  %bf.set.i = or i32 %bf.clear.i, 262144
  store i32 %bf.set.i, ptr %phase.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 44) #11
  %log1.i.i = getelementptr inbounds %struct.fs_context, ptr %call25.i, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %log1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i.i, ptr %log1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %err_fc.i, label %if.end33.i

if.end33.i:                                       ; preds = %if.end29.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4) #6
  %26 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %call7.i.i.i.i, align 8
  %fs_type.i.i = getelementptr inbounds %struct.fs_context, ptr %call25.i, i32 0, i32 2
  %27 = ptrtoint ptr %fs_type.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fs_type.i.i, align 4
  %owner.i.i = getelementptr inbounds %struct.file_system_type, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owner.i.i, align 4
  %31 = ptrtoint ptr %log1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %log1.i.i, align 4
  %owner8.i.i = getelementptr inbounds %struct.fc_log, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %owner8.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %owner8.i.i, align 4
  call void @path_put(ptr noundef nonnull %target.i) #6
  %and34.i = shl nuw nsw i32 %flags, 19
  %34 = and i32 %and34.i, 524288
  %or.i = or i32 %34, 2
  %call.i = call i32 @anon_inode_getfd(ptr noundef nonnull @.str.16, ptr noundef nonnull @fscontext_fops, ptr noundef %call25.i, i32 noundef %or.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end33.i.__do_sys_fspick.exit_crit_edge

if.end33.i.__do_sys_fspick.exit_crit_edge:        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fspick.exit

if.then.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @put_fs_context(ptr noundef %call25.i) #6
  br label %__do_sys_fspick.exit

err_fc.i:                                         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @put_fs_context(ptr noundef %call25.i) #6
  br label %err_path.i

err_path.i:                                       ; preds = %err_fc.i, %if.then27.i, %if.end20.i.err_path.i_crit_edge
  %ret.0.i = phi i32 [ -22, %if.end20.i.err_path.i_crit_edge ], [ %22, %if.then27.i ], [ -12, %err_fc.i ]
  call void @path_put(ptr noundef nonnull %target.i) #6
  br label %__do_sys_fspick.exit

__do_sys_fspick.exit:                             ; preds = %err_path.i, %if.then.i, %if.end33.i.__do_sys_fspick.exit_crit_edge, %if.end3.i.__do_sys_fspick.exit_crit_edge, %if.end.i.__do_sys_fspick.exit_crit_edge, %entry.__do_sys_fspick.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__do_sys_fspick.exit_crit_edge ], [ -22, %if.end.i.__do_sys_fspick.exit_crit_edge ], [ %call.i.i, %if.end3.i.__do_sys_fspick.exit_crit_edge ], [ %ret.0.i, %err_path.i ], [ %call.i, %if.end33.i.__do_sys_fspick.exit_crit_edge ], [ %call.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fsconfig(i32 noundef %fd, i32 noundef %cmd, i32 noundef %_key, i32 noundef %_value, i32 noundef %aux) #1 align 64 {
entry:
  %param.i = alloca %struct.fs_parameter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %_key to ptr
  %1 = inttoptr i32 %_value to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %param.i) #6
  %2 = call ptr @memset(ptr %param.i, i32 0, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fd)
  %cmp.i = icmp slt i32 %fd, 0
  br i1 %cmp.i, label %entry.__do_sys_fsconfig.exit_crit_edge, label %if.end.i

entry.__do_sys_fsconfig.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

if.end.i:                                         ; preds = %entry
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.i.__do_sys_fsconfig.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb14.i
    i32 3, label %if.end.i.sw.bb24.i_crit_edge
    i32 4, label %if.end.i.sw.bb24.i_crit_edge8
    i32 5, label %sw.bb33.i
    i32 6, label %if.end.i.sw.bb41.i_crit_edge
    i32 7, label %if.end.i.sw.bb41.i_crit_edge9
  ]

if.end.i.sw.bb41.i_crit_edge9:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb41.i

if.end.i.sw.bb41.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb41.i

if.end.i.sw.bb24.i_crit_edge8:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24.i

if.end.i.sw.bb24.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24.i

if.end.i.__do_sys_fsconfig.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_key)
  %tobool.not.i = icmp ne i32 %_key, 0
  %4 = or i32 %aux, %_value
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %6 = and i1 %tobool.not.i, %5
  br i1 %6, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.__do_sys_fsconfig.exit_crit_edge

sw.bb.i.__do_sys_fsconfig.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_key)
  %tobool7.not.i = icmp ne i32 %_key, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_value)
  %tobool9.not.i = icmp ne i32 %_value, 0
  %or.cond167.not.i = and i1 %tobool7.not.i, %tobool9.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aux)
  %tobool11.not.i = icmp eq i32 %aux, 0
  %or.cond168.i = and i1 %or.cond167.not.i, %tobool11.not.i
  br i1 %or.cond168.i, label %sw.bb6.i.sw.epilog.i_crit_edge, label %sw.bb6.i.__do_sys_fsconfig.exit_crit_edge

sw.bb6.i.__do_sys_fsconfig.exit_crit_edge:        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

sw.bb6.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_key)
  %tobool15.not.i = icmp eq i32 %_key, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_value)
  %tobool17.not.i = icmp eq i32 %_value, 0
  %or.cond169.i = or i1 %tobool15.not.i, %tobool17.not.i
  %7 = add i32 %aux, -1048577
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576, i32 %7)
  %8 = icmp ult i32 %7, -1048576
  %9 = or i1 %or.cond169.i, %8
  br i1 %9, label %sw.bb14.i.__do_sys_fsconfig.exit_crit_edge, label %sw.bb14.i.sw.epilog.i_crit_edge

sw.bb14.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb14.i.__do_sys_fsconfig.exit_crit_edge:       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

sw.bb24.i:                                        ; preds = %if.end.i.sw.bb24.i_crit_edge, %if.end.i.sw.bb24.i_crit_edge8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_key)
  %tobool25.not.i = icmp eq i32 %_key, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_value)
  %tobool27.not.i = icmp eq i32 %_value, 0
  %or.cond172.i = or i1 %tobool25.not.i, %tobool27.not.i
  br i1 %or.cond172.i, label %sw.bb24.i.__do_sys_fsconfig.exit_crit_edge, label %lor.lhs.false28.i

sw.bb24.i.__do_sys_fsconfig.exit_crit_edge:       ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

lor.lhs.false28.i:                                ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %aux)
  %cmp29.not.i = icmp ne i32 %aux, -100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aux)
  %cmp30.i = icmp slt i32 %aux, 0
  %or.cond173.i = and i1 %cmp29.not.i, %cmp30.i
  br i1 %or.cond173.i, label %lor.lhs.false28.i.__do_sys_fsconfig.exit_crit_edge, label %lor.lhs.false28.i.sw.epilog.i_crit_edge

lor.lhs.false28.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

lor.lhs.false28.i.__do_sys_fsconfig.exit_crit_edge: ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

sw.bb33.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_key)
  %tobool34.not.i = icmp eq i32 %_key, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_value)
  %tobool36.not.i = icmp ne i32 %_value, 0
  %or.cond174.not.i = or i1 %tobool34.not.i, %tobool36.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aux)
  %cmp38.i = icmp slt i32 %aux, 0
  %or.cond175.i = or i1 %or.cond174.not.i, %cmp38.i
  br i1 %or.cond175.i, label %sw.bb33.i.__do_sys_fsconfig.exit_crit_edge, label %sw.bb33.i.sw.epilog.i_crit_edge

sw.bb33.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb33.i.__do_sys_fsconfig.exit_crit_edge:       ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

sw.bb41.i:                                        ; preds = %if.end.i.sw.bb41.i_crit_edge, %if.end.i.sw.bb41.i_crit_edge9
  %10 = or i32 %aux, %_value
  %11 = or i32 %10, %_key
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %sw.bb41.i.sw.epilog.i_crit_edge, label %sw.bb41.i.__do_sys_fsconfig.exit_crit_edge

sw.bb41.i.__do_sys_fsconfig.exit_crit_edge:       ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

sw.bb41.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb41.i.sw.epilog.i_crit_edge, %sw.bb33.i.sw.epilog.i_crit_edge, %lor.lhs.false28.i.sw.epilog.i_crit_edge, %sw.bb14.i.sw.epilog.i_crit_edge, %sw.bb6.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd) #6, !noalias !73
  %and.i.i.i = and i32 %call.i.i, -4
  %13 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool49.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool49.not.i, label %sw.epilog.i.__do_sys_fsconfig.exit_crit_edge, label %if.end51.i

sw.epilog.i.__do_sys_fsconfig.exit_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

if.end51.i:                                       ; preds = %sw.epilog.i
  %f_op.i = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_op.i, align 4
  %cmp53.not.i = icmp eq ptr %15, @fscontext_fops
  br i1 %cmp53.not.i, label %if.end55.i, label %if.end51.i.out_f.i_crit_edge

if.end51.i.out_f.i_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_f.i

if.end55.i:                                       ; preds = %if.end51.i
  %private_data.i = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 16
  %16 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %cmp57.i = icmp eq ptr %19, @legacy_fs_context_ops
  %cmd.off.i = add nsw i32 %cmd, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cmd.off.i)
  %switch.i = icmp ult i32 %cmd.off.i, 4
  %or.cond178.i = and i1 %switch.i, %cmp57.i
  br i1 %or.cond178.i, label %if.end55.i.out_f.i_crit_edge, label %if.end61.i

if.end55.i.out_f.i_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_f.i

if.end61.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_key)
  %tobool62.not.i = icmp eq i32 %_key, 0
  br i1 %tobool62.not.i, label %if.end61.i.if.end70.i_crit_edge, label %if.then63.i

if.end61.i.if.end70.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.then63.i:                                      ; preds = %if.end61.i
  %call.i = tail call ptr @strndup_user(ptr noundef nonnull %0, i32 noundef 256) #6
  %20 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %param.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then66.i, label %if.then63.i.if.end70.i_crit_edge

if.then63.i.if.end70.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.then66.i:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call.i to i32
  br label %out_f.i

if.end70.i:                                       ; preds = %if.then63.i.if.end70.i_crit_edge, %if.end61.i.if.end70.i_crit_edge
  %22 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %cmd, label %if.end70.i.sw.epilog105.i_crit_edge [
    i32 0, label %sw.bb71.i
    i32 1, label %sw.bb72.i
    i32 2, label %sw.bb80.i
    i32 4, label %sw.bb88.i
    i32 3, label %if.end70.i.sw.bb89.i_crit_edge
    i32 5, label %sw.bb98.i
  ]

if.end70.i.sw.bb89.i_crit_edge:                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb89.i

if.end70.i.sw.epilog105.i_crit_edge:              ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog105.i

sw.bb71.i:                                        ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  %type.i = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 1
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %type.i, align 4
  br label %sw.epilog105.i

sw.bb72.i:                                        ; preds = %if.end70.i
  %type73.i = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 1
  %24 = ptrtoint ptr %type73.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %type73.i, align 4
  %call74.i = tail call ptr @strndup_user(ptr noundef %1, i32 noundef 256) #6
  %25 = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call74.i, ptr %25, align 4
  %cmp.i179.i = icmp ugt ptr %call74.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179.i, label %if.then76.i, label %if.end78.i

if.then76.i:                                      ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call74.i to i32
  br label %out_key.i

if.end78.i:                                       ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #8
  %call79.i = tail call i32 @strlen(ptr noundef %call74.i) #12
  %size.i = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 3
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call79.i, ptr %size.i, align 4
  br label %sw.epilog105.i

sw.bb80.i:                                        ; preds = %if.end70.i
  %type81.i = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 1
  %29 = ptrtoint ptr %type81.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %type81.i, align 4
  %size82.i = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 3
  %30 = ptrtoint ptr %size82.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %aux, ptr %size82.i, align 4
  %call83.i = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %aux) #6
  %31 = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call83.i, ptr %31, align 4
  %cmp.i180.i = icmp ugt ptr %call83.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180.i, label %if.then85.i, label %sw.bb80.i.sw.epilog105.i_crit_edge

sw.bb80.i.sw.epilog105.i_crit_edge:               ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog105.i

if.then85.i:                                      ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %call83.i to i32
  br label %out_key.i

sw.bb88.i:                                        ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb89.i

sw.bb89.i:                                        ; preds = %sw.bb88.i, %if.end70.i.sw.bb89.i_crit_edge
  %lookup_flags.0.i = phi i32 [ 0, %if.end70.i.sw.bb89.i_crit_edge ], [ 16384, %sw.bb88.i ]
  %type90.i = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 1
  %34 = ptrtoint ptr %type90.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %type90.i, align 4
  %call91.i = tail call ptr @getname_flags(ptr noundef %1, i32 noundef %lookup_flags.0.i, ptr noundef null) #6
  %35 = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call91.i, ptr %35, align 4
  %cmp.i181.i = icmp ugt ptr %call91.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181.i, label %if.then93.i, label %if.end95.i

if.then93.i:                                      ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %call91.i to i32
  br label %out_key.i

if.end95.i:                                       ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #8
  %dirfd.i = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 4
  %38 = ptrtoint ptr %dirfd.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %aux, ptr %dirfd.i, align 4
  %39 = ptrtoint ptr %call91.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call91.i, align 4
  %call96.i = tail call i32 @strlen(ptr noundef %40) #12
  %size97.i = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 3
  %41 = ptrtoint ptr %size97.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call96.i, ptr %size97.i, align 4
  br label %sw.epilog105.i

sw.bb98.i:                                        ; preds = %if.end70.i
  %type99.i = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 1
  %42 = ptrtoint ptr %type99.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 5, ptr %type99.i, align 4
  %call100.i = tail call ptr @fget(i32 noundef %aux) #6
  %43 = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call100.i, ptr %43, align 4
  %tobool101.not.i = icmp eq ptr %call100.i, null
  br i1 %tobool101.not.i, label %sw.bb98.i.out_key.i_crit_edge, label %sw.bb98.i.sw.epilog105.i_crit_edge

sw.bb98.i.sw.epilog105.i_crit_edge:               ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog105.i

sw.bb98.i.out_key.i_crit_edge:                    ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_key.i

sw.epilog105.i:                                   ; preds = %sw.bb98.i.sw.epilog105.i_crit_edge, %if.end95.i, %sw.bb80.i.sw.epilog105.i_crit_edge, %if.end78.i, %sw.bb71.i, %if.end70.i.sw.epilog105.i_crit_edge
  %uapi_mutex.i = getelementptr inbounds %struct.fs_context, ptr %17, i32 0, i32 1
  %call106.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %uapi_mutex.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %cmp107.i = icmp eq i32 %call106.i, 0
  br i1 %cmp107.i, label %if.then108.i, label %sw.epilog105.i.if.end111.i_crit_edge

sw.epilog105.i.if.end111.i_crit_edge:             ; preds = %sw.epilog105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111.i

if.then108.i:                                     ; preds = %sw.epilog105.i
  %call.i1 = tail call i32 @finish_clean_context(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %if.end.i3, label %if.then108.i.vfs_fsconfig_locked.exit_crit_edge

if.then108.i.vfs_fsconfig_locked.exit_crit_edge:  ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vfs_fsconfig_locked.exit

if.end.i3:                                        ; preds = %if.then108.i
  %45 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %cmd, label %sw.default.i [
    i32 6, label %sw.bb.i4
    i32 7, label %sw.bb23.i
  ]

sw.bb.i4:                                         ; preds = %if.end.i3
  %phase.i = getelementptr inbounds %struct.fs_context, ptr %17, i32 0, i32 17
  %46 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load.i = load i32, ptr %phase.i, align 4
  %47 = and i32 %bf.load.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not.i = icmp eq i32 %47, 0
  br i1 %cmp.not.i, label %if.end2.i, label %sw.bb.i4.vfs_fsconfig_locked.exit_crit_edge

sw.bb.i4.vfs_fsconfig_locked.exit_crit_edge:      ; preds = %sw.bb.i4
  call void @__sanitizer_cov_trace_pc() #8
  br label %vfs_fsconfig_locked.exit

if.end2.i:                                        ; preds = %sw.bb.i4
  %call3.i = tail call zeroext i1 @mount_capable(ptr noundef %17) #6
  br i1 %call3.i, label %if.end5.i, label %if.end2.i.vfs_fsconfig_locked.exit_crit_edge

if.end2.i.vfs_fsconfig_locked.exit_crit_edge:     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vfs_fsconfig_locked.exit

if.end5.i:                                        ; preds = %if.end2.i
  %48 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load7.i = load i32, ptr %phase.i, align 4
  %bf.clear8.i = and i32 %bf.load7.i, -16711681
  %bf.set.i = or i32 %bf.clear8.i, 65536
  store i32 %bf.set.i, ptr %phase.i, align 4
  %call9.i = tail call i32 @vfs_get_tree(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end5.i.sw.epilog.i6_crit_edge

if.end5.i.sw.epilog.i6_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i6

if.end12.i:                                       ; preds = %if.end5.i
  %root.i = getelementptr inbounds %struct.fs_context, ptr %17, i32 0, i32 5
  %49 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %root.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %d_sb.i, align 4
  %call13.i = tail call i32 @security_sb_kern_mount(ptr noundef %52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end18.i, label %if.then17.i, !prof !70

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fc_drop_locked(ptr noundef %17) #6
  br label %sw.epilog.i6

if.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %s_umount.i = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 14
  tail call void @up_write(ptr noundef %s_umount.i) #6
  %53 = ptrtoint ptr %phase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load20.i = load i32, ptr %phase.i, align 4
  %bf.clear21.i = and i32 %bf.load20.i, -16711681
  %bf.set22.i = or i32 %bf.clear21.i, 131072
  store i32 %bf.set22.i, ptr %phase.i, align 4
  br label %vfs_fsconfig_locked.exit

sw.bb23.i:                                        ; preds = %if.end.i3
  %phase24.i = getelementptr inbounds %struct.fs_context, ptr %17, i32 0, i32 17
  %54 = ptrtoint ptr %phase24.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load25.i = load i32, ptr %phase24.i, align 4
  %55 = and i32 %bf.load25.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %55)
  %cmp28.not.i = icmp eq i32 %55, 262144
  br i1 %cmp28.not.i, label %if.end30.i, label %sw.bb23.i.vfs_fsconfig_locked.exit_crit_edge

sw.bb23.i.vfs_fsconfig_locked.exit_crit_edge:     ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vfs_fsconfig_locked.exit

if.end30.i:                                       ; preds = %sw.bb23.i
  %bf.clear33.i = and i32 %bf.load25.i, -16711681
  %bf.set34.i = or i32 %bf.clear33.i, 327680
  %56 = ptrtoint ptr %phase24.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %bf.set34.i, ptr %phase24.i, align 4
  %root35.i = getelementptr inbounds %struct.fs_context, ptr %17, i32 0, i32 5
  %57 = ptrtoint ptr %root35.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %root35.i, align 4
  %d_sb36.i = getelementptr inbounds %struct.dentry, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %d_sb36.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d_sb36.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 53
  %61 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_user_ns.i, align 8
  %call37.i = tail call zeroext i1 @ns_capable(ptr noundef %62, i32 noundef 21) #6
  br i1 %call37.i, label %if.end39.i, label %if.end30.i.sw.epilog.i6_crit_edge

if.end30.i.sw.epilog.i6_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i6

if.end39.i:                                       ; preds = %if.end30.i
  %s_umount40.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 14
  tail call void @down_write(ptr noundef %s_umount40.i) #6
  %call41.i = tail call i32 @reconfigure_super(ptr noundef %17) #6
  tail call void @up_write(ptr noundef %s_umount40.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool43.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end39.i.sw.epilog.i6_crit_edge

if.end39.i.sw.epilog.i6_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i6

if.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vfs_clean_context(ptr noundef %17) #6
  br label %vfs_fsconfig_locked.exit

sw.default.i:                                     ; preds = %if.end.i3
  %phase46.i = getelementptr inbounds %struct.fs_context, ptr %17, i32 0, i32 17
  %63 = ptrtoint ptr %phase46.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load47.i = load i32, ptr %phase46.i, align 4
  %bf.lshr48.i = lshr i32 %bf.load47.i, 16
  %trunc.i = trunc i32 %bf.lshr48.i to i8
  %64 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %trunc.i, label %sw.default.i.vfs_fsconfig_locked.exit_crit_edge [
    i8 0, label %sw.default.i.if.end57.i_crit_edge
    i8 4, label %sw.default.i.if.end57.i_crit_edge10
  ]

sw.default.i.if.end57.i_crit_edge10:              ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

sw.default.i.if.end57.i_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

sw.default.i.vfs_fsconfig_locked.exit_crit_edge:  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vfs_fsconfig_locked.exit

if.end57.i:                                       ; preds = %sw.default.i.if.end57.i_crit_edge, %sw.default.i.if.end57.i_crit_edge10
  %call58.i = call i32 @vfs_parse_fs_param(ptr noundef %17, ptr noundef nonnull %param.i) #6
  br label %vfs_fsconfig_locked.exit

sw.epilog.i6:                                     ; preds = %if.end39.i.sw.epilog.i6_crit_edge, %if.end30.i.sw.epilog.i6_crit_edge, %if.then17.i, %if.end5.i.sw.epilog.i6_crit_edge
  %ret.0.i5 = phi i32 [ %call41.i, %if.end39.i.sw.epilog.i6_crit_edge ], [ %call9.i, %if.end5.i.sw.epilog.i6_crit_edge ], [ %call13.i, %if.then17.i ], [ -1, %if.end30.i.sw.epilog.i6_crit_edge ]
  %phase59.i = getelementptr inbounds %struct.fs_context, ptr %17, i32 0, i32 17
  %65 = ptrtoint ptr %phase59.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load60.i = load i32, ptr %phase59.i, align 4
  %bf.clear61.i = and i32 %bf.load60.i, -16711681
  %bf.set62.i = or i32 %bf.clear61.i, 393216
  store i32 %bf.set62.i, ptr %phase59.i, align 4
  br label %vfs_fsconfig_locked.exit

vfs_fsconfig_locked.exit:                         ; preds = %sw.epilog.i6, %if.end57.i, %sw.default.i.vfs_fsconfig_locked.exit_crit_edge, %if.end45.i, %sw.bb23.i.vfs_fsconfig_locked.exit_crit_edge, %if.end18.i, %if.end2.i.vfs_fsconfig_locked.exit_crit_edge, %sw.bb.i4.vfs_fsconfig_locked.exit_crit_edge, %if.then108.i.vfs_fsconfig_locked.exit_crit_edge
  %retval.0.i7 = phi i32 [ %call58.i, %if.end57.i ], [ %ret.0.i5, %sw.epilog.i6 ], [ 0, %if.end45.i ], [ 0, %if.end18.i ], [ %call.i1, %if.then108.i.vfs_fsconfig_locked.exit_crit_edge ], [ -16, %sw.bb.i4.vfs_fsconfig_locked.exit_crit_edge ], [ -1, %if.end2.i.vfs_fsconfig_locked.exit_crit_edge ], [ -16, %sw.bb23.i.vfs_fsconfig_locked.exit_crit_edge ], [ -16, %sw.default.i.vfs_fsconfig_locked.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %uapi_mutex.i) #6
  br label %if.end111.i

if.end111.i:                                      ; preds = %vfs_fsconfig_locked.exit, %sw.epilog105.i.if.end111.i_crit_edge
  %ret.0.i = phi i32 [ %retval.0.i7, %vfs_fsconfig_locked.exit ], [ %call106.i, %sw.epilog105.i.if.end111.i_crit_edge ]
  %66 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %cmd, label %if.end111.i.out_key.i_crit_edge [
    i32 1, label %if.end111.i.sw.bb112.i_crit_edge
    i32 2, label %if.end111.i.sw.bb112.i_crit_edge11
    i32 3, label %if.end111.i.sw.bb113.i_crit_edge
    i32 4, label %if.end111.i.sw.bb113.i_crit_edge12
    i32 5, label %sw.bb117.i
  ]

if.end111.i.sw.bb113.i_crit_edge12:               ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb113.i

if.end111.i.sw.bb113.i_crit_edge:                 ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb113.i

if.end111.i.sw.bb112.i_crit_edge11:               ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb112.i

if.end111.i.sw.bb112.i_crit_edge:                 ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb112.i

if.end111.i.out_key.i_crit_edge:                  ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_key.i

sw.bb112.i:                                       ; preds = %if.end111.i.sw.bb112.i_crit_edge, %if.end111.i.sw.bb112.i_crit_edge11
  %67 = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 2
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  call void @kfree(ptr noundef %69) #6
  br label %out_key.i

sw.bb113.i:                                       ; preds = %if.end111.i.sw.bb113.i_crit_edge, %if.end111.i.sw.bb113.i_crit_edge12
  %70 = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool114.not.i = icmp eq ptr %72, null
  br i1 %tobool114.not.i, label %sw.bb113.i.out_key.i_crit_edge, label %if.then115.i

sw.bb113.i.out_key.i_crit_edge:                   ; preds = %sw.bb113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_key.i

if.then115.i:                                     ; preds = %sw.bb113.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @putname(ptr noundef nonnull %72) #6
  br label %out_key.i

sw.bb117.i:                                       ; preds = %if.end111.i
  %73 = getelementptr inbounds %struct.fs_parameter, ptr %param.i, i32 0, i32 2
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %tobool118.not.i = icmp eq ptr %75, null
  br i1 %tobool118.not.i, label %sw.bb117.i.out_key.i_crit_edge, label %if.then119.i

sw.bb117.i.out_key.i_crit_edge:                   ; preds = %sw.bb117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_key.i

if.then119.i:                                     ; preds = %sw.bb117.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @fput(ptr noundef nonnull %75) #6
  br label %out_key.i

out_key.i:                                        ; preds = %if.then119.i, %sw.bb117.i.out_key.i_crit_edge, %if.then115.i, %sw.bb113.i.out_key.i_crit_edge, %sw.bb112.i, %if.end111.i.out_key.i_crit_edge, %sw.bb98.i.out_key.i_crit_edge, %if.then93.i, %if.then85.i, %if.then76.i
  %ret.1.i = phi i32 [ %ret.0.i, %if.end111.i.out_key.i_crit_edge ], [ %ret.0.i, %if.then119.i ], [ %ret.0.i, %sw.bb117.i.out_key.i_crit_edge ], [ %ret.0.i, %if.then115.i ], [ %ret.0.i, %sw.bb113.i.out_key.i_crit_edge ], [ %ret.0.i, %sw.bb112.i ], [ -9, %sw.bb98.i.out_key.i_crit_edge ], [ %37, %if.then93.i ], [ %33, %if.then85.i ], [ %27, %if.then76.i ]
  %76 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %param.i, align 4
  call void @kfree(ptr noundef %77) #6
  br label %out_f.i

out_f.i:                                          ; preds = %out_key.i, %if.then66.i, %if.end55.i.out_f.i_crit_edge, %if.end51.i.out_f.i_crit_edge
  %ret.2.i = phi i32 [ -22, %if.end51.i.out_f.i_crit_edge ], [ %21, %if.then66.i ], [ %ret.1.i, %out_key.i ], [ -95, %if.end55.i.out_f.i_crit_edge ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %out_f.i.__do_sys_fsconfig.exit_crit_edge, label %if.then.i.i

out_f.i.__do_sys_fsconfig.exit_crit_edge:         ; preds = %out_f.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_fsconfig.exit

if.then.i.i:                                      ; preds = %out_f.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @fput(ptr noundef nonnull %13) #6
  br label %__do_sys_fsconfig.exit

__do_sys_fsconfig.exit:                           ; preds = %if.then.i.i, %out_f.i.__do_sys_fsconfig.exit_crit_edge, %sw.epilog.i.__do_sys_fsconfig.exit_crit_edge, %sw.bb41.i.__do_sys_fsconfig.exit_crit_edge, %sw.bb33.i.__do_sys_fsconfig.exit_crit_edge, %lor.lhs.false28.i.__do_sys_fsconfig.exit_crit_edge, %sw.bb24.i.__do_sys_fsconfig.exit_crit_edge, %sw.bb14.i.__do_sys_fsconfig.exit_crit_edge, %sw.bb6.i.__do_sys_fsconfig.exit_crit_edge, %sw.bb.i.__do_sys_fsconfig.exit_crit_edge, %if.end.i.__do_sys_fsconfig.exit_crit_edge, %entry.__do_sys_fsconfig.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_fsconfig.exit_crit_edge ], [ -22, %sw.bb.i.__do_sys_fsconfig.exit_crit_edge ], [ -22, %sw.bb6.i.__do_sys_fsconfig.exit_crit_edge ], [ -22, %sw.bb14.i.__do_sys_fsconfig.exit_crit_edge ], [ -22, %lor.lhs.false28.i.__do_sys_fsconfig.exit_crit_edge ], [ -22, %sw.bb24.i.__do_sys_fsconfig.exit_crit_edge ], [ -22, %sw.bb33.i.__do_sys_fsconfig.exit_crit_edge ], [ -22, %sw.bb41.i.__do_sys_fsconfig.exit_crit_edge ], [ -95, %if.end.i.__do_sys_fsconfig.exit_crit_edge ], [ -9, %sw.epilog.i.__do_sys_fsconfig.exit_crit_edge ], [ %ret.2.i, %out_f.i.__do_sys_fsconfig.exit_crit_edge ], [ %ret.2.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %param.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_mount(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fs_context_for_reconfigure(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_clean_context(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mount_capable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_get_tree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sb_kern_mount(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_drop_locked(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reconfigure_super(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfs_clean_context(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_param(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @fscontext_fops, !1, !"fscontext_fops", i1 false, i1 false}
!1 = !{!"../fs/fsopen.c", i32 78, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/fsopen.c", i32 115, i32 1}
!4 = !{ptr @event_enter__fsopen, !3, !"event_enter__fsopen", i1 false, i1 false}
!5 = !{ptr @__event_enter__fsopen, !3, !"__event_enter__fsopen", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @event_exit__fsopen, !3, !"event_exit__fsopen", i1 false, i1 false}
!8 = !{ptr @__event_exit__fsopen, !3, !"__event_exit__fsopen", i1 false, i1 false}
!9 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__syscall_meta__fsopen, !3, !"__syscall_meta__fsopen", i1 false, i1 false}
!11 = !{ptr @__p_syscall_meta__fsopen, !3, !"__p_syscall_meta__fsopen", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/fsopen.c", i32 158, i32 1}
!14 = !{ptr @event_enter__fspick, !13, !"event_enter__fspick", i1 false, i1 false}
!15 = !{ptr @__event_enter__fspick, !13, !"__event_enter__fspick", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @event_exit__fspick, !13, !"event_exit__fspick", i1 false, i1 false}
!18 = !{ptr @__event_exit__fspick, !13, !"__event_exit__fspick", i1 false, i1 false}
!19 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__syscall_meta__fspick, !13, !"__syscall_meta__fspick", i1 false, i1 false}
!21 = !{ptr @__p_syscall_meta__fspick, !13, !"__p_syscall_meta__fspick", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/fsopen.c", i32 314, i32 1}
!24 = !{ptr @event_enter__fsconfig, !23, !"event_enter__fsconfig", i1 false, i1 false}
!25 = !{ptr @__event_enter__fsconfig, !23, !"__event_enter__fsconfig", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @event_exit__fsconfig, !23, !"event_exit__fsconfig", i1 false, i1 false}
!28 = !{ptr @__event_exit__fsconfig, !23, !"__event_exit__fsconfig", i1 false, i1 false}
!29 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__syscall_meta__fsconfig, !23, !"__syscall_meta__fsconfig", i1 false, i1 false}
!31 = !{ptr @__p_syscall_meta__fsconfig, !23, !"__p_syscall_meta__fsconfig", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!39 = !{ptr @.str.12, !3, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !3, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @types__fsopen, !3, !"types__fsopen", i1 false, i1 false}
!42 = !{ptr @.str.14, !3, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !3, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @args__fsopen, !3, !"args__fsopen", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/fsopen.c", i32 91, i32 24}
!47 = !{ptr @.str.17, !13, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @types__fspick, !13, !"types__fspick", i1 false, i1 false}
!49 = !{ptr @.str.18, !13, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !13, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @args__fspick, !13, !"args__fspick", i1 false, i1 false}
!52 = !{ptr @.str.20, !23, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @types__fsconfig, !23, !"types__fsconfig", i1 false, i1 false}
!54 = !{ptr @.str.21, !23, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.22, !23, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !23, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !23, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.25, !23, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @args__fsconfig, !23, !"args__fsconfig", i1 false, i1 false}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2152310271, i64 2152310296}
!72 = !{!"auto-init"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"fdget: %agg.result"}
!75 = distinct !{!75, !"fdget"}
