; ModuleID = '/llk/IR_all_yes/security/landlock/syscalls.c_pt.bc'
source_filename = "../security/landlock/syscalls.c"
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.landlock_ruleset_attr = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.landlock_path_beneath_attr = type <{ i64, i32 }>
%struct.path = type { ptr, ptr }
%struct.landlock_ruleset = type { %struct.rb_root, ptr, %union.anon.99 }
%struct.rb_root = type { ptr }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { %struct.mutex, %struct.refcount_struct, i32, i32, [0 x i16] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.19, ptr }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.96 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.98 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.43 = type { %struct.callback_head }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sys_enter_landlock_create_ruleset\00", [62 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__landlock_create_ruleset = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__landlock_create_ruleset, ptr @args__landlock_create_ruleset, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__landlock_create_ruleset, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__landlock_create_ruleset, i64 20) }, ptr @event_enter__landlock_create_ruleset, ptr @event_exit__landlock_create_ruleset }, align 4
@event_enter__landlock_create_ruleset = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__landlock_create_ruleset, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__landlock_create_ruleset = internal global ptr @event_enter__landlock_create_ruleset, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sys_exit_landlock_create_ruleset\00", [63 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__landlock_create_ruleset = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__landlock_create_ruleset, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__landlock_create_ruleset = internal global ptr @event_exit__landlock_create_ruleset, section "_ftrace_events", align 4
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sys_landlock_create_ruleset\00", [36 x i8] zeroinitializer }, align 32
@types__landlock_create_ruleset = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@args__landlock_create_ruleset = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__landlock_create_ruleset = internal global ptr @__syscall_meta__landlock_create_ruleset, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sys_enter_landlock_add_rule\00", [36 x i8] zeroinitializer }, align 32
@__syscall_meta__landlock_add_rule = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 4, ptr @types__landlock_add_rule, ptr @args__landlock_add_rule, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__landlock_add_rule, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__landlock_add_rule, i64 20) }, ptr @event_enter__landlock_add_rule, ptr @event_exit__landlock_add_rule }, align 4
@event_enter__landlock_add_rule = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__landlock_add_rule, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__landlock_add_rule = internal global ptr @event_enter__landlock_add_rule, section "_ftrace_events", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_exit_landlock_add_rule\00", [37 x i8] zeroinitializer }, align 32
@event_exit__landlock_add_rule = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__landlock_add_rule, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__landlock_add_rule = internal global ptr @event_exit__landlock_add_rule, section "_ftrace_events", align 4
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_landlock_add_rule\00", [42 x i8] zeroinitializer }, align 32
@types__landlock_add_rule = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.11], [16 x i8] zeroinitializer }, align 32
@args__landlock_add_rule = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.14], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__landlock_add_rule = internal global ptr @__syscall_meta__landlock_add_rule, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sys_enter_landlock_restrict_self\00", [63 x i8] zeroinitializer }, align 32
@__syscall_meta__landlock_restrict_self = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 2, ptr @types__landlock_restrict_self, ptr @args__landlock_restrict_self, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__landlock_restrict_self, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__landlock_restrict_self, i64 20) }, ptr @event_enter__landlock_restrict_self, ptr @event_exit__landlock_restrict_self }, align 4
@event_enter__landlock_restrict_self = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__landlock_restrict_self, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__landlock_restrict_self = internal global ptr @event_enter__landlock_restrict_self, section "_ftrace_events", align 4
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sys_exit_landlock_restrict_self\00", [32 x i8] zeroinitializer }, align 32
@event_exit__landlock_restrict_self = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__landlock_restrict_self, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__landlock_restrict_self = internal global ptr @event_exit__landlock_restrict_self, section "_ftrace_events", align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_landlock_restrict_self\00", [37 x i8] zeroinitializer }, align 32
@types__landlock_restrict_self = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@args__landlock_restrict_self = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__landlock_restrict_self = internal global ptr @__syscall_meta__landlock_restrict_self, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"const struct landlock_ruleset_attr *const\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const size_t\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"const __u32\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"attr\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@landlock_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"landlock-ruleset\00", [47 x i8] zeroinitializer }, align 32
@ruleset_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @fop_dummy_read, ptr @fop_dummy_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @fop_ruleset_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"const int\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"const enum landlock_rule_type\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"const void *const\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ruleset_fd\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rule_type\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rule_attr\00", [22 x i8] zeroinitializer }, align 32
@get_ruleset_from_fd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"security/landlock/syscalls.c\00", [35 x i8] zeroinitializer }, align 32
@landlock_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant [37 x i8] c"event_enter__landlock_create_ruleset\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [36 x i8] c"event_exit__landlock_create_ruleset\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [31 x i8] c"types__landlock_create_ruleset\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [30 x i8] c"args__landlock_create_ruleset\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"event_enter__landlock_add_rule\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [30 x i8] c"event_exit__landlock_add_rule\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"types__landlock_add_rule\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"args__landlock_add_rule\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [36 x i8] c"event_enter__landlock_restrict_self\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [35 x i8] c"event_exit__landlock_restrict_self\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [30 x i8] c"types__landlock_restrict_self\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [29 x i8] c"args__landlock_restrict_self\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 392, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 156, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 195, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"ruleset_fops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 125, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 156, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 304, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [32 x i8] c"../security/landlock/syscalls.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 226, i32 6 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__event_enter__landlock_add_rule, ptr @__event_enter__landlock_create_ruleset, ptr @__event_enter__landlock_restrict_self, ptr @__event_exit__landlock_add_rule, ptr @__event_exit__landlock_create_ruleset, ptr @__event_exit__landlock_restrict_self, ptr @__p_syscall_meta__landlock_add_rule, ptr @__p_syscall_meta__landlock_create_ruleset, ptr @__p_syscall_meta__landlock_restrict_self, ptr @__syscall_meta__landlock_add_rule, ptr @__syscall_meta__landlock_create_ruleset, ptr @__syscall_meta__landlock_restrict_self, ptr @event_enter__landlock_add_rule, ptr @event_enter__landlock_create_ruleset, ptr @event_enter__landlock_restrict_self, ptr @event_exit__landlock_add_rule, ptr @event_exit__landlock_create_ruleset, ptr @event_exit__landlock_restrict_self, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__landlock_create_ruleset, ptr @args__landlock_create_ruleset, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__landlock_add_rule, ptr @args__landlock_add_rule, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__landlock_restrict_self, ptr @args__landlock_restrict_self, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ruleset_fops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__landlock_create_ruleset to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__landlock_create_ruleset to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__landlock_create_ruleset to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__landlock_create_ruleset to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__landlock_add_rule to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__landlock_add_rule to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__landlock_add_rule to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__landlock_add_rule to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__landlock_restrict_self to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__landlock_restrict_self to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__landlock_restrict_self to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__landlock_restrict_self to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ruleset_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_landlock_create_ruleset = dso_local alias i32 (ptr, i32, i32), ptr @__se_sys_landlock_create_ruleset
@sys_landlock_add_rule = dso_local alias i32 (i32, i32, ptr, i32), ptr @__se_sys_landlock_add_rule
@sys_landlock_restrict_self = dso_local alias i32 (i32, i32), ptr @__se_sys_landlock_restrict_self

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_landlock_create_ruleset(i32 noundef %attr, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %ruleset_attr.i = alloca %struct.landlock_ruleset_attr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %attr to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ruleset_attr.i) #6
  %1 = ptrtoint ptr %ruleset_attr.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %ruleset_attr.i, align 8, !annotation !74
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @landlock_initialized to i32))
  %2 = load i8, ptr @landlock_initialized, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.__do_sys_landlock_create_ruleset.exit_crit_edge, label %if.end.i

entry.__do_sys_landlock_create_ruleset.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_create_ruleset.exit

if.end.i:                                         ; preds = %entry
  %3 = zext i32 %flags to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %flags, label %if.end.i.if.end7.i_crit_edge [
    i32 0, label %if.end8.i
    i32 1, label %land.lhs.true.i
  ]

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %4 = or i32 %size, %attr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %land.lhs.true.i.__do_sys_landlock_create_ruleset.exit_crit_edge, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

land.lhs.true.i.__do_sys_landlock_create_ruleset.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_create_ruleset.exit

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  br label %__do_sys_landlock_create_ruleset.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %tobool1.not.i.i = icmp eq i32 %attr, 0
  br i1 %tobool1.not.i.i, label %if.end8.i.__do_sys_landlock_create_ruleset.exit_crit_edge, label %do.end12.i.i

if.end8.i.__do_sys_landlock_create_ruleset.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_create_ruleset.exit

do.end12.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp13.i.i = icmp ult i32 %size, 8
  br i1 %cmp13.i.i, label %do.end12.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge, label %if.end15.i.i

do.end12.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge: ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_create_ruleset.exit

if.end15.i.i:                                     ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp16.i.i = icmp ugt i32 %size, 4096
  br i1 %cmp16.i.i, label %if.end15.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge, label %if.end18.i.i

if.end15.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_create_ruleset.exit

if.end18.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp.i.i.i = icmp ugt i32 %size, 8
  br i1 %cmp.i.i.i, label %if.then9.i.i.i, label %if.end18.i.i.if.end59.i.i.i.i.i_crit_edge

if.end18.i.i.if.end59.i.i.i.i.i_crit_edge:        ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i.i.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end18.i.i
  %sub.i.i.i = add nsw i32 %size, -8
  %add.ptr10.i.i.i = getelementptr i8, ptr %0, i32 8
  %call.i.i.i = tail call i32 @check_zeroed_user(ptr noundef %add.ptr10.i.i.i, i32 noundef %sub.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp11.i.i.i = icmp slt i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  %..i.i.i = select i1 %tobool.not.i.i.i, i32 -7, i32 %call.i.i.i
  br i1 %cmp11.i.i.i, label %if.then9.i.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge, label %if.then9.i.i.i.if.end59.i.i.i.i.i_crit_edge

if.then9.i.i.i.if.end59.i.i.i.i.i_crit_edge:      ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i.i.i.i.i

if.then9.i.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge: ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_create_ruleset.exit

if.end59.i.i.i.i.i:                               ; preds = %if.then9.i.i.i.if.end59.i.i.i.i.i_crit_edge, %if.end18.i.i.if.end59.i.i.i.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #6
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i.i.i, label %if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %if.end59.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end59.i.i.i.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 8, i32 -1226833920) #9, !srcloc !76
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !77

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ruleset_attr.i, i32 noundef 8) #6
  %7 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #3, !srcloc !78
  %and.i.i.i.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #6, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ruleset_attr.i, ptr noundef nonnull %0, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #6, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end11.i, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !77

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i4.i.i.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 8, %if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 8, %res.0.i.i4.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %ruleset_attr.i, i32 %sub.i.i.i.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i4.i.i.i)
  br label %__do_sys_landlock_create_ruleset.exit

if.end11.i:                                       ; preds = %if.end.i.i.i.i.i
  %11 = ptrtoint ptr %ruleset_attr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ruleset_attr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8192, i64 %12)
  %cmp12.not.i = icmp ult i64 %12, 8192
  br i1 %cmp12.not.i, label %if.end14.i, label %if.end11.i.__do_sys_landlock_create_ruleset.exit_crit_edge

if.end11.i.__do_sys_landlock_create_ruleset.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_create_ruleset.exit

if.end14.i:                                       ; preds = %if.end11.i
  %conv.i = trunc i64 %12 to i32
  %call16.i = call ptr @landlock_create_ruleset(i32 noundef %conv.i) #6
  %cmp.i.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then18.i, label %if.end20.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call16.i to i32
  br label %__do_sys_landlock_create_ruleset.exit

if.end20.i:                                       ; preds = %if.end14.i
  %call21.i = call i32 @anon_inode_getfd(ptr noundef nonnull @.str.15, ptr noundef nonnull @ruleset_fops, ptr noundef %call16.i, i32 noundef 524290) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then24.i, label %if.end20.i.__do_sys_landlock_create_ruleset.exit_crit_edge

if.end20.i.__do_sys_landlock_create_ruleset.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_create_ruleset.exit

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @landlock_put_ruleset(ptr noundef %call16.i) #6
  br label %__do_sys_landlock_create_ruleset.exit

__do_sys_landlock_create_ruleset.exit:            ; preds = %if.then24.i, %if.end20.i.__do_sys_landlock_create_ruleset.exit_crit_edge, %if.then18.i, %if.end11.i.__do_sys_landlock_create_ruleset.exit_crit_edge, %if.then11.i.i.i.i.i, %if.then9.i.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge, %if.end15.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge, %do.end12.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge, %if.end8.i.__do_sys_landlock_create_ruleset.exit_crit_edge, %if.end7.i, %land.lhs.true.i.__do_sys_landlock_create_ruleset.exit_crit_edge, %entry.__do_sys_landlock_create_ruleset.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end7.i ], [ %13, %if.then18.i ], [ -95, %entry.__do_sys_landlock_create_ruleset.exit_crit_edge ], [ 1, %land.lhs.true.i.__do_sys_landlock_create_ruleset.exit_crit_edge ], [ -22, %if.end11.i.__do_sys_landlock_create_ruleset.exit_crit_edge ], [ %call21.i, %if.then24.i ], [ %call21.i, %if.end20.i.__do_sys_landlock_create_ruleset.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i ], [ %..i.i.i, %if.then9.i.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge ], [ -7, %if.end15.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge ], [ -22, %do.end12.i.i.__do_sys_landlock_create_ruleset.exit_crit_edge ], [ -14, %if.end8.i.__do_sys_landlock_create_ruleset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ruleset_attr.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_landlock_add_rule(i32 noundef %ruleset_fd, i32 noundef %rule_type, i32 noundef %rule_attr, i32 noundef %flags) #0 align 64 {
entry:
  %path_beneath_attr.i = alloca %struct.landlock_path_beneath_attr, align 8
  %path.i = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %rule_attr to ptr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %path_beneath_attr.i) #6
  %1 = ptrtoint ptr %path_beneath_attr.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %path_beneath_attr.i, align 8, !annotation !74
  %2 = getelementptr inbounds %struct.landlock_path_beneath_attr, ptr %path_beneath_attr.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 8, !annotation !74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #6
  %4 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 8, !annotation !74
  %5 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !74
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @landlock_initialized to i32))
  %7 = load i8, ptr @landlock_initialized, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.__do_sys_landlock_add_rule.exit_crit_edge, label %if.end.i

entry.__do_sys_landlock_add_rule.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_add_rule.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool1.not.i = icmp eq i32 %flags, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rule_type)
  %cmp.not.i = icmp eq i32 %rule_type, 1
  %or.cond.i = and i1 %cmp.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end59.i.i.i, label %if.end.i.__do_sys_landlock_add_rule.exit_crit_edge

if.end.i.__do_sys_landlock_add_rule.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_add_rule.exit

if.end59.i.i.i:                                   ; preds = %if.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #6
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 12, i32 -1226833920) #9, !srcloc !76
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !77

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %path_beneath_attr.i, i32 noundef 12) #6
  %9 = call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !78
  %and.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #6, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %path_beneath_attr.i, ptr noundef %0, i32 noundef 12) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #6, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end8.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !77

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i44.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.0.i.i44.i
  %add.ptr.i.i.i = getelementptr i8, ptr %path_beneath_attr.i, i32 %sub.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i44.i)
  br label %__do_sys_landlock_add_rule.exit

if.end8.i:                                        ; preds = %if.end.i.i.i
  %call9.i = call fastcc ptr @get_ruleset_from_fd(i32 noundef %ruleset_fd, i32 noundef 262144) #6
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call9.i to i32
  br label %__do_sys_landlock_add_rule.exit

if.end13.i:                                       ; preds = %if.end8.i
  %14 = ptrtoint ptr %path_beneath_attr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %path_beneath_attr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool14.not.i = icmp eq i64 %15, 0
  br i1 %tobool14.not.i, label %if.end13.i.out_put_ruleset.i_crit_edge, label %if.end16.i

if.end13.i.out_put_ruleset.i_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_ruleset.i

if.end16.i:                                       ; preds = %if.end13.i
  %fs_access_masks.i = getelementptr inbounds %struct.landlock_ruleset, ptr %call9.i, i32 1
  %16 = ptrtoint ptr %fs_access_masks.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fs_access_masks.i, align 4
  %conv.i = zext i16 %17 to i64
  %or.i = or i64 %15, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %conv.i)
  %cmp21.not.i = icmp eq i64 %or.i, %conv.i
  br i1 %cmp21.not.i, label %if.end24.i, label %if.end16.i.out_put_ruleset.i_crit_edge

if.end16.i.out_put_ruleset.i_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_ruleset.i

if.end24.i:                                       ; preds = %if.end16.i
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 8
  %call.i.i = call i32 @__fdget_raw(i32 noundef %19) #6, !noalias !81
  %and.i.i.i = and i32 %call.i.i, -4
  %20 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1, label %if.end24.i.out_put_ruleset.i_crit_edge, label %if.end.i2

if.end24.i.out_put_ruleset.i_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_ruleset.i

if.end.i2:                                        ; preds = %if.end24.i
  %f_op.i = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_op.i, align 4
  %cmp.i = icmp eq ptr %22, @ruleset_fops
  br i1 %cmp.i, label %if.end.i2.out_fdput.i_crit_edge, label %lor.lhs.false.i

if.end.i2.out_fdput.i_crit_edge:                  ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fdput.i

lor.lhs.false.i:                                  ; preds = %if.end.i2
  %f_path.i = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_path.i, align 8
  %mnt_flags.i = getelementptr inbounds %struct.vfsmount, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %mnt_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mnt_flags.i, align 4
  %and.i = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.out_fdput.i_crit_edge

lor.lhs.false.i.out_fdput.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fdput.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %dentry.i = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dentry.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool8.not.i = icmp sgt i32 %32, -1
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false4.i.out_fdput.i_crit_edge

lor.lhs.false4.i.out_fdput.i_crit_edge:           ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fdput.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false4.i
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %28, align 8
  %and.i.i.i.i = and i32 %34, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %lor.lhs.false9.i.out_fdput.i_crit_edge, label %lor.lhs.false13.i

lor.lhs.false9.i.out_fdput.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fdput.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false9.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %35 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i.i, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_flags.i, align 4
  %and18.i = and i32 %38, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %lor.lhs.false13.i.out_fdput.i_crit_edge

lor.lhs.false13.i.out_fdput.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fdput.i

if.end21.i:                                       ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %f_path.i, align 8
  %41 = ptrtoint ptr %path.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %path.i, align 8
  call void @path_get(ptr noundef nonnull %path.i) #6
  br label %out_fdput.i

out_fdput.i:                                      ; preds = %if.end21.i, %lor.lhs.false13.i.out_fdput.i_crit_edge, %lor.lhs.false9.i.out_fdput.i_crit_edge, %lor.lhs.false4.i.out_fdput.i_crit_edge, %lor.lhs.false.i.out_fdput.i_crit_edge, %if.end.i2.out_fdput.i_crit_edge
  %tobool26.not.i = phi i1 [ true, %if.end21.i ], [ false, %lor.lhs.false13.i.out_fdput.i_crit_edge ], [ false, %lor.lhs.false9.i.out_fdput.i_crit_edge ], [ false, %lor.lhs.false4.i.out_fdput.i_crit_edge ], [ false, %lor.lhs.false.i.out_fdput.i_crit_edge ], [ false, %if.end.i2.out_fdput.i_crit_edge ]
  %err.0.i3 = phi i32 [ 0, %if.end21.i ], [ -77, %lor.lhs.false13.i.out_fdput.i_crit_edge ], [ -77, %lor.lhs.false9.i.out_fdput.i_crit_edge ], [ -77, %lor.lhs.false4.i.out_fdput.i_crit_edge ], [ -77, %lor.lhs.false.i.out_fdput.i_crit_edge ], [ -77, %if.end.i2.out_fdput.i_crit_edge ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %out_fdput.i.get_path_from_fd.exit_crit_edge, label %if.then.i.i

out_fdput.i.get_path_from_fd.exit_crit_edge:      ; preds = %out_fdput.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_path_from_fd.exit

if.then.i.i:                                      ; preds = %out_fdput.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @fput(ptr noundef nonnull %20) #6
  br label %get_path_from_fd.exit

get_path_from_fd.exit:                            ; preds = %if.then.i.i, %out_fdput.i.get_path_from_fd.exit_crit_edge
  br i1 %tobool26.not.i, label %if.end28.i, label %get_path_from_fd.exit.out_put_ruleset.i_crit_edge

get_path_from_fd.exit.out_put_ruleset.i_crit_edge: ; preds = %get_path_from_fd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_ruleset.i

if.end28.i:                                       ; preds = %get_path_from_fd.exit
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %path_beneath_attr.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %path_beneath_attr.i, align 8
  %conv30.i = trunc i64 %43 to i32
  %call31.i = call i32 @landlock_append_fs_rule(ptr noundef %call9.i, ptr noundef nonnull %path.i, i32 noundef %conv30.i) #6
  call void @path_put(ptr noundef nonnull %path.i) #6
  br label %out_put_ruleset.i

out_put_ruleset.i:                                ; preds = %if.end28.i, %get_path_from_fd.exit.out_put_ruleset.i_crit_edge, %if.end24.i.out_put_ruleset.i_crit_edge, %if.end16.i.out_put_ruleset.i_crit_edge, %if.end13.i.out_put_ruleset.i_crit_edge
  %err.0.i = phi i32 [ %err.0.i3, %get_path_from_fd.exit.out_put_ruleset.i_crit_edge ], [ %call31.i, %if.end28.i ], [ -42, %if.end13.i.out_put_ruleset.i_crit_edge ], [ -22, %if.end16.i.out_put_ruleset.i_crit_edge ], [ -9, %if.end24.i.out_put_ruleset.i_crit_edge ]
  call void @landlock_put_ruleset(ptr noundef %call9.i) #6
  br label %__do_sys_landlock_add_rule.exit

__do_sys_landlock_add_rule.exit:                  ; preds = %out_put_ruleset.i, %if.then11.i, %if.then11.i.i.i, %if.end.i.__do_sys_landlock_add_rule.exit_crit_edge, %entry.__do_sys_landlock_add_rule.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then11.i ], [ %err.0.i, %out_put_ruleset.i ], [ -95, %entry.__do_sys_landlock_add_rule.exit_crit_edge ], [ -22, %if.end.i.__do_sys_landlock_add_rule.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %path_beneath_attr.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_landlock_restrict_self(i32 noundef %ruleset_fd, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @landlock_initialized to i32))
  %0 = load i8, ptr @landlock_initialized, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %entry.__do_sys_landlock_restrict_self.exit_crit_edge, label %if.end.i

entry.__do_sys_landlock_restrict_self.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_restrict_self.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool1.not.i = icmp eq i32 %flags, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.__do_sys_landlock_restrict_self.exit_crit_edge

if.end.i.__do_sys_landlock_restrict_self.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_restrict_self.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = tail call i32 @llvm.read_register.i32(metadata !64) #6
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %atomic_flags.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 66
  %5 = ptrtoint ptr %atomic_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %atomic_flags.i.i, align 4
  %and1.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %do.end.i, label %if.end3.i.if.end10.i_crit_edge

if.end3.i.if.end10.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end3.i
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %7 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns.i, align 4
  %call8.i = tail call zeroext i1 @ns_capable_noaudit(ptr noundef %10, i32 noundef 21) #6
  br i1 %call8.i, label %do.end.i.if.end10.i_crit_edge, label %do.end.i.__do_sys_landlock_restrict_self.exit_crit_edge

do.end.i.__do_sys_landlock_restrict_self.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_landlock_restrict_self.exit

do.end.i.if.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i.if.end10.i_crit_edge, %if.end3.i.if.end10.i_crit_edge
  %call11.i = tail call fastcc ptr @get_ruleset_from_fd(i32 noundef %ruleset_fd, i32 noundef 131072) #6
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call11.i to i32
  br label %__do_sys_landlock_restrict_self.exit

if.end15.i:                                       ; preds = %if.end10.i
  %call16.i = tail call ptr @prepare_creds() #6
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.out_put_ruleset.i_crit_edge, label %if.end19.i

if.end15.i.out_put_ruleset.i_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_ruleset.i

if.end19.i:                                       ; preds = %if.end15.i
  %security.i.i = getelementptr inbounds %struct.cred, ptr %call16.i, i32 0, i32 23
  %12 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %14 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %14
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i, align 4
  %call21.i = tail call ptr @landlock_merge_ruleset(ptr noundef %16, ptr noundef %call11.i) #6
  %cmp.i44.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call21.i to i32
  tail call void @abort_creds(ptr noundef nonnull %call16.i) #6
  br label %out_put_ruleset.i

if.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @landlock_put_ruleset(ptr noundef %19) #6
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21.i, ptr %add.ptr.i.i, align 4
  tail call void @landlock_put_ruleset(ptr noundef %call11.i) #6
  %call28.i = tail call i32 @commit_creds(ptr noundef nonnull %call16.i) #6
  br label %__do_sys_landlock_restrict_self.exit

out_put_ruleset.i:                                ; preds = %if.then23.i, %if.end15.i.out_put_ruleset.i_crit_edge
  %err.0.i = phi i32 [ %17, %if.then23.i ], [ -12, %if.end15.i.out_put_ruleset.i_crit_edge ]
  tail call void @landlock_put_ruleset(ptr noundef %call11.i) #6
  br label %__do_sys_landlock_restrict_self.exit

__do_sys_landlock_restrict_self.exit:             ; preds = %out_put_ruleset.i, %if.end25.i, %if.then13.i, %do.end.i.__do_sys_landlock_restrict_self.exit_crit_edge, %if.end.i.__do_sys_landlock_restrict_self.exit_crit_edge, %entry.__do_sys_landlock_restrict_self.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.then13.i ], [ %err.0.i, %out_put_ruleset.i ], [ %call28.i, %if.end25.i ], [ -95, %entry.__do_sys_landlock_restrict_self.exit_crit_edge ], [ -22, %if.end.i.__do_sys_landlock_restrict_self.exit_crit_edge ], [ -1, %do.end.i.__do_sys_landlock_restrict_self.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @landlock_create_ruleset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @landlock_put_ruleset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fop_dummy_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %buf, i32 noundef %size, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fop_dummy_write(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %buf, i32 noundef %size, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fop_ruleset_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @landlock_put_ruleset(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_ruleset_from_fd(i32 noundef %fd, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #6, !noalias !84
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp eq ptr %2, @ruleset_fops
  br i1 %cmp.not, label %if.end4, label %if.end.out_fdput_crit_edge

if.end.out_fdput_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fdput

if.end4:                                          ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode, align 8
  %and = and i32 %4, %mode
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end4.out_fdput_crit_edge, label %if.end9

if.end4.out_fdput_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fdput

if.end9:                                          ; preds = %if.end4
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %num_layers = getelementptr inbounds %struct.landlock_ruleset, ptr %6, i32 0, i32 2, i32 0, i32 3
  %7 = ptrtoint ptr %num_layers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp11.not = icmp eq i32 %8, 1
  br i1 %cmp11.not, label %if.end53, label %land.rhs

land.rhs:                                         ; preds = %if.end9
  %.b62 = load i1, ptr @get_ruleset_from_fd.__already_done, align 1
  br i1 %.b62, label %land.rhs.out_fdput_crit_edge, label %if.then19, !prof !77

land.rhs.out_fdput_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fdput

if.then19:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @get_ruleset_from_fd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 226, i32 noundef 9, ptr noundef null) #6
  br label %out_fdput

if.end53:                                         ; preds = %if.end9
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end53.out_fdput_crit_edge, label %if.then.i

if.end53.out_fdput_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fdput

if.then.i:                                        ; preds = %if.end53
  %usage.i = getelementptr inbounds %struct.landlock_ruleset, ptr %6, i32 0, i32 2, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #6
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #6, !srcloc !87
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !88

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.out_fdput_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !77

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.out_fdput_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fdput

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #6
  br label %out_fdput

out_fdput:                                        ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.out_fdput_crit_edge, %if.end53.out_fdput_crit_edge, %if.then19, %land.rhs.out_fdput_crit_edge, %if.end4.out_fdput_crit_edge, %if.end.out_fdput_crit_edge
  %ruleset.0 = phi ptr [ inttoptr (i32 -77 to ptr), %if.end.out_fdput_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end4.out_fdput_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.rhs.out_fdput_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then19 ], [ null, %if.end53.out_fdput_crit_edge ], [ %6, %if.else.i.i.i.i.out_fdput_crit_edge ], [ %6, %if.end15.sink.split.i.i.i.i ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i64 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i64, label %out_fdput.cleanup_crit_edge, label %if.then.i65

out_fdput.cleanup_crit_edge:                      ; preds = %out_fdput
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i65:                                      ; preds = %out_fdput
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fput(ptr noundef nonnull %0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i65, %out_fdput.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -9 to ptr), %entry.cleanup_crit_edge ], [ %ruleset.0, %out_fdput.cleanup_crit_edge ], [ %ruleset.0, %if.then.i65 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @landlock_append_fs_rule(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @landlock_merge_ruleset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/landlock/syscalls.c", i32 156, i32 1}
!2 = !{ptr @event_enter__landlock_create_ruleset, !1, !"event_enter__landlock_create_ruleset", i1 false, i1 false}
!3 = !{ptr @__event_enter__landlock_create_ruleset, !1, !"__event_enter__landlock_create_ruleset", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__landlock_create_ruleset, !1, !"event_exit__landlock_create_ruleset", i1 false, i1 false}
!6 = !{ptr @__event_exit__landlock_create_ruleset, !1, !"__event_exit__landlock_create_ruleset", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__landlock_create_ruleset, !1, !"__syscall_meta__landlock_create_ruleset", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__landlock_create_ruleset, !1, !"__p_syscall_meta__landlock_create_ruleset", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/landlock/syscalls.c", i32 304, i32 1}
!12 = !{ptr @event_enter__landlock_add_rule, !11, !"event_enter__landlock_add_rule", i1 false, i1 false}
!13 = !{ptr @__event_enter__landlock_add_rule, !11, !"__event_enter__landlock_add_rule", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__landlock_add_rule, !11, !"event_exit__landlock_add_rule", i1 false, i1 false}
!16 = !{ptr @__event_exit__landlock_add_rule, !11, !"__event_exit__landlock_add_rule", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__landlock_add_rule, !11, !"__syscall_meta__landlock_add_rule", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__landlock_add_rule, !11, !"__p_syscall_meta__landlock_add_rule", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/landlock/syscalls.c", i32 392, i32 1}
!22 = !{ptr @event_enter__landlock_restrict_self, !21, !"event_enter__landlock_restrict_self", i1 false, i1 false}
!23 = !{ptr @__event_enter__landlock_restrict_self, !21, !"__event_enter__landlock_restrict_self", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_exit__landlock_restrict_self, !21, !"event_exit__landlock_restrict_self", i1 false, i1 false}
!26 = !{ptr @__event_exit__landlock_restrict_self, !21, !"__event_exit__landlock_restrict_self", i1 false, i1 false}
!27 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__syscall_meta__landlock_restrict_self, !21, !"__syscall_meta__landlock_restrict_self", i1 false, i1 false}
!29 = !{ptr @__p_syscall_meta__landlock_restrict_self, !21, !"__p_syscall_meta__landlock_restrict_self", i1 false, i1 false}
!30 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @types__landlock_create_ruleset, !1, !"types__landlock_create_ruleset", i1 false, i1 false}
!34 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @args__landlock_create_ruleset, !1, !"args__landlock_create_ruleset", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/landlock/syscalls.c", i32 195, i32 32}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!42 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!47 = !{ptr @ruleset_fops, !48, !"ruleset_fops", i1 false, i1 false}
!48 = !{!"../security/landlock/syscalls.c", i32 125, i32 37}
!49 = !{ptr @.str.19, !11, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !11, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !11, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @types__landlock_add_rule, !11, !"types__landlock_add_rule", i1 false, i1 false}
!53 = !{ptr @.str.22, !11, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !11, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !11, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @args__landlock_add_rule, !11, !"args__landlock_add_rule", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../security/landlock/syscalls.c", i32 226, i32 6}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @types__landlock_restrict_self, !21, !"types__landlock_restrict_self", i1 false, i1 false}
!61 = !{ptr @args__landlock_restrict_self, !21, !"args__landlock_restrict_self", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../security/landlock/syscalls.c", i32 412, i32 24}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
!76 = !{i64 2152176615, i64 2152176640}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 4672170}
!79 = !{i64 4672367}
!80 = !{i64 2152157600}
!81 = !{!82}
!82 = distinct !{!82, !83, !"fdget_raw: %agg.result"}
!83 = distinct !{!83, !"fdget_raw"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"fdget: %agg.result"}
!86 = distinct !{!86, !"fdget"}
!87 = !{i64 2148358202, i64 2148358234, i64 2148358263, i64 2148358297, i64 2148358328, i64 2148358351}
!88 = !{!"branch_weights", i32 1, i32 2000}
