; ModuleID = '/llk/IR_all_yes/fs/fhandle.c_pt.bc'
source_filename = "../fs/fhandle.c"
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
%struct.file_handle = type { i32, i32, [0 x i8] }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.19, ptr }
%union.anon.19 = type { i64 }
%struct.lockref = type { %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.35 }
%struct.llist_node = type { ptr }
%union.anon.35 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.102, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.103, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.104, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.102 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.103 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.104 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.105 = type { ptr }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sys_enter_name_to_handle_at\00", [36 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__name_to_handle_at = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 5, ptr @types__name_to_handle_at, ptr @args__name_to_handle_at, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__name_to_handle_at, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__name_to_handle_at, i64 20) }, ptr @event_enter__name_to_handle_at, ptr @event_exit__name_to_handle_at }, align 4
@event_enter__name_to_handle_at = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__name_to_handle_at, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__name_to_handle_at = internal global ptr @event_enter__name_to_handle_at, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_exit_name_to_handle_at\00", [37 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__name_to_handle_at = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__name_to_handle_at, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__name_to_handle_at = internal global ptr @event_exit__name_to_handle_at, section "_ftrace_events", align 4
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_name_to_handle_at\00", [42 x i8] zeroinitializer }, align 32
@types__name_to_handle_at = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.6], [44 x i8] zeroinitializer }, align 32
@args__name_to_handle_at = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__name_to_handle_at = internal global ptr @__syscall_meta__name_to_handle_at, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sys_enter_open_by_handle_at\00", [36 x i8] zeroinitializer }, align 32
@__syscall_meta__open_by_handle_at = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 3, ptr @types__open_by_handle_at, ptr @args__open_by_handle_at, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__open_by_handle_at, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__open_by_handle_at, i64 20) }, ptr @event_enter__open_by_handle_at, ptr @event_exit__open_by_handle_at }, align 4
@event_enter__open_by_handle_at = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__open_by_handle_at, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__open_by_handle_at = internal global ptr @event_enter__open_by_handle_at, section "_ftrace_events", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_exit_open_by_handle_at\00", [37 x i8] zeroinitializer }, align 32
@event_exit__open_by_handle_at = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__open_by_handle_at, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__open_by_handle_at = internal global ptr @event_exit__open_by_handle_at, section "_ftrace_events", align 4
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_open_by_handle_at\00", [42 x i8] zeroinitializer }, align 32
@types__open_by_handle_at = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.8, ptr @.str.6], [20 x i8] zeroinitializer }, align 32
@args__open_by_handle_at = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.12, ptr @.str.20], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__open_by_handle_at = internal global ptr @__syscall_meta__open_by_handle_at, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct file_handle *\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"int *\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dfd\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"handle\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mnt_id\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"flag\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/fhandle.c\00", [19 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mountdirfd\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"event_enter__name_to_handle_at\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"event_exit__name_to_handle_at\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"types__name_to_handle_at\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"args__name_to_handle_at\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [31 x i8] c"event_enter__open_by_handle_at\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [30 x i8] c"event_exit__open_by_handle_at\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [25 x i8] c"types__open_by_handle_at\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"args__open_by_handle_at\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 93, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 72, i32 6 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 230, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 214, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 156, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 256, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [16 x i8] c"../fs/fhandle.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 232, i32 31 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__event_enter__name_to_handle_at, ptr @__event_enter__open_by_handle_at, ptr @__event_exit__name_to_handle_at, ptr @__event_exit__open_by_handle_at, ptr @__p_syscall_meta__name_to_handle_at, ptr @__p_syscall_meta__open_by_handle_at, ptr @__syscall_meta__name_to_handle_at, ptr @__syscall_meta__open_by_handle_at, ptr @event_enter__name_to_handle_at, ptr @event_enter__open_by_handle_at, ptr @event_exit__name_to_handle_at, ptr @event_exit__open_by_handle_at, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__name_to_handle_at, ptr @args__name_to_handle_at, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__open_by_handle_at, ptr @args__open_by_handle_at, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__name_to_handle_at to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__name_to_handle_at to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__name_to_handle_at to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__name_to_handle_at to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__open_by_handle_at to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__open_by_handle_at to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__open_by_handle_at to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__open_by_handle_at to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_name_to_handle_at = dso_local alias i32 (i32, ptr, ptr, ptr, i32), ptr @__se_sys_name_to_handle_at
@sys_open_by_handle_at = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_open_by_handle_at

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_name_to_handle_at(i32 noundef %dfd, i32 noundef %name, i32 noundef %handle, i32 noundef %mnt_id, i32 noundef %flag) #0 align 64 {
entry:
  %f_handle.i.i = alloca %struct.file_handle, align 4
  %handle_dwords.i.i = alloca i32, align 4
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %handle to ptr
  %1 = inttoptr i32 %mnt_id to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #6
  %2 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !56
  %3 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !56
  %and.i = and i32 %flag, -5121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.__do_sys_name_to_handle_at.exit_crit_edge

entry.__do_sys_name_to_handle_at.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_name_to_handle_at.exit

if.end.i:                                         ; preds = %entry
  %5 = inttoptr i32 %name to ptr
  %and1.i = lshr i32 %flag, 10
  %and1.lobit.i = and i32 %and1.i, 1
  %and2.i = shl nuw nsw i32 %flag, 2
  %6 = and i32 %and2.i, 16384
  %7 = or i32 %6, %and1.lobit.i
  %call.i.i = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %5, i32 noundef %7, ptr noundef nonnull %path.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end.i.__do_sys_name_to_handle_at.exit_crit_edge

if.end.i.__do_sys_name_to_handle_at.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_name_to_handle_at.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f_handle.i.i) #6
  %8 = ptrtoint ptr %f_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %f_handle.i.i, align 4, !annotation !56
  %9 = getelementptr inbounds %struct.file_handle, ptr %f_handle.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle_dwords.i.i) #6
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %d_sb.i.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %d_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_sb.i.i, align 4
  %s_export_op.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %s_export_op.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_export_op.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then7.i.do_sys_name_to_handle.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then7.i.do_sys_name_to_handle.exit.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_sys_name_to_handle.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then7.i
  %fh_to_dentry.i.i = getelementptr inbounds %struct.export_operations, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %fh_to_dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fh_to_dentry.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %18, null
  br i1 %tobool5.not.i.i, label %lor.lhs.false.i.i.do_sys_name_to_handle.exit.i_crit_edge, label %if.end8.i.i.i.i

lor.lhs.false.i.i.do_sys_name_to_handle.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_sys_name_to_handle.exit.i

if.end8.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i
  call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #6
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #9, !srcloc !57
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !58

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %f_handle.i.i, i32 noundef 8) #6
  %20 = call i32 @llvm.read_register.i32(metadata !46) #6
  %and.i.i.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #4, !srcloc !59
  %and.i.i.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %f_handle.i.i, ptr noundef %0, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end8.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !58

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i76.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 8, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 8, %res.0.i.i76.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %f_handle.i.i, i32 %sub.i.i.i.i
  %23 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i76.i.i)
  br label %do_sys_name_to_handle.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i.i.i
  %24 = ptrtoint ptr %f_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_handle.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %25)
  %cmp.i.i = icmp ugt i32 %25, 128
  br i1 %cmp.i.i, label %if.end8.i.i.do_sys_name_to_handle.exit.i_crit_edge, label %if.end8.i.i.i

if.end8.i.i.do_sys_name_to_handle.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_sys_name_to_handle.exit.i

if.end8.i.i.i:                                    ; preds = %if.end8.i.i
  %add.i.i = add nuw nsw i32 %25, 8
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3264) #10
  %tobool14.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool14.not.i.i, label %if.end8.i.i.i.do_sys_name_to_handle.exit.i_crit_edge, label %if.end16.i.i

if.end8.i.i.i.do_sys_name_to_handle.exit.i_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do_sys_name_to_handle.exit.i

if.end16.i.i:                                     ; preds = %if.end8.i.i.i
  %26 = ptrtoint ptr %f_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f_handle.i.i, align 4
  %shr.i.i = lshr i32 %27, 2
  %28 = ptrtoint ptr %handle_dwords.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr.i.i, ptr %handle_dwords.i.i, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %f_handle19.i.i = getelementptr inbounds %struct.file_handle, ptr %call9.i.i.i, i32 0, i32 2
  %call20.i.i = call i32 @exportfs_encode_fh(ptr noundef %30, ptr noundef %f_handle19.i.i, ptr noundef nonnull %handle_dwords.i.i, i32 noundef 0) #6
  %handle_type.i.i = getelementptr inbounds %struct.file_handle, ptr %call9.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %handle_type.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call20.i.i, ptr %handle_type.i.i, align 4
  %32 = ptrtoint ptr %handle_dwords.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle_dwords.i.i, align 4
  %mul.i.i = shl i32 %33, 2
  %34 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul.i.i, ptr %call9.i.i.i, align 128
  %35 = ptrtoint ptr %f_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f_handle.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %36)
  %cmp24.i.i = icmp ugt i32 %mul.i.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call20.i.i)
  %cmp26.i.i = icmp eq i32 %call20.i.i, 255
  %or.cond.i.i = select i1 %cmp24.i.i, i1 true, i1 %cmp26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call20.i.i)
  %cmp28.i.i = icmp eq i32 %call20.i.i, -28
  %or.cond61.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp28.i.i
  %phi.bo.i.i = add i32 %mul.i.i, 8
  %handle_bytes.0.i.i = select i1 %or.cond61.i.i, i32 8, i32 %phi.bo.i.i
  %retval1.0.i.i = select i1 %or.cond61.i.i, i32 -75, i32 0
  %37 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %path.i, align 4
  %mnt_id32.i.i = getelementptr i8, ptr %38, i32 132
  %39 = ptrtoint ptr %mnt_id32.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mnt_id32.i.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 72) #6
  %41 = call i32 @llvm.read_register.i32(metadata !46) #6
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #4, !srcloc !59
  %and.i.i.i = and i32 %43, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %44 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %40, i32 -1226833921) #6, !srcloc !62
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool35.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool35.not.i.i, label %if.end8.i.i66.i.i, label %if.end16.i.i.if.then40.i.i_crit_edge

if.end16.i.i.if.then40.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i.i

if.end8.i.i66.i.i:                                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle_bytes.0.i.i)
  %cmp9.i.i.i.i = icmp slt i32 %handle_bytes.0.i.i, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end8.i.i66.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.if.then40.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !58

land.rhs16.i.i.i.i.if.then40.i.i_crit_edge:       ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %if.then40.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end8.i.i66.i.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i.i, i32 noundef %handle_bytes.0.i.i, i1 noundef zeroext true) #6
  call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 174) #6
  %call.i.i67.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i67.i.i, label %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge, label %if.end.i.i70.i.i

if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit.i.i

if.end.i.i70.i.i:                                 ; preds = %if.then.i.i.i.i.i
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %handle_bytes.0.i.i, i32 -1226833920) #9, !srcloc !63
  %asmresult.i.i68.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i68.i.i)
  %cmp.i6.i69.i.i = icmp eq i32 %asmresult.i.i68.i.i, 0
  br i1 %cmp.i6.i69.i.i, label %if.then2.i.i.i.i, label %if.end.i.i70.i.i.copy_to_user.exit.i.i_crit_edge

if.end.i.i70.i.i.copy_to_user.exit.i.i_crit_edge: ; preds = %if.end.i.i70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i71.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i.i, i32 noundef %handle_bytes.0.i.i) #6
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %call9.i.i.i, i32 noundef %handle_bytes.0.i.i) #6
  br label %copy_to_user.exit.i.i

copy_to_user.exit.i.i:                            ; preds = %if.then2.i.i.i.i, %if.end.i.i70.i.i.copy_to_user.exit.i.i_crit_edge, %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge
  %n.addr.0.i72.i.i = phi i32 [ %handle_bytes.0.i.i, %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge ], [ %call.i12.i.i.i.i, %if.then2.i.i.i.i ], [ %handle_bytes.0.i.i, %if.end.i.i70.i.i.copy_to_user.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i72.i.i)
  %tobool39.not.i.i = icmp eq i32 %n.addr.0.i72.i.i, 0
  br i1 %tobool39.not.i.i, label %copy_to_user.exit.i.i.if.end41.i.i_crit_edge, label %copy_to_user.exit.i.i.if.then40.i.i_crit_edge

copy_to_user.exit.i.i.if.then40.i.i_crit_edge:    ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.i.i

copy_to_user.exit.i.i.if.end41.i.i_crit_edge:     ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i.i

if.then40.i.i:                                    ; preds = %copy_to_user.exit.i.i.if.then40.i.i_crit_edge, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.if.then40.i.i_crit_edge, %if.end16.i.i.if.then40.i.i_crit_edge
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then40.i.i, %copy_to_user.exit.i.i.if.end41.i.i_crit_edge
  %retval1.1.i.i = phi i32 [ -14, %if.then40.i.i ], [ %retval1.0.i.i, %copy_to_user.exit.i.i.if.end41.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #6
  br label %do_sys_name_to_handle.exit.i

do_sys_name_to_handle.exit.i:                     ; preds = %if.end41.i.i, %if.end8.i.i.i.do_sys_name_to_handle.exit.i_crit_edge, %if.end8.i.i.do_sys_name_to_handle.exit.i_crit_edge, %if.then11.i.i.i.i, %lor.lhs.false.i.i.do_sys_name_to_handle.exit.i_crit_edge, %if.then7.i.do_sys_name_to_handle.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %retval1.1.i.i, %if.end41.i.i ], [ -95, %lor.lhs.false.i.i.do_sys_name_to_handle.exit.i_crit_edge ], [ -95, %if.then7.i.do_sys_name_to_handle.exit.i_crit_edge ], [ -22, %if.end8.i.i.do_sys_name_to_handle.exit.i_crit_edge ], [ -12, %if.end8.i.i.i.do_sys_name_to_handle.exit.i_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle_dwords.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f_handle.i.i) #6
  call void @path_put(ptr noundef nonnull %path.i) #6
  br label %__do_sys_name_to_handle_at.exit

__do_sys_name_to_handle_at.exit:                  ; preds = %do_sys_name_to_handle.exit.i, %if.end.i.__do_sys_name_to_handle_at.exit_crit_edge, %entry.__do_sys_name_to_handle_at.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_name_to_handle_at.exit_crit_edge ], [ %call.i.i, %if.end.i.__do_sys_name_to_handle_at.exit_crit_edge ], [ %retval.0.i.i, %do_sys_name_to_handle.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_open_by_handle_at(i32 noundef %mountdirfd, i32 noundef %handle, i32 noundef %flags) #0 align 64 {
entry:
  %f_handle.i.i.i = alloca %struct.file_handle, align 8
  %path.i.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %handle to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #6
  %1 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 4, !annotation !56
  %2 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f_handle.i.i.i) #6
  %4 = ptrtoint ptr %f_handle.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %f_handle.i.i.i, align 8, !annotation !56
  %5 = getelementptr inbounds %struct.file_handle, ptr %f_handle.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !56
  %call.i.i.i = tail call zeroext i1 @capable(i32 noundef 2) #6
  br i1 %call.i.i.i, label %if.end8.i.i.i.i.i, label %entry.handle_to_path.exit.thread.i.i_crit_edge

entry.handle_to_path.exit.thread.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_to_path.exit.thread.i.i

if.end8.i.i.i.i.i:                                ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #6
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i.i.i, label %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:  ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end8.i.i.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #9, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !58

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %f_handle.i.i.i, i32 noundef 8) #6
  %8 = call i32 @llvm.read_register.i32(metadata !46) #6
  %and.i.i.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #4, !srcloc !59
  %and.i.i.i.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %f_handle.i.i.i, ptr noundef %0, i32 noundef 8) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end4.i.i.i, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !58

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i64.i.i.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 8, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 8, %res.0.i.i64.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %f_handle.i.i.i, i32 %sub.i.i.i.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i64.i.i.i)
  br label %handle_to_path.exit.thread.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i.i.i
  %12 = ptrtoint ptr %f_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_handle.i.i.i, align 8
  %14 = add i32 %13, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %14)
  %15 = icmp ult i32 %14, -128
  br i1 %15, label %if.end4.i.i.i.handle_to_path.exit.thread.i.i_crit_edge, label %if.end8.i.i.i.i

if.end4.i.i.i.handle_to_path.exit.thread.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_to_path.exit.thread.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end4.i.i.i
  %add.i.i.i = add nuw nsw i32 %13, 8
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3264) #10
  %tobool11.not.i.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool11.not.i.i.i, label %if.end8.i.i.i.i.handle_to_path.exit.thread.i.i_crit_edge, label %if.end13.i.i.i

if.end8.i.i.i.i.handle_to_path.exit.thread.i.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_to_path.exit.thread.i.i

if.end13.i.i.i:                                   ; preds = %if.end8.i.i.i.i
  %16 = ptrtoint ptr %f_handle.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %f_handle.i.i.i, align 8
  %18 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %call9.i.i.i.i, align 128
  %f_handle14.i.i.i = getelementptr inbounds %struct.file_handle, ptr %call9.i.i.i.i, i32 0, i32 2
  %f_handle15.i.i.i = getelementptr inbounds %struct.file_handle, ptr %0, i32 0, i32 2
  %19 = lshr i64 %17, 32
  %20 = trunc i64 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp9.i.i.i.i.i = icmp slt i64 %17, 0
  br i1 %cmp9.i.i.i.i.i, label %land.rhs16.i.i.i.i.i, label %if.then.i.i.i.i.i.i

land.rhs16.i.i.i.i.i:                             ; preds = %if.end13.i.i.i
  %.b71.i.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i.i, label %land.rhs16.i.i.i.i.i.handle_to_path.exit.thread32.i.i_crit_edge, label %if.then27.i.i.i.i.i, !prof !58

land.rhs16.i.i.i.i.i.handle_to_path.exit.thread32.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_to_path.exit.thread32.i.i

if.then27.i.i.i.i.i:                              ; preds = %land.rhs16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %handle_to_path.exit.thread32.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end13.i.i.i
  call void @__check_object_size(ptr noundef %f_handle14.i.i.i, i32 noundef %20, i1 noundef zeroext false) #6
  call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #6
  %call.i.i32.i.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i32.i.i.i, label %if.then.i.i.i.i.i.i.if.end.i.i45.i.i.i_crit_edge, label %land.lhs.true.i.i35.i.i.i

if.then.i.i.i.i.i.i.if.end.i.i45.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i45.i.i.i

land.lhs.true.i.i35.i.i.i:                        ; preds = %if.then.i.i.i.i.i.i
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %f_handle15.i.i.i, i32 %20, i32 -1226833920) #9, !srcloc !57
  %asmresult.i.i33.i.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i33.i.i.i)
  %cmp.i6.i34.i.i.i = icmp eq i32 %asmresult.i.i33.i.i.i, 0
  br i1 %cmp.i6.i34.i.i.i, label %if.then.i7.i42.i.i.i, label %land.lhs.true.i.i35.i.i.i.if.end.i.i45.i.i.i_crit_edge, !prof !58

land.lhs.true.i.i35.i.i.i.if.end.i.i45.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i45.i.i.i

if.then.i7.i42.i.i.i:                             ; preds = %land.lhs.true.i.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i36.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %f_handle14.i.i.i, i32 noundef %20) #6
  %22 = call i32 @llvm.read_register.i32(metadata !46) #6
  %and.i.i.i.i.i.i37.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i37.i.i.i to ptr
  %cpu_domain.i.i.i.i.i38.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i38.i.i.i) #4, !srcloc !59
  %and.i.i.i.i39.i.i.i = and i32 %24, -13
  %or.i.i.i.i40.i.i.i = or i32 %and.i.i.i.i39.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i40.i.i.i) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %call1.i.i.i41.i.i.i = call i32 @arm_copy_from_user(ptr noundef %f_handle14.i.i.i, ptr noundef %f_handle15.i.i.i, i32 noundef %20) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #6, !srcloc !60
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  br label %if.end.i.i45.i.i.i

if.end.i.i45.i.i.i:                               ; preds = %if.then.i7.i42.i.i.i, %land.lhs.true.i.i35.i.i.i.if.end.i.i45.i.i.i_crit_edge, %if.then.i.i.i.i.i.i.if.end.i.i45.i.i.i_crit_edge
  %res.0.i.i43.i.i.i = phi i32 [ %20, %if.then.i.i.i.i.i.i.if.end.i.i45.i.i.i_crit_edge ], [ %call1.i.i.i41.i.i.i, %if.then.i7.i42.i.i.i ], [ %20, %land.lhs.true.i.i35.i.i.i.if.end.i.i45.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i43.i.i.i)
  %tobool4.not.i.i44.i.i.i = icmp eq i32 %res.0.i.i43.i.i.i, 0
  br i1 %tobool4.not.i.i44.i.i.i, label %if.end20.i.i.i, label %if.then11.i.i48.i.i.i, !prof !58

if.then11.i.i48.i.i.i:                            ; preds = %if.end.i.i45.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i46.i.i.i = sub i32 %20, %res.0.i.i43.i.i.i
  %add.ptr.i.i47.i.i.i = getelementptr i8, ptr %f_handle14.i.i.i, i32 %sub.i.i46.i.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i47.i.i.i, i32 0, i32 %res.0.i.i43.i.i.i)
  br label %handle_to_path.exit.thread32.i.i

if.end20.i.i.i:                                   ; preds = %if.end.i.i45.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %mountdirfd)
  %cmp.i.i52.i.i.i = icmp eq i32 %mountdirfd, -100
  br i1 %cmp.i.i52.i.i.i, label %if.then.i.i53.i.i.i, label %if.else.i.i56.i.i.i

if.then.i.i53.i.i.i:                              ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = call i32 @llvm.read_register.i32(metadata !46) #6
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i.i.i.i, align 8
  %fs1.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 107
  %30 = ptrtoint ptr %fs1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fs1.i.i.i.i.i, align 128
  %lock.i.i.i.i.i = getelementptr inbounds %struct.fs_struct, ptr %31, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i.i.i) #6
  %pwd.i.i.i.i.i = getelementptr inbounds %struct.fs_struct, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %pwd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pwd.i.i.i.i.i, align 4
  %call3.i.i.i.i.i = call ptr @mntget(ptr noundef %33) #6
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i.i.i) #6
  br label %get_vfsmount_from_fd.exit.i.i.i.i

if.else.i.i56.i.i.i:                              ; preds = %if.end20.i.i.i
  %call.i.i.i54.i.i.i = call i32 @__fdget(i32 noundef %mountdirfd) #6, !noalias !64
  %and.i.i.i.i55.i.i.i = and i32 %call.i.i.i54.i.i.i, -4
  %34 = inttoptr i32 %and.i.i.i.i55.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i55.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i55.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %handle_to_path.exit.thread38.i.i, label %if.end.i.i57.i.i.i

handle_to_path.exit.thread38.i.i:                 ; preds = %if.else.i.i56.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f_handle.i.i.i) #6
  br label %__do_sys_open_by_handle_at.exit

if.end.i.i57.i.i.i:                               ; preds = %if.else.i.i56.i.i.i
  %f_path.i.i.i.i.i = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %f_path.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_path.i.i.i.i.i, align 8
  %call9.i.i.i.i.i = call ptr @mntget(ptr noundef %36) #6
  %and.i15.i.i.i.i.i = and i32 %call.i.i.i54.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i15.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end.i.i57.i.i.i.get_vfsmount_from_fd.exit.i.i.i.i_crit_edge, label %if.then.i.i.i58.i.i.i

if.end.i.i57.i.i.i.get_vfsmount_from_fd.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_vfsmount_from_fd.exit.i.i.i.i

if.then.i.i.i58.i.i.i:                            ; preds = %if.end.i.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @fput(ptr noundef nonnull %34) #6
  br label %get_vfsmount_from_fd.exit.i.i.i.i

get_vfsmount_from_fd.exit.i.i.i.i:                ; preds = %if.then.i.i.i58.i.i.i, %if.end.i.i57.i.i.i.get_vfsmount_from_fd.exit.i.i.i.i_crit_edge, %if.then.i.i53.i.i.i
  %retval.1.i.i.i.i.i = phi ptr [ %call3.i.i.i.i.i, %if.then.i.i53.i.i.i ], [ %call9.i.i.i.i.i, %if.then.i.i.i58.i.i.i ], [ %call9.i.i.i.i.i, %if.end.i.i57.i.i.i.get_vfsmount_from_fd.exit.i.i.i.i_crit_edge ]
  %37 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.1.i.i.i.i.i, ptr %path.i.i, align 4
  %cmp.i25.i.i.i.i = icmp ugt ptr %retval.1.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25.i.i.i.i, label %get_vfsmount_from_fd.exit.i.i.i.i.handle_to_path.exit.i.i_crit_edge, label %if.end.i61.i.i.i

get_vfsmount_from_fd.exit.i.i.i.i.handle_to_path.exit.i.i_crit_edge: ; preds = %get_vfsmount_from_fd.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_to_path.exit.i.i

if.end.i61.i.i.i:                                 ; preds = %get_vfsmount_from_fd.exit.i.i.i.i
  %38 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call9.i.i.i.i, align 128
  %shr.i.i.i.i = lshr i32 %39, 2
  %handle_type.i.i.i.i = getelementptr inbounds %struct.file_handle, ptr %call9.i.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %handle_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %handle_type.i.i.i.i, align 4
  %call7.i60.i.i.i = call ptr @exportfs_decode_fh(ptr noundef %retval.1.i.i.i.i.i, ptr noundef %f_handle14.i.i.i, i32 noundef %shr.i.i.i.i, i32 noundef %41, ptr noundef nonnull @vfs_dentry_acceptable, ptr noundef null) #6
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i60.i.i.i, ptr %2, align 4
  %cmp.i26.i.i.i.i = icmp ugt ptr %call7.i60.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i.i.i.i, label %if.then10.i.i.i.i, label %handle_to_path.exit.thread35.i.i

handle_to_path.exit.thread35.i.i:                 ; preds = %if.end.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f_handle.i.i.i) #6
  br label %if.end.i.i

if.then10.i.i.i.i:                                ; preds = %if.end.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %path.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %path.i.i, align 4
  call void @mntput(ptr noundef %44) #6
  br label %handle_to_path.exit.i.i

handle_to_path.exit.thread.i.i:                   ; preds = %if.end8.i.i.i.i.handle_to_path.exit.thread.i.i_crit_edge, %if.end4.i.i.i.handle_to_path.exit.thread.i.i_crit_edge, %if.then11.i.i.i.i.i, %entry.handle_to_path.exit.thread.i.i_crit_edge
  %retval1.1.i.ph.i.i = phi i32 [ -14, %if.then11.i.i.i.i.i ], [ -12, %if.end8.i.i.i.i.handle_to_path.exit.thread.i.i_crit_edge ], [ -22, %if.end4.i.i.i.handle_to_path.exit.thread.i.i_crit_edge ], [ -1, %entry.handle_to_path.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f_handle.i.i.i) #6
  br label %__do_sys_open_by_handle_at.exit

handle_to_path.exit.thread32.i.i:                 ; preds = %if.then11.i.i48.i.i.i, %if.then27.i.i.i.i.i, %land.rhs16.i.i.i.i.i.handle_to_path.exit.thread32.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f_handle.i.i.i) #6
  br label %__do_sys_open_by_handle_at.exit

handle_to_path.exit.i.i:                          ; preds = %if.then10.i.i.i.i, %get_vfsmount_from_fd.exit.i.i.i.i.handle_to_path.exit.i.i_crit_edge
  %retval1.0.i.in.i.i = phi ptr [ %call7.i60.i.i.i, %if.then10.i.i.i.i ], [ %retval.1.i.i.i.i.i, %get_vfsmount_from_fd.exit.i.i.i.i.handle_to_path.exit.i.i_crit_edge ]
  %retval1.0.i.i.i = ptrtoint ptr %retval1.0.i.in.i.i to i32
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f_handle.i.i.i) #6
  %tobool.not.i.i = icmp eq ptr %retval1.0.i.in.i.i, null
  br i1 %tobool.not.i.i, label %handle_to_path.exit.i.i.if.end.i.i_crit_edge, label %handle_to_path.exit.i.i.__do_sys_open_by_handle_at.exit_crit_edge

handle_to_path.exit.i.i.__do_sys_open_by_handle_at.exit_crit_edge: ; preds = %handle_to_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_open_by_handle_at.exit

handle_to_path.exit.i.i.if.end.i.i_crit_edge:     ; preds = %handle_to_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %handle_to_path.exit.i.i.if.end.i.i_crit_edge, %handle_to_path.exit.thread35.i.i
  %call2.i.i = call i32 @get_unused_fd_flags(i32 noundef %flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @path_put(ptr noundef nonnull %path.i.i) #6
  br label %__do_sys_open_by_handle_at.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = call ptr @file_open_root(ptr noundef nonnull %path.i.i, ptr noundef nonnull @.str.21, i32 noundef %flags, i16 noundef zeroext 0) #6
  %cmp.i.i.i = icmp ugt ptr %call5.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then7.i.i, label %if.else.i.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @put_unused_fd(i32 noundef %call2.i.i) #6
  %45 = ptrtoint ptr %call5.i.i to i32
  br label %if.end9.i.i

if.else.i.i:                                      ; preds = %if.end4.i.i
  %f_flags.i.i.i = getelementptr inbounds %struct.file, ptr %call5.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %f_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %f_flags.i.i.i, align 4
  %and.i.i.i = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 32, i32 4128
  %f_mode.i.i.i.i = getelementptr inbounds %struct.file, ptr %call5.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %f_mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %f_mode.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %49, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i24.i.i, label %if.else.i.i.fsnotify_open.exit.i.i_crit_edge

if.else.i.i.fsnotify_open.exit.i.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_open.exit.i.i

if.end.i.i24.i.i:                                 ; preds = %if.else.i.i
  %f_path.i.i.i.i = getelementptr inbounds %struct.file, ptr %call5.i.i, i32 0, i32 1
  %dentry.i.i23.i.i = getelementptr inbounds %struct.file, ptr %call5.i.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %dentry.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dentry.i.i23.i.i, align 4
  %d_inode.i.i.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %d_inode.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %d_inode.i.i.i.i.i.i, align 8
  %i_sb.i.i.i.i.i = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %i_sb.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb.i.i.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 48
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i.i.i, i32 noundef 4) #6
  %56 = ptrtoint ptr %s_fsnotify_connectors.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i24.i.i.fsnotify_open.exit.i.i_crit_edge, label %if.end.i.i.i25.i.i

if.end.i.i24.i.i.fsnotify_open.exit.i.i_crit_edge: ; preds = %if.end.i.i24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_open.exit.i.i

if.end.i.i.i25.i.i:                               ; preds = %if.end.i.i24.i.i
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %53, align 8
  %60 = and i16 %59, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %60)
  %cmp2.i.i.i.i.i = icmp eq i16 %60, 16384
  br i1 %cmp2.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %if.end.i.i.i25.i.i.if.end8.i.i.i28.i.i_crit_edge

if.end.i.i.i25.i.i.if.end8.i.i.i28.i.i_crit_edge: ; preds = %if.end.i.i.i25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i.i28.i.i

if.then4.i.i.i.i.i:                               ; preds = %if.end.i.i.i25.i.i
  %or.i.i.i.i.i = or i32 %spec.select.i.i.i, 1073741824
  %61 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %51, align 8
  %and5.i.i.i.i.i = and i32 %62, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i.i.i)
  %tobool.not.i.i.i26.i.i = icmp eq i32 %and5.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i26.i.i, label %if.then4.i.i.i.i.i.notify_child.i.i.i.i.i_crit_edge, label %if.then4.i.i.i.i.i.if.end8.i.i.i28.i.i_crit_edge

if.then4.i.i.i.i.i.if.end8.i.i.i28.i.i_crit_edge: ; preds = %if.then4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i.i28.i.i

if.then4.i.i.i.i.i.notify_child.i.i.i.i.i_crit_edge: ; preds = %if.then4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %notify_child.i.i.i.i.i

if.end8.i.i.i28.i.i:                              ; preds = %if.then4.i.i.i.i.i.if.end8.i.i.i28.i.i_crit_edge, %if.end.i.i.i25.i.i.if.end8.i.i.i28.i.i_crit_edge
  %mask.addr.0.i.i.i.i.i = phi i32 [ %or.i.i.i.i.i, %if.then4.i.i.i.i.i.if.end8.i.i.i28.i.i_crit_edge ], [ %spec.select.i.i.i, %if.end.i.i.i25.i.i.if.end8.i.i.i28.i.i_crit_edge ]
  %d_parent.i.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 3
  %63 = ptrtoint ptr %d_parent.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %d_parent.i.i.i.i.i, align 8
  %cmp9.i.i.i27.i.i = icmp eq ptr %64, %51
  br i1 %cmp9.i.i.i27.i.i, label %if.end8.i.i.i28.i.i.notify_child.i.i.i.i.i_crit_edge, label %if.end12.i.i.i.i.i

if.end8.i.i.i28.i.i.notify_child.i.i.i.i.i_crit_edge: ; preds = %if.end8.i.i.i28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %notify_child.i.i.i.i.i

if.end12.i.i.i.i.i:                               ; preds = %if.end8.i.i.i28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i.i.i.i.i = call i32 @__fsnotify_parent(ptr noundef %51, i32 noundef %mask.addr.0.i.i.i.i.i, ptr noundef %f_path.i.i.i.i, i32 noundef 1) #6
  br label %fsnotify_open.exit.i.i

notify_child.i.i.i.i.i:                           ; preds = %if.end8.i.i.i28.i.i.notify_child.i.i.i.i.i_crit_edge, %if.then4.i.i.i.i.i.notify_child.i.i.i.i.i_crit_edge
  %mask.addr.1.i.i.i.i.i = phi i32 [ %mask.addr.0.i.i.i.i.i, %if.end8.i.i.i28.i.i.notify_child.i.i.i.i.i_crit_edge ], [ %or.i.i.i.i.i, %if.then4.i.i.i.i.i.notify_child.i.i.i.i.i_crit_edge ]
  %call14.i.i.i.i.i = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i.i.i, ptr noundef %f_path.i.i.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %53, i32 noundef 0) #6
  br label %fsnotify_open.exit.i.i

fsnotify_open.exit.i.i:                           ; preds = %notify_child.i.i.i.i.i, %if.end12.i.i.i.i.i, %if.end.i.i24.i.i.fsnotify_open.exit.i.i_crit_edge, %if.else.i.i.fsnotify_open.exit.i.i_crit_edge
  call void @fd_install(i32 noundef %call2.i.i, ptr noundef %call5.i.i) #6
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %fsnotify_open.exit.i.i, %if.then7.i.i
  %retval1.0.i.i = phi i32 [ %45, %if.then7.i.i ], [ %call2.i.i, %fsnotify_open.exit.i.i ]
  call void @path_put(ptr noundef nonnull %path.i.i) #6
  br label %__do_sys_open_by_handle_at.exit

__do_sys_open_by_handle_at.exit:                  ; preds = %if.end9.i.i, %if.then3.i.i, %handle_to_path.exit.i.i.__do_sys_open_by_handle_at.exit_crit_edge, %handle_to_path.exit.thread32.i.i, %handle_to_path.exit.thread.i.i, %handle_to_path.exit.thread38.i.i
  %retval.0.i.i = phi i32 [ %call2.i.i, %if.then3.i.i ], [ %retval1.0.i.i, %if.end9.i.i ], [ %retval1.0.i.i.i, %handle_to_path.exit.i.i.__do_sys_open_by_handle_at.exit_crit_edge ], [ %retval1.1.i.ph.i.i, %handle_to_path.exit.thread.i.i ], [ -14, %handle_to_path.exit.thread32.i.i ], [ -9, %handle_to_path.exit.thread38.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #6
  ret i32 %retval.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exportfs_encode_fh(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exportfs_decode_fh(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfs_dentry_acceptable(ptr nocapture noundef readnone %context, ptr nocapture noundef readnone %dentry) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !38, !40, !41, !42, !43, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/fhandle.c", i32 93, i32 1}
!2 = !{ptr @event_enter__name_to_handle_at, !1, !"event_enter__name_to_handle_at", i1 false, i1 false}
!3 = !{ptr @__event_enter__name_to_handle_at, !1, !"__event_enter__name_to_handle_at", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__name_to_handle_at, !1, !"event_exit__name_to_handle_at", i1 false, i1 false}
!6 = !{ptr @__event_exit__name_to_handle_at, !1, !"__event_exit__name_to_handle_at", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__name_to_handle_at, !1, !"__syscall_meta__name_to_handle_at", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__name_to_handle_at, !1, !"__p_syscall_meta__name_to_handle_at", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/fhandle.c", i32 256, i32 1}
!12 = !{ptr @event_enter__open_by_handle_at, !11, !"event_enter__open_by_handle_at", i1 false, i1 false}
!13 = !{ptr @__event_enter__open_by_handle_at, !11, !"__event_enter__open_by_handle_at", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__open_by_handle_at, !11, !"event_exit__open_by_handle_at", i1 false, i1 false}
!16 = !{ptr @__event_exit__open_by_handle_at, !11, !"__event_exit__open_by_handle_at", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__open_by_handle_at, !11, !"__syscall_meta__open_by_handle_at", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__open_by_handle_at, !11, !"__p_syscall_meta__open_by_handle_at", i1 false, i1 false}
!20 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @types__name_to_handle_at, !1, !"types__name_to_handle_at", i1 false, i1 false}
!25 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @args__name_to_handle_at, !1, !"args__name_to_handle_at", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/fhandle.c", i32 72, i32 6}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!40 = !{ptr @types__open_by_handle_at, !11, !"types__open_by_handle_at", i1 false, i1 false}
!41 = !{ptr @.str.19, !11, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !11, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @args__open_by_handle_at, !11, !"args__open_by_handle_at", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/fhandle.c", i32 232, i32 31}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i64 2152230131, i64 2152230156}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 4725686}
!60 = !{i64 4725883}
!61 = !{i64 2152211116}
!62 = !{i64 2155183619, i64 2155183899, i64 2155184233, i64 2155184567}
!63 = !{i64 2152230812, i64 2152230837}
!64 = !{!65}
!65 = distinct !{!65, !66, !"fdget: %agg.result"}
!66 = distinct !{!66, !"fdget"}
