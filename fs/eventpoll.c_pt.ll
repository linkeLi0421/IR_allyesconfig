; ModuleID = '/llk/IR_all_yes/fs/eventpoll.c_pt.bc'
source_filename = "../fs/eventpoll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.130, %struct.trace_event, ptr, ptr, %union.anon.132, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.130 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.132 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.epitem = type { %union.anon.170, %struct.list_head, ptr, %struct.epoll_filefd, ptr, ptr, %struct.hlist_node, ptr, %struct.epoll_event }
%union.anon.170 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.epoll_filefd = type { ptr, i32 }
%struct.epoll_event = type { i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.epitems_head = type { %struct.hlist_head, ptr }
%struct.hlist_head = type { ptr }
%struct.eventpoll = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.rwlock_t, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i64, %struct.hlist_head, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.name_snapshot = type { %struct.qstr, [36 x i8] }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.ep_pqueue = type { %struct.poll_table_struct, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.timespec64 = type { i64, i32 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.eppoll_entry = type { ptr, ptr, %struct.wait_queue_entry, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.145, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.146, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.147, ptr, %struct.address_space, %struct.list_head, %union.anon.150, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.145 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.146 = type { %struct.callback_head }
%union.anon.147 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.150 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.136, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.136 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.wakeup_source = type { ptr, i32, %struct.list_head, %struct.spinlock, ptr, %struct.timer_list, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i8 }

@epmutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @epmutex, i64 52), ptr getelementptr (i8, ptr @epmutex, i64 52) }, ptr @epmutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_epoll_create1\00", [40 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__epoll_create1 = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 1, ptr @types__epoll_create1, ptr @args__epoll_create1, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__epoll_create1, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__epoll_create1, i64 20) }, ptr @event_enter__epoll_create1, ptr @event_exit__epoll_create1 }, align 4
@event_enter__epoll_create1 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.130 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_create1, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__epoll_create1 = internal global ptr @event_enter__epoll_create1, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_epoll_create1\00", [41 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__epoll_create1 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.130 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_create1, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__epoll_create1 = internal global ptr @event_exit__epoll_create1, section "_ftrace_events", align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_epoll_create1\00", [46 x i8] zeroinitializer }, align 32
@types__epoll_create1 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@args__epoll_create1 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.27], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__epoll_create1 = internal global ptr @__syscall_meta__epoll_create1, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_epoll_create\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__epoll_create = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 1, ptr @types__epoll_create, ptr @args__epoll_create, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__epoll_create, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__epoll_create, i64 20) }, ptr @event_enter__epoll_create, ptr @event_exit__epoll_create }, align 4
@event_enter__epoll_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.130 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_create, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__epoll_create = internal global ptr @event_enter__epoll_create, section "_ftrace_events", align 4
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_epoll_create\00", [42 x i8] zeroinitializer }, align 32
@event_exit__epoll_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.130 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_create, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__epoll_create = internal global ptr @event_exit__epoll_create, section "_ftrace_events", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_epoll_create\00", [47 x i8] zeroinitializer }, align 32
@types__epoll_create = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@args__epoll_create = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__epoll_create = internal global ptr @__syscall_meta__epoll_create, section "__syscalls_metadata", align 4
@loop_check_gen = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_epoll_ctl\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__epoll_ctl = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 4, ptr @types__epoll_ctl, ptr @args__epoll_ctl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__epoll_ctl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__epoll_ctl, i64 20) }, ptr @event_enter__epoll_ctl, ptr @event_exit__epoll_ctl }, align 4
@event_enter__epoll_ctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.130 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_ctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__epoll_ctl = internal global ptr @event_enter__epoll_ctl, section "_ftrace_events", align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_epoll_ctl\00", [45 x i8] zeroinitializer }, align 32
@event_exit__epoll_ctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.130 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_ctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__epoll_ctl = internal global ptr @event_exit__epoll_ctl, section "_ftrace_events", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_epoll_ctl\00", [18 x i8] zeroinitializer }, align 32
@types__epoll_ctl = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.26, ptr @.str.26, ptr @.str.26, ptr @.str.39], [16 x i8] zeroinitializer }, align 32
@args__epoll_ctl = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__epoll_ctl = internal global ptr @__syscall_meta__epoll_ctl, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_epoll_wait\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__epoll_wait = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 4, ptr @types__epoll_wait, ptr @args__epoll_wait, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__epoll_wait, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__epoll_wait, i64 20) }, ptr @event_enter__epoll_wait, ptr @event_exit__epoll_wait }, align 4
@event_enter__epoll_wait = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.130 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_wait, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__epoll_wait = internal global ptr @event_enter__epoll_wait, section "_ftrace_events", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_epoll_wait\00", [44 x i8] zeroinitializer }, align 32
@event_exit__epoll_wait = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.130 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_wait, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__epoll_wait = internal global ptr @event_exit__epoll_wait, section "_ftrace_events", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_epoll_wait\00", [17 x i8] zeroinitializer }, align 32
@types__epoll_wait = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.26, ptr @.str.39, ptr @.str.26, ptr @.str.26], [16 x i8] zeroinitializer }, align 32
@args__epoll_wait = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.47, ptr @.str.48, ptr @.str.49], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__epoll_wait = internal global ptr @__syscall_meta__epoll_wait, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_epoll_pwait\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__epoll_pwait = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 6, ptr @types__epoll_pwait, ptr @args__epoll_pwait, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__epoll_pwait, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__epoll_pwait, i64 20) }, ptr @event_enter__epoll_pwait, ptr @event_exit__epoll_pwait }, align 4
@event_enter__epoll_pwait = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.130 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_pwait, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__epoll_pwait = internal global ptr @event_enter__epoll_pwait, section "_ftrace_events", align 4
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_epoll_pwait\00", [43 x i8] zeroinitializer }, align 32
@event_exit__epoll_pwait = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.130 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_pwait, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__epoll_pwait = internal global ptr @event_exit__epoll_pwait, section "_ftrace_events", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_epoll_pwait\00", [16 x i8] zeroinitializer }, align 32
@types__epoll_pwait = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.26, ptr @.str.39, ptr @.str.26, ptr @.str.26, ptr @.str.52, ptr @.str.53], [40 x i8] zeroinitializer }, align 32
@args__epoll_pwait = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.40, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.54, ptr @.str.55], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__epoll_pwait = internal global ptr @__syscall_meta__epoll_pwait, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_epoll_pwait2\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__epoll_pwait2 = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 6, ptr @types__epoll_pwait2, ptr @args__epoll_pwait2, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__epoll_pwait2, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__epoll_pwait2, i64 20) }, ptr @event_enter__epoll_pwait2, ptr @event_exit__epoll_pwait2 }, align 4
@event_enter__epoll_pwait2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.130 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_pwait2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__epoll_pwait2 = internal global ptr @event_enter__epoll_pwait2, section "_ftrace_events", align 4
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_epoll_pwait2\00", [42 x i8] zeroinitializer }, align 32
@event_exit__epoll_pwait2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.130 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.132 zeroinitializer, ptr @__syscall_meta__epoll_pwait2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__epoll_pwait2 = internal global ptr @event_exit__epoll_pwait2, section "_ftrace_events", align 4
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_epoll_pwait2\00", [47 x i8] zeroinitializer }, align 32
@types__epoll_pwait2 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.26, ptr @.str.39, ptr @.str.26, ptr @.str.57, ptr @.str.52, ptr @.str.53], [40 x i8] zeroinitializer }, align 32
@args__epoll_pwait2 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.40, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.54, ptr @.str.55], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__epoll_pwait2 = internal global ptr @__syscall_meta__epoll_pwait2, section "__syscalls_metadata", align 4
@__initcall__kmod_eventpoll__589_2395_eventpoll_init5 = internal global ptr @eventpoll_init, section ".initcall5.init", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"epmutex.wait_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"epmutex\00", [24 x i8] zeroinitializer }, align 32
@ep_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/eventpoll.c\00", [17 x i8] zeroinitializer }, align 32
@pwq_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ephead_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@ep_wakeup_source.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@epi_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@eventpoll_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ep_eventpoll_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @ep_eventpoll_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ep_show_fdinfo, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ep_start_scan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"tfd: %8d events: %8x data: %16llx  pos:%lli ino:%lx sdev:%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[eventpoll]\00", [20 x i8] zeroinitializer }, align 32
@ep_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&ep->mtx\00", [23 x i8] zeroinitializer }, align 32
@ep_alloc.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ep->lock\00", [22 x i8] zeroinitializer }, align 32
@ep_alloc.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"&ep->wq\00", [24 x i8] zeroinitializer }, align 32
@ep_alloc.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ep->poll_wait\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@inserting_into = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tfile_check_list = internal global { ptr, [28 x i8] } { ptr inttoptr (i32 -1 to ptr), [28 x i8] zeroinitializer }, align 32
@ep_insert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@max_user_watches = internal global i32 0, section ".data..read_mostly", align 4
@path_count = internal global { [5 x i32], [44 x i8] } zeroinitializer, align 32
@reverse_path_check_proc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@path_limits = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1000, i32 500, i32 100, i32 50, i32 10], [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eventpoll\00", [22 x i8] zeroinitializer }, align 32
@ep_pm_stay_awake_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sysctl_net_busy_poll = external dso_local global i32, section ".data..read_mostly", align 4
@ep_modify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@unlist_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct epoll_event *\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"epfd\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"op\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"maxevents\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@ep_poll.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"const sigset_t *\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sigmask\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sigsetsize\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/sched/signal.h\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"const struct __kernel_timespec *\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eventpoll_epi\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eventpoll_pwq\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep_head\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fs/epoll\00", [23 x i8] zeroinitializer }, align 32
@epoll_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.62, ptr @max_user_watches, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @long_zero, ptr @long_max }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_user_watches\00", [47 x i8] zeroinitializer }, align 32
@long_zero = internal global { i32, [28 x i8] } zeroinitializer, align 32
@long_max = internal global { i32, [28 x i8] } { i32 2147483647, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"epmutex\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"event_enter__epoll_create1\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"event_exit__epoll_create1\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"types__epoll_create1\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"args__epoll_create1\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [26 x i8] c"event_enter__epoll_create\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"event_exit__epoll_create\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"types__epoll_create\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"args__epoll_create\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"loop_check_gen\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 248, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant [23 x i8] c"event_enter__epoll_ctl\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"event_exit__epoll_ctl\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"types__epoll_ctl\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [16 x i8] c"args__epoll_ctl\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [24 x i8] c"event_enter__epoll_wait\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [23 x i8] c"event_exit__epoll_wait\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"types__epoll_wait\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"args__epoll_wait\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [25 x i8] c"event_enter__epoll_pwait\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [24 x i8] c"event_exit__epoll_pwait\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"types__epoll_pwait\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"args__epoll_pwait\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [26 x i8] c"event_enter__epoll_pwait2\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [25 x i8] c"event_exit__epoll_pwait2\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c"types__epoll_pwait2\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"args__epoll_pwait2\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 246, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 692, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 695, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 723, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 576, i32 9 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"eventpoll_fops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 889, i32 37 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 875, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 2008, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1991, i32 28 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 948, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 949, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 950, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 951, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 2013, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant [15 x i8] c"inserting_into\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 251, i32 26 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"tfile_check_list\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 267, i32 29 }
@___asan_gen_.266 = private unnamed_addr constant [11 x i8] c"path_count\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1302, i32 12 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1332, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [12 x i8] c"path_limits\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1301, i32 18 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1376, i32 46 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 2183, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 156, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 2241, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 2275, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant [32 x i8] c"../include/linux/sched/signal.h\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 519, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 2286, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 2382, i32 32 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 2386, i32 32 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 2390, i32 35 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 325, i32 18 }
@___asan_gen_.335 = private unnamed_addr constant [12 x i8] c"epoll_table\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 310, i32 25 }
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 312, i32 15 }
@___asan_gen_.341 = private unnamed_addr constant [10 x i8] c"long_zero\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 307, i32 13 }
@___asan_gen_.344 = private unnamed_addr constant [9 x i8] c"long_max\00", align 1
@___asan_gen_.345 = private constant [18 x i8] c"../fs/eventpoll.c\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 308, i32 13 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__event_enter__epoll_create, ptr @__event_enter__epoll_create1, ptr @__event_enter__epoll_ctl, ptr @__event_enter__epoll_pwait, ptr @__event_enter__epoll_pwait2, ptr @__event_enter__epoll_wait, ptr @__event_exit__epoll_create, ptr @__event_exit__epoll_create1, ptr @__event_exit__epoll_ctl, ptr @__event_exit__epoll_pwait, ptr @__event_exit__epoll_pwait2, ptr @__event_exit__epoll_wait, ptr @__initcall__kmod_eventpoll__589_2395_eventpoll_init5, ptr @__p_syscall_meta__epoll_create, ptr @__p_syscall_meta__epoll_create1, ptr @__p_syscall_meta__epoll_ctl, ptr @__p_syscall_meta__epoll_pwait, ptr @__p_syscall_meta__epoll_pwait2, ptr @__p_syscall_meta__epoll_wait, ptr @__syscall_meta__epoll_create, ptr @__syscall_meta__epoll_create1, ptr @__syscall_meta__epoll_ctl, ptr @__syscall_meta__epoll_pwait, ptr @__syscall_meta__epoll_pwait2, ptr @__syscall_meta__epoll_wait, ptr @event_enter__epoll_create, ptr @event_enter__epoll_create1, ptr @event_enter__epoll_ctl, ptr @event_enter__epoll_pwait, ptr @event_enter__epoll_pwait2, ptr @event_enter__epoll_wait, ptr @event_exit__epoll_create, ptr @event_exit__epoll_create1, ptr @event_exit__epoll_ctl, ptr @event_exit__epoll_pwait, ptr @event_exit__epoll_pwait2, ptr @event_exit__epoll_wait, ptr @epmutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__epoll_create1, ptr @args__epoll_create1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__epoll_create, ptr @args__epoll_create, ptr @loop_check_gen, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__epoll_ctl, ptr @args__epoll_ctl, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__epoll_wait, ptr @args__epoll_wait, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__epoll_pwait, ptr @args__epoll_pwait, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__epoll_pwait2, ptr @args__epoll_pwait2, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @eventpoll_fops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ep_alloc.__key, ptr @.str.29, ptr @ep_alloc.__key.30, ptr @.str.31, ptr @ep_alloc.__key.32, ptr @.str.33, ptr @ep_alloc.__key.34, ptr @.str.35, ptr @.str.36, ptr @inserting_into, ptr @tfile_check_list, ptr @path_count, ptr @.str.37, ptr @path_limits, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @epoll_table, ptr @.str.62, ptr @long_zero, ptr @long_max], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epmutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__epoll_create1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__epoll_create1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__epoll_create1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__epoll_create1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__epoll_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__epoll_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__epoll_create to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__epoll_create to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_check_gen to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__epoll_ctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__epoll_ctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__epoll_ctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__epoll_ctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__epoll_wait to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__epoll_wait to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__epoll_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__epoll_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__epoll_pwait to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__epoll_pwait to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__epoll_pwait to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__epoll_pwait to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__epoll_pwait2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__epoll_pwait2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__epoll_pwait2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__epoll_pwait2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eventpoll_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_alloc.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_alloc.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_alloc.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inserting_into to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfile_check_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_count to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_limits to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epoll_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @long_zero to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @long_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_epoll_create1 = dso_local alias i32 (i32), ptr @__se_sys_epoll_create1
@sys_epoll_create = dso_local alias i32 (i32), ptr @__se_sys_epoll_create
@sys_epoll_ctl = dso_local alias i32 (i32, i32, i32, ptr), ptr @__se_sys_epoll_ctl
@sys_epoll_wait = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_epoll_wait
@sys_epoll_pwait = dso_local alias i32 (i32, ptr, i32, i32, ptr, i32), ptr @__se_sys_epoll_pwait
@sys_epoll_pwait2 = dso_local alias i32 (i32, ptr, i32, ptr, ptr, i32), ptr @__se_sys_epoll_pwait2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @eventpoll_release_file(ptr nocapture noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @epmutex, i32 noundef 0) #9
  %f_ep = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 17
  %0 = ptrtoint ptr %f_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_ep, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !201

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool5.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -40
  %tobool7.not3638 = icmp eq ptr %add.ptr, null
  %tobool7.not36 = or i1 %tobool5.not, %tobool7.not3638
  br i1 %tobool7.not36, label %if.end.cleanup_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %epi.037 = phi ptr [ %add.ptr19, %land.rhs.land.rhs_crit_edge ], [ %add.ptr, %if.end.land.rhs_crit_edge ]
  %fllink = getelementptr inbounds %struct.epitem, ptr %epi.037, i32 0, i32 6
  %4 = ptrtoint ptr %fllink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fllink, align 8
  %ep11 = getelementptr inbounds %struct.epitem, ptr %epi.037, i32 0, i32 5
  %6 = ptrtoint ptr %ep11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep11, align 4
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #9
  tail call fastcc void @ep_remove(ptr noundef %7, ptr noundef nonnull %epi.037)
  tail call void @mutex_unlock(ptr noundef %7) #9
  %tobool15.not = icmp eq ptr %5, null
  %add.ptr19 = getelementptr i8, ptr %5, i32 -40
  %tobool7.not39 = icmp eq ptr %add.ptr19, null
  %tobool7.not = or i1 %tobool15.not, %tobool7.not39
  br i1 %tobool7.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @epmutex) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_remove(ptr noundef %ep, ptr noundef %epi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ffd = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 3
  %0 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ffd, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end88_crit_edge, label %land.lhs.true

entry.if.end88_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

land.lhs.true:                                    ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !202
  %7 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, ptrtoint (ptr @lockdep_recursion to i32)
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !203
  %16 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i5 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i5 to ptr
  %preempt_count.i.i6 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i6, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %land.rhs, label %land.lhs.true.if.end88_crit_edge

land.lhs.true.if.end88_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

land.rhs:                                         ; preds = %land.lhs.true
  %20 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i7 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i7 to ptr
  %preempt_count.i.i8 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i8, align 4
  %add.i9 = add i32 %23, 1
  store volatile i32 %add.i9, ptr %preempt_count.i.i8, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !204
  %24 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %27, ptrtoint (ptr @hardirqs_enabled to i32)
  %28 = inttoptr i32 %add46 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  %31 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i10 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i10 to ptr
  %preempt_count.i.i11 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i11, align 4
  %sub.i12 = add i32 %34, -1
  store volatile i32 %sub.i12, ptr %preempt_count.i.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool53.not = icmp eq i32 %30, 0
  br i1 %tobool53.not, label %land.rhs57, label %land.rhs.if.end88_crit_edge

land.rhs.if.end88_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

land.rhs57:                                       ; preds = %land.rhs
  %.b1 = load i1, ptr @ep_remove.__already_done, align 1
  br i1 %.b1, label %land.rhs57.if.end88_crit_edge, label %if.then, !prof !206

land.rhs57.if.end88_crit_edge:                    ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then:                                          ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 692, i32 noundef 9, ptr noundef null) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then, %land.rhs57.if.end88_crit_edge, %land.rhs.if.end88_crit_edge, %land.lhs.true.if.end88_crit_edge, %entry.if.end88_crit_edge
  tail call fastcc void @ep_unregister_pollwait(ptr noundef %epi)
  %f_lock = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock) #9
  %f_ep = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %f_ep to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_ep, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %fllink = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 6
  %cmp = icmp eq ptr %38, %fllink
  br i1 %cmp, label %land.lhs.true98, label %if.end88.if.end120_crit_edge

if.end88.if.end120_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

land.lhs.true98:                                  ; preds = %if.end88
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %tobool100.not = icmp eq ptr %40, null
  br i1 %tobool100.not, label %if.then101, label %if.end120.thread

if.end120.thread:                                 ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #11
  %pprev2.i.i19 = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %pprev2.i.i19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pprev2.i.i19, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %40, ptr %42, align 4
  br label %do.body13.i.i

if.then101:                                       ; preds = %land.lhs.true98
  %44 = ptrtoint ptr %f_ep to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %f_ep, align 8
  %f_op.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %f_op.i, align 4
  %cmp.i.not = icmp eq ptr %46, @eventpoll_fops
  br i1 %cmp.i.not, label %if.then101.if.end120_crit_edge, label %if.then105

if.then101.if.end120_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then105:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  %next111 = getelementptr inbounds %struct.epitems_head, ptr %36, i32 0, i32 1
  %47 = ptrtoint ptr %next111 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %next111, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !207
  %tobool116.not = icmp eq ptr %48, null
  %spec.select = select i1 %tobool116.not, ptr %36, ptr null
  br label %if.end120

if.end120:                                        ; preds = %if.then105, %if.then101.if.end120_crit_edge, %if.end88.if.end120_crit_edge
  %to_free.1.ph = phi ptr [ null, %if.end88.if.end120_crit_edge ], [ %spec.select, %if.then105 ], [ null, %if.then101.if.end120_crit_edge ]
  %49 = ptrtoint ptr %fllink to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load ptr, ptr %fllink, align 4
  %pprev2.i.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pprev2.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %.pr, ptr %51, align 4
  %tobool.not.i.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.i, label %if.end120.hlist_del_rcu.exit_crit_edge, label %if.end120.do.body13.i.i_crit_edge

if.end120.do.body13.i.i_crit_edge:                ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13.i.i

if.end120.hlist_del_rcu.exit_crit_edge:           ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end120.do.body13.i.i_crit_edge, %if.end120.thread
  %53 = phi ptr [ %42, %if.end120.thread ], [ %51, %if.end120.do.body13.i.i_crit_edge ]
  %pprev2.i.i23 = phi ptr [ %pprev2.i.i19, %if.end120.thread ], [ %pprev2.i.i, %if.end120.do.body13.i.i_crit_edge ]
  %to_free.121 = phi ptr [ null, %if.end120.thread ], [ %to_free.1.ph, %if.end120.do.body13.i.i_crit_edge ]
  %54 = phi ptr [ %40, %if.end120.thread ], [ %.pr, %if.end120.do.body13.i.i_crit_edge ]
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end120.hlist_del_rcu.exit_crit_edge
  %pprev2.i.i24 = phi ptr [ %pprev2.i.i, %if.end120.hlist_del_rcu.exit_crit_edge ], [ %pprev2.i.i23, %do.body13.i.i ]
  %to_free.122 = phi ptr [ %to_free.1.ph, %if.end120.hlist_del_rcu.exit_crit_edge ], [ %to_free.121, %do.body13.i.i ]
  %56 = ptrtoint ptr %pprev2.i.i24 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i24, align 4
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #9
  %tobool.not.i = icmp eq ptr %to_free.122, null
  br i1 %tobool.not.i, label %hlist_del_rcu.exit.free_ephead.exit_crit_edge, label %if.then.i

hlist_del_rcu.exit.free_ephead.exit_crit_edge:    ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ephead.exit

if.then.i:                                        ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %57 = load ptr, ptr @ephead_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %57, ptr noundef nonnull %to_free.122) #9
  br label %free_ephead.exit

free_ephead.exit:                                 ; preds = %if.then.i, %hlist_del_rcu.exit.free_ephead.exit_crit_edge
  %rbr = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 5
  %rb_leftmost.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i13 = icmp eq ptr %59, %epi
  br i1 %cmp.i13, label %if.then.i14, label %free_ephead.exit.rb_erase_cached.exit_crit_edge

free_ephead.exit.rb_erase_cached.exit_crit_edge:  ; preds = %free_ephead.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rb_erase_cached.exit

if.then.i14:                                      ; preds = %free_ephead.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @rb_next(ptr noundef %epi) #9
  %60 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit

rb_erase_cached.exit:                             ; preds = %if.then.i14, %free_ephead.exit.rb_erase_cached.exit_crit_edge
  tail call void @rb_erase(ptr noundef %epi, ptr noundef %rbr) #9
  %lock = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 4
  tail call void @_raw_write_lock_irq(ptr noundef %lock) #9
  %rdllink.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 1
  %61 = ptrtoint ptr %rdllink.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %rdllink.i, align 4
  %cmp.i.i.not = icmp eq ptr %62, %rdllink.i
  br i1 %cmp.i.i.not, label %rb_erase_cached.exit.if.end127_crit_edge, label %if.then126

rb_erase_cached.exit.if.end127_crit_edge:         ; preds = %rb_erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then126:                                       ; preds = %rb_erase_cached.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rdllink.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then126.list_del_init.exit_crit_edge

if.then126.list_del_init.exit_crit_edge:          ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i, align 4
  %65 = ptrtoint ptr %rdllink.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rdllink.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then126.list_del_init.exit_crit_edge
  %69 = ptrtoint ptr %rdllink.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %rdllink.i, ptr %rdllink.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %rdllink.i, ptr %prev.i3.i, align 4
  br label %if.end127

if.end127:                                        ; preds = %list_del_init.exit, %rb_erase_cached.exit.if.end127_crit_edge
  tail call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  %ws.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 7
  %71 = ptrtoint ptr %ws.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %ws.i, align 8
  %ep.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 5
  %73 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ep.i, align 4
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %74, i32 0, i32 5
  %call.i.i15 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool.not.i16 = icmp eq i32 %call.i.i15, 0
  br i1 %tobool.not.i16, label %lor.lhs.false.i, label %if.end127.ep_wakeup_source.exit_crit_edge

if.end127.ep_wakeup_source.exit_crit_edge:        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

lor.lhs.false.i:                                  ; preds = %if.end127
  %call2.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.ep_wakeup_source.exit_crit_edge

lor.lhs.false.i.ep_wakeup_source.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.ep_wakeup_source.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.ep_wakeup_source.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @ep_wakeup_source.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.ep_wakeup_source.exit_crit_edge, label %if.then.i17

land.lhs.true6.i.ep_wakeup_source.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

if.then.i17:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_wakeup_source.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 576, ptr noundef nonnull @.str.24) #9
  br label %ep_wakeup_source.exit

ep_wakeup_source.exit:                            ; preds = %if.then.i17, %land.lhs.true6.i.ep_wakeup_source.exit_crit_edge, %land.lhs.true.i.ep_wakeup_source.exit_crit_edge, %lor.lhs.false.i.ep_wakeup_source.exit_crit_edge, %if.end127.ep_wakeup_source.exit_crit_edge
  tail call void @wakeup_source_unregister(ptr noundef %72) #9
  tail call void @call_rcu(ptr noundef %epi, ptr noundef nonnull @epi_rcu_free) #9
  %user = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 8
  %75 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %user, align 8
  %epoll_watches = getelementptr inbounds %struct.user_struct, ptr %76, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %77 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %epoll_watches, i64 noundef -1, i32 noundef %77) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_epoll_tfile_raw_ptr(ptr nocapture noundef readonly %file, i32 noundef %tfd, i32 noundef %toff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op.i, align 4
  %cmp.i.not = icmp eq ptr %1, @eventpoll_fops
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #9
  %rb_leftmost.i = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not11.i = icmp eq ptr %5, null
  br i1 %tobool.not11.i, label %if.end.if.end7_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.body.i:                                       ; preds = %if.end3.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %toff.addr.014.i = phi i32 [ %toff.addr.1.i, %if.end3.i.for.body.i_crit_edge ], [ %toff, %if.end.for.body.i_crit_edge ]
  %rbp.012.i = phi ptr [ %call5.i, %if.end3.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %fd.i = getelementptr inbounds %struct.epitem, ptr %rbp.012.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %tfd)
  %cmp.i15 = icmp eq i32 %7, %tfd
  br i1 %cmp.i15, label %if.then.i, label %for.body.i.if.end3.i_crit_edge

for.body.i.if.end3.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %toff.addr.014.i)
  %cmp1.i = icmp eq i32 %toff.addr.014.i, 0
  br i1 %cmp1.i, label %if.then4, label %if.else.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %toff.addr.014.i, -1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.else.i, %for.body.i.if.end3.i_crit_edge
  %toff.addr.1.i = phi i32 [ %dec.i, %if.else.i ], [ %toff.addr.014.i, %for.body.i.if.end3.i_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.20, i32 noundef 1009, i32 noundef 0) #9
  %call.i.i = tail call i32 @__cond_resched() #9
  %call5.i = tail call ptr @rb_next(ptr noundef nonnull %rbp.012.i) #9
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end3.i.if.end7_crit_edge, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end3.i.if.end7_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %ffd = getelementptr inbounds %struct.epitem, ptr %rbp.012.i, i32 0, i32 3
  %8 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ffd, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end3.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %file_raw.0 = phi ptr [ %9, %if.then4 ], [ inttoptr (i32 -2 to ptr), %if.end.if.end7_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end3.i.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %file_raw.0, %if.end7 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_create1(i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @do_epoll_create(i32 noundef %flags) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_create(i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp.i = icmp slt i32 %size, 1
  br i1 %cmp.i, label %entry.__do_sys_epoll_create.exit_crit_edge, label %if.end.i

entry.__do_sys_epoll_create.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_epoll_create.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @do_epoll_create(i32 noundef 0) #9
  br label %__do_sys_epoll_create.exit

__do_sys_epoll_create.exit:                       ; preds = %if.end.i, %entry.__do_sys_epoll_create.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -22, %entry.__do_sys_epoll_create.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_epoll_ctl(i32 noundef %epfd, i32 noundef %op, i32 noundef %fd, ptr nocapture noundef %epds, i1 noundef zeroext %nonblock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %epfd) #9, !noalias !208
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.error_return_crit_edge, label %if.end

entry.error_return_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_return

if.end:                                           ; preds = %entry
  %call.i161 = tail call i32 @__fdget(i32 noundef %fd) #9, !noalias !211
  %and.i.i162 = and i32 %call.i161, -4
  %1 = inttoptr i32 %and.i.i162 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i162)
  %tobool3.not = icmp eq i32 %and.i.i162, 0
  br i1 %tobool3.not, label %if.end.error_fput_crit_edge, label %if.end5

if.end.error_fput_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_fput

if.end5:                                          ; preds = %if.end
  %f_op.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_op.i, align 4
  %poll.i = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %poll.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poll.i, align 4
  %tobool.i.not = icmp eq ptr %5, null
  br i1 %tobool.i.not, label %if.end5.if.end113_crit_edge, label %if.end8

if.end5.if.end113_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %op)
  %cmp.i.not = icmp eq i32 %op, 2
  br i1 %cmp.i.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %6 = ptrtoint ptr %epds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %epds, align 8
  %and.i = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then11.if.end12_crit_edge, label %land.lhs.true.i

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true.i:                                  ; preds = %if.then11
  %call.i165 = tail call zeroext i1 @capable(i32 noundef 36) #9
  br i1 %call.i165, label %land.lhs.true.i.if.end12_crit_edge, label %if.then.i

land.lhs.true.i.if.end12_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %epds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %epds, align 8
  %and2.i = and i32 %9, -536870913
  store i32 %and2.i, ptr %epds, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end12_crit_edge, %if.then11.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.end12.if.end113_crit_edge, label %lor.lhs.false

if.end12.if.end113_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

lor.lhs.false:                                    ; preds = %if.end12
  %f_op.i166 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %10 = ptrtoint ptr %f_op.i166 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_op.i166, align 4
  %cmp.i167.not = icmp eq ptr %11, @eventpoll_fops
  br i1 %cmp.i167.not, label %if.end19, label %lor.lhs.false.if.end113_crit_edge

lor.lhs.false.if.end113_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.end19:                                         ; preds = %lor.lhs.false
  br i1 %cmp.i.not, label %if.end19.if.end38_crit_edge, label %land.lhs.true

if.end19.if.end38_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end19
  %12 = ptrtoint ptr %epds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %epds, align 8
  %and = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end38_crit_edge, label %if.then23

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then23:                                        ; preds = %land.lhs.true
  %14 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %op, label %if.then23.if.end38_crit_edge [
    i32 3, label %if.then23.if.end113_crit_edge
    i32 1, label %land.lhs.true28
  ]

if.then23.if.end113_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then23.if.end38_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

land.lhs.true28:                                  ; preds = %if.then23
  %15 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_op.i, align 4
  %cmp.i172 = icmp ne ptr %16, @eventpoll_fops
  %and34 = and i32 %13, 1342177250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %or.cond = select i1 %cmp.i172, i1 %tobool35.not, i1 false
  br i1 %or.cond, label %land.lhs.true28.if.end38_crit_edge, label %land.lhs.true28.if.end113_crit_edge

land.lhs.true28.if.end113_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

land.lhs.true28.if.end38_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true28.if.end38_crit_edge, %if.then23.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.end19.if.end38_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data, align 4
  br i1 %nonblock, label %if.end.i, label %if.then.i174

if.then.i174:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %18, i32 noundef 0) #9
  br label %if.end44

if.end.i:                                         ; preds = %if.end38
  %call.i175 = tail call i32 @mutex_trylock(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool1.not.i = icmp eq i32 %call.i175, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end113_crit_edge, label %if.end.i.if.end44_crit_edge

if.end.i.if.end44_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.end.i.if.end113_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.end44:                                         ; preds = %if.end.i.if.end44_crit_edge, %if.then.i174
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp45 = icmp eq i32 %op, 1
  br i1 %cmp45, label %do.end, label %if.end44.if.end81_crit_edge

if.end44.if.end81_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

do.end:                                           ; preds = %if.end44
  %f_ep = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %19 = ptrtoint ptr %f_ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %f_ep, align 8
  %tobool49.not = icmp eq ptr %20, null
  br i1 %tobool49.not, label %lor.lhs.false50, label %do.end.if.then56_crit_edge

do.end.if.then56_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

lor.lhs.false50:                                  ; preds = %do.end
  %gen = getelementptr inbounds %struct.eventpoll, ptr %18, i32 0, i32 10
  %21 = ptrtoint ptr %gen to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %gen, align 8
  %23 = load i64, ptr @loop_check_gen, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %23)
  %cmp51 = icmp eq i64 %22, %23
  br i1 %cmp51, label %lor.lhs.false50.if.then56_crit_edge, label %lor.lhs.false52

lor.lhs.false50.if.then56_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

lor.lhs.false52:                                  ; preds = %lor.lhs.false50
  %24 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f_op.i, align 4
  %cmp.i177.not = icmp eq ptr %25, @eventpoll_fops
  br i1 %cmp.i177.not, label %lor.lhs.false52.if.then56_crit_edge, label %lor.lhs.false52.if.end81_crit_edge

lor.lhs.false52.if.end81_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

lor.lhs.false52.if.then56_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false52.if.then56_crit_edge, %lor.lhs.false50.if.then56_crit_edge, %do.end.if.then56_crit_edge
  tail call void @mutex_unlock(ptr noundef %18) #9
  %call59 = tail call fastcc i32 @epoll_mutex_lock(ptr noundef nonnull @epmutex, i1 noundef zeroext %nonblock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.then56.if.end113_crit_edge

if.then56.if.end113_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.end62:                                         ; preds = %if.then56
  %26 = load i64, ptr @loop_check_gen, align 8
  %inc = add i64 %26, 1
  store i64 %inc, ptr @loop_check_gen, align 8
  %27 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_op.i, align 4
  %cmp.i180.not = icmp eq ptr %28, @eventpoll_fops
  br i1 %cmp.i180.not, label %if.then66, label %if.end62.if.end73_crit_edge

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then66:                                        ; preds = %if.end62
  %private_data68 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %private_data68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private_data68, align 4
  store ptr %18, ptr @inserting_into, align 4
  %call.i182 = tail call fastcc i32 @ep_loop_check_proc(ptr noundef %30, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp70.not = icmp eq i32 %call.i182, 0
  br i1 %cmp70.not, label %if.then66.if.end73_crit_edge, label %if.then66.if.then111_crit_edge

if.then66.if.then111_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

if.then66.if.end73_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.end73:                                         ; preds = %if.then66.if.end73_crit_edge, %if.end62.if.end73_crit_edge
  %call76 = tail call fastcc i32 @epoll_mutex_lock(ptr noundef %18, i1 noundef zeroext %nonblock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end73.if.end81_crit_edge, label %if.end73.if.then111_crit_edge

if.end73.if.then111_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.end81:                                         ; preds = %if.end73.if.end81_crit_edge, %lor.lhs.false52.if.end81_crit_edge, %if.end44.if.end81_crit_edge
  %tobool110.not = phi i1 [ true, %lor.lhs.false52.if.end81_crit_edge ], [ false, %if.end73.if.end81_crit_edge ], [ true, %if.end44.if.end81_crit_edge ]
  %full_check.0 = phi i32 [ 0, %lor.lhs.false52.if.end81_crit_edge ], [ 1, %if.end73.if.end81_crit_edge ], [ 0, %if.end44.if.end81_crit_edge ]
  %rbr.i = getelementptr inbounds %struct.eventpoll, ptr %18, i32 0, i32 5
  %31 = ptrtoint ptr %rbr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %rbp.019.i = load ptr, ptr %rbr.i, align 4
  %tobool.not20.i = icmp eq ptr %rbp.019.i, null
  br i1 %tobool.not20.i, label %if.end81.ep_find.exit_crit_edge, label %if.end81.for.body.i_crit_edge

if.end81.for.body.i_crit_edge:                    ; preds = %if.end81
  br label %for.body.i

if.end81.ep_find.exit_crit_edge:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_find.exit

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end81.for.body.i_crit_edge
  %rbp.021.i = phi ptr [ %rbp.0.i, %if.end5.i.for.body.i_crit_edge ], [ %rbp.019.i, %if.end81.for.body.i_crit_edge ]
  %ffd1.i = getelementptr inbounds %struct.epitem, ptr %rbp.021.i, i32 0, i32 3
  %32 = ptrtoint ptr %ffd1.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load ptr, ptr %ffd1.i, align 1
  %cmp.i.i = icmp ult ptr %33, %1
  br i1 %cmp.i.i, label %for.body.i.if.then.i184_crit_edge, label %cond.false.i.i

for.body.i.if.then.i184_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i184

cond.false.i.i:                                   ; preds = %for.body.i
  %cmp4.i.i = icmp ugt ptr %33, %1
  br i1 %cmp4.i.i, label %cond.false.i.i.if.then3.i_crit_edge, label %ep_cmp_ffd.exit.i

cond.false.i.i.if.then3.i_crit_edge:              ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

ep_cmp_ffd.exit.i:                                ; preds = %cond.false.i.i
  %fd7.i.i = getelementptr inbounds %struct.epitem, ptr %rbp.021.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %fd7.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %fd7.i.i, align 1
  %sub.i.i = sub i32 %fd, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i183 = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i183, label %ep_cmp_ffd.exit.i.if.then.i184_crit_edge, label %if.else.i

ep_cmp_ffd.exit.i.if.then.i184_crit_edge:         ; preds = %ep_cmp_ffd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i184

if.then.i184:                                     ; preds = %ep_cmp_ffd.exit.i.if.then.i184_crit_edge, %for.body.i.if.then.i184_crit_edge
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rbp.021.i, i32 0, i32 1
  br label %if.end5.i

if.else.i:                                        ; preds = %ep_cmp_ffd.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp2.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp2.i, label %if.else.i.if.then3.i_crit_edge, label %if.else.i.ep_find.exit_crit_edge

if.else.i.ep_find.exit_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_find.exit

if.else.i.if.then3.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i.if.then3.i_crit_edge, %cond.false.i.i.if.then3.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rbp.021.i, i32 0, i32 2
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.then.i184
  %rbp.1.in.i = phi ptr [ %rb_right.i, %if.then.i184 ], [ %rb_left.i, %if.then3.i ]
  %36 = ptrtoint ptr %rbp.1.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %rbp.0.i = load ptr, ptr %rbp.1.in.i, align 4
  %tobool.not.i185 = icmp eq ptr %rbp.0.i, null
  br i1 %tobool.not.i185, label %if.end5.i.ep_find.exit_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end5.i.ep_find.exit_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_find.exit

ep_find.exit:                                     ; preds = %if.end5.i.ep_find.exit_crit_edge, %if.else.i.ep_find.exit_crit_edge, %if.end81.ep_find.exit_crit_edge
  %rbp.0.lcssa.i = phi ptr [ null, %if.end81.ep_find.exit_crit_edge ], [ null, %if.end5.i.ep_find.exit_crit_edge ], [ %rbp.021.i, %if.else.i.ep_find.exit_crit_edge ]
  %37 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %op, label %ep_find.exit.error_tgt_fput_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb90
    i32 3, label %sw.bb96
  ]

ep_find.exit.error_tgt_fput_crit_edge:            ; preds = %ep_find.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_tgt_fput

sw.bb:                                            ; preds = %ep_find.exit
  %tobool84.not = icmp eq ptr %rbp.0.lcssa.i, null
  br i1 %tobool84.not, label %if.then85, label %sw.bb.error_tgt_fput_crit_edge

sw.bb.error_tgt_fput_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_tgt_fput

if.then85:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %epds to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %epds, align 8
  %or = or i32 %39, 24
  store i32 %or, ptr %epds, align 8
  %call88 = tail call fastcc i32 @ep_insert(ptr noundef %18, ptr noundef %epds, ptr noundef nonnull %1, i32 noundef %fd, i32 noundef %full_check.0)
  br label %error_tgt_fput

sw.bb90:                                          ; preds = %ep_find.exit
  %tobool91.not = icmp eq ptr %rbp.0.lcssa.i, null
  br i1 %tobool91.not, label %sw.bb90.error_tgt_fput_crit_edge, label %if.then92

sw.bb90.error_tgt_fput_crit_edge:                 ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_tgt_fput

if.then92:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep_remove(ptr noundef %18, ptr noundef nonnull %rbp.0.lcssa.i)
  br label %error_tgt_fput

sw.bb96:                                          ; preds = %ep_find.exit
  %tobool97.not = icmp eq ptr %rbp.0.lcssa.i, null
  br i1 %tobool97.not, label %sw.bb96.error_tgt_fput_crit_edge, label %if.then98

sw.bb96.error_tgt_fput_crit_edge:                 ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_tgt_fput

if.then98:                                        ; preds = %sw.bb96
  %event = getelementptr inbounds %struct.epitem, ptr %rbp.0.lcssa.i, i32 0, i32 8
  %40 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %event, align 8
  %and100 = and i32 %41, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.then102, label %if.then98.error_tgt_fput_crit_edge

if.then98.error_tgt_fput_crit_edge:               ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_tgt_fput

if.then102:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %epds to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %epds, align 8
  %or104 = or i32 %43, 24
  store i32 %or104, ptr %epds, align 8
  tail call fastcc void @ep_modify(ptr noundef %18, ptr noundef nonnull %rbp.0.lcssa.i, ptr noundef %epds)
  br label %error_tgt_fput

error_tgt_fput:                                   ; preds = %if.then102, %if.then98.error_tgt_fput_crit_edge, %sw.bb96.error_tgt_fput_crit_edge, %if.then92, %sw.bb90.error_tgt_fput_crit_edge, %if.then85, %sw.bb.error_tgt_fput_crit_edge, %ep_find.exit.error_tgt_fput_crit_edge
  %error.0 = phi i32 [ -22, %ep_find.exit.error_tgt_fput_crit_edge ], [ -22, %if.then98.error_tgt_fput_crit_edge ], [ 0, %if.then102 ], [ 0, %if.then92 ], [ %call88, %if.then85 ], [ -17, %sw.bb.error_tgt_fput_crit_edge ], [ -2, %sw.bb90.error_tgt_fput_crit_edge ], [ -2, %sw.bb96.error_tgt_fput_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %18) #9
  br i1 %tobool110.not, label %error_tgt_fput.if.end113_crit_edge, label %error_tgt_fput.if.then111_crit_edge

error_tgt_fput.if.then111_crit_edge:              ; preds = %error_tgt_fput
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

error_tgt_fput.if.end113_crit_edge:               ; preds = %error_tgt_fput
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then111:                                       ; preds = %error_tgt_fput.if.then111_crit_edge, %if.end73.if.then111_crit_edge, %if.then66.if.then111_crit_edge
  %error.1207 = phi i32 [ %error.0, %error_tgt_fput.if.then111_crit_edge ], [ %call76, %if.end73.if.then111_crit_edge ], [ -40, %if.then66.if.then111_crit_edge ]
  %44 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.then111.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then111.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then111
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then111.rcu_read_lock.exit.i_crit_edge
  %48 = load ptr, ptr @tfile_check_list, align 4
  %cmp.not15.i = icmp eq ptr %48, inttoptr (i32 -1 to ptr)
  br i1 %cmp.not15.i, label %rcu_read_lock.exit.i.while.end.i_crit_edge, label %rcu_read_lock.exit.i.while.body.i_crit_edge

rcu_read_lock.exit.i.while.body.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  br label %while.body.i

rcu_read_lock.exit.i.while.end.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %unlist_file.exit.i.while.body.i_crit_edge, %rcu_read_lock.exit.i.while.body.i_crit_edge
  %49 = phi ptr [ %62, %unlist_file.exit.i.while.body.i_crit_edge ], [ %48, %rcu_read_lock.exit.i.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.epitems_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %next.i, align 4
  store ptr %51, ptr @tfile_check_list, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %49, align 4
  %call.i2.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i, label %while.body.i.do.end7.i.i_crit_edge

while.body.i.do.end7.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i

land.lhs.true.i4.i:                               ; preds = %while.body.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i4.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i4.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i4.i
  %.b26.i.i = load i1, ptr @unlist_file.__warned, align 1
  br i1 %.b26.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i5.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i

if.then.i5.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @unlist_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 291, ptr noundef nonnull @.str.24) #9
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i5.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i4.i.do.end7.i.i_crit_edge, %while.body.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %53, null
  br i1 %tobool9.not.i.i, label %if.end20.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %do.end7.i.i
  %ffd.i.i = getelementptr i8, ptr %53, i32 -16
  %54 = ptrtoint ptr %ffd.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ffd.i.i, align 8
  %f_lock.i.i = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock.i.i) #9
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %49, align 4
  %tobool.not.i.i.i = icmp ne ptr %57, null
  %58 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %next.i, align 4
  %59 = ptrtoint ptr %ffd.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ffd.i.i, align 8
  %f_lock19.i.i = getelementptr inbounds %struct.file, ptr %60, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %f_lock19.i.i) #9
  %tobool.not.i27.i.i = icmp eq ptr %49, null
  %or.cond.i.i = or i1 %tobool.not.i27.i.i, %tobool.not.i.i.i
  br i1 %or.cond.i.i, label %if.then10.i.i.unlist_file.exit.i_crit_edge, label %if.then10.i.i.if.then.i.i.i_crit_edge

if.then10.i.i.if.then.i.i.i_crit_edge:            ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then10.i.i.unlist_file.exit.i_crit_edge:       ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlist_file.exit.i

if.end20.i.i:                                     ; preds = %do.end7.i.i
  %tobool.not.i27.old.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i27.old.i.i, label %if.end20.i.i.unlist_file.exit.i_crit_edge, label %if.end20.i.i.if.then.i.i.i_crit_edge

if.end20.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.end20.i.i.unlist_file.exit.i_crit_edge:        ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlist_file.exit.i

if.then.i.i.i:                                    ; preds = %if.end20.i.i.if.then.i.i.i_crit_edge, %if.then10.i.i.if.then.i.i.i_crit_edge
  %61 = load ptr, ptr @ephead_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %61, ptr noundef nonnull %49) #9
  br label %unlist_file.exit.i

unlist_file.exit.i:                               ; preds = %if.then.i.i.i, %if.end20.i.i.unlist_file.exit.i_crit_edge, %if.then10.i.i.unlist_file.exit.i_crit_edge
  %62 = load ptr, ptr @tfile_check_list, align 4
  %cmp.not.i = icmp eq ptr %62, inttoptr (i32 -1 to ptr)
  br i1 %cmp.not.i, label %unlist_file.exit.i.while.end.i_crit_edge, label %unlist_file.exit.i.while.body.i_crit_edge

unlist_file.exit.i.while.body.i_crit_edge:        ; preds = %unlist_file.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

unlist_file.exit.i.while.end.i_crit_edge:         ; preds = %unlist_file.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %unlist_file.exit.i.while.end.i_crit_edge, %rcu_read_lock.exit.i.while.end.i_crit_edge
  %call.i6.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i6.i, label %while.end.i.clear_tfile_check_list.exit_crit_edge, label %land.lhs.true.i9.i

while.end.i.clear_tfile_check_list.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear_tfile_check_list.exit

land.lhs.true.i9.i:                               ; preds = %while.end.i
  %call1.i7.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i)
  %tobool.not.i8.i = icmp eq i32 %call1.i7.i, 0
  br i1 %tobool.not.i8.i, label %land.lhs.true.i9.i.clear_tfile_check_list.exit_crit_edge, label %land.lhs.true2.i11.i

land.lhs.true.i9.i.clear_tfile_check_list.exit_crit_edge: ; preds = %land.lhs.true.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear_tfile_check_list.exit

land.lhs.true2.i11.i:                             ; preds = %land.lhs.true.i9.i
  %.b4.i10.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10.i, label %land.lhs.true2.i11.i.clear_tfile_check_list.exit_crit_edge, label %if.then.i12.i

land.lhs.true2.i11.i.clear_tfile_check_list.exit_crit_edge: ; preds = %land.lhs.true2.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear_tfile_check_list.exit

if.then.i12.i:                                    ; preds = %land.lhs.true2.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %clear_tfile_check_list.exit

clear_tfile_check_list.exit:                      ; preds = %if.then.i12.i, %land.lhs.true2.i11.i.clear_tfile_check_list.exit_crit_edge, %land.lhs.true.i9.i.clear_tfile_check_list.exit_crit_edge, %while.end.i.clear_tfile_check_list.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !215
  %63 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i.i.i13.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i13.i to ptr
  %preempt_count.i.i.i.i14.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i14.i, align 4
  %sub.i.i.i.i = add i32 %66, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i14.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %67 = load i64, ptr @loop_check_gen, align 8
  %inc112 = add i64 %67, 1
  store i64 %inc112, ptr @loop_check_gen, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @epmutex) #9
  br label %if.end113

if.end113:                                        ; preds = %clear_tfile_check_list.exit, %error_tgt_fput.if.end113_crit_edge, %if.then56.if.end113_crit_edge, %if.end.i.if.end113_crit_edge, %land.lhs.true28.if.end113_crit_edge, %if.then23.if.end113_crit_edge, %lor.lhs.false.if.end113_crit_edge, %if.end12.if.end113_crit_edge, %if.end5.if.end113_crit_edge
  %error.1200 = phi i32 [ %error.1207, %clear_tfile_check_list.exit ], [ %error.0, %error_tgt_fput.if.end113_crit_edge ], [ -11, %if.end.i.if.end113_crit_edge ], [ -1, %if.end5.if.end113_crit_edge ], [ -22, %lor.lhs.false.if.end113_crit_edge ], [ %call59, %if.then56.if.end113_crit_edge ], [ -22, %land.lhs.true28.if.end113_crit_edge ], [ -22, %if.then23.if.end113_crit_edge ], [ -22, %if.end12.if.end113_crit_edge ]
  %and.i186 = and i32 %call.i161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %tobool.not.i187 = icmp eq i32 %and.i186, 0
  br i1 %tobool.not.i187, label %if.end113.error_fput_crit_edge, label %if.then.i188

if.end113.error_fput_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_fput

if.then.i188:                                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fput(ptr noundef nonnull %1) #9
  br label %error_fput

error_fput:                                       ; preds = %if.then.i188, %if.end113.error_fput_crit_edge, %if.end.error_fput_crit_edge
  %error.2 = phi i32 [ -9, %if.end.error_fput_crit_edge ], [ %error.1200, %if.end113.error_fput_crit_edge ], [ %error.1200, %if.then.i188 ]
  %and.i190 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %tobool.not.i191 = icmp eq i32 %and.i190, 0
  br i1 %tobool.not.i191, label %error_fput.error_return_crit_edge, label %if.then.i192

error_fput.error_return_crit_edge:                ; preds = %error_fput
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_return

if.then.i192:                                     ; preds = %error_fput
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fput(ptr noundef nonnull %0) #9
  br label %error_return

error_return:                                     ; preds = %if.then.i192, %error_fput.error_return_crit_edge, %entry.error_return_crit_edge
  %error.3 = phi i32 [ -9, %entry.error_return_crit_edge ], [ %error.2, %error_fput.error_return_crit_edge ], [ %error.2, %if.then.i192 ]
  ret i32 %error.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @epoll_mutex_lock(ptr noundef %mutex, i1 noundef zeroext %nonblock) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br i1 %nonblock, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @mutex_trylock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %. = select i1 %tobool1.not, i32 -11, i32 0
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_insert(ptr noundef %ep, ptr nocapture noundef readonly %event, ptr noundef %tfile, i32 noundef %fd, i32 noundef %full_check) unnamed_addr #0 align 64 {
entry:
  %n.i = alloca %struct.name_snapshot, align 8
  %epq = alloca %struct.ep_pqueue, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %epq) #9
  %0 = ptrtoint ptr %epq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %epq, align 4, !annotation !216
  %1 = getelementptr inbounds %struct.poll_table_struct, ptr %epq, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !216
  %3 = getelementptr inbounds %struct.ep_pqueue, ptr %epq, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !216
  %f_op.i = getelementptr inbounds %struct.file, ptr %tfile, i32 0, i32 3
  %5 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_op.i, align 4
  %cmp.i.not = icmp eq ptr %6, @eventpoll_fops
  br i1 %cmp.i.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %tfile, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %tep.0 = phi ptr [ %8, %if.then ], [ null, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %do.body.if.end91_crit_edge, label %land.lhs.true

do.body.if.end91_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.lhs.true:                                    ; preds = %do.body
  %10 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %13, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !217
  %14 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, ptrtoint (ptr @lockdep_recursion to i32)
  %20 = inttoptr i32 %add to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !218
  %23 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i267 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i267 to ptr
  %preempt_count.i.i268 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i268 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i268, align 4
  %sub.i = add i32 %26, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool22.not = icmp eq i32 %22, 0
  br i1 %tobool22.not, label %land.rhs, label %land.lhs.true.if.end91_crit_edge

land.lhs.true.if.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.rhs:                                         ; preds = %land.lhs.true
  %27 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i269 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i269 to ptr
  %preempt_count.i.i270 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i270 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i270, align 4
  %add.i271 = add i32 %30, 1
  store volatile i32 %add.i271, ptr %preempt_count.i.i270, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !219
  %31 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu, align 4
  %arrayidx46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %34, ptrtoint (ptr @hardirqs_enabled to i32)
  %35 = inttoptr i32 %add47 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !220
  %38 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i272 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i272 to ptr
  %preempt_count.i.i273 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i273 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i273, align 4
  %sub.i274 = add i32 %41, -1
  store volatile i32 %sub.i274, ptr %preempt_count.i.i273, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool54.not = icmp eq i32 %37, 0
  br i1 %tobool54.not, label %land.rhs58, label %land.rhs.if.end91_crit_edge

land.rhs.if.end91_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.rhs58:                                       ; preds = %land.rhs
  %.b262 = load i1, ptr @ep_insert.__already_done, align 1
  br i1 %.b262, label %land.rhs58.if.end91_crit_edge, label %if.then65, !prof !206

land.rhs58.if.end91_crit_edge:                    ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then65:                                        ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_insert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1456, i32 noundef 9, ptr noundef null) #9
  br label %if.end91

if.end91:                                         ; preds = %if.then65, %land.rhs58.if.end91_crit_edge, %land.rhs.if.end91_crit_edge, %land.lhs.true.if.end91_crit_edge, %do.body.if.end91_crit_edge
  %user = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 8
  %42 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %user, align 8
  %epoll_watches = getelementptr inbounds %struct.user_struct, ptr %43, i32 0, i32 1
  %44 = load i32, ptr @max_user_watches, align 4
  %conv = sext i32 %44 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %45 = load i32, ptr @percpu_counter_batch, align 4
  %call.i = tail call i32 @__percpu_counter_compare(ptr noundef %epoll_watches, i64 noundef %conv, i32 noundef %45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %if.end91.cleanup_crit_edge, label %if.end110, !prof !201

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end110:                                        ; preds = %if.end91
  %46 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %user, align 8
  %epoll_watches112 = getelementptr inbounds %struct.user_struct, ptr %47, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %48 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %epoll_watches112, i64 noundef 1, i32 noundef %48) #9
  %49 = load ptr, ptr @epi_cache, align 4
  %call.i275 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %49, i32 noundef 3520) #9
  %tobool114.not = icmp eq ptr %call.i275, null
  br i1 %tobool114.not, label %if.then115, label %if.end118

if.then115:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user, align 8
  %epoll_watches117 = getelementptr inbounds %struct.user_struct, ptr %51, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %52 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %epoll_watches117, i64 noundef -1, i32 noundef %52) #9
  br label %cleanup

if.end118:                                        ; preds = %if.end110
  %rdllink = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 1
  %53 = ptrtoint ptr %rdllink to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %rdllink, ptr %rdllink, align 4
  %prev.i = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %rdllink, ptr %prev.i, align 8
  %ep119 = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 5
  %55 = ptrtoint ptr %ep119 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ep, ptr %ep119, align 4
  %ffd = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 3
  %56 = ptrtoint ptr %ffd to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %tfile, ptr %ffd, align 8
  %fd2.i = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %fd2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %fd, ptr %fd2.i, align 4
  %event120 = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 8
  %58 = call ptr @memcpy(ptr %event120, ptr %event, i32 16)
  %next = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 2
  %59 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 -1 to ptr), ptr %next, align 4
  %tobool121.not = icmp eq ptr %tep.0, null
  br i1 %tobool121.not, label %if.end118.if.end123_crit_edge, label %if.then122

if.end118.if.end123_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef nonnull %tep.0, i32 noundef 1) #9
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.end118.if.end123_crit_edge
  %60 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %f_op.i, align 4
  %cmp.i.not.i = icmp eq ptr %61, @eventpoll_fops
  br i1 %cmp.i.not.i, label %if.end.i, label %if.end123.do.end.i_crit_edge

if.end123.do.end.i_crit_edge:                     ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i:                                         ; preds = %if.end123
  %private_data.i = getelementptr inbounds %struct.file, ptr %tfile, i32 0, i32 16
  %62 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %private_data.i, align 4
  %tobool1.not.i = icmp eq ptr %63, null
  br i1 %tobool1.not.i, label %if.end.i.do.end.i_crit_edge, label %if.then2.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %refs.i = getelementptr inbounds %struct.eventpoll, ptr %63, i32 0, i32 11
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end123.do.end.i_crit_edge
  %f_ep.i = getelementptr inbounds %struct.file, ptr %tfile, i32 0, i32 17
  %64 = ptrtoint ptr %f_ep.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %f_ep.i, align 8
  %tobool3.not.i = icmp eq ptr %65, null
  br i1 %tobool3.not.i, label %do.end.i.allocate.i_crit_edge, label %do.end.i.if.end10.i_crit_edge

do.end.i.if.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

do.end.i.allocate.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %allocate.i

allocate.i:                                       ; preds = %if.then18.i, %do.end.i.allocate.i_crit_edge
  %66 = load ptr, ptr @ephead_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %66, i32 noundef 3520) #9
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.then133, label %allocate.i.if.end10.i_crit_edge

allocate.i.if.end10.i_crit_edge:                  ; preds = %allocate.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %allocate.i.if.end10.i_crit_edge, %do.end.i.if.end10.i_crit_edge, %if.then2.i
  %to_free.1.i = phi ptr [ null, %if.then2.i ], [ null, %do.end.i.if.end10.i_crit_edge ], [ %call.i.i, %allocate.i.if.end10.i_crit_edge ]
  %head.1.i = phi ptr [ %refs.i, %if.then2.i ], [ null, %do.end.i.if.end10.i_crit_edge ], [ %call.i.i, %allocate.i.if.end10.i_crit_edge ]
  %f_lock.i = getelementptr inbounds %struct.file, ptr %tfile, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock.i) #9
  %f_ep11.i = getelementptr inbounds %struct.file, ptr %tfile, i32 0, i32 17
  %67 = ptrtoint ptr %f_ep11.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %f_ep11.i, align 8
  %tobool12.not.i = icmp eq ptr %68, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end10.i.if.end22.i_crit_edge

if.end10.i.if.end22.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then13.i:                                      ; preds = %if.end10.i
  %tobool14.not.i = icmp eq ptr %head.1.i, null
  br i1 %tobool14.not.i, label %if.then18.i, label %if.end20.i, !prof !201

if.then18.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %f_lock.i) #9
  br label %allocate.i

if.end20.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %f_ep11.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %head.1.i, ptr %f_ep11.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end20.i, %if.end10.i.if.end22.i_crit_edge
  %to_free.2.i = phi ptr [ %to_free.1.i, %if.end10.i.if.end22.i_crit_edge ], [ null, %if.end20.i ]
  %fllink.i = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 6
  %70 = ptrtoint ptr %f_ep11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %f_ep11.i, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %fllink.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %fllink.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 6, i32 1
  %75 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %71, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !221
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %fllink.i, ptr %71, align 4
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %if.end22.i.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

if.end22.i.hlist_add_head_rcu.exit.i_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %73, i32 0, i32 1
  %77 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %fllink.i, ptr %pprev51.i.i, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %do.body49.i.i, %if.end22.i.hlist_add_head_rcu.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %f_lock.i) #9
  %tobool.not.i39.i = icmp eq ptr %to_free.2.i, null
  br i1 %tobool.not.i39.i, label %hlist_add_head_rcu.exit.i.if.end140_crit_edge, label %if.then.i.i

hlist_add_head_rcu.exit.i.if.end140_crit_edge:    ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.then.i.i:                                      ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = load ptr, ptr @ephead_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %78, ptr noundef nonnull %to_free.2.i) #9
  br label %if.end140

if.then133:                                       ; preds = %allocate.i
  br i1 %tobool121.not, label %if.then133.if.end137_crit_edge, label %if.then135

if.then133.if.end137_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.then135:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull %tep.0) #9
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.then133.if.end137_crit_edge
  %79 = load ptr, ptr @epi_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %79, ptr noundef nonnull %call.i275) #9
  %80 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %user, align 8
  %epoll_watches139 = getelementptr inbounds %struct.user_struct, ptr %81, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %82 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %epoll_watches139, i64 noundef -1, i32 noundef %82) #9
  br label %cleanup

if.end140:                                        ; preds = %if.then.i.i, %hlist_add_head_rcu.exit.i.if.end140_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %full_check)
  %tobool141.not = icmp eq i32 %full_check, 0
  %tobool121.not.not = xor i1 %tobool121.not, true
  %brmerge = select i1 %tobool141.not, i1 true, i1 %tobool121.not.not
  br i1 %brmerge, label %if.end140.if.end145_crit_edge, label %if.then144

if.end140.if.end145_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then144:                                       ; preds = %if.end140
  %83 = ptrtoint ptr %f_ep11.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %f_ep11.i, align 8
  %next.i = getelementptr inbounds %struct.epitems_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %86, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then144.if.end145_crit_edge

if.then144.if.end145_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then.i:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  %87 = load ptr, ptr @tfile_check_list, align 4
  %88 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %next.i, align 4
  store ptr %84, ptr @tfile_check_list, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then.i, %if.then144.if.end145_crit_edge, %if.end140.if.end145_crit_edge
  %rbr.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 5
  %89 = ptrtoint ptr %rbr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rbr.i, align 4
  %tobool.not13.i = icmp eq ptr %90, null
  br i1 %tobool.not13.i, label %if.then.i.critedge.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end145
  %91 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ffd, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %ep_cmp_ffd.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %93 = phi ptr [ %90, %while.body.lr.ph.i ], [ %101, %ep_cmp_ffd.exit.i.while.body.i_crit_edge ]
  %leftmost.0.off014.i = phi i1 [ true, %while.body.lr.ph.i ], [ %leftmost.1.off0.i, %ep_cmp_ffd.exit.i.while.body.i_crit_edge ]
  %ffd1.i = getelementptr inbounds %struct.epitem, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %ffd1.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load ptr, ptr %ffd1.i, align 1
  %cmp.i.i = icmp ugt ptr %92, %95
  br i1 %cmp.i.i, label %while.body.i.ep_cmp_ffd.exit.i_crit_edge, label %cond.false.i.i

while.body.i.ep_cmp_ffd.exit.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_cmp_ffd.exit.i

cond.false.i.i:                                   ; preds = %while.body.i
  %cmp4.i.i = icmp ult ptr %92, %95
  br i1 %cmp4.i.i, label %cond.false.i.i.ep_cmp_ffd.exit.i_crit_edge, label %cond.false6.i.i

cond.false.i.i.ep_cmp_ffd.exit.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_cmp_ffd.exit.i

cond.false6.i.i:                                  ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %fd2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fd2.i, align 4
  %fd7.i.i = getelementptr inbounds %struct.epitem, ptr %93, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %fd7.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %fd7.i.i, align 1
  %sub.i.i = sub i32 %97, %99
  br label %ep_cmp_ffd.exit.i

ep_cmp_ffd.exit.i:                                ; preds = %cond.false6.i.i, %cond.false.i.i.ep_cmp_ffd.exit.i_crit_edge, %while.body.i.ep_cmp_ffd.exit.i_crit_edge
  %cond9.i.i = phi i32 [ 1, %while.body.i.ep_cmp_ffd.exit.i_crit_edge ], [ %sub.i.i, %cond.false6.i.i ], [ -1, %cond.false.i.i.ep_cmp_ffd.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond9.i.i)
  %cmp.i278 = icmp sgt i32 %cond9.i.i, 0
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %93, i32 0, i32 1
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %93, i32 0, i32 2
  %not.cmp.i = xor i1 %cmp.i278, true
  %leftmost.1.off0.i = select i1 %not.cmp.i, i1 %leftmost.0.off014.i, i1 false
  %p.1.i = select i1 %cmp.i278, ptr %rb_right.i, ptr %rb_left.i
  %100 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i279 = icmp eq ptr %101, null
  br i1 %tobool.not.i279, label %while.cond.while.end_crit_edge.i, label %ep_cmp_ffd.exit.i.while.body.i_crit_edge

ep_cmp_ffd.exit.i.while.body.i_crit_edge:         ; preds = %ep_cmp_ffd.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %ep_cmp_ffd.exit.i
  %phi.cast.le.i = ptrtoint ptr %93 to i32
  %102 = ptrtoint ptr %call.i275 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %phi.cast.le.i, ptr %call.i275, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i275, i32 0, i32 1
  %103 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i275, i32 0, i32 2
  %104 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %rb_left.i.i, align 8
  %105 = ptrtoint ptr %p.1.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i275, ptr %p.1.i, align 4
  br i1 %leftmost.1.off0.i, label %while.cond.while.end_crit_edge.i.if.then.i.i280_crit_edge, label %while.cond.while.end_crit_edge.i.ep_rbtree_insert.exit_crit_edge

while.cond.while.end_crit_edge.i.ep_rbtree_insert.exit_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_rbtree_insert.exit

while.cond.while.end_crit_edge.i.if.then.i.i280_crit_edge: ; preds = %while.cond.while.end_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i280

if.then.i.critedge.i:                             ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %call.i275 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %call.i275, align 8
  %rb_right.i.c.i = getelementptr inbounds %struct.rb_node, ptr %call.i275, i32 0, i32 1
  %107 = ptrtoint ptr %rb_right.i.c.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %rb_right.i.c.i, align 4
  %rb_left.i.c.i = getelementptr inbounds %struct.rb_node, ptr %call.i275, i32 0, i32 2
  %108 = ptrtoint ptr %rb_left.i.c.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %rb_left.i.c.i, align 8
  %109 = ptrtoint ptr %rbr.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i275, ptr %rbr.i, align 4
  br label %if.then.i.i280

if.then.i.i280:                                   ; preds = %if.then.i.critedge.i, %while.cond.while.end_crit_edge.i.if.then.i.i280_crit_edge
  %rb_leftmost.i.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 5, i32 1
  %110 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i275, ptr %rb_leftmost.i.i, align 4
  br label %ep_rbtree_insert.exit

ep_rbtree_insert.exit:                            ; preds = %if.then.i.i280, %while.cond.while.end_crit_edge.i.ep_rbtree_insert.exit_crit_edge
  tail call void @rb_insert_color(ptr noundef %call.i275, ptr noundef %rbr.i) #9
  br i1 %tobool121.not, label %ep_rbtree_insert.exit.if.end149_crit_edge, label %if.then147

ep_rbtree_insert.exit.if.end149_crit_edge:        ; preds = %ep_rbtree_insert.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then147:                                       ; preds = %ep_rbtree_insert.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull %tep.0) #9
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %ep_rbtree_insert.exit.if.end149_crit_edge
  br i1 %tobool141.not, label %if.end149.if.end163_crit_edge, label %land.rhs151

if.end149.if.end163_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end163

land.rhs151:                                      ; preds = %if.end149
  %p.014.i = load ptr, ptr @tfile_check_list, align 4
  %cmp.not15.i = icmp eq ptr %p.014.i, inttoptr (i32 -1 to ptr)
  br i1 %cmp.not15.i, label %land.rhs151.if.end163_crit_edge, label %land.rhs151.for.body.i_crit_edge

land.rhs151.for.body.i_crit_edge:                 ; preds = %land.rhs151
  br label %for.body.i

land.rhs151.if.end163_crit_edge:                  ; preds = %land.rhs151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end163

for.cond.i:                                       ; preds = %rcu_read_unlock.exit.i
  %next.i281 = getelementptr inbounds %struct.epitems_head, ptr %p.016.i, i32 0, i32 1
  %111 = ptrtoint ptr %next.i281 to i32
  call void @__asan_load4_noabort(i32 %111)
  %p.0.i = load ptr, ptr %next.i281, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, inttoptr (i32 -1 to ptr)
  br i1 %cmp.not.i, label %for.cond.i.if.end163_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.if.end163_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end163

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %land.rhs151.for.body.i_crit_edge
  %p.016.i = phi ptr [ %p.0.i, %for.cond.i.for.body.i_crit_edge ], [ %p.014.i, %land.rhs151.for.body.i_crit_edge ]
  %112 = call ptr @memset(ptr @path_count, i32 0, i32 20)
  %113 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i.i.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %116, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i282 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i282, label %for.body.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i283 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i283, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i284

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i284:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i284, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.i.rcu_read_lock.exit.i_crit_edge
  %call.i285 = tail call fastcc i32 @reverse_path_check_proc(ptr noundef %p.016.i, i32 noundef 0) #9
  %call.i5.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i5.i, label %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i8.i

rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i8.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i6.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %land.lhs.true.i8.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i10.i

land.lhs.true.i8.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %land.lhs.true2.i10.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i11.i

land.lhs.true2.i10.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i11.i, %land.lhs.true2.i10.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i8.i.rcu_read_unlock.exit.i_crit_edge, %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !215
  %117 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i.i.i12.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i = add i32 %120, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i13.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285)
  %tobool.not.i286 = icmp eq i32 %call.i285, 0
  br i1 %tobool.not.i286, label %for.cond.i, label %if.then161

if.then161:                                       ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep_remove(ptr noundef %ep, ptr noundef nonnull %call.i275)
  br label %cleanup

if.end163:                                        ; preds = %for.cond.i.if.end163_crit_edge, %land.rhs151.if.end163_crit_edge, %if.end149.if.end163_crit_edge
  %121 = ptrtoint ptr %event120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %event120, align 8
  %and = and i32 %122, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool165.not = icmp eq i32 %and, 0
  br i1 %tobool165.not, label %if.end163.if.end172_crit_edge, label %if.then166

if.end163.if.end172_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then166:                                       ; preds = %if.end163
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %n.i) #9
  %123 = call ptr @memset(ptr %n.i, i32 255, i32 56)
  %124 = ptrtoint ptr %ep119 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ep119, align 4
  %ws1.i = getelementptr inbounds %struct.eventpoll, ptr %125, i32 0, i32 7
  %126 = ptrtoint ptr %ws1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ws1.i, align 4
  %tobool.not.i287 = icmp eq ptr %127, null
  br i1 %tobool.not.i287, label %if.then.i290, label %if.then166.if.end8.i_crit_edge

if.then166.if.end8.i_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i290:                                     ; preds = %if.then166
  %call.i288 = tail call ptr @wakeup_source_register(ptr noundef null, ptr noundef nonnull @.str.38) #9
  %128 = ptrtoint ptr %ep119 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ep119, align 4
  %ws3.i = getelementptr inbounds %struct.eventpoll, ptr %129, i32 0, i32 7
  %130 = ptrtoint ptr %ws3.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i288, ptr %ws3.i, align 4
  %131 = load ptr, ptr %ep119, align 4
  %ws5.i = getelementptr inbounds %struct.eventpoll, ptr %131, i32 0, i32 7
  %132 = ptrtoint ptr %ws5.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ws5.i, align 4
  %tobool6.not.i289 = icmp eq ptr %133, null
  br i1 %tobool6.not.i289, label %if.then.i290.if.then169_crit_edge, label %if.then.i290.if.end8.i_crit_edge

if.then.i290.if.end8.i_crit_edge:                 ; preds = %if.then.i290
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i290.if.then169_crit_edge:                ; preds = %if.then.i290
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then169

if.end8.i:                                        ; preds = %if.then.i290.if.end8.i_crit_edge, %if.then166.if.end8.i_crit_edge
  %134 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ffd, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %135, i32 0, i32 1, i32 1
  %136 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dentry.i, align 4
  call void @take_dentry_name_snapshot(ptr noundef nonnull %n.i, ptr noundef %137) #9
  %name9.i = getelementptr inbounds %struct.qstr, ptr %n.i, i32 0, i32 1
  %138 = ptrtoint ptr %name9.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %name9.i, align 8
  %call10.i = call ptr @wakeup_source_register(ptr noundef null, ptr noundef %139) #9
  call void @release_dentry_name_snapshot(ptr noundef nonnull %n.i) #9
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end8.i.if.then169_crit_edge, label %ep_create_wakeup_source.exit

if.end8.i.if.then169_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then169

ep_create_wakeup_source.exit:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !222
  %ws36.i = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 7
  %140 = ptrtoint ptr %ws36.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %call10.i, ptr %ws36.i, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %n.i) #9
  br label %if.end172

if.then169:                                       ; preds = %if.end8.i.if.then169_crit_edge, %if.then.i290.if.then169_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %n.i) #9
  call fastcc void @ep_remove(ptr noundef %ep, ptr noundef nonnull %call.i275)
  br label %cleanup

if.end172:                                        ; preds = %ep_create_wakeup_source.exit, %if.end163.if.end172_crit_edge
  %141 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i275, ptr %3, align 4
  %142 = ptrtoint ptr %epq to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @ep_ptable_queue_proc, ptr %epq, align 4
  %143 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ffd, align 8
  %145 = ptrtoint ptr %event120 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %event120, align 8
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %1, align 4
  %f_op.i.i295 = getelementptr inbounds %struct.file, ptr %144, i32 0, i32 3
  %148 = ptrtoint ptr %f_op.i.i295 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %f_op.i.i295, align 4
  %cmp.i.not.i296 = icmp eq ptr %149, @eventpoll_fops
  br i1 %cmp.i.not.i296, label %if.else.i, label %if.then.i298

if.then.i298:                                     ; preds = %if.end172
  %poll.i.i = getelementptr inbounds %struct.file_operations, ptr %149, i32 0, i32 9
  %150 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %poll.i.i, align 4
  %tobool.not.i.i297 = icmp eq ptr %151, null
  br i1 %tobool.not.i.i297, label %if.then.i298.ep_item_poll.exit_crit_edge, label %if.end.i.i, !prof !201

if.then.i298.ep_item_poll.exit_crit_edge:         ; preds = %if.then.i298
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_item_poll.exit

if.end.i.i:                                       ; preds = %if.then.i298
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i299 = call i32 %151(ptr noundef %144, ptr noundef nonnull %epq) #9
  br label %ep_item_poll.exit

if.else.i:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call fastcc i32 @__ep_eventpoll_poll(ptr noundef %144, ptr noundef nonnull %epq, i32 noundef 1) #9
  br label %ep_item_poll.exit

ep_item_poll.exit:                                ; preds = %if.else.i, %if.end.i.i, %if.then.i298.ep_item_poll.exit_crit_edge
  %res.0.i = phi i32 [ %call3.i, %if.else.i ], [ %call.i.i299, %if.end.i.i ], [ 325, %if.then.i298.ep_item_poll.exit_crit_edge ]
  %152 = ptrtoint ptr %event120 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %event120, align 8
  %and.i300 = and i32 %153, %res.0.i
  %154 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %3, align 4
  %tobool177.not = icmp eq ptr %155, null
  br i1 %tobool177.not, label %if.then186, label %if.end188, !prof !201

if.then186:                                       ; preds = %ep_item_poll.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ep_remove(ptr noundef %ep, ptr noundef nonnull %call.i275)
  br label %cleanup

if.end188:                                        ; preds = %ep_item_poll.exit
  %lock = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 4
  call void @_raw_write_lock_irq(ptr noundef %lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_net_busy_poll to i32))
  %156 = load i32, ptr @sysctl_net_busy_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.i.not.i = icmp eq i32 %156, 0
  br i1 %tobool.i.not.i, label %if.end188.ep_set_busy_poll_napi_id.exit_crit_edge, label %if.end.i304

if.end188.ep_set_busy_poll_napi_id.exit_crit_edge: ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_set_busy_poll_napi_id.exit

if.end.i304:                                      ; preds = %if.end188
  %157 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ffd, align 8
  %call1.i = call ptr @sock_from_file(ptr noundef %158) #9
  %tobool.not.i303 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i303, label %if.end.i304.ep_set_busy_poll_napi_id.exit_crit_edge, label %if.end3.i

if.end.i304.ep_set_busy_poll_napi_id.exit_crit_edge: ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_set_busy_poll_napi_id.exit

if.end3.i:                                        ; preds = %if.end.i304
  %sk4.i = getelementptr inbounds %struct.socket, ptr %call1.i, i32 0, i32 4
  %159 = ptrtoint ptr %sk4.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sk4.i, align 16
  %tobool5.not.i = icmp eq ptr %160, null
  br i1 %tobool5.not.i, label %if.end3.i.ep_set_busy_poll_napi_id.exit_crit_edge, label %do.end.i306

if.end3.i.ep_set_busy_poll_napi_id.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_set_busy_poll_napi_id.exit

do.end.i306:                                      ; preds = %if.end3.i
  %sk_napi_id.i = getelementptr inbounds %struct.sock, ptr %160, i32 0, i32 14
  %161 = ptrtoint ptr %sk_napi_id.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %sk_napi_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %162)
  %cmp.i305 = icmp ult i32 %162, 5
  br i1 %cmp.i305, label %do.end.i306.ep_set_busy_poll_napi_id.exit_crit_edge, label %lor.lhs.false.i

do.end.i306.ep_set_busy_poll_napi_id.exit_crit_edge: ; preds = %do.end.i306
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_set_busy_poll_napi_id.exit

lor.lhs.false.i:                                  ; preds = %do.end.i306
  %163 = ptrtoint ptr %ep119 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ep119, align 4
  %napi_id9.i = getelementptr inbounds %struct.eventpoll, ptr %164, i32 0, i32 12
  %165 = ptrtoint ptr %napi_id9.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %napi_id9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %166)
  %cmp10.i = icmp eq i32 %162, %166
  br i1 %cmp10.i, label %lor.lhs.false.i.ep_set_busy_poll_napi_id.exit_crit_edge, label %if.end12.i

lor.lhs.false.i.ep_set_busy_poll_napi_id.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_set_busy_poll_napi_id.exit

if.end12.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %napi_id9.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %162, ptr %napi_id9.i, align 4
  br label %ep_set_busy_poll_napi_id.exit

ep_set_busy_poll_napi_id.exit:                    ; preds = %if.end12.i, %lor.lhs.false.i.ep_set_busy_poll_napi_id.exit_crit_edge, %do.end.i306.ep_set_busy_poll_napi_id.exit_crit_edge, %if.end3.i.ep_set_busy_poll_napi_id.exit_crit_edge, %if.end.i304.ep_set_busy_poll_napi_id.exit_crit_edge, %if.end188.ep_set_busy_poll_napi_id.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i300)
  %tobool189.not = icmp eq i32 %and.i300, 0
  br i1 %tobool189.not, label %if.end208.critedge266, label %land.lhs.true190

land.lhs.true190:                                 ; preds = %ep_set_busy_poll_napi_id.exit
  %168 = ptrtoint ptr %rdllink to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile ptr, ptr %rdllink, align 4
  %cmp.i.i307.not = icmp eq ptr %169, %rdllink
  br i1 %cmp.i.i307.not, label %if.then193, label %if.end208.critedge

if.then193:                                       ; preds = %land.lhs.true190
  %rdllist = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3
  %prev.i308 = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3, i32 1
  %170 = ptrtoint ptr %prev.i308 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %prev.i308, align 4
  %call.i.i309 = call zeroext i1 @__list_add_valid(ptr noundef %rdllink, ptr noundef %171, ptr noundef %rdllist) #9
  br i1 %call.i.i309, label %if.end.i.i310, label %if.then193.list_add_tail.exit_crit_edge

if.then193.list_add_tail.exit_crit_edge:          ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i310:                                    ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %prev.i308 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %rdllink, ptr %prev.i308, align 4
  %173 = ptrtoint ptr %rdllink to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %rdllist, ptr %rdllink, align 4
  %174 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %171, ptr %prev.i, align 8
  %175 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %rdllink, ptr %171, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i310, %if.then193.list_add_tail.exit_crit_edge
  %ws.i.i = getelementptr inbounds %struct.epitem, ptr %call.i275, i32 0, i32 7
  %176 = ptrtoint ptr %ws.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile ptr, ptr %ws.i.i, align 8
  %178 = ptrtoint ptr %ep119 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ep119, align 4
  %dep_map.i.i = getelementptr inbounds %struct.mutex, ptr %179, i32 0, i32 5
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i311 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i311, label %lor.lhs.false.i.i, label %list_add_tail.exit.ep_wakeup_source.exit.i_crit_edge

list_add_tail.exit.ep_wakeup_source.exit.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

lor.lhs.false.i.i:                                ; preds = %list_add_tail.exit
  %call2.i.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i312, label %lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge

lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

land.lhs.true.i.i312:                             ; preds = %lor.lhs.false.i.i
  %call4.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i312.ep_wakeup_source.exit.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i312.ep_wakeup_source.exit.i_crit_edge: ; preds = %land.lhs.true.i.i312
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i312
  %.b12.i.i = load i1, ptr @ep_wakeup_source.__warned, align 1
  br i1 %.b12.i.i, label %land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge, label %if.then.i.i313

land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

if.then.i.i313:                                   ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_wakeup_source.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 576, ptr noundef nonnull @.str.24) #9
  br label %ep_wakeup_source.exit.i

ep_wakeup_source.exit.i:                          ; preds = %if.then.i.i313, %land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge, %land.lhs.true.i.i312.ep_wakeup_source.exit.i_crit_edge, %lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge, %list_add_tail.exit.ep_wakeup_source.exit.i_crit_edge
  %tobool.not.i314 = icmp eq ptr %177, null
  br i1 %tobool.not.i314, label %ep_wakeup_source.exit.i.ep_pm_stay_awake.exit_crit_edge, label %if.then.i315

ep_wakeup_source.exit.i.ep_pm_stay_awake.exit_crit_edge: ; preds = %ep_wakeup_source.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_pm_stay_awake.exit

if.then.i315:                                     ; preds = %ep_wakeup_source.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__pm_stay_awake(ptr noundef nonnull %177) #9
  br label %ep_pm_stay_awake.exit

ep_pm_stay_awake.exit:                            ; preds = %if.then.i315, %ep_wakeup_source.exit.i.ep_pm_stay_awake.exit_crit_edge
  %head.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i317.not = icmp eq ptr %181, %head.i
  br i1 %cmp.i.i317.not, label %ep_pm_stay_awake.exit.if.end199_crit_edge, label %if.then197

ep_pm_stay_awake.exit.if.end199_crit_edge:        ; preds = %ep_pm_stay_awake.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

if.then197:                                       ; preds = %ep_pm_stay_awake.exit
  call void @__sanitizer_cov_trace_pc() #11
  %wq = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 1
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end199

if.end199:                                        ; preds = %if.then197, %ep_pm_stay_awake.exit.if.end199_crit_edge
  %head.i319 = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 2, i32 1
  %182 = ptrtoint ptr %head.i319 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile ptr, ptr %head.i319, align 4
  %cmp.i.i320.not = icmp eq ptr %183, %head.i319
  call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  br i1 %cmp.i.i320.not, label %if.end199.cleanup_crit_edge, label %if.then207

if.end199.cleanup_crit_edge:                      ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then207:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  %poll_wait = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 2
  %call10.i322 = call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %poll_wait, i32 noundef 0) #9
  %nests15.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 13
  %184 = ptrtoint ptr %nests15.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %nests15.i, align 8
  call void @__wake_up_locked_key(ptr noundef %poll_wait, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #9
  %185 = ptrtoint ptr %nests15.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %nests15.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %poll_wait, i32 noundef %call10.i322) #9
  br label %cleanup

if.end208.critedge:                               ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  br label %cleanup

if.end208.critedge266:                            ; preds = %ep_set_busy_poll_napi_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end208.critedge266, %if.end208.critedge, %if.then207, %if.end199.cleanup_crit_edge, %if.then186, %if.then169, %if.then161, %if.end137, %if.then115, %if.end91.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end137 ], [ -22, %if.then161 ], [ -12, %if.then169 ], [ -12, %if.then186 ], [ -12, %if.then115 ], [ -28, %if.end91.cleanup_crit_edge ], [ 0, %if.end208.critedge266 ], [ 0, %if.end208.critedge ], [ 0, %if.then207 ], [ 0, %if.end199.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %epq) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_modify(ptr noundef %ep, ptr noundef %epi, ptr nocapture noundef readonly %event) unnamed_addr #0 align 64 {
entry:
  %n.i = alloca %struct.name_snapshot, align 8
  %pt = alloca %struct.poll_table_struct, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pt) #9
  %0 = getelementptr inbounds %struct.poll_table_struct, ptr %pt, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end87_crit_edge, label %land.lhs.true

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true:                                    ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !223
  %7 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, ptrtoint (ptr @lockdep_recursion to i32)
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !224
  %16 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i5 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i5 to ptr
  %preempt_count.i.i6 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i6, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  br i1 %tobool20.not, label %land.rhs, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.rhs:                                         ; preds = %land.lhs.true
  %20 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i7 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i7 to ptr
  %preempt_count.i.i8 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i8, align 4
  %add.i9 = add i32 %23, 1
  store volatile i32 %add.i9, ptr %preempt_count.i.i8, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !225
  %24 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %27, ptrtoint (ptr @hardirqs_enabled to i32)
  %28 = inttoptr i32 %add45 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !226
  %31 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i10 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i10 to ptr
  %preempt_count.i.i11 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i11, align 4
  %sub.i12 = add i32 %34, -1
  store volatile i32 %sub.i12, ptr %preempt_count.i.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool52.not = icmp eq i32 %30, 0
  br i1 %tobool52.not, label %land.rhs56, label %land.rhs.if.end87_crit_edge

land.rhs.if.end87_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.rhs56:                                       ; preds = %land.rhs
  %.b1 = load i1, ptr @ep_modify.__already_done, align 1
  br i1 %.b1, label %land.rhs56.if.end87_crit_edge, label %if.then, !prof !206

land.rhs56.if.end87_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then:                                          ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_modify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1571, i32 noundef 9, ptr noundef null) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then, %land.rhs56.if.end87_crit_edge, %land.rhs.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %entry.if.end87_crit_edge
  %35 = ptrtoint ptr %pt to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %pt, align 4
  %36 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %event, align 8
  %event97 = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 8
  %38 = ptrtoint ptr %event97 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %event97, align 8
  %data = getelementptr inbounds %struct.epoll_event, ptr %event, i32 0, i32 1
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %data, align 8
  %data100 = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %data100 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %data100, align 8
  %and = and i32 %37, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool103.not = icmp eq i32 %and, 0
  %ws.i13 = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 7
  %42 = ptrtoint ptr %ws.i13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %ws.i13, align 8
  %tobool.i14.not = icmp eq ptr %43, null
  br i1 %tobool103.not, label %if.else, label %if.then104

if.then104:                                       ; preds = %if.end87
  br i1 %tobool.i14.not, label %if.then106, label %if.then104.do.end116_crit_edge

if.then104.do.end116_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end116

if.then106:                                       ; preds = %if.then104
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %n.i) #9
  %44 = call ptr @memset(ptr %n.i, i32 255, i32 56)
  %ep.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 5
  %45 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ep.i, align 4
  %ws1.i = getelementptr inbounds %struct.eventpoll, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %ws1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ws1.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then106.if.end8.i_crit_edge

if.then106.if.end8.i_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then106
  %call.i = tail call ptr @wakeup_source_register(ptr noundef null, ptr noundef nonnull @.str.38) #9
  %49 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ep.i, align 4
  %ws3.i = getelementptr inbounds %struct.eventpoll, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %ws3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %ws3.i, align 4
  %52 = load ptr, ptr %ep.i, align 4
  %ws5.i = getelementptr inbounds %struct.eventpoll, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %ws5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ws5.i, align 4
  %tobool6.not.i = icmp eq ptr %54, null
  br i1 %tobool6.not.i, label %if.then.i.ep_create_wakeup_source.exit_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i.ep_create_wakeup_source.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_create_wakeup_source.exit

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %if.then106.if.end8.i_crit_edge
  %ffd.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 3
  %55 = ptrtoint ptr %ffd.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ffd.i, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %56, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dentry.i, align 4
  call void @take_dentry_name_snapshot(ptr noundef nonnull %n.i, ptr noundef %58) #9
  %name9.i = getelementptr inbounds %struct.qstr, ptr %n.i, i32 0, i32 1
  %59 = ptrtoint ptr %name9.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name9.i, align 8
  %call10.i = call ptr @wakeup_source_register(ptr noundef null, ptr noundef %60) #9
  call void @release_dentry_name_snapshot(ptr noundef nonnull %n.i) #9
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end8.i.ep_create_wakeup_source.exit_crit_edge, label %do.body.i

if.end8.i.ep_create_wakeup_source.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_create_wakeup_source.exit

do.body.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !222
  %61 = ptrtoint ptr %ws.i13 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call10.i, ptr %ws.i13, align 8
  br label %ep_create_wakeup_source.exit

ep_create_wakeup_source.exit:                     ; preds = %do.body.i, %if.end8.i.ep_create_wakeup_source.exit_crit_edge, %if.then.i.ep_create_wakeup_source.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %n.i) #9
  br label %do.end116

if.else:                                          ; preds = %if.end87
  br i1 %tobool.i14.not, label %if.else.do.end116_crit_edge, label %if.then110

if.else.do.end116_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end116

if.then110:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep_destroy_wakeup_source(ptr noundef %epi)
  br label %do.end116

do.end116:                                        ; preds = %if.then110, %if.else.do.end116_crit_edge, %ep_create_wakeup_source.exit, %if.then104.do.end116_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !227
  %ffd.i15 = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 3
  %62 = ptrtoint ptr %ffd.i15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ffd.i15, align 8
  %64 = ptrtoint ptr %event97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %event97, align 8
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %0, align 4
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %63, i32 0, i32 3
  %67 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %f_op.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %68, @eventpoll_fops
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then.i17

if.then.i17:                                      ; preds = %do.end116
  %poll.i.i = getelementptr inbounds %struct.file_operations, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %poll.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %if.then.i17.ep_item_poll.exit_crit_edge, label %if.end.i.i, !prof !201

if.then.i17.ep_item_poll.exit_crit_edge:          ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_item_poll.exit

if.end.i.i:                                       ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 %70(ptr noundef %63, ptr noundef nonnull %pt) #9
  br label %ep_item_poll.exit

if.else.i:                                        ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call fastcc i32 @__ep_eventpoll_poll(ptr noundef %63, ptr noundef nonnull %pt, i32 noundef 1) #9
  br label %ep_item_poll.exit

ep_item_poll.exit:                                ; preds = %if.else.i, %if.end.i.i, %if.then.i17.ep_item_poll.exit_crit_edge
  %res.0.i = phi i32 [ %call3.i, %if.else.i ], [ %call.i.i, %if.end.i.i ], [ 325, %if.then.i17.ep_item_poll.exit_crit_edge ]
  %71 = ptrtoint ptr %event97 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %event97, align 8
  %and.i18 = and i32 %72, %res.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool120.not = icmp eq i32 %and.i18, 0
  br i1 %tobool120.not, label %ep_item_poll.exit.if.end139_crit_edge, label %if.then121

ep_item_poll.exit.if.end139_crit_edge:            ; preds = %ep_item_poll.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.then121:                                       ; preds = %ep_item_poll.exit
  %lock = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 4
  call void @_raw_write_lock_irq(ptr noundef %lock) #9
  %rdllink.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 1
  %73 = ptrtoint ptr %rdllink.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %rdllink.i, align 4
  %cmp.i.i.not = icmp eq ptr %74, %rdllink.i
  br i1 %cmp.i.i.not, label %if.then124, label %if.then121.if.end136.thread32_crit_edge

if.then121.if.end136.thread32_crit_edge:          ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136.thread32

if.then124:                                       ; preds = %if.then121
  %rdllist = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i, align 4
  %call.i.i19 = call zeroext i1 @__list_add_valid(ptr noundef %rdllink.i, ptr noundef %76, ptr noundef %rdllist) #9
  br i1 %call.i.i19, label %if.end.i.i20, label %if.then124.list_add_tail.exit_crit_edge

if.then124.list_add_tail.exit_crit_edge:          ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i20:                                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %rdllink.i, ptr %prev.i, align 4
  %78 = ptrtoint ptr %rdllink.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %rdllist, ptr %rdllink.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %rdllink.i, ptr %76, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i20, %if.then124.list_add_tail.exit_crit_edge
  %ws.i.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 7
  %81 = ptrtoint ptr %ws.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %ws.i.i, align 8
  %ep.i.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 5
  %83 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ep.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.mutex, ptr %84, i32 0, i32 5
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i21 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i21, label %lor.lhs.false.i.i, label %list_add_tail.exit.ep_wakeup_source.exit.i_crit_edge

list_add_tail.exit.ep_wakeup_source.exit.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

lor.lhs.false.i.i:                                ; preds = %list_add_tail.exit
  %call2.i.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge

lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call4.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.ep_wakeup_source.exit.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b12.i.i = load i1, ptr @ep_wakeup_source.__warned, align 1
  br i1 %.b12.i.i, label %land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge, label %if.then.i.i

land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_wakeup_source.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 576, ptr noundef nonnull @.str.24) #9
  br label %ep_wakeup_source.exit.i

ep_wakeup_source.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge, %land.lhs.true.i.i.ep_wakeup_source.exit.i_crit_edge, %lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge, %list_add_tail.exit.ep_wakeup_source.exit.i_crit_edge
  %tobool.not.i22 = icmp eq ptr %82, null
  br i1 %tobool.not.i22, label %ep_wakeup_source.exit.i.ep_pm_stay_awake.exit_crit_edge, label %if.then.i23

ep_wakeup_source.exit.i.ep_pm_stay_awake.exit_crit_edge: ; preds = %ep_wakeup_source.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_pm_stay_awake.exit

if.then.i23:                                      ; preds = %ep_wakeup_source.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__pm_stay_awake(ptr noundef nonnull %82) #9
  br label %ep_pm_stay_awake.exit

ep_pm_stay_awake.exit:                            ; preds = %if.then.i23, %ep_wakeup_source.exit.i.ep_pm_stay_awake.exit_crit_edge
  %head.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i24.not = icmp eq ptr %86, %head.i
  br i1 %cmp.i.i24.not, label %ep_pm_stay_awake.exit.if.end129_crit_edge, label %if.then127

ep_pm_stay_awake.exit.if.end129_crit_edge:        ; preds = %ep_pm_stay_awake.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then127:                                       ; preds = %ep_pm_stay_awake.exit
  call void @__sanitizer_cov_trace_pc() #11
  %wq = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 1
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %ep_pm_stay_awake.exit.if.end129_crit_edge
  %head.i26 = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 2, i32 1
  %87 = ptrtoint ptr %head.i26 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %head.i26, align 4
  %cmp.i.i27.not = icmp eq ptr %88, %head.i26
  br i1 %cmp.i.i27.not, label %if.end129.if.end136.thread32_crit_edge, label %if.then138

if.end129.if.end136.thread32_crit_edge:           ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136.thread32

if.end136.thread32:                               ; preds = %if.end129.if.end136.thread32_crit_edge, %if.then121.if.end136.thread32_crit_edge
  call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  br label %if.end139

if.then138:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  %poll_wait.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 2
  %call10.i29 = call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %poll_wait.i, i32 noundef 0) #9
  %nests15.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 13
  %89 = ptrtoint ptr %nests15.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %nests15.i, align 8
  call void @__wake_up_locked_key(ptr noundef %poll_wait.i, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #9
  %90 = ptrtoint ptr %nests15.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %nests15.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %poll_wait.i, i32 noundef %call10.i29) #9
  br label %if.end139

if.end139:                                        ; preds = %if.then138, %if.end136.thread32, %ep_item_poll.exit.if.end139_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_ctl(i32 noundef %epfd, i32 noundef %op, i32 noundef %fd, i32 noundef %event) #0 align 64 {
entry:
  %epds.i = alloca %struct.epoll_event, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %event to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epds.i) #9
  %1 = call ptr @memset(ptr %epds.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %op)
  %cmp.i.not.i = icmp eq i32 %op, 2
  br i1 %cmp.i.not.i, label %entry.if.end.i_crit_edge, label %if.then.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.46, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.then.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.if.then11.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 16, i32 -1226833920) #12, !srcloc !228
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !206

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %epds.i, i32 noundef 16) #9
  %3 = call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !229
  %and.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %epds.i, ptr noundef %0, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #9, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end.i_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !206

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i.if.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.then.i.i.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %epds.i, i32 %sub.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %__do_sys_epoll_ctl.exit

if.end.i:                                         ; preds = %if.end.i.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call3.i = call i32 @do_epoll_ctl(i32 noundef %epfd, i32 noundef %op, i32 noundef %fd, ptr noundef nonnull %epds.i, i1 noundef zeroext false) #9
  br label %__do_sys_epoll_ctl.exit

__do_sys_epoll_ctl.exit:                          ; preds = %if.end.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epds.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_wait(i32 noundef %epfd, i32 noundef %events, i32 noundef %maxevents, i32 noundef %timeout) #0 align 64 {
entry:
  %now.i.i = alloca %struct.timespec64, align 8
  %to.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %events to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %to.i) #9
  %1 = call ptr @memset(ptr %to.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i.i) #9
  %2 = call ptr @memset(ptr %now.i.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp.i.i = icmp slt i32 %timeout, 0
  br i1 %cmp.i.i, label %entry.ep_timeout_to_timespec.exit.i_crit_edge, label %if.end.i.i

entry.ep_timeout_to_timespec.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_timeout_to_timespec.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not.i.i = icmp eq i32 %timeout, 0
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %to.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %to.i, align 8
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %to.i, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tv_nsec.i.i, align 8
  br label %ep_timeout_to_timespec.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div17.i.i = udiv i32 %timeout, 1000
  %5 = zext i32 %div17.i.i to i64
  %6 = ptrtoint ptr %to.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %to.i, align 8
  %7 = mul i32 %div17.i.i, 1000
  %rem18.i.i.decomposed = sub i32 %timeout, %7
  %mul.i.i = mul nuw nsw i32 %rem18.i.i.decomposed, 1000000
  %tv_nsec4.i.i = getelementptr inbounds %struct.timespec64, ptr %to.i, i32 0, i32 1
  %8 = ptrtoint ptr %tv_nsec4.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul.i.i, ptr %tv_nsec4.i.i, align 8
  call void @ktime_get_ts64(ptr noundef nonnull %now.i.i) #9
  %9 = ptrtoint ptr %now.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %.fca.0.load.i.i = load i64, ptr %now.i.i, align 8
  %.fca.0.insert.i.i = insertvalue [2 x i64] poison, i64 %.fca.0.load.i.i, 0
  %.fca.1.gep.i.i = getelementptr inbounds [2 x i64], ptr %now.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %.fca.1.gep.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8
  %.fca.1.insert.i.i = insertvalue [2 x i64] %.fca.0.insert.i.i, i64 %.fca.1.load.i.i, 1
  %11 = insertvalue [2 x i64] undef, i64 %5, 0
  %12 = ptrtoint ptr %tv_nsec4.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %.unpack16.i.i = load i64, ptr %tv_nsec4.i.i, align 8
  %13 = insertvalue [2 x i64] %11, i64 %.unpack16.i.i, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %to.i, [2 x i64] %.fca.1.insert.i.i, [2 x i64] %13) #9
  br label %ep_timeout_to_timespec.exit.i

ep_timeout_to_timespec.exit.i:                    ; preds = %if.end2.i.i, %if.then1.i.i, %entry.ep_timeout_to_timespec.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %to.i, %if.end2.i.i ], [ %to.i, %if.then1.i.i ], [ null, %entry.ep_timeout_to_timespec.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i.i) #9
  %14 = add i32 %maxevents, -134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 -134217727, i32 %14)
  %15 = icmp ult i32 %14, -134217727
  br i1 %15, label %ep_timeout_to_timespec.exit.i.__do_sys_epoll_wait.exit_crit_edge, label %if.end.i3.i

ep_timeout_to_timespec.exit.i.__do_sys_epoll_wait.exit_crit_edge: ; preds = %ep_timeout_to_timespec.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_epoll_wait.exit

if.end.i3.i:                                      ; preds = %ep_timeout_to_timespec.exit.i
  %mul.i2.i = shl nuw nsw i32 %maxevents, 4
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %mul.i2.i, i32 -1226833920) #12, !srcloc !232
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp3.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp3.i.i, label %if.end5.i.i, label %if.end.i3.i.__do_sys_epoll_wait.exit_crit_edge

if.end.i3.i.__do_sys_epoll_wait.exit_crit_edge:   ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_epoll_wait.exit

if.end5.i.i:                                      ; preds = %if.end.i3.i
  %call.i.i.i = call i32 @__fdget(i32 noundef %epfd) #9, !noalias !233
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i4.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i4.i, label %if.end5.i.i.__do_sys_epoll_wait.exit_crit_edge, label %if.end8.i.i

if.end5.i.i.__do_sys_epoll_wait.exit_crit_edge:   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_epoll_wait.exit

if.end8.i.i:                                      ; preds = %if.end5.i.i
  %f_op.i.i.i = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %f_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_op.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %19, @eventpoll_fops
  br i1 %cmp.i.not.i.i, label %if.end12.i.i, label %if.end8.i.i.error_fput.i.i_crit_edge

if.end8.i.i.error_fput.i.i_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_fput.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %private_data.i.i = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 16
  %20 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data.i.i, align 4
  %call14.i.i = call fastcc i32 @ep_poll(ptr noundef %21, ptr noundef %0, i32 noundef %maxevents, ptr noundef %retval.0.i.i) #9
  br label %error_fput.i.i

error_fput.i.i:                                   ; preds = %if.end12.i.i, %if.end8.i.i.error_fput.i.i_crit_edge
  %error.0.i.i = phi i32 [ %call14.i.i, %if.end12.i.i ], [ -22, %if.end8.i.i.error_fput.i.i_crit_edge ]
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %error_fput.i.i.__do_sys_epoll_wait.exit_crit_edge, label %if.then.i.i.i

error_fput.i.i.__do_sys_epoll_wait.exit_crit_edge: ; preds = %error_fput.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_epoll_wait.exit

if.then.i.i.i:                                    ; preds = %error_fput.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @fput(ptr noundef nonnull %17) #9
  br label %__do_sys_epoll_wait.exit

__do_sys_epoll_wait.exit:                         ; preds = %if.then.i.i.i, %error_fput.i.i.__do_sys_epoll_wait.exit_crit_edge, %if.end5.i.i.__do_sys_epoll_wait.exit_crit_edge, %if.end.i3.i.__do_sys_epoll_wait.exit_crit_edge, %ep_timeout_to_timespec.exit.i.__do_sys_epoll_wait.exit_crit_edge
  %retval.0.i5.i = phi i32 [ -22, %ep_timeout_to_timespec.exit.i.__do_sys_epoll_wait.exit_crit_edge ], [ -14, %if.end.i3.i.__do_sys_epoll_wait.exit_crit_edge ], [ -9, %if.end5.i.i.__do_sys_epoll_wait.exit_crit_edge ], [ %error.0.i.i, %error_fput.i.i.__do_sys_epoll_wait.exit_crit_edge ], [ %error.0.i.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %to.i) #9
  ret i32 %retval.0.i5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_pwait(i32 noundef %epfd, i32 noundef %events, i32 noundef %maxevents, i32 noundef %timeout, i32 noundef %sigmask, i32 noundef %sigsetsize) #0 align 64 {
entry:
  %now.i.i = alloca %struct.timespec64, align 8
  %to.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %to.i) #9
  %0 = call ptr @memset(ptr %to.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i.i) #9
  %1 = call ptr @memset(ptr %now.i.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp.i.i = icmp slt i32 %timeout, 0
  br i1 %cmp.i.i, label %entry.__do_sys_epoll_pwait.exit_crit_edge, label %if.end.i.i

entry.__do_sys_epoll_pwait.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_epoll_pwait.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not.i.i = icmp eq i32 %timeout, 0
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %to.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %to.i, align 8
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %to.i, i32 0, i32 1
  %3 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tv_nsec.i.i, align 8
  br label %__do_sys_epoll_pwait.exit

if.end2.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div17.i.i = udiv i32 %timeout, 1000
  %4 = zext i32 %div17.i.i to i64
  %5 = ptrtoint ptr %to.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %to.i, align 8
  %6 = mul i32 %div17.i.i, 1000
  %rem18.i.i.decomposed = sub i32 %timeout, %6
  %mul.i.i = mul nuw nsw i32 %rem18.i.i.decomposed, 1000000
  %tv_nsec4.i.i = getelementptr inbounds %struct.timespec64, ptr %to.i, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec4.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul.i.i, ptr %tv_nsec4.i.i, align 8
  call void @ktime_get_ts64(ptr noundef nonnull %now.i.i) #9
  %8 = ptrtoint ptr %now.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %.fca.0.load.i.i = load i64, ptr %now.i.i, align 8
  %.fca.0.insert.i.i = insertvalue [2 x i64] poison, i64 %.fca.0.load.i.i, 0
  %.fca.1.gep.i.i = getelementptr inbounds [2 x i64], ptr %now.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %.fca.1.gep.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8
  %.fca.1.insert.i.i = insertvalue [2 x i64] %.fca.0.insert.i.i, i64 %.fca.1.load.i.i, 1
  %10 = insertvalue [2 x i64] undef, i64 %4, 0
  %11 = ptrtoint ptr %tv_nsec4.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %.unpack16.i.i = load i64, ptr %tv_nsec4.i.i, align 8
  %12 = insertvalue [2 x i64] %10, i64 %.unpack16.i.i, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %to.i, [2 x i64] %.fca.1.insert.i.i, [2 x i64] %12) #9
  br label %__do_sys_epoll_pwait.exit

__do_sys_epoll_pwait.exit:                        ; preds = %if.end2.i.i, %if.then1.i.i, %entry.__do_sys_epoll_pwait.exit_crit_edge
  %retval.0.i.i = phi ptr [ %to.i, %if.end2.i.i ], [ %to.i, %if.then1.i.i ], [ null, %entry.__do_sys_epoll_pwait.exit_crit_edge ]
  %13 = inttoptr i32 %sigmask to ptr
  %14 = inttoptr i32 %events to ptr
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i.i) #9
  %call1.i = call fastcc i32 @do_epoll_pwait(i32 noundef %epfd, ptr noundef %14, i32 noundef %maxevents, ptr noundef %retval.0.i.i, ptr noundef %13, i32 noundef %sigsetsize) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %to.i) #9
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_pwait2(i32 noundef %epfd, i32 noundef %events, i32 noundef %maxevents, i32 noundef %timeout, i32 noundef %sigmask, i32 noundef %sigsetsize) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %events to ptr
  %1 = inttoptr i32 %sigmask to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #9
  %2 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not.i = icmp eq i32 %timeout, 0
  br i1 %tobool.not.i, label %entry.if.end7.i_crit_edge, label %if.then.i

entry.if.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then.i:                                        ; preds = %entry
  %3 = inttoptr i32 %timeout to ptr
  %call.i = call i32 @get_timespec64(ptr noundef nonnull %ts.i, ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.__do_sys_epoll_pwait2.exit_crit_edge

if.then.i.__do_sys_epoll_pwait2.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_epoll_pwait2.exit

if.end.i:                                         ; preds = %if.then.i
  %4 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %6 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_nsec.i, align 8
  %call3.i = call i32 @poll_select_set_timeout(ptr noundef nonnull %ts.i, i64 noundef %5, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.end.i.__do_sys_epoll_pwait2.exit_crit_edge

if.end.i.__do_sys_epoll_pwait2.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__do_sys_epoll_pwait2.exit

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i.if.end7.i_crit_edge, %entry.if.end7.i_crit_edge
  %to.0.i = phi ptr [ %ts.i, %if.end.i.if.end7.i_crit_edge ], [ null, %entry.if.end7.i_crit_edge ]
  %call8.i = call fastcc i32 @do_epoll_pwait(i32 noundef %epfd, ptr noundef %0, i32 noundef %maxevents, ptr noundef %to.0.i, ptr noundef %1, i32 noundef %sigsetsize) #9
  br label %__do_sys_epoll_pwait2.exit

__do_sys_epoll_pwait2.exit:                       ; preds = %if.end7.i, %if.end.i.__do_sys_epoll_pwait2.exit_crit_edge, %if.then.i.__do_sys_epoll_pwait2.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.end7.i ], [ -14, %if.then.i.__do_sys_epoll_pwait2.exit_crit_edge ], [ -22, %if.end.i.__do_sys_epoll_pwait2.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eventpoll_init() #4 section ".init.text" align 64 {
entry:
  %si = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %si) #9
  %0 = call ptr @memset(ptr %si, i32 255, i32 64)
  call void @si_meminfo(ptr noundef nonnull %si) #9
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 2
  %1 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %totalram, align 4
  %totalhigh = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 10
  %3 = ptrtoint ptr %totalhigh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %totalhigh, align 4
  %sub = sub i32 %2, %4
  %div = udiv i32 %sub, 25
  %shl = shl i32 %div, 12
  %div1 = udiv i32 %shl, 104
  store i32 %div1, ptr @max_user_watches, align 4
  %call = call ptr @kmem_cache_create(ptr noundef nonnull @.str.58, i32 noundef 72, i32 noundef 0, i32 noundef 67379200, ptr noundef null) #9
  store ptr %call, ptr @epi_cache, align 4
  %call12 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.59, i32 noundef 32, i32 noundef 0, i32 noundef 67371008, ptr noundef null) #9
  store ptr %call12, ptr @pwq_cache, align 4
  %call.i = call ptr @register_sysctl(ptr noundef nonnull @.str.61, ptr noundef nonnull @epoll_table) #9
  %call13 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.60, i32 noundef 8, i32 noundef 0, i32 noundef 67371008, ptr noundef null) #9
  store ptr %call13, ptr @ephead_cache, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_unregister_pollwait(ptr nocapture noundef %epi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwqlist = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 4
  %0 = ptrtoint ptr %pwqlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwqlist, align 4
  %cmp.not1 = icmp eq ptr %1, null
  br i1 %cmp.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %ep_remove_wait_queue.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %18, %ep_remove_wait_queue.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %pwqlist to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pwqlist, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %while.body.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

while.body.rcu_read_lock.exit.i_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %while.body
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %while.body.rcu_read_lock.exit.i_crit_edge
  %whead1.i = getelementptr inbounds %struct.eppoll_entry, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %whead1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %whead1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !236
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.if.end.i_crit_edge, label %if.then.i

rcu_read_lock.exit.i.if.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %wait.i = getelementptr inbounds %struct.eppoll_entry, ptr %2, i32 0, i32 2
  tail call void @remove_wait_queue(ptr noundef nonnull %11, ptr noundef %wait.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rcu_read_lock.exit.i.if.end.i_crit_edge
  %call.i8.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8.i, label %if.end.i.ep_remove_wait_queue.exit_crit_edge, label %land.lhs.true.i11.i

if.end.i.ep_remove_wait_queue.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_remove_wait_queue.exit

land.lhs.true.i11.i:                              ; preds = %if.end.i
  %call1.i9.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.ep_remove_wait_queue.exit_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.ep_remove_wait_queue.exit_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_remove_wait_queue.exit

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.ep_remove_wait_queue.exit_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.ep_remove_wait_queue.exit_crit_edge: ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_remove_wait_queue.exit

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %ep_remove_wait_queue.exit

ep_remove_wait_queue.exit:                        ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.ep_remove_wait_queue.exit_crit_edge, %land.lhs.true.i11.i.ep_remove_wait_queue.exit_crit_edge, %if.end.i.ep_remove_wait_queue.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !215
  %12 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i.i.i15.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %16 = load ptr, ptr @pwq_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef nonnull %2) #9
  %17 = ptrtoint ptr %pwqlist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pwqlist, align 4
  %cmp.not = icmp eq ptr %18, null
  br i1 %cmp.not, label %ep_remove_wait_queue.exit.while.end_crit_edge, label %ep_remove_wait_queue.exit.while.body_crit_edge

ep_remove_wait_queue.exit.while.body_crit_edge:   ; preds = %ep_remove_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

ep_remove_wait_queue.exit.while.end_crit_edge:    ; preds = %ep_remove_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %ep_remove_wait_queue.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_source_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @epi_rcu_free(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @epi_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %head) #9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_eventpoll_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ep_eventpoll_poll(ptr noundef %file, ptr noundef %wait, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_eventpoll_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ep_free(ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep_show_fdinfo(ptr noundef %m, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %rb_leftmost = getelementptr inbounds %struct.eventpoll, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost, align 4
  %tobool.not19 = icmp eq ptr %3, null
  br i1 %tobool.not19, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %count.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rbp.020 = phi ptr [ %3, %for.body.lr.ph ], [ %call7, %for.inc.for.body_crit_edge ]
  %ffd = getelementptr inbounds %struct.epitem, ptr %rbp.020, i32 0, i32 3
  %4 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ffd, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %fd = getelementptr inbounds %struct.epitem, ptr %rbp.020, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fd, align 4
  %event = getelementptr inbounds %struct.epitem, ptr %rbp.020, i32 0, i32 8
  %10 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event, align 8
  %data = getelementptr inbounds %struct.epitem, ptr %rbp.020, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data, align 8
  %f_pos = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %f_pos, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_dev, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %9, i32 noundef %11, i64 noundef %13, i64 noundef %15, i32 noundef %17, i32 noundef %21) #9
  %22 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i, align 4
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i = icmp eq i32 %23, %25
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %call7 = tail call ptr @rb_next(ptr noundef nonnull %rbp.020) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ep_eventpoll_poll(ptr noundef %file, ptr noundef %wait, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  %txlist = alloca %struct.list_head, align 4
  %pt = alloca %struct.poll_table_struct, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %txlist) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %txlist, i32 0, i32 1
  %3 = ptrtoint ptr %txlist to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %txlist, ptr %txlist, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %txlist, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pt) #9
  %5 = getelementptr inbounds %struct.poll_table_struct, ptr %pt, i32 0, i32 1
  %6 = ptrtoint ptr %pt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pt, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %5, align 4
  %poll_wait = getelementptr inbounds %struct.eventpoll, ptr %1, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  %tobool3.not.i = icmp eq ptr %poll_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %9(ptr noundef %file, ptr noundef nonnull %poll_wait, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef %depth) #9
  call fastcc void @ep_start_scan(ptr noundef %1, ptr noundef nonnull %txlist)
  %10 = ptrtoint ptr %txlist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txlist, align 4
  %cmp.not41 = icmp eq ptr %11, %txlist
  br i1 %cmp.not41, label %poll_wait.exit.for.end_crit_edge, label %for.body.lr.ph

poll_wait.exit.for.end_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %poll_wait.exit
  %add = add i32 %depth, 1
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in42 = phi ptr [ %11, %for.body.lr.ph ], [ %.pn44, %list_del_init.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn44 = load ptr, ptr %.pn.in42, align 4
  %ffd.i = getelementptr i8, ptr %.pn.in42, i32 12
  %13 = ptrtoint ptr %ffd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ffd.i, align 8
  %event.i = getelementptr i8, ptr %.pn.in42, i32 44
  %15 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %event.i, align 8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %5, align 4
  %f_op.i39 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %f_op.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_op.i39, align 4
  %cmp.i.not = icmp eq ptr %19, @eventpoll_fops
  br i1 %cmp.i.not, label %if.else.i, label %if.then.i30

if.then.i30:                                      ; preds = %for.body
  %poll.i = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %poll.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %poll.i, align 4
  %tobool.not.i37 = icmp eq ptr %21, null
  br i1 %tobool.not.i37, label %if.then.i30.ep_item_poll.exit_crit_edge, label %if.end.i, !prof !201

if.then.i30.ep_item_poll.exit_crit_edge:          ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_item_poll.exit

if.end.i:                                         ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #11
  %call.i38 = call i32 %21(ptr noundef %14, ptr noundef nonnull %pt) #9
  br label %ep_item_poll.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = call fastcc i32 @__ep_eventpoll_poll(ptr noundef %14, ptr noundef nonnull %pt, i32 noundef %add) #9
  br label %ep_item_poll.exit

ep_item_poll.exit:                                ; preds = %if.else.i, %if.end.i, %if.then.i30.ep_item_poll.exit_crit_edge
  %res.0.i = phi i32 [ %call3.i, %if.else.i ], [ %call.i38, %if.end.i ], [ 325, %if.then.i30.ep_item_poll.exit_crit_edge ]
  %22 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event.i, align 8
  %and.i = and i32 %23, %res.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %ep_item_poll.exit.for.end_crit_edge

ep_item_poll.exit.for.end_crit_edge:              ; preds = %ep_item_poll.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else:                                          ; preds = %ep_item_poll.exit
  %ws.i = getelementptr i8, ptr %.pn.in42, i32 36
  %24 = ptrtoint ptr %ws.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %ws.i, align 8
  %ep.i = getelementptr i8, ptr %.pn.in42, i32 24
  %26 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep.i, align 4
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %27, i32 0, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i31 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i31, label %lor.lhs.false.i, label %if.else.ep_wakeup_source.exit_crit_edge

if.else.ep_wakeup_source.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

lor.lhs.false.i:                                  ; preds = %if.else
  %call2.i32 = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i32)
  %tobool3.not.i33 = icmp eq i32 %call2.i32, 0
  br i1 %tobool3.not.i33, label %land.lhs.true.i34, label %lor.lhs.false.i.ep_wakeup_source.exit_crit_edge

lor.lhs.false.i.ep_wakeup_source.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

land.lhs.true.i34:                                ; preds = %lor.lhs.false.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i34.ep_wakeup_source.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i34.ep_wakeup_source.exit_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i34
  %.b12.i = load i1, ptr @ep_wakeup_source.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.ep_wakeup_source.exit_crit_edge, label %if.then.i35

land.lhs.true6.i.ep_wakeup_source.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

if.then.i35:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_wakeup_source.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 576, ptr noundef nonnull @.str.24) #9
  br label %ep_wakeup_source.exit

ep_wakeup_source.exit:                            ; preds = %if.then.i35, %land.lhs.true6.i.ep_wakeup_source.exit_crit_edge, %land.lhs.true.i34.ep_wakeup_source.exit_crit_edge, %lor.lhs.false.i.ep_wakeup_source.exit_crit_edge, %if.else.ep_wakeup_source.exit_crit_edge
  call void @__pm_relax(ptr noundef %25) #9
  %call.i.i36 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42) #9
  br i1 %call.i.i36, label %if.end.i.i, label %ep_wakeup_source.exit.list_del_init.exit_crit_edge

ep_wakeup_source.exit.list_del_init.exit_crit_edge: ; preds = %ep_wakeup_source.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %ep_wakeup_source.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in42, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %ep_wakeup_source.exit.list_del_init.exit_crit_edge
  %34 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %.pn.in42, ptr %.pn.in42, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %.pn.in42, ptr %prev.i3.i, align 4
  %cmp.not = icmp eq ptr %.pn44, %txlist
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %ep_item_poll.exit.for.end_crit_edge, %poll_wait.exit.for.end_crit_edge
  %res.0 = phi i32 [ 0, %poll_wait.exit.for.end_crit_edge ], [ 0, %list_del_init.exit.for.end_crit_edge ], [ 65, %ep_item_poll.exit.for.end_crit_edge ]
  call fastcc void @ep_done_scan(ptr noundef %1, ptr noundef nonnull %txlist)
  call void @mutex_unlock(ptr noundef %1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pt) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %txlist) #9
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_start_scan(ptr noundef %ep, ptr noundef %txlist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end87_crit_edge, label %land.lhs.true

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !237
  %5 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !238
  %14 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i116 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i116 to ptr
  %preempt_count.i.i117 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i117 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i117, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i118 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i118 to ptr
  %preempt_count.i.i119 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i119 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i119, align 4
  %add.i120 = add i32 %21, 1
  store volatile i32 %add.i120, ptr %preempt_count.i.i119, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !239
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add45 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !240
  %29 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i121 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i121 to ptr
  %preempt_count.i.i122 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i122 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i122, align 4
  %sub.i123 = add i32 %32, -1
  store volatile i32 %sub.i123, ptr %preempt_count.i.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %land.rhs56, label %land.rhs.if.end87_crit_edge

land.rhs.if.end87_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.rhs56:                                       ; preds = %land.rhs
  %.b112 = load i1, ptr @ep_start_scan.__already_done, align 1
  br i1 %.b112, label %land.rhs56.if.end87_crit_edge, label %if.then, !prof !206

land.rhs56.if.end87_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then:                                          ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_start_scan.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 620, i32 noundef 9, ptr noundef null) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then, %land.rhs56.if.end87_crit_edge, %land.rhs.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %entry.if.end87_crit_edge
  %lock = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 4
  tail call void @_raw_write_lock_irq(ptr noundef %lock) #9
  %rdllist = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3
  %33 = ptrtoint ptr %rdllist to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %rdllist, align 4
  %cmp.i.not.i = icmp eq ptr %34, %rdllist
  br i1 %cmp.i.not.i, label %if.end87.list_splice_init.exit_crit_edge, label %if.then.i

if.end87.list_splice_init.exit_crit_edge:         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %txlist to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txlist, align 4
  %prev2.i.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %txlist, ptr %prev3.i.i, align 4
  store ptr %34, ptr %txlist, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %36, ptr %38, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev6.i.i, align 4
  %42 = ptrtoint ptr %rdllist to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %rdllist, ptr %rdllist, align 4
  store ptr %rdllist, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end87.list_splice_init.exit_crit_edge
  %ovflist = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 6
  %43 = ptrtoint ptr %ovflist to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr null, ptr %ovflist, align 8
  tail call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_relax(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_done_scan(ptr noundef %ep, ptr noundef %txlist) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 4
  tail call void @_raw_write_lock_irq(ptr noundef %lock) #9
  %ovflist = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %ovflist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ovflist, align 8
  %cmp.not41 = icmp eq ptr %1, null
  br i1 %cmp.not41, label %entry.do.body6_crit_edge, label %for.body.lr.ph

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

for.body.lr.ph:                                   ; preds = %entry
  %rdllist = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nepi.042 = phi ptr [ %1, %for.body.lr.ph ], [ %15, %for.inc.for.body_crit_edge ]
  %rdllink.i = getelementptr inbounds %struct.epitem, ptr %nepi.042, i32 0, i32 1
  %2 = ptrtoint ptr %rdllink.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rdllink.i, align 4
  %cmp.i.i.not = icmp eq ptr %3, %rdllink.i
  br i1 %cmp.i.i.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %rdllist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdllist, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rdllink.i, ptr noundef %rdllist, ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rdllink.i, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %rdllink.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %rdllink.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.epitem, ptr %nepi.042, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rdllist, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %rdllist to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rdllink.i, ptr %rdllist, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  %ws.i.i = getelementptr inbounds %struct.epitem, ptr %nepi.042, i32 0, i32 7
  %10 = ptrtoint ptr %ws.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %ws.i.i, align 8
  %ep.i.i = getelementptr inbounds %struct.epitem, ptr %nepi.042, i32 0, i32 5
  %12 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.mutex, ptr %13, i32 0, i32 5
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %list_add.exit.ep_wakeup_source.exit.i_crit_edge

list_add.exit.ep_wakeup_source.exit.i_crit_edge:  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

lor.lhs.false.i.i:                                ; preds = %list_add.exit
  %call2.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge

lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.ep_wakeup_source.exit.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b12.i.i = load i1, ptr @ep_wakeup_source.__warned, align 1
  br i1 %.b12.i.i, label %land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge, label %if.then.i.i

land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_wakeup_source.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 576, ptr noundef nonnull @.str.24) #9
  br label %ep_wakeup_source.exit.i

ep_wakeup_source.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge, %land.lhs.true.i.i.ep_wakeup_source.exit.i_crit_edge, %lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge, %list_add.exit.ep_wakeup_source.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %ep_wakeup_source.exit.i.for.inc_crit_edge, label %if.then.i

ep_wakeup_source.exit.i.for.inc_crit_edge:        ; preds = %ep_wakeup_source.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i:                                        ; preds = %ep_wakeup_source.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__pm_stay_awake(ptr noundef nonnull %11) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %ep_wakeup_source.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.epitem, ptr %nepi.042, i32 0, i32 2
  %14 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next, align 4
  store ptr inttoptr (i32 -1 to ptr), ptr %next, align 4
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %for.inc.do.body6_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

do.body6:                                         ; preds = %for.inc.do.body6_crit_edge, %entry.do.body6_crit_edge
  %16 = ptrtoint ptr %ovflist to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr inttoptr (i32 -1 to ptr), ptr %ovflist, align 8
  %rdllist12 = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3
  %17 = ptrtoint ptr %txlist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %txlist, align 4
  %cmp.i.not.i = icmp eq ptr %18, %txlist
  br i1 %cmp.i.not.i, label %do.body6.list_splice.exit_crit_edge, label %if.then.i38

do.body6.list_splice.exit_crit_edge:              ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice.exit

if.then.i38:                                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %rdllist12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdllist12, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %txlist, i32 0, i32 1
  %21 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i37 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rdllist12, ptr %prev3.i.i37, align 4
  store ptr %18, ptr %rdllist12, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %22, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i38, %do.body6.list_splice.exit_crit_edge
  %ws = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 7
  %26 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ws, align 4
  tail call void @__pm_relax(ptr noundef %27) #9
  %28 = ptrtoint ptr %rdllist12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %rdllist12, align 4
  %cmp.i.not = icmp eq ptr %29, %rdllist12
  br i1 %cmp.i.not, label %list_splice.exit.if.end22_crit_edge, label %if.then16

list_splice.exit.if.end22_crit_edge:              ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then16:                                        ; preds = %list_splice.exit
  %head.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i39.not = icmp eq ptr %31, %head.i
  br i1 %cmp.i.i39.not, label %if.then16.if.end22_crit_edge, label %if.then19

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %wq = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then16.if.end22_crit_edge, %list_splice.exit.if.end22_crit_edge
  tail call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_stay_awake(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_free(ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %1, %head.i
  br i1 %cmp.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %poll_wait = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 2
  %call10.i = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %poll_wait, i32 noundef 0) #9
  %nests15.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 13
  %2 = ptrtoint ptr %nests15.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %nests15.i, align 8
  tail call void @__wake_up_locked_key(ptr noundef %poll_wait, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #9
  %3 = ptrtoint ptr %nests15.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %nests15.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %poll_wait, i32 noundef %call10.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @epmutex, i32 noundef 0) #9
  %rb_leftmost = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost, align 4
  %tobool1.not31 = icmp eq ptr %5, null
  br i1 %tobool1.not31, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %rbp.032 = phi ptr [ %call4, %for.body.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  tail call fastcc void @ep_unregister_pollwait(ptr noundef nonnull %rbp.032)
  tail call void @__might_resched(ptr noundef nonnull @.str.20, i32 noundef 764, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %call4 = tail call ptr @rb_next(ptr noundef nonnull %rbp.032) #9
  %tobool1.not = icmp eq ptr %call4, null
  br i1 %tobool1.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %ep, i32 noundef 0) #9
  %6 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_leftmost, align 4
  %cmp.not33 = icmp eq ptr %7, null
  br i1 %cmp.not33, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %8 = phi ptr [ %10, %while.body.while.body_crit_edge ], [ %7, %for.end.while.body_crit_edge ]
  tail call fastcc void @ep_remove(ptr noundef %ep, ptr noundef nonnull %8)
  tail call void @__might_resched(ptr noundef nonnull @.str.20, i32 noundef 779, i32 noundef 0) #9
  %call.i30 = tail call i32 @__cond_resched() #9
  %9 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rb_leftmost, align 4
  %cmp.not = icmp eq ptr %10, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ep) #9
  tail call void @mutex_unlock(ptr noundef nonnull @epmutex) #9
  tail call void @mutex_destroy(ptr noundef %ep) #9
  %user = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 8
  %11 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user, align 8
  tail call void @free_uid(ptr noundef %12) #9
  %ws = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 7
  %13 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ws, align 4
  tail call void @wakeup_source_unregister(ptr noundef %14) #9
  tail call void @kfree(ptr noundef %ep) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_epoll_create(i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, -524289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %user1.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %user1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user1.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #9, !srcloc !241
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !201

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_uid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !206

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_uid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_uid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %.sink.i.i.i.i.i) #9
  br label %get_uid.exit.i

get_uid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_uid.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 296) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %ep_alloc.exit.thread, label %if.end2, !prof !201

ep_alloc.exit.thread:                             ; preds = %get_uid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_uid(ptr noundef %7) #9
  br label %cleanup

if.end2:                                          ; preds = %get_uid.exit.i
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @ep_alloc.__key) #9
  %lock.i = getelementptr inbounds %struct.eventpoll, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__rwlock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @ep_alloc.__key.30) #9
  %wq.i = getelementptr inbounds %struct.eventpoll, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wq.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @ep_alloc.__key.32) #9
  %poll_wait.i = getelementptr inbounds %struct.eventpoll, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %poll_wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @ep_alloc.__key.34) #9
  %rdllist.i = getelementptr inbounds %struct.eventpoll, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %rdllist.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %rdllist.i, ptr %rdllist.i, align 4
  %prev.i.i = getelementptr inbounds %struct.eventpoll, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rdllist.i, ptr %prev.i.i, align 8
  %rbr.i = getelementptr inbounds %struct.eventpoll, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %rbr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rbr.i, align 8
  %.compoundliteral.sroa.2.0.rbr.sroa_idx.i = getelementptr inbounds %struct.eventpoll, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.2.0.rbr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %.compoundliteral.sroa.2.0.rbr.sroa_idx.i, align 4
  %ovflist.i = getelementptr inbounds %struct.eventpoll, ptr %call7.i.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %ovflist.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %ovflist.i, align 8
  %user20.i = getelementptr inbounds %struct.eventpoll, ptr %call7.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %user20.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %7, ptr %user20.i, align 8
  %and3 = and i32 %flags, 524288
  %or = or i32 %and3, 2
  %call4 = tail call i32 @get_unused_fd_flags(i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end2.out_free_ep_crit_edge, label %if.end7

if.end2.out_free_ep_crit_edge:                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_ep

if.end7:                                          ; preds = %if.end2
  %call10 = tail call ptr @anon_inode_getfile(ptr noundef nonnull @.str.28, ptr noundef nonnull @eventpoll_fops, ptr noundef nonnull %call7.i.i.i, i32 noundef %or) #9
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call10 to i32
  tail call void @put_unused_fd(i32 noundef %call4) #9
  br label %out_free_ep

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %file15 = getelementptr inbounds %struct.eventpoll, ptr %call7.i.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %file15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %file15, align 4
  tail call void @fd_install(i32 noundef %call4, ptr noundef %call10) #9
  br label %cleanup

out_free_ep:                                      ; preds = %if.then12, %if.end2.out_free_ep_crit_edge
  %error.0 = phi i32 [ %17, %if.then12 ], [ %call4, %if.end2.out_free_ep_crit_edge ]
  tail call fastcc void @ep_free(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out_free_ep, %if.end14, %ep_alloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_free_ep ], [ %call4, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %ep_alloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_loop_check_proc(ptr noundef %ep, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %depth, 1
  tail call void @mutex_lock_nested(ptr noundef %ep, i32 noundef %add) #9
  %0 = load i64, ptr @loop_check_gen, align 8
  %gen = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 10
  %1 = ptrtoint ptr %gen to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %gen, align 8
  %rb_leftmost = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %rb_leftmost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost, align 4
  %tobool.not51 = icmp eq ptr %3, null
  br i1 %tobool.not51, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %depth)
  %cmp9 = icmp sgt i32 %depth, 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %error.053 = phi i32 [ 0, %for.body.lr.ph ], [ %error.3, %for.inc.for.body_crit_edge ]
  %rbp.052 = phi ptr [ %3, %for.body.lr.ph ], [ %call21, %for.inc.for.body_crit_edge ]
  %ffd = getelementptr inbounds %struct.epitem, ptr %rbp.052, i32 0, i32 3
  %4 = ptrtoint ptr %ffd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ffd, align 8
  %f_op.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_op.i, align 4
  %cmp.i.not = icmp eq ptr %7, @eventpoll_fops
  br i1 %cmp.i.not, label %if.then, label %if.else17, !prof !201

if.then:                                          ; preds = %for.body
  %private_data = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %gen6 = getelementptr inbounds %struct.eventpoll, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %gen6 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %gen6, align 8
  %12 = load i64, ptr @loop_check_gen, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %12)
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.for.inc_crit_edge, label %if.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %if.then
  %13 = load ptr, ptr @inserting_into, align 4
  %cmp8 = icmp eq ptr %9, %13
  %or.cond = or i1 %cmp9, %cmp8
  br i1 %or.cond, label %if.end.for.end_crit_edge, label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %if.end
  %call12 = tail call fastcc i32 @ep_loop_check_proc(ptr noundef %9, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp14.not = icmp eq i32 %call12, 0
  %not.cmp14.not = xor i1 %cmp14.not, true
  %. = sext i1 %not.cmp14.not to i32
  br i1 %cmp14.not, label %cleanup.for.inc_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else17:                                        ; preds = %for.body
  %f_ep.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 17
  %14 = ptrtoint ptr %f_ep.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_ep.i, align 8
  %next.i = getelementptr inbounds %struct.epitems_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else17.for.inc_crit_edge

if.else17.for.inc_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %18 = load ptr, ptr @tfile_check_list, align 4
  %19 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %next.i, align 4
  store ptr %15, ptr @tfile_check_list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.else17.for.inc_crit_edge, %cleanup.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %error.3 = phi i32 [ %., %cleanup.for.inc_crit_edge ], [ %error.053, %if.else17.for.inc_crit_edge ], [ %error.053, %if.then.i ], [ %error.053, %if.then.for.inc_crit_edge ]
  %call21 = tail call ptr @rb_next(ptr noundef nonnull %rbp.052) #9
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %error.4 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -1, %if.end.for.end_crit_edge ], [ %., %cleanup.for.end_crit_edge ], [ %error.3, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ep) #9
  ret i32 %error.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep_ptable_queue_proc(ptr nocapture noundef readnone %file, ptr noundef %whead, ptr nocapture noundef %pt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %epi1 = getelementptr inbounds %struct.ep_pqueue, ptr %pt, i32 0, i32 1
  %0 = ptrtoint ptr %epi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epi1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !201

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @pwq_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #9
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then14, label %if.end16, !prof !201

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %epi1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %epi1, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %wait = getelementptr inbounds %struct.eppoll_entry, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 8
  %private.i = getelementptr inbounds %struct.eppoll_entry, ptr %call, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %private.i, align 4
  %func1.i = getelementptr inbounds %struct.eppoll_entry, ptr %call, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ep_poll_callback, ptr %func1.i, align 8
  %whead17 = getelementptr inbounds %struct.eppoll_entry, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %whead17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %whead, ptr %whead17, align 4
  %base = getelementptr inbounds %struct.eppoll_entry, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %base, align 4
  %event = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event, align 8
  %and = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @add_wait_queue_exclusive(ptr noundef %whead, ptr noundef %wait) #9
  br label %if.end22

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @add_wait_queue(ptr noundef %whead, ptr noundef %wait) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  %pwqlist = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %pwqlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pwqlist, align 8
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call, align 8
  store ptr %call, ptr %pwqlist, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_compare(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reverse_path_check_proc(ptr noundef %refs, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %depth)
  %cmp = icmp sgt i32 %depth, 4
  br i1 %cmp, label %entry.cleanup41_crit_edge, label %do.body

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

do.body:                                          ; preds = %entry
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @reverse_path_check_proc.__warned, align 1
  br i1 %.b52, label %land.lhs.true3.do.end_crit_edge, label %if.then5

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @reverse_path_check_proc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1332, ptr noundef nonnull @.str.37) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %0 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %refs, align 4
  %tobool12.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -40
  %tobool14.not5962 = icmp eq ptr %add.ptr, null
  %tobool14.not59 = or i1 %tobool12.not, %tobool14.not5962
  br i1 %tobool14.not59, label %do.end.cleanup41_crit_edge, label %for.body.lr.ph

do.end.cleanup41_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

for.body.lr.ph:                                   ; preds = %do.end
  %add = add nsw i32 %depth, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %cmp.i = icmp eq i32 %depth, 0
  %arrayidx.i = getelementptr [5 x i32], ptr @path_count, i32 0, i32 %depth
  %arrayidx1.i = getelementptr [5 x i32], ptr @path_limits, i32 0, i32 %depth
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %epi.060 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr37, %for.inc.for.body_crit_edge ]
  %ep = getelementptr inbounds %struct.epitem, ptr %epi.060, i32 0, i32 5
  %2 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep, align 4
  %refs16 = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %refs16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %refs16, align 4
  %tobool.not.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.body
  br i1 %cmp.i, label %if.then19.for.inc_crit_edge, label %if.end.i

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %9)
  %cmp2.i = icmp sgt i32 %inc.i, %9
  %..i = sext i1 %cmp2.i to i32
  br label %if.end22

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call fastcc i32 @reverse_path_check_proc(ptr noundef %refs16, i32 noundef %add)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end.i
  %error.1 = phi i32 [ %call21, %if.else ], [ %..i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %cmp23.not = icmp eq i32 %error.1, 0
  br i1 %cmp23.not, label %if.end22.for.inc_crit_edge, label %if.end22.cleanup41_crit_edge

if.end22.cleanup41_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %if.then19.for.inc_crit_edge
  %fllink = getelementptr inbounds %struct.epitem, ptr %epi.060, i32 0, i32 6
  %10 = ptrtoint ptr %fllink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %fllink, align 8
  %tobool33.not = icmp eq ptr %11, null
  %add.ptr37 = getelementptr i8, ptr %11, i32 -40
  %tobool14.not63 = icmp eq ptr %add.ptr37, null
  %tobool14.not = or i1 %tobool33.not, %tobool14.not63
  br i1 %tobool14.not, label %for.inc.cleanup41_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

cleanup41:                                        ; preds = %for.inc.cleanup41_crit_edge, %if.end22.cleanup41_crit_edge, %do.end.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup41_crit_edge ], [ 0, %do.end.cleanup41_crit_edge ], [ 0, %for.inc.cleanup41_crit_edge ], [ %error.1, %if.end22.cleanup41_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wakeup_source_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @take_dentry_name_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_dentry_name_snapshot(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep_poll_callback(ptr noundef %wait, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr i8, ptr %wait, i32 -4
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %ep1 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep1, align 4
  %4 = ptrtoint ptr %key to i32
  %lock = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_net_busy_poll to i32))
  %5 = load i32, ptr @sysctl_net_busy_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %entry.ep_set_busy_poll_napi_id.exit_crit_edge, label %if.end.i

entry.ep_set_busy_poll_napi_id.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_set_busy_poll_napi_id.exit

if.end.i:                                         ; preds = %entry
  %ffd.i = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ffd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ffd.i, align 8
  %call1.i = tail call ptr @sock_from_file(ptr noundef %7) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.ep_set_busy_poll_napi_id.exit_crit_edge, label %if.end3.i

if.end.i.ep_set_busy_poll_napi_id.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_set_busy_poll_napi_id.exit

if.end3.i:                                        ; preds = %if.end.i
  %sk4.i = getelementptr inbounds %struct.socket, ptr %call1.i, i32 0, i32 4
  %8 = ptrtoint ptr %sk4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk4.i, align 16
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.end3.i.ep_set_busy_poll_napi_id.exit_crit_edge, label %do.end.i

if.end3.i.ep_set_busy_poll_napi_id.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_set_busy_poll_napi_id.exit

do.end.i:                                         ; preds = %if.end3.i
  %sk_napi_id.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %sk_napi_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sk_napi_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp.i = icmp ult i32 %11, 5
  br i1 %cmp.i, label %do.end.i.ep_set_busy_poll_napi_id.exit_crit_edge, label %lor.lhs.false.i

do.end.i.ep_set_busy_poll_napi_id.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_set_busy_poll_napi_id.exit

lor.lhs.false.i:                                  ; preds = %do.end.i
  %12 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep1, align 4
  %napi_id9.i = getelementptr inbounds %struct.eventpoll, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %napi_id9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %napi_id9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp10.i = icmp eq i32 %11, %15
  br i1 %cmp10.i, label %lor.lhs.false.i.ep_set_busy_poll_napi_id.exit_crit_edge, label %if.end12.i

lor.lhs.false.i.ep_set_busy_poll_napi_id.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_set_busy_poll_napi_id.exit

if.end12.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %napi_id9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %napi_id9.i, align 4
  br label %ep_set_busy_poll_napi_id.exit

ep_set_busy_poll_napi_id.exit:                    ; preds = %if.end12.i, %lor.lhs.false.i.ep_set_busy_poll_napi_id.exit_crit_edge, %do.end.i.ep_set_busy_poll_napi_id.exit_crit_edge, %if.end3.i.ep_set_busy_poll_napi_id.exit_crit_edge, %if.end.i.ep_set_busy_poll_napi_id.exit_crit_edge, %entry.ep_set_busy_poll_napi_id.exit_crit_edge
  %event = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %event, align 8
  %and = and i32 %18, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ep_set_busy_poll_napi_id.exit.do.body61.thread_crit_edge, label %if.end

ep_set_busy_poll_napi_id.exit.do.body61.thread_crit_edge: ; preds = %ep_set_busy_poll_napi_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61.thread

if.end:                                           ; preds = %ep_set_busy_poll_napi_id.exit
  %tobool3.not = icmp ne ptr %key, null
  %and6 = and i32 %18, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %if.end.do.body61.thread_crit_edge, label %do.end12

if.end.do.body61.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61.thread

do.end12:                                         ; preds = %if.end
  %ovflist = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %ovflist to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %ovflist, align 8
  %cmp14.not = icmp eq ptr %20, inttoptr (i32 -1 to ptr)
  br i1 %cmp14.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end12
  %21 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep1, align 4
  %next.i = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next.i, align 4
  %cmp.not.i = icmp eq ptr %24, inttoptr (i32 -1 to ptr)
  br i1 %cmp.not.i, label %if.end.i137, label %if.then16.if.end27_crit_edge

if.then16.if.end27_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i137:                                      ; preds = %if.then16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !242
  tail call void @llvm.prefetch.p0(ptr %next.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end.i137
  %25 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %next.i, i32 -1, i32 0) #9, !srcloc !243
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %25, 1
  %26 = inttoptr i32 %asmresult1.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !244
  %cmp17.not.i = icmp eq ptr %26, inttoptr (i32 -1 to ptr)
  br i1 %cmp17.not.i, label %if.then18, label %__cmpxchg.exit.i.if.end27_crit_edge

__cmpxchg.exit.i.if.end27_crit_edge:              ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then18:                                        ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %ovflist.i = getelementptr inbounds %struct.eventpoll, ptr %22, i32 0, i32 6
  %call.i48.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ovflist.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !245
  %27 = ptrtoint ptr %1 to i32
  tail call void @llvm.prefetch.p0(ptr %ovflist.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %27, ptr %ovflist.i) #9, !srcloc !246
  %asmresult.i49.i = extractvalue { i32, i32 } %28, 0
  %29 = inttoptr i32 %asmresult.i49.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !247
  %30 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %next.i, align 4
  br label %if.end27.sink.split

if.else:                                          ; preds = %do.end12
  %rdllink.i = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %rdllink.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %rdllink.i, align 4
  %cmp.i.i.not = icmp eq ptr %32, %rdllink.i
  br i1 %cmp.i.i.not, label %if.then22, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %if.else
  %rdllist = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 3
  %call.i.i138 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rdllink.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !248
  %33 = ptrtoint ptr %rdllink.i to i32
  %34 = ptrtoint ptr %rdllist to i32
  tail call void @llvm.prefetch.p0(ptr %rdllink.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i141

do.body.i.i141:                                   ; preds = %do.body.i.i141.do.body.i.i141_crit_edge, %if.then22
  %35 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %rdllink.i, i32 %33, i32 %34) #9, !srcloc !243
  %asmresult.i.i139 = extractvalue { i32, i32 } %35, 0
  %tobool.not.i.i140 = icmp eq i32 %asmresult.i.i139, 0
  br i1 %tobool.not.i.i140, label %__cmpxchg.exit.i144, label %do.body.i.i141.do.body.i.i141_crit_edge

do.body.i.i141.do.body.i.i141_crit_edge:          ; preds = %do.body.i.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i141

__cmpxchg.exit.i144:                              ; preds = %do.body.i.i141
  %asmresult1.i.i142 = extractvalue { i32, i32 } %35, 1
  %36 = inttoptr i32 %asmresult1.i.i142 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  %cmp.not.i143 = icmp eq ptr %rdllink.i, %36
  br i1 %cmp.not.i143, label %if.then24, label %__cmpxchg.exit.i144.if.end27_crit_edge

__cmpxchg.exit.i144.if.end27_crit_edge:           ; preds = %__cmpxchg.exit.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then24:                                        ; preds = %__cmpxchg.exit.i144
  call void @__sanitizer_cov_trace_pc() #11
  %prev16.i = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 3, i32 1
  %call.i48.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev16.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void @llvm.prefetch.p0(ptr %prev16.i, i32 1, i32 3, i32 1) #9
  %37 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %33, ptr %prev16.i) #9, !srcloc !246
  %asmresult.i49.i146 = extractvalue { i32, i32 } %37, 0
  %38 = inttoptr i32 %asmresult.i49.i146 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !251
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rdllink.i, ptr %38, align 4
  %prev38.i = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev38.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %prev38.i, align 4
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.then24, %if.then18
  tail call fastcc void @ep_pm_stay_awake_rcu(ptr noundef %1)
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %__cmpxchg.exit.i144.if.end27_crit_edge, %if.else.if.end27_crit_edge, %__cmpxchg.exit.i.if.end27_crit_edge, %if.then16.if.end27_crit_edge
  %wq = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 1
  %head.i = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i148.not = icmp eq ptr %42, %head.i
  br i1 %cmp.i.i148.not, label %if.end27.do.body61_crit_edge, label %if.then30

if.end27.do.body61_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61

if.then30:                                        ; preds = %if.end27
  %43 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %event, align 8
  %and33 = and i32 %44, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp ne i32 %and33, 0
  %and36 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %or.cond133 = and i1 %tobool37.not, %tobool34.not
  br i1 %or.cond133, label %if.then38, label %if.then30.if.end54_crit_edge

if.then30.if.end54_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then38:                                        ; preds = %if.then30
  %and39 = and i32 %4, 5
  %45 = zext i32 %and39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %and39, label %if.then38.if.end54_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb46
    i32 0, label %sw.bb53
  ]

if.then38.if.end54_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

sw.bb:                                            ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %and42 = and i32 %44, 1
  br label %if.end54

sw.bb46:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %and49 = lshr i32 %44, 2
  %and49.lobit = and i32 %and49, 1
  br label %if.end54

sw.bb53:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end54:                                         ; preds = %sw.bb53, %sw.bb46, %sw.bb, %if.then38.if.end54_crit_edge, %if.then30.if.end54_crit_edge
  %ewake.0 = phi i32 [ 0, %if.then38.if.end54_crit_edge ], [ 1, %sw.bb53 ], [ 0, %if.then30.if.end54_crit_edge ], [ %and42, %sw.bb ], [ %and49.lobit, %sw.bb46 ]
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %do.body61

do.body61.thread:                                 ; preds = %if.end.do.body61.thread_crit_edge, %ep_set_busy_poll_napi_id.exit.do.body61.thread_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  br label %if.end72

do.body61:                                        ; preds = %if.end54, %if.end27.do.body61_crit_edge
  %ewake.1 = phi i32 [ %ewake.0, %if.end54 ], [ 0, %if.end27.do.body61_crit_edge ]
  %head.i150 = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %head.i150 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %head.i150, align 4
  %cmp.i.i151.not = icmp eq ptr %47, %head.i150
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  br i1 %cmp.i.i151.not, label %do.body61.if.end72_crit_edge, label %if.then71

do.body61.if.end72_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then71:                                        ; preds = %do.body61
  %tobool.not.i153 = icmp eq ptr %1, null
  br i1 %tobool.not.i153, label %if.then71.ep_poll_safewake.exit_crit_edge, label %if.then.i

if.then71.ep_poll_safewake.exit_crit_edge:        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_poll_safewake.exit

if.then.i:                                        ; preds = %if.then71
  %ffd.i154 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %ffd.i154 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ffd.i154, align 8
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %f_op.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %51, @eventpoll_fops
  br i1 %cmp.i.not.i, label %if.then2.i, label %if.then.i.ep_poll_safewake.exit_crit_edge

if.then.i.ep_poll_safewake.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_poll_safewake.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %private_data.i = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 16
  %52 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %private_data.i, align 4
  %nests5.i = getelementptr inbounds %struct.eventpoll, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %nests5.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nests5.i, align 8
  %phi.cast.i = zext i8 %55 to i32
  br label %ep_poll_safewake.exit

ep_poll_safewake.exit:                            ; preds = %if.then2.i, %if.then.i.ep_poll_safewake.exit_crit_edge, %if.then71.ep_poll_safewake.exit_crit_edge
  %nests.0.i = phi i32 [ %phi.cast.i, %if.then2.i ], [ 0, %if.then71.ep_poll_safewake.exit_crit_edge ], [ 1, %if.then.i.ep_poll_safewake.exit_crit_edge ]
  %poll_wait.i = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 2
  %call10.i = tail call i32 @_raw_spin_lock_irqsave_nested(ptr noundef %poll_wait.i, i32 noundef %nests.0.i) #9
  %56 = trunc i32 %nests.0.i to i8
  %conv14.i = add i8 %56, 1
  %nests15.i = getelementptr inbounds %struct.eventpoll, ptr %3, i32 0, i32 13
  %57 = ptrtoint ptr %nests15.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv14.i, ptr %nests15.i, align 8
  tail call void @__wake_up_locked_key(ptr noundef %poll_wait.i, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #9
  %58 = ptrtoint ptr %nests15.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %nests15.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %poll_wait.i, i32 noundef %call10.i) #9
  br label %if.end72

if.end72:                                         ; preds = %ep_poll_safewake.exit, %do.body61.if.end72_crit_edge, %do.body61.thread
  %ewake.2159 = phi i32 [ 0, %do.body61.thread ], [ %ewake.1, %ep_poll_safewake.exit ], [ %ewake.1, %do.body61.if.end72_crit_edge ]
  %59 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %event, align 8
  %and79 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end72.if.end105_crit_edge, label %if.then81

if.end72.if.end105_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then81:                                        ; preds = %if.end72
  %entry82 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %call.i.i155 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry82) #9
  br i1 %call.i.i155, label %if.end.i.i, label %if.then81.list_del_init.exit_crit_edge

if.then81.list_del_init.exit_crit_edge:           ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %entry82 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %entry82, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then81.list_del_init.exit_crit_edge
  %67 = ptrtoint ptr %entry82 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %entry82, ptr %entry82, align 4
  %prev.i3.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %entry82, ptr %prev.i3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  %whead = getelementptr i8, ptr %wait, i32 20
  %69 = ptrtoint ptr %whead to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr null, ptr %whead, align 4
  br label %if.end105

if.end105:                                        ; preds = %list_del_init.exit, %if.end72.if.end105_crit_edge
  %and75 = and i32 %60, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %spec.select136 = select i1 %tobool76.not, i32 1, i32 %ewake.2159
  ret i32 %spec.select136
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_pm_stay_awake_rcu(ptr noundef %epi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ws1 = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 7
  %4 = ptrtoint ptr %ws1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ws1, align 8
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @ep_pm_stay_awake_rcu.__warned, align 1
  br i1 %.b14, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_pm_stay_awake_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 599, ptr noundef nonnull @.str.24) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end12_crit_edge, label %if.then11

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__pm_stay_awake(ptr noundef nonnull %5) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end8.if.end12_crit_edge
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i15, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end12
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !215
  %6 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i.i.i22 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_from_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_destroy_wakeup_source(ptr noundef %epi) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ws.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 7
  %0 = ptrtoint ptr %ws.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ws.i, align 8
  %ep.i = getelementptr inbounds %struct.epitem, ptr %epi, i32 0, i32 5
  %2 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep.i, align 4
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %3, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.ep_wakeup_source.exit_crit_edge

entry.ep_wakeup_source.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.ep_wakeup_source.exit_crit_edge

lor.lhs.false.i.ep_wakeup_source.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.ep_wakeup_source.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.ep_wakeup_source.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @ep_wakeup_source.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.ep_wakeup_source.exit_crit_edge, label %if.then.i

land.lhs.true6.i.ep_wakeup_source.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_wakeup_source.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 576, ptr noundef nonnull @.str.24) #9
  br label %ep_wakeup_source.exit

ep_wakeup_source.exit:                            ; preds = %if.then.i, %land.lhs.true6.i.ep_wakeup_source.exit_crit_edge, %land.lhs.true.i.ep_wakeup_source.exit_crit_edge, %lor.lhs.false.i.ep_wakeup_source.exit_crit_edge, %entry.ep_wakeup_source.exit_crit_edge
  %4 = ptrtoint ptr %ws.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %ws.i, align 8
  tail call void @synchronize_rcu() #9
  tail call void @wakeup_source_unregister(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ep_poll(ptr noundef %ep, ptr noundef %events, i32 noundef %maxevents, ptr noundef %timeout) #0 align 64 {
entry:
  %txlist.i = alloca %struct.list_head, align 4
  %pt.i = alloca %struct.poll_table_struct, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %expires = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = call ptr @memset(ptr %wait, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expires) #9
  %5 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %expires, align 8, !annotation !216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end87_crit_edge, label %land.lhs.true

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true:                                    ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %10, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !253
  %11 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, ptrtoint (ptr @lockdep_recursion to i32)
  %17 = inttoptr i32 %add to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !254
  %20 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i339 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i339 to ptr
  %preempt_count.i.i340 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i340 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i340, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %land.rhs, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.rhs:                                         ; preds = %land.lhs.true
  %24 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i341 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i341 to ptr
  %preempt_count.i.i342 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i342 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i342, align 4
  %add.i343 = add i32 %27, 1
  store volatile i32 %add.i343, ptr %preempt_count.i.i342, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !255
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %31, ptrtoint (ptr @hardirqs_enabled to i32)
  %32 = inttoptr i32 %add45 to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !256
  %35 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i344 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i344 to ptr
  %preempt_count.i.i345 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i345 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i345, align 4
  %sub.i346 = add i32 %38, -1
  store volatile i32 %sub.i346, ptr %preempt_count.i.i345, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool52.not = icmp eq i32 %34, 0
  br i1 %tobool52.not, label %land.rhs56, label %land.rhs.if.end87_crit_edge

land.rhs.if.end87_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.rhs56:                                       ; preds = %land.rhs
  %.b335 = load i1, ptr @ep_poll.__already_done, align 1
  br i1 %.b335, label %land.rhs56.if.end87_crit_edge, label %if.then, !prof !206

land.rhs56.if.end87_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then:                                          ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_poll.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1775, i32 noundef 9, ptr noundef null) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then, %land.rhs56.if.end87_crit_edge, %land.rhs.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %entry.if.end87_crit_edge
  %tobool97.not = icmp eq ptr %timeout, null
  br i1 %tobool97.not, label %if.end87.if.else_crit_edge, label %land.lhs.true98

if.end87.if.else_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true98:                                  ; preds = %if.end87
  %39 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %timeout, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %timeout, i32 0, i32 1
  %41 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tv_nsec, align 8
  %conv = sext i32 %42 to i64
  %or = or i64 %40, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %tobool99.not = icmp eq i64 %or, 0
  br i1 %tobool99.not, label %land.lhs.true98.if.else_crit_edge, label %if.then100

land.lhs.true98.if.else_crit_edge:                ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then100:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #11
  %call101 = tail call i64 @select_estimate_accuracy(ptr noundef nonnull %timeout) #9
  %43 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %43)
  %.unpack = load i64, ptr %timeout, align 8
  %44 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load8_noabort(i32 %44)
  %.unpack334 = load i64, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack)
  %cmp.i.i = icmp sgt i64 %.unpack, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack334, 32
  %mul.i.i = mul i64 %.unpack, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !201
  %45 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %retval.0.i.i, ptr %expires, align 8
  br label %if.end106

if.else:                                          ; preds = %land.lhs.true98.if.else_crit_edge, %if.end87.if.else_crit_edge
  %not.tobool97.not = xor i1 %tobool97.not, true
  %spec.select = zext i1 %not.tobool97.not to i32
  br label %if.end106

if.end106:                                        ; preds = %if.else, %if.then100
  %to.0 = phi ptr [ %expires, %if.then100 ], [ null, %if.else ]
  %slack.0 = phi i64 [ %call101, %if.then100 ], [ 0, %if.else ]
  %timed_out.0 = phi i32 [ 0, %if.then100 ], [ %spec.select, %if.else ]
  %rdllist.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3
  %46 = ptrtoint ptr %rdllist.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %rdllist.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !257
  %cmp.i.not.i.i = icmp eq ptr %47, %rdllist.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %if.end106.ep_events_available.exit_crit_edge

if.end106.ep_events_available.exit_crit_edge:     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_events_available.exit

list_empty_careful.exit.i:                        ; preds = %if.end106
  %prev.i.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %49, %rdllist.i
  br i1 %cmp.i.not.i, label %do.end.i, label %list_empty_careful.exit.i.ep_events_available.exit_crit_edge

list_empty_careful.exit.i.ep_events_available.exit_crit_edge: ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_events_available.exit

do.end.i:                                         ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %ovflist.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 6
  %50 = ptrtoint ptr %ovflist.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %ovflist.i, align 8
  %cmp.i = icmp ne ptr %51, inttoptr (i32 -1 to ptr)
  %phi.cast.i = zext i1 %cmp.i to i32
  br label %ep_events_available.exit

ep_events_available.exit:                         ; preds = %do.end.i, %list_empty_careful.exit.i.ep_events_available.exit_crit_edge, %if.end106.ep_events_available.exit_crit_edge
  %52 = phi i32 [ 1, %list_empty_careful.exit.i.ep_events_available.exit_crit_edge ], [ %phi.cast.i, %do.end.i ], [ 1, %if.end106.ep_events_available.exit_crit_edge ]
  %53 = getelementptr inbounds %struct.list_head, ptr %txlist.i, i32 0, i32 1
  %54 = getelementptr inbounds %struct.poll_table_struct, ptr %pt.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxevents)
  %cmp9.not128.i = icmp sgt i32 %maxevents, 0
  %ws16.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 7
  %prev.i.i348 = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 3, i32 1
  %napi_id1.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 12
  %ovflist.i.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 6
  %lock = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 4
  %head1.i.i = getelementptr inbounds %struct.eventpoll, ptr %ep, i32 0, i32 1, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %ep_events_available.exit
  %timed_out.1 = phi i32 [ %timed_out.0, %ep_events_available.exit ], [ %timed_out.1.be, %while.cond.backedge ]
  %eavail.0 = phi i32 [ %52, %ep_events_available.exit ], [ %eavail.0.be, %while.cond.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eavail.0)
  %tobool108.not = icmp eq i32 %eavail.0, 0
  br i1 %tobool108.not, label %while.cond.if.end114_crit_edge, label %if.then109

while.cond.if.end114_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then109:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %txlist.i) #9
  %55 = ptrtoint ptr %txlist.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %txlist.i, ptr %txlist.i, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %txlist.i, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pt.i) #9
  %57 = call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %stack.i.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %and1.i.i.i.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then109.if.end.i_crit_edge, label %fatal_signal_pending.exit.i

if.then109.if.end.i_crit_edge:                    ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

fatal_signal_pending.exit.i:                      ; preds = %if.then109
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 116, i32 1
  %65 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %signal.i.i.i, align 4
  %67 = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end.i_crit_edge, label %ep_send_events.exit.thread

fatal_signal_pending.exit.i.if.end.i_crit_edge:   ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

ep_send_events.exit.thread:                       ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pt.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %txlist.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %fatal_signal_pending.exit.i.if.end.i_crit_edge, %if.then109.if.end.i_crit_edge
  %68 = ptrtoint ptr %pt.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %pt.i, align 4
  %69 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %54, align 4
  call void @mutex_lock_nested(ptr noundef %ep, i32 noundef 0) #9
  call fastcc void @ep_start_scan(ptr noundef %ep, ptr noundef nonnull %txlist.i) #9
  %70 = ptrtoint ptr %txlist.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %txlist.i, align 4
  %cmp.not127.i = icmp ne ptr %71, %txlist.i
  %or.cond129.i = and i1 %cmp9.not128.i, %cmp.not127.i
  br i1 %or.cond129.i, label %if.end.i.if.end11.i_crit_edge, label %if.end.i.ep_send_events.exit_crit_edge

if.end.i.ep_send_events.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_send_events.exit

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %cleanup.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %events.addr.0132.i = phi ptr [ %events.addr.1.i, %cleanup.i.if.end11.i_crit_edge ], [ %events, %if.end.i.if.end11.i_crit_edge ]
  %.pn.in131.i = phi ptr [ %.pn133.i, %cleanup.i.if.end11.i_crit_edge ], [ %71, %if.end.i.if.end11.i_crit_edge ]
  %res.0130.i = phi i32 [ %res.1.i, %cleanup.i.if.end11.i_crit_edge ], [ 0, %if.end.i.if.end11.i_crit_edge ]
  %72 = ptrtoint ptr %.pn.in131.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn133.i = load ptr, ptr %.pn.in131.i, align 4
  %ws.i.i = getelementptr i8, ptr %.pn.in131.i, i32 36
  %73 = ptrtoint ptr %ws.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %ws.i.i, align 8
  %ep.i.i = getelementptr i8, ptr %.pn.in131.i, i32 24
  %75 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ep.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.mutex, ptr %76, i32 0, i32 5
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i85.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i85.i, label %lor.lhs.false.i.i, label %if.end11.i.ep_wakeup_source.exit.i_crit_edge

if.end11.i.ep_wakeup_source.exit.i_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end11.i
  %call2.i.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge

lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call4.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.ep_wakeup_source.exit.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b12.i.i = load i1, ptr @ep_wakeup_source.__warned, align 1
  br i1 %.b12.i.i, label %land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge, label %if.then.i.i

land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_wakeup_source.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 576, ptr noundef nonnull @.str.24) #9
  br label %ep_wakeup_source.exit.i

ep_wakeup_source.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true6.i.i.ep_wakeup_source.exit.i_crit_edge, %land.lhs.true.i.i.ep_wakeup_source.exit.i_crit_edge, %lor.lhs.false.i.i.ep_wakeup_source.exit.i_crit_edge, %if.end11.i.ep_wakeup_source.exit.i_crit_edge
  %tobool13.not.i = icmp eq ptr %74, null
  br i1 %tobool13.not.i, label %ep_wakeup_source.exit.i.if.end18.i_crit_edge, label %if.then14.i

ep_wakeup_source.exit.i.if.end18.i_crit_edge:     ; preds = %ep_wakeup_source.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then14.i:                                      ; preds = %ep_wakeup_source.exit.i
  %active.i = getelementptr inbounds %struct.wakeup_source, ptr %74, i32 0, i32 18
  %77 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i = load i8, ptr %active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.then14.i.if.end17.i_crit_edge, label %if.then15.i

if.then14.i.if.end17.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %ws16.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ws16.i, align 4
  call void @__pm_stay_awake(ptr noundef %79) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.then14.i.if.end17.i_crit_edge
  call void @__pm_relax(ptr noundef nonnull %74) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end17.i, %ep_wakeup_source.exit.i.if.end18.i_crit_edge
  %call.i.i86.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in131.i) #9
  br i1 %call.i.i86.i, label %if.end.i.i.i, label %if.end18.i.list_del_init.exit.i_crit_edge

if.end18.i.list_del_init.exit.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in131.i, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i.i.i, align 4
  %82 = ptrtoint ptr %.pn.in131.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %.pn.in131.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev1.i.i.i.i, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %83, ptr %81, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end18.i.list_del_init.exit.i_crit_edge
  %86 = ptrtoint ptr %.pn.in131.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %.pn.in131.i, ptr %.pn.in131.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in131.i, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %.pn.in131.i, ptr %prev.i3.i.i, align 4
  %ffd.i.i = getelementptr i8, ptr %.pn.in131.i, i32 12
  %88 = ptrtoint ptr %ffd.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ffd.i.i, align 8
  %event.i.i = getelementptr i8, ptr %.pn.in131.i, i32 44
  %90 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %event.i.i, align 8
  %92 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %54, align 4
  %f_op.i.i.i = getelementptr inbounds %struct.file, ptr %89, i32 0, i32 3
  %93 = ptrtoint ptr %f_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %f_op.i.i.i, align 4
  %cmp.i.not.i.i349 = icmp eq ptr %94, @eventpoll_fops
  br i1 %cmp.i.not.i.i349, label %if.else.i.i, label %if.then.i88.i

if.then.i88.i:                                    ; preds = %list_del_init.exit.i
  %poll.i.i.i = getelementptr inbounds %struct.file_operations, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %poll.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %poll.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i.i, label %if.then.i88.i.ep_item_poll.exit.i_crit_edge, label %if.end.i.i90.i, !prof !201

if.then.i88.i.ep_item_poll.exit.i_crit_edge:      ; preds = %if.then.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_item_poll.exit.i

if.end.i.i90.i:                                   ; preds = %if.then.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i89.i = call i32 %96(ptr noundef %89, ptr noundef nonnull %pt.i) #9
  br label %ep_item_poll.exit.i

if.else.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i = call fastcc i32 @__ep_eventpoll_poll(ptr noundef %89, ptr noundef nonnull %pt.i, i32 noundef 1) #9
  br label %ep_item_poll.exit.i

ep_item_poll.exit.i:                              ; preds = %if.else.i.i, %if.end.i.i90.i, %if.then.i88.i.ep_item_poll.exit.i_crit_edge
  %res.0.i.i = phi i32 [ %call3.i.i, %if.else.i.i ], [ %call.i.i89.i, %if.end.i.i90.i ], [ 325, %if.then.i88.i.ep_item_poll.exit.i_crit_edge ]
  %97 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %event.i.i, align 8
  %and.i91.i = and i32 %98, %res.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91.i)
  %tobool21.not.i = icmp eq i32 %and.i91.i, 0
  br i1 %tobool21.not.i, label %ep_item_poll.exit.i.cleanup.i_crit_edge, label %if.end23.i

ep_item_poll.exit.i.cleanup.i_crit_edge:          ; preds = %ep_item_poll.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end23.i:                                       ; preds = %ep_item_poll.exit.i
  %data.i = getelementptr i8, ptr %.pn.in131.i, i32 52
  %99 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %data.i, align 8
  %call24.i = call ptr @epoll_put_uevent(i32 noundef %and.i91.i, i64 noundef %100, ptr noundef %events.addr.0132.i) #9
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end31.i

if.then26.i:                                      ; preds = %if.end23.i
  %101 = ptrtoint ptr %txlist.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %txlist.i, align 4
  %call.i.i92.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in131.i, ptr noundef nonnull %txlist.i, ptr noundef %102) #9
  br i1 %call.i.i92.i, label %if.end.i.i93.i, label %if.then26.i.list_add.exit.i_crit_edge

if.then26.i.list_add.exit.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i

if.end.i.i93.i:                                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %.pn.in131.i, ptr %prev1.i.i.i, align 4
  %104 = ptrtoint ptr %.pn.in131.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %102, ptr %.pn.in131.i, align 4
  %105 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %txlist.i, ptr %prev.i3.i.i, align 4
  %106 = ptrtoint ptr %txlist.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %.pn.in131.i, ptr %txlist.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i93.i, %if.then26.i.list_add.exit.i_crit_edge
  %107 = ptrtoint ptr %ws.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %ws.i.i, align 8
  %109 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ep.i.i, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.mutex, ptr %110, i32 0, i32 5
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i94.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i94.i, label %lor.lhs.false.i.i.i, label %list_add.exit.i.ep_wakeup_source.exit.i.i_crit_edge

list_add.exit.i.ep_wakeup_source.exit.i.i_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %list_add.exit.i
  %call2.i.i.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.ep_wakeup_source.exit.i.i_crit_edge

lor.lhs.false.i.i.i.ep_wakeup_source.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call4.i.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i.ep_wakeup_source.exit.i.i_crit_edge, label %land.lhs.true6.i.i.i

land.lhs.true.i.i.i.ep_wakeup_source.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i.i

land.lhs.true6.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b12.i.i.i = load i1, ptr @ep_wakeup_source.__warned, align 1
  br i1 %.b12.i.i.i, label %land.lhs.true6.i.i.i.ep_wakeup_source.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true6.i.i.i.ep_wakeup_source.exit.i.i_crit_edge: ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_wakeup_source.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 576, ptr noundef nonnull @.str.24) #9
  br label %ep_wakeup_source.exit.i.i

ep_wakeup_source.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true6.i.i.i.ep_wakeup_source.exit.i.i_crit_edge, %land.lhs.true.i.i.i.ep_wakeup_source.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.ep_wakeup_source.exit.i.i_crit_edge, %list_add.exit.i.ep_wakeup_source.exit.i.i_crit_edge
  %tobool.not.i95.i = icmp eq ptr %108, null
  br i1 %tobool.not.i95.i, label %ep_wakeup_source.exit.i.i.ep_pm_stay_awake.exit.i_crit_edge, label %if.then.i96.i

ep_wakeup_source.exit.i.i.ep_pm_stay_awake.exit.i_crit_edge: ; preds = %ep_wakeup_source.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_pm_stay_awake.exit.i

if.then.i96.i:                                    ; preds = %ep_wakeup_source.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__pm_stay_awake(ptr noundef nonnull %108) #9
  br label %ep_pm_stay_awake.exit.i

ep_pm_stay_awake.exit.i:                          ; preds = %if.then.i96.i, %ep_wakeup_source.exit.i.i.ep_pm_stay_awake.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0130.i)
  %tobool28.not.i = icmp eq i32 %res.0130.i, 0
  %spec.select410 = select i1 %tobool28.not.i, i32 -14, i32 %res.0130.i
  br label %ep_send_events.exit

if.end31.i:                                       ; preds = %if.end23.i
  %inc.i = add nsw i32 %res.0130.i, 1
  %111 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %event.i.i, align 8
  %and.i350 = and i32 %112, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i350)
  %tobool34.not.i = icmp eq i32 %and.i350, 0
  br i1 %tobool34.not.i, label %if.else.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %and38.i = and i32 %112, -268435456
  %113 = ptrtoint ptr %event.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and38.i, ptr %event.i.i, align 8
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %tobool42.not.i = icmp sgt i32 %112, -1
  br i1 %tobool42.not.i, label %if.then43.i, label %if.else.i.cleanup.i_crit_edge

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then43.i:                                      ; preds = %if.else.i
  %114 = ptrtoint ptr %prev.i.i348 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i348, align 4
  %call.i.i97.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in131.i, ptr noundef %115, ptr noundef %rdllist.i) #9
  br i1 %call.i.i97.i, label %if.end.i.i99.i, label %if.then43.i.list_add_tail.exit.i_crit_edge

if.then43.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i99.i:                                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %prev.i.i348 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %.pn.in131.i, ptr %prev.i.i348, align 4
  %117 = ptrtoint ptr %.pn.in131.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %rdllist.i, ptr %.pn.in131.i, align 4
  %118 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev.i3.i.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %.pn.in131.i, ptr %115, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i99.i, %if.then43.i.list_add_tail.exit.i_crit_edge
  %120 = ptrtoint ptr %ws.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile ptr, ptr %ws.i.i, align 8
  %122 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ep.i.i, align 4
  %dep_map.i.i102.i = getelementptr inbounds %struct.mutex, ptr %123, i32 0, i32 5
  %call.i.i.i103.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i102.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i103.i)
  %tobool.not.i.i104.i = icmp eq i32 %call.i.i.i103.i, 0
  br i1 %tobool.not.i.i104.i, label %lor.lhs.false.i.i107.i, label %list_add_tail.exit.i.ep_wakeup_source.exit.i115.i_crit_edge

list_add_tail.exit.i.ep_wakeup_source.exit.i115.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i115.i

lor.lhs.false.i.i107.i:                           ; preds = %list_add_tail.exit.i
  %call2.i.i105.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i105.i)
  %tobool3.not.i.i106.i = icmp eq i32 %call2.i.i105.i, 0
  br i1 %tobool3.not.i.i106.i, label %land.lhs.true.i.i110.i, label %lor.lhs.false.i.i107.i.ep_wakeup_source.exit.i115.i_crit_edge

lor.lhs.false.i.i107.i.ep_wakeup_source.exit.i115.i_crit_edge: ; preds = %lor.lhs.false.i.i107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i115.i

land.lhs.true.i.i110.i:                           ; preds = %lor.lhs.false.i.i107.i
  %call4.i.i108.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i108.i)
  %tobool5.not.i.i109.i = icmp eq i32 %call4.i.i108.i, 0
  br i1 %tobool5.not.i.i109.i, label %land.lhs.true.i.i110.i.ep_wakeup_source.exit.i115.i_crit_edge, label %land.lhs.true6.i.i112.i

land.lhs.true.i.i110.i.ep_wakeup_source.exit.i115.i_crit_edge: ; preds = %land.lhs.true.i.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i115.i

land.lhs.true6.i.i112.i:                          ; preds = %land.lhs.true.i.i110.i
  %.b12.i.i111.i = load i1, ptr @ep_wakeup_source.__warned, align 1
  br i1 %.b12.i.i111.i, label %land.lhs.true6.i.i112.i.ep_wakeup_source.exit.i115.i_crit_edge, label %if.then.i.i113.i

land.lhs.true6.i.i112.i.ep_wakeup_source.exit.i115.i_crit_edge: ; preds = %land.lhs.true6.i.i112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_wakeup_source.exit.i115.i

if.then.i.i113.i:                                 ; preds = %land.lhs.true6.i.i112.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ep_wakeup_source.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 576, ptr noundef nonnull @.str.24) #9
  br label %ep_wakeup_source.exit.i115.i

ep_wakeup_source.exit.i115.i:                     ; preds = %if.then.i.i113.i, %land.lhs.true6.i.i112.i.ep_wakeup_source.exit.i115.i_crit_edge, %land.lhs.true.i.i110.i.ep_wakeup_source.exit.i115.i_crit_edge, %lor.lhs.false.i.i107.i.ep_wakeup_source.exit.i115.i_crit_edge, %list_add_tail.exit.i.ep_wakeup_source.exit.i115.i_crit_edge
  %tobool.not.i114.i = icmp eq ptr %121, null
  br i1 %tobool.not.i114.i, label %ep_wakeup_source.exit.i115.i.cleanup.i_crit_edge, label %if.then.i116.i

ep_wakeup_source.exit.i115.i.cleanup.i_crit_edge: ; preds = %ep_wakeup_source.exit.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then.i116.i:                                   ; preds = %ep_wakeup_source.exit.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__pm_stay_awake(ptr noundef nonnull %121) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i116.i, %ep_wakeup_source.exit.i115.i.cleanup.i_crit_edge, %if.else.i.cleanup.i_crit_edge, %if.then35.i, %ep_item_poll.exit.i.cleanup.i_crit_edge
  %res.1.i = phi i32 [ %res.0130.i, %ep_item_poll.exit.i.cleanup.i_crit_edge ], [ %inc.i, %if.else.i.cleanup.i_crit_edge ], [ %inc.i, %if.then35.i ], [ %inc.i, %ep_wakeup_source.exit.i115.i.cleanup.i_crit_edge ], [ %inc.i, %if.then.i116.i ]
  %events.addr.1.i = phi ptr [ %events.addr.0132.i, %ep_item_poll.exit.i.cleanup.i_crit_edge ], [ %call24.i, %if.else.i.cleanup.i_crit_edge ], [ %call24.i, %if.then35.i ], [ %call24.i, %ep_wakeup_source.exit.i115.i.cleanup.i_crit_edge ], [ %call24.i, %if.then.i116.i ]
  %cmp.not.i = icmp ne ptr %.pn133.i, %txlist.i
  call void @__sanitizer_cov_trace_cmp4(i32 %res.1.i, i32 %maxevents)
  %cmp9.not.i = icmp slt i32 %res.1.i, %maxevents
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp9.not.i, i1 false
  br i1 %or.cond.i, label %cleanup.i.if.end11.i_crit_edge, label %cleanup.i.ep_send_events.exit_crit_edge

cleanup.i.ep_send_events.exit_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ep_send_events.exit

cleanup.i.if.end11.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

ep_send_events.exit:                              ; preds = %cleanup.i.ep_send_events.exit_crit_edge, %ep_pm_stay_awake.exit.i, %if.end.i.ep_send_events.exit_crit_edge
  %res.2.i = phi i32 [ 0, %if.end.i.ep_send_events.exit_crit_edge ], [ %spec.select410, %ep_pm_stay_awake.exit.i ], [ %res.1.i, %cleanup.i.ep_send_events.exit_crit_edge ]
  call fastcc void @ep_done_scan(ptr noundef %ep, ptr noundef nonnull %txlist.i) #9
  call void @mutex_unlock(ptr noundef %ep) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pt.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %txlist.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.2.i)
  %tobool111.not = icmp eq i32 %res.2.i, 0
  br i1 %tobool111.not, label %ep_send_events.exit.if.end114_crit_edge, label %ep_send_events.exit.cleanup_crit_edge

ep_send_events.exit.cleanup_crit_edge:            ; preds = %ep_send_events.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ep_send_events.exit.if.end114_crit_edge:          ; preds = %ep_send_events.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.end114:                                        ; preds = %ep_send_events.exit.if.end114_crit_edge, %while.cond.if.end114_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timed_out.1)
  %tobool115.not = icmp eq i32 %timed_out.1, 0
  br i1 %tobool115.not, label %if.end117, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end117:                                        ; preds = %if.end114
  %124 = ptrtoint ptr %napi_id1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %napi_id1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %125)
  %cmp.i351 = icmp ugt i32 %125, 4
  br i1 %cmp.i351, label %land.lhs.true.i, label %if.end117.if.end122_crit_edge

if.end117.if.end122_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

land.lhs.true.i:                                  ; preds = %if.end117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_net_busy_poll to i32))
  %126 = load i32, ptr @sysctl_net_busy_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.i.not.i = icmp eq i32 %126, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.end122_crit_edge, label %if.then.i

land.lhs.true.i.if.end122_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @napi_busy_loop(i32 noundef %125, ptr noundef nonnull @ep_busy_loop_end, ptr noundef %ep, i1 noundef zeroext false, i16 noundef zeroext 8) #9
  %127 = ptrtoint ptr %rdllist.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %rdllist.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !257
  %cmp.i.not.i.i.i = icmp eq ptr %128, %rdllist.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %if.then.i.while.cond.backedge_crit_edge

if.then.i.while.cond.backedge_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

list_empty_careful.exit.i.i:                      ; preds = %if.then.i
  %129 = ptrtoint ptr %prev.i.i348 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i.i348, align 4
  %cmp.i.not.i.i353 = icmp eq ptr %130, %rdllist.i
  br i1 %cmp.i.not.i.i353, label %ep_events_available.exit.i, label %list_empty_careful.exit.i.i.while.cond.backedge_crit_edge

list_empty_careful.exit.i.i.while.cond.backedge_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

ep_events_available.exit.i:                       ; preds = %list_empty_careful.exit.i.i
  %131 = ptrtoint ptr %ovflist.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %ovflist.i.i, align 8
  %cmp.i.not.i354 = icmp eq ptr %132, inttoptr (i32 -1 to ptr)
  br i1 %cmp.i.not.i354, label %if.end.i355, label %ep_events_available.exit.i.while.cond.backedge_crit_edge

ep_events_available.exit.i.while.cond.backedge_crit_edge: ; preds = %ep_events_available.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end.i355:                                      ; preds = %ep_events_available.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %napi_id1.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %napi_id1.i, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end.i355, %land.lhs.true.i.if.end122_crit_edge, %if.end117.if.end122_crit_edge
  %134 = call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i358 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i358 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %stack.i.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %139, align 4
  %142 = and i32 %141, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not.i359 = icmp eq i32 %142, 0
  br i1 %tobool.not.i359, label %signal_pending.exit, label %if.end122.cleanup_crit_edge, !prof !206

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

signal_pending.exit:                              ; preds = %if.end122
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %139, align 4
  %and1.i.i.i.i.i = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool125.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool125.not, label %do.body128, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body128:                                       ; preds = %signal_pending.exit
  %145 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %137, ptr %0, align 4
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %147 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %2, ptr %2, align 4
  %148 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %2, ptr %3, align 4
  %149 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %wait, align 4
  call void @_raw_write_lock_irq(ptr noundef %lock) #9
  br label %__here

__here:                                           ; preds = %do.body128
  %150 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %151, i32 0, i32 212
  %152 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 ptrtoint (ptr blockaddress(@ep_poll, %__here) to i32), ptr %task_state_change, align 4
  %153 = load ptr, ptr %task, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 1, ptr %153, align 128
  %155 = ptrtoint ptr %rdllist.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile ptr, ptr %rdllist.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !257
  %cmp.i.not.i.i363 = icmp eq ptr %156, %rdllist.i
  br i1 %cmp.i.not.i.i363, label %list_empty_careful.exit.i366, label %__here.do.body216.critedge_crit_edge

__here.do.body216.critedge_crit_edge:             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body216.critedge

list_empty_careful.exit.i366:                     ; preds = %__here
  %157 = ptrtoint ptr %prev.i.i348 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %prev.i.i348, align 4
  %cmp.i.not.i365 = icmp eq ptr %158, %rdllist.i
  br i1 %cmp.i.not.i365, label %ep_events_available.exit371, label %list_empty_careful.exit.i366.do.body216.critedge_crit_edge

list_empty_careful.exit.i366.do.body216.critedge_crit_edge: ; preds = %list_empty_careful.exit.i366
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body216.critedge

ep_events_available.exit371:                      ; preds = %list_empty_careful.exit.i366
  %159 = ptrtoint ptr %ovflist.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile ptr, ptr %ovflist.i.i, align 8
  %cmp.i368.not = icmp eq ptr %160, inttoptr (i32 -1 to ptr)
  br i1 %cmp.i368.not, label %if.then205, label %ep_events_available.exit371.do.body216.critedge_crit_edge

ep_events_available.exit371.do.body216.critedge_crit_edge: ; preds = %ep_events_available.exit371
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body216.critedge

if.then205:                                       ; preds = %ep_events_available.exit371
  %161 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %wait, align 4
  %or.i = or i32 %162, 1
  store i32 %or.i, ptr %wait, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then205
  %head.0.i.i = phi ptr [ %head1.i.i, %if.then205 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %163 = ptrtoint ptr %head.0.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pn.i.i = load ptr, ptr %head.0.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %head1.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %wq.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -12
  %164 = ptrtoint ptr %wq.0.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %wq.0.i.i, align 4
  %and.i.i372 = and i32 %165, 32
  %tobool.not.i.i373 = icmp eq i32 %and.i.i372, 0
  br i1 %tobool.not.i.i373, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %.pn.lcssa.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %head1.i.i, %for.cond.i.i.for.end.i.i_crit_edge ]
  %call.i.i.i.i374 = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %head.0.i.i, ptr noundef %.pn.lcssa.i.i) #9
  br i1 %call.i.i.i.i374, label %if.end.i.i.i.i, label %for.end.i.i.__add_wait_queue_exclusive.exit_crit_edge

for.end.i.i.__add_wait_queue_exclusive.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__add_wait_queue_exclusive.exit

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i.i375 = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i.i, i32 0, i32 1
  %166 = ptrtoint ptr %prev1.i.i.i.i375 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %2, ptr %prev1.i.i.i.i375, align 4
  %167 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %.pn.lcssa.i.i, ptr %2, align 4
  %168 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %head.0.i.i, ptr %3, align 4
  %169 = ptrtoint ptr %head.0.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %2, ptr %head.0.i.i, align 4
  br label %__add_wait_queue_exclusive.exit

__add_wait_queue_exclusive.exit:                  ; preds = %if.end.i.i.i.i, %for.end.i.i.__add_wait_queue_exclusive.exit_crit_edge
  call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  %call210 = call i32 @schedule_hrtimeout_range(ptr noundef %to.0, i64 noundef %slack.0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  %lnot.ext213 = zext i1 %tobool211.not to i32
  br label %__here266

do.body216.critedge:                              ; preds = %ep_events_available.exit371.do.body216.critedge_crit_edge, %list_empty_careful.exit.i366.do.body216.critedge_crit_edge, %__here.do.body216.critedge_crit_edge
  call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  br label %__here266

__here266:                                        ; preds = %do.body216.critedge, %__add_wait_queue_exclusive.exit
  %timed_out.2 = phi i32 [ %lnot.ext213, %__add_wait_queue_exclusive.exit ], [ 0, %do.body216.critedge ]
  %170 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %task, align 8
  %task_state_change270 = getelementptr inbounds %struct.task_struct, ptr %171, i32 0, i32 212
  %172 = ptrtoint ptr %task_state_change270 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 ptrtoint (ptr blockaddress(@ep_poll, %__here266) to i32), ptr %task_state_change270, align 4
  %173 = load ptr, ptr %task, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile i32 0, ptr %173, align 128
  %175 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile ptr, ptr %2, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !257
  %cmp.i.not.i376 = icmp eq ptr %176, %2
  br i1 %cmp.i.not.i376, label %list_empty_careful.exit, label %__here266.if.then290_crit_edge

__here266.if.then290_crit_edge:                   ; preds = %__here266
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then290

list_empty_careful.exit:                          ; preds = %__here266
  %177 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %3, align 4
  %cmp.i378.not = icmp eq ptr %178, %2
  br i1 %cmp.i378.not, label %list_empty_careful.exit.while.cond.backedge_crit_edge, label %list_empty_careful.exit.if.then290_crit_edge

list_empty_careful.exit.if.then290_crit_edge:     ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then290

list_empty_careful.exit.while.cond.backedge_crit_edge: ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %__remove_wait_queue.exit, %list_empty_careful.exit.while.cond.backedge_crit_edge, %ep_events_available.exit.i.while.cond.backedge_crit_edge, %list_empty_careful.exit.i.i.while.cond.backedge_crit_edge, %if.then.i.while.cond.backedge_crit_edge
  %timed_out.1.be = phi i32 [ 0, %if.then.i.while.cond.backedge_crit_edge ], [ 0, %list_empty_careful.exit.i.i.while.cond.backedge_crit_edge ], [ 0, %ep_events_available.exit.i.while.cond.backedge_crit_edge ], [ %timed_out.2, %__remove_wait_queue.exit ], [ %timed_out.2, %list_empty_careful.exit.while.cond.backedge_crit_edge ]
  %eavail.0.be = phi i32 [ 1, %if.then.i.while.cond.backedge_crit_edge ], [ 1, %list_empty_careful.exit.i.i.while.cond.backedge_crit_edge ], [ 1, %ep_events_available.exit.i.while.cond.backedge_crit_edge ], [ %eavail.1, %__remove_wait_queue.exit ], [ 1, %list_empty_careful.exit.while.cond.backedge_crit_edge ]
  br label %while.cond

if.then290:                                       ; preds = %list_empty_careful.exit.if.then290_crit_edge, %__here266.if.then290_crit_edge
  call void @_raw_write_lock_irq(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timed_out.2)
  %tobool292.not = icmp eq i32 %timed_out.2, 0
  br i1 %tobool292.not, label %if.then290.if.end296_crit_edge, label %if.then293

if.then290.if.end296_crit_edge:                   ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end296

if.then293:                                       ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #11
  %179 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile ptr, ptr %2, align 4
  %cmp.i380 = icmp eq ptr %180, %2
  %conv.i = zext i1 %cmp.i380 to i32
  br label %if.end296

if.end296:                                        ; preds = %if.then293, %if.then290.if.end296_crit_edge
  %eavail.1 = phi i32 [ %conv.i, %if.then293 ], [ 1, %if.then290.if.end296_crit_edge ]
  %call.i.i.i381 = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i.i381, label %if.end.i.i.i384, label %if.end296.__remove_wait_queue.exit_crit_edge

if.end296.__remove_wait_queue.exit_crit_edge:     ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #11
  br label %__remove_wait_queue.exit

if.end.i.i.i384:                                  ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #11
  %181 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %3, align 4
  %183 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i383 = getelementptr inbounds %struct.list_head, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %prev1.i.i.i.i383 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %182, ptr %prev1.i.i.i.i383, align 4
  %186 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile ptr %184, ptr %182, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i384, %if.end296.__remove_wait_queue.exit_crit_edge
  %187 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %188 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  call void @_raw_write_unlock_irq(ptr noundef %lock) #9
  br label %while.cond.backedge

cleanup:                                          ; preds = %signal_pending.exit.cleanup_crit_edge, %if.end122.cleanup_crit_edge, %if.end114.cleanup_crit_edge, %ep_send_events.exit.cleanup_crit_edge, %ep_send_events.exit.thread
  %retval.0 = phi i32 [ -4, %ep_send_events.exit.thread ], [ -4, %if.end122.cleanup_crit_edge ], [ -4, %signal_pending.exit.cleanup_crit_edge ], [ 0, %if.end114.cleanup_crit_edge ], [ %res.2.i, %ep_send_events.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expires) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @select_estimate_accuracy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @epoll_put_uevent(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_busy_loop(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ep_busy_loop_end(ptr noundef %p, i32 noundef %start_time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rdllist.i = getelementptr inbounds %struct.eventpoll, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %rdllist.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rdllist.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !257
  %cmp.i.not.i.i = icmp eq ptr %1, %rdllist.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

list_empty_careful.exit.i:                        ; preds = %entry
  %prev.i.i = getelementptr inbounds %struct.eventpoll, ptr %p, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %rdllist.i
  br i1 %cmp.i.not.i, label %ep_events_available.exit, label %list_empty_careful.exit.i.lor.end_crit_edge

list_empty_careful.exit.i.lor.end_crit_edge:      ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

ep_events_available.exit:                         ; preds = %list_empty_careful.exit.i
  %ovflist.i = getelementptr inbounds %struct.eventpoll, ptr %p, i32 0, i32 6
  %4 = ptrtoint ptr %ovflist.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ovflist.i, align 8
  %cmp.i.not = icmp eq ptr %5, inttoptr (i32 -1 to ptr)
  br i1 %cmp.i.not, label %lor.rhs, label %ep_events_available.exit.lor.end_crit_edge

ep_events_available.exit.lor.end_crit_edge:       ; preds = %ep_events_available.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %ep_events_available.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_net_busy_poll to i32))
  %6 = load volatile i32, ptr @sysctl_net_busy_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %lor.rhs.lor.end_crit_edge, label %if.then.i

lor.rhs.lor.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

if.then.i:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %6, %start_time
  %call.i.i.i = tail call i64 @sched_clock() #9
  %shr.i.i = lshr i64 %call.i.i.i, 10
  %conv.i.i = trunc i64 %shr.i.i to i32
  %sub.i = sub i32 %add.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i2 = icmp slt i32 %sub.i, 0
  br label %lor.end

lor.end:                                          ; preds = %if.then.i, %lor.rhs.lor.end_crit_edge, %ep_events_available.exit.lor.end_crit_edge, %list_empty_careful.exit.i.lor.end_crit_edge, %entry.lor.end_crit_edge
  %7 = phi i1 [ true, %ep_events_available.exit.lor.end_crit_edge ], [ %cmp.i2, %if.then.i ], [ true, %lor.rhs.lor.end_crit_edge ], [ true, %list_empty_careful.exit.i.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ]
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timespec64_add_safe(ptr sret(%struct.timespec64) align 8, [2 x i64], [2 x i64]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_epoll_pwait(i32 noundef %epfd, ptr noundef %events, i32 noundef %maxevents, ptr noundef %to, ptr noundef %sigmask, i32 noundef %sigsetsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @set_user_sigmask(ptr noundef %sigmask, i32 noundef %sigsetsize) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %maxevents, -134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 -134217727, i32 %0)
  %1 = icmp ult i32 %0, -134217727
  br i1 %1, label %if.end.do_epoll_wait.exit.thread_crit_edge, label %if.end.i

if.end.do_epoll_wait.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_epoll_wait.exit.thread

if.end.i:                                         ; preds = %if.end
  %mul.i = shl nuw nsw i32 %maxevents, 4
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %events, i32 %mul.i, i32 -1226833920) #12, !srcloc !232
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp3.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp3.i, label %if.end5.i, label %if.end.i.do_epoll_wait.exit.thread_crit_edge

if.end.i.do_epoll_wait.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_epoll_wait.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @__fdget(i32 noundef %epfd) #9, !noalias !258
  %and.i.i.i = and i32 %call.i.i, -4
  %3 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.end5.i.do_epoll_wait.exit.thread_crit_edge, label %if.end8.i

if.end5.i.do_epoll_wait.exit.thread_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_epoll_wait.exit.thread

if.end8.i:                                        ; preds = %if.end5.i
  %f_op.i.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %f_op.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_op.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, @eventpoll_fops
  br i1 %cmp.i.not.i, label %if.end12.i, label %if.end8.i.error_fput.i_crit_edge

if.end8.i.error_fput.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_fput.i

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %private_data.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %call14.i = tail call fastcc i32 @ep_poll(ptr noundef %7, ptr noundef %events, i32 noundef %maxevents, ptr noundef %to) #9
  br label %error_fput.i

error_fput.i:                                     ; preds = %if.end12.i, %if.end8.i.error_fput.i_crit_edge
  %error.0.i = phi i32 [ %call14.i, %if.end12.i ], [ -22, %if.end8.i.error_fput.i_crit_edge ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %error_fput.i.do_epoll_wait.exit_crit_edge, label %if.then.i.i

error_fput.i.do_epoll_wait.exit_crit_edge:        ; preds = %error_fput.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_epoll_wait.exit

if.then.i.i:                                      ; preds = %error_fput.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fput(ptr noundef nonnull %3) #9
  br label %do_epoll_wait.exit

do_epoll_wait.exit.thread:                        ; preds = %if.end5.i.do_epoll_wait.exit.thread_crit_edge, %if.end.i.do_epoll_wait.exit.thread_crit_edge, %if.end.do_epoll_wait.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -9, %if.end5.i.do_epoll_wait.exit.thread_crit_edge ], [ -14, %if.end.i.do_epoll_wait.exit.thread_crit_edge ], [ -22, %if.end.do_epoll_wait.exit.thread_crit_edge ]
  %8 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i511 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i511 to ptr
  br label %if.else.i

do_epoll_wait.exit:                               ; preds = %if.then.i.i, %error_fput.i.do_epoll_wait.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %error.0.i)
  %cmp = icmp eq i32 %error.0.i, -4
  %10 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i5 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i5 to ptr
  br i1 %cmp, label %if.then.i, label %do_epoll_wait.exit.if.else.i_crit_edge

do_epoll_wait.exit.if.else.i_crit_edge:           ; preds = %do_epoll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %do_epoll_wait.exit
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stack.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i6 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i6, label %signal_pending.exit.i, label %if.then.i.cleanup_crit_edge, !prof !206

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

signal_pending.exit.i:                            ; preds = %if.then.i
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %and1.i.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %signal_pending.exit.i.cleanup_crit_edge, !prof !201

signal_pending.exit.i.cleanup_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 519, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.else.i:                                        ; preds = %do_epoll_wait.exit.if.else.i_crit_edge, %do_epoll_wait.exit.thread
  %21 = phi ptr [ %9, %do_epoll_wait.exit.thread ], [ %11, %do_epoll_wait.exit.if.else.i_crit_edge ]
  %retval.0.i13 = phi i32 [ %retval.0.i.ph, %do_epoll_wait.exit.thread ], [ %error.0.i, %do_epoll_wait.exit.if.else.i_crit_edge ]
  %call.i.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.cleanup_crit_edge, label %if.then.i.i8

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i8:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call i32 @llvm.read_register.i32(metadata !191) #9
  %and.i.i.i7 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i7 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i, align 8
  %saved_sigmask.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 115
  tail call void @__set_current_blocked(ptr noundef %saved_sigmask.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i8, %if.else.i.cleanup_crit_edge, %do.end.i, %signal_pending.exit.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -4, %if.then.i.cleanup_crit_edge ], [ -4, %signal_pending.exit.i.cleanup_crit_edge ], [ -4, %do.end.i ], [ %retval.0.i13, %if.else.i.cleanup_crit_edge ], [ %retval.0.i13, %if.then.i.i8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_user_sigmask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @poll_select_set_timeout(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !80, !82, !83, !85, !87, !89, !91, !92, !93, !94, !95, !97, !99, !101, !102, !104, !105, !107, !108, !110, !111, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !129, !131, !133, !135, !137, !139, !140, !141, !142, !143, !144, !145, !146, !148, !149, !151, !153, !154, !155, !156, !157, !158, !160, !162, !164, !165, !166, !167, !168, !169, !170, !172, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189}
!llvm.named.register.sp = !{!191}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/eventpoll.c", i32 2008, i32 1}
!2 = !{ptr @event_enter__epoll_create1, !1, !"event_enter__epoll_create1", i1 false, i1 false}
!3 = !{ptr @__event_enter__epoll_create1, !1, !"__event_enter__epoll_create1", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__epoll_create1, !1, !"event_exit__epoll_create1", i1 false, i1 false}
!6 = !{ptr @__event_exit__epoll_create1, !1, !"__event_exit__epoll_create1", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__epoll_create1, !1, !"__syscall_meta__epoll_create1", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__epoll_create1, !1, !"__p_syscall_meta__epoll_create1", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/eventpoll.c", i32 2013, i32 1}
!12 = !{ptr @event_enter__epoll_create, !11, !"event_enter__epoll_create", i1 false, i1 false}
!13 = !{ptr @__event_enter__epoll_create, !11, !"__event_enter__epoll_create", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__epoll_create, !11, !"event_exit__epoll_create", i1 false, i1 false}
!16 = !{ptr @__event_exit__epoll_create, !11, !"__event_exit__epoll_create", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__epoll_create, !11, !"__syscall_meta__epoll_create", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__epoll_create, !11, !"__p_syscall_meta__epoll_create", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/eventpoll.c", i32 2183, i32 1}
!22 = !{ptr @event_enter__epoll_ctl, !21, !"event_enter__epoll_ctl", i1 false, i1 false}
!23 = !{ptr @__event_enter__epoll_ctl, !21, !"__event_enter__epoll_ctl", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_exit__epoll_ctl, !21, !"event_exit__epoll_ctl", i1 false, i1 false}
!26 = !{ptr @__event_exit__epoll_ctl, !21, !"__event_exit__epoll_ctl", i1 false, i1 false}
!27 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__syscall_meta__epoll_ctl, !21, !"__syscall_meta__epoll_ctl", i1 false, i1 false}
!29 = !{ptr @__p_syscall_meta__epoll_ctl, !21, !"__p_syscall_meta__epoll_ctl", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/eventpoll.c", i32 2241, i32 1}
!32 = !{ptr @event_enter__epoll_wait, !31, !"event_enter__epoll_wait", i1 false, i1 false}
!33 = !{ptr @__event_enter__epoll_wait, !31, !"__event_enter__epoll_wait", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @event_exit__epoll_wait, !31, !"event_exit__epoll_wait", i1 false, i1 false}
!36 = !{ptr @__event_exit__epoll_wait, !31, !"__event_exit__epoll_wait", i1 false, i1 false}
!37 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__syscall_meta__epoll_wait, !31, !"__syscall_meta__epoll_wait", i1 false, i1 false}
!39 = !{ptr @__p_syscall_meta__epoll_wait, !31, !"__p_syscall_meta__epoll_wait", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/eventpoll.c", i32 2275, i32 1}
!42 = !{ptr @event_enter__epoll_pwait, !41, !"event_enter__epoll_pwait", i1 false, i1 false}
!43 = !{ptr @__event_enter__epoll_pwait, !41, !"__event_enter__epoll_pwait", i1 false, i1 false}
!44 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @event_exit__epoll_pwait, !41, !"event_exit__epoll_pwait", i1 false, i1 false}
!46 = !{ptr @__event_exit__epoll_pwait, !41, !"__event_exit__epoll_pwait", i1 false, i1 false}
!47 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__syscall_meta__epoll_pwait, !41, !"__syscall_meta__epoll_pwait", i1 false, i1 false}
!49 = !{ptr @__p_syscall_meta__epoll_pwait, !41, !"__p_syscall_meta__epoll_pwait", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/eventpoll.c", i32 2286, i32 1}
!52 = !{ptr @event_enter__epoll_pwait2, !51, !"event_enter__epoll_pwait2", i1 false, i1 false}
!53 = !{ptr @__event_enter__epoll_pwait2, !51, !"__event_enter__epoll_pwait2", i1 false, i1 false}
!54 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @event_exit__epoll_pwait2, !51, !"event_exit__epoll_pwait2", i1 false, i1 false}
!56 = !{ptr @__event_exit__epoll_pwait2, !51, !"__event_exit__epoll_pwait2", i1 false, i1 false}
!57 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__syscall_meta__epoll_pwait2, !51, !"__syscall_meta__epoll_pwait2", i1 false, i1 false}
!59 = !{ptr @__p_syscall_meta__epoll_pwait2, !51, !"__p_syscall_meta__epoll_pwait2", i1 false, i1 false}
!60 = !{ptr @__initcall__kmod_eventpoll__589_2395_eventpoll_init5, !61, !"__initcall__kmod_eventpoll__589_2395_eventpoll_init5", i1 false, i1 false}
!61 = !{!"../fs/eventpoll.c", i32 2395, i32 1}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/eventpoll.c", i32 246, i32 8}
!64 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @epmutex, !63, !"epmutex", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../fs/eventpoll.c", i32 692, i32 2}
!68 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!71 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!75 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pwq_cache, !77, !"pwq_cache", i1 false, i1 false}
!77 = !{!"../fs/eventpoll.c", i32 257, i32 27}
!78 = !{ptr @ephead_cache, !79, !"ephead_cache", i1 false, i1 false}
!79 = !{!"../fs/eventpoll.c", i32 269, i32 27}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../fs/eventpoll.c", i32 576, i32 9}
!82 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @epi_cache, !84, !"epi_cache", i1 false, i1 false}
!84 = !{!"../fs/eventpoll.c", i32 254, i32 27}
!85 = !{ptr @eventpoll_fops, !86, !"eventpoll_fops", i1 false, i1 false}
!86 = !{!"../fs/eventpoll.c", i32 889, i32 37}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../fs/eventpoll.c", i32 620, i32 2}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/eventpoll.c", i32 875, i32 17}
!91 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @types__epoll_create1, !1, !"types__epoll_create1", i1 false, i1 false}
!93 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @args__epoll_create1, !1, !"args__epoll_create1", i1 false, i1 false}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/eventpoll.c", i32 1991, i32 28}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../fs/eventpoll.c", i32 942, i32 9}
!99 = !{ptr @ep_alloc.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../fs/eventpoll.c", i32 948, i32 2}
!101 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ep_alloc.__key.30, !103, !"__key", i1 false, i1 false}
!103 = !{!"../fs/eventpoll.c", i32 949, i32 2}
!104 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ep_alloc.__key.32, !106, !"__key", i1 false, i1 false}
!106 = !{!"../fs/eventpoll.c", i32 950, i32 2}
!107 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ep_alloc.__key.34, !109, !"__key", i1 false, i1 false}
!109 = !{!"../fs/eventpoll.c", i32 951, i32 2}
!110 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @types__epoll_create, !11, !"types__epoll_create", i1 false, i1 false}
!112 = !{ptr @.str.36, !11, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @args__epoll_create, !11, !"args__epoll_create", i1 false, i1 false}
!114 = !{ptr @loop_check_gen, !115, !"loop_check_gen", i1 false, i1 false}
!115 = !{!"../fs/eventpoll.c", i32 248, i32 12}
!116 = !{ptr @inserting_into, !117, !"inserting_into", i1 false, i1 false}
!117 = !{!"../fs/eventpoll.c", i32 251, i32 26}
!118 = !{ptr @tfile_check_list, !119, !"tfile_check_list", i1 false, i1 false}
!119 = !{!"../fs/eventpoll.c", i32 267, i32 29}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../fs/eventpoll.c", i32 1456, i32 2}
!122 = !{ptr @max_user_watches, !123, !"max_user_watches", i1 false, i1 false}
!123 = !{!"../fs/eventpoll.c", i32 241, i32 13}
!124 = !{ptr @path_count, !125, !"path_count", i1 false, i1 false}
!125 = !{!"../fs/eventpoll.c", i32 1302, i32 12}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../fs/eventpoll.c", i32 1332, i32 2}
!128 = !{ptr @.str.37, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @path_limits, !130, !"path_limits", i1 false, i1 false}
!130 = !{!"../fs/eventpoll.c", i32 1301, i32 18}
!131 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/eventpoll.c", i32 1376, i32 46}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../fs/eventpoll.c", i32 599, i32 7}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../fs/eventpoll.c", i32 1571, i32 2}
!137 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!138 = !{!"../fs/eventpoll.c", i32 291, i32 25}
!139 = !{ptr @.str.39, !21, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @types__epoll_ctl, !21, !"types__epoll_ctl", i1 false, i1 false}
!141 = !{ptr @.str.40, !21, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.41, !21, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.42, !21, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.43, !21, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @args__epoll_ctl, !21, !"args__epoll_ctl", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!148 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!151 = !{ptr @.str.46, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!153 = !{ptr @types__epoll_wait, !31, !"types__epoll_wait", i1 false, i1 false}
!154 = !{ptr @.str.47, !31, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.48, !31, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.49, !31, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @args__epoll_wait, !31, !"args__epoll_wait", i1 false, i1 false}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../fs/eventpoll.c", i32 1775, i32 2}
!160 = distinct !{null, !161, !"__already_done", i1 false, i1 false}
!161 = !{!"../fs/eventpoll.c", i32 1840, i32 3}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../fs/eventpoll.c", i32 1858, i32 3}
!164 = !{ptr @.str.52, !41, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.53, !41, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @types__epoll_pwait, !41, !"types__epoll_pwait", i1 false, i1 false}
!167 = !{ptr @.str.54, !41, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.55, !41, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @args__epoll_pwait, !41, !"args__epoll_pwait", i1 false, i1 false}
!170 = !{ptr @.str.56, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../include/linux/sched/signal.h", i32 519, i32 3}
!172 = !{ptr @.str.57, !51, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @types__epoll_pwait2, !51, !"types__epoll_pwait2", i1 false, i1 false}
!174 = !{ptr @args__epoll_pwait2, !51, !"args__epoll_pwait2", i1 false, i1 false}
!175 = !{ptr @.str.58, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/eventpoll.c", i32 2382, i32 32}
!177 = !{ptr @.str.59, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/eventpoll.c", i32 2386, i32 32}
!179 = !{ptr @.str.60, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/eventpoll.c", i32 2390, i32 35}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/eventpoll.c", i32 325, i32 18}
!183 = !{ptr @.str.62, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/eventpoll.c", i32 312, i32 15}
!185 = !{ptr @epoll_table, !186, !"epoll_table", i1 false, i1 false}
!186 = !{!"../fs/eventpoll.c", i32 310, i32 25}
!187 = !{ptr @long_zero, !188, !"long_zero", i1 false, i1 false}
!188 = !{!"../fs/eventpoll.c", i32 307, i32 13}
!189 = !{ptr @long_max, !190, !"long_max", i1 false, i1 false}
!190 = !{!"../fs/eventpoll.c", i32 308, i32 13}
!191 = !{!"sp"}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2158453022}
!203 = !{i64 2158457956}
!204 = !{i64 2158479640}
!205 = !{i64 2158484534}
!206 = !{!"branch_weights", i32 2000, i32 1}
!207 = !{i64 2158499734}
!208 = !{!209}
!209 = distinct !{!209, !210, !"fdget: %agg.result"}
!210 = distinct !{!210, !"fdget"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"fdget: %agg.result"}
!213 = distinct !{!213, !"fdget"}
!214 = !{i64 2149248719}
!215 = !{i64 2149248985}
!216 = !{!"auto-init"}
!217 = !{i64 2158796094}
!218 = !{i64 2158801028}
!219 = !{i64 2158822712}
!220 = !{i64 2158827606}
!221 = !{i64 2149350330}
!222 = !{i64 2158561783}
!223 = !{i64 2159063505}
!224 = !{i64 2159068439}
!225 = !{i64 2159090123}
!226 = !{i64 2159095017}
!227 = !{i64 2159103678}
!228 = !{i64 2150615691, i64 2150615716}
!229 = !{i64 3111246}
!230 = !{i64 3111443}
!231 = !{i64 2150596676}
!232 = !{i64 2159426761, i64 2159426786}
!233 = !{!234}
!234 = distinct !{!234, !235, !"fdget: %agg.result"}
!235 = distinct !{!235, !"fdget"}
!236 = !{i64 2157939254}
!237 = !{i64 2158177907}
!238 = !{i64 2158182841}
!239 = !{i64 2158204525}
!240 = !{i64 2158209419}
!241 = !{i64 2148287377, i64 2148287409, i64 2148287438, i64 2148287472, i64 2148287503, i64 2148287526}
!242 = !{i64 2158520085}
!243 = !{i64 795339, i64 795360, i64 795383, i64 795402, i64 795421}
!244 = !{i64 2158520509}
!245 = !{i64 2158521353}
!246 = !{i64 792615, i64 792632, i64 792656, i64 792682, i64 792700}
!247 = !{i64 2158521698}
!248 = !{i64 2158517280}
!249 = !{i64 2158517686}
!250 = !{i64 2158518513}
!251 = !{i64 2158518858}
!252 = !{i64 2158528072}
!253 = !{i64 2159335905}
!254 = !{i64 2159340839}
!255 = !{i64 2159362523}
!256 = !{i64 2159367417}
!257 = !{i64 2148868383}
!258 = !{!259}
!259 = distinct !{!259, !260, !"fdget: %agg.result"}
!260 = distinct !{!260, !"fdget"}
