; ModuleID = '/llk/IR_all_yes/fs/timerfd.c_pt.bc'
source_filename = "../fs/timerfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.3, %struct.trace_event, ptr, ptr, %union.anon.5, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.3 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.5 = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.timerfd_ctx = type { %union.anon, i64, i64, %struct.wait_queue_head, i64, i32, i16, i16, %struct.callback_head, %struct.list_head, %struct.spinlock, i8 }
%union.anon = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, ptr, i32, i32, ptr }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.62 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }

@timerfd_clock_was_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/timerfd.c\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@cancel_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cancel_list, ptr @cancel_list }, [24 x i8] zeroinitializer }, align 32
@timerfd_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @timerfd_work, i64 4), ptr getelementptr (i8, ptr @timerfd_work, i64 4) }, ptr @timerfd_resume_work, %struct.lockdep_map { ptr @timerfd_work, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_enter_timerfd_create\00", [39 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__timerfd_create = internal global %struct.syscall_metadata { ptr @.str.4, i32 -1, i32 2, ptr @types__timerfd_create, ptr @args__timerfd_create, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timerfd_create, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timerfd_create, i64 20) }, ptr @event_enter__timerfd_create, ptr @event_exit__timerfd_create }, align 4
@event_enter__timerfd_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.3 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.5 zeroinitializer, ptr @__syscall_meta__timerfd_create, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timerfd_create = internal global ptr @event_enter__timerfd_create, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_exit_timerfd_create\00", [40 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__timerfd_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.3 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.5 zeroinitializer, ptr @__syscall_meta__timerfd_create, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timerfd_create = internal global ptr @event_exit__timerfd_create, section "_ftrace_events", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_timerfd_create\00", [45 x i8] zeroinitializer }, align 32
@types__timerfd_create = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.21], [24 x i8] zeroinitializer }, align 32
@args__timerfd_create = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timerfd_create = internal global ptr @__syscall_meta__timerfd_create, section "__syscalls_metadata", align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_timerfd_settime\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__timerfd_settime = internal global %struct.syscall_metadata { ptr @.str.7, i32 -1, i32 4, ptr @types__timerfd_settime, ptr @args__timerfd_settime, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timerfd_settime, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timerfd_settime, i64 20) }, ptr @event_enter__timerfd_settime, ptr @event_exit__timerfd_settime }, align 4
@event_enter__timerfd_settime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.3 { ptr @.str.5 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.5 zeroinitializer, ptr @__syscall_meta__timerfd_settime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timerfd_settime = internal global ptr @event_enter__timerfd_settime, section "_ftrace_events", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_timerfd_settime\00", [39 x i8] zeroinitializer }, align 32
@event_exit__timerfd_settime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.3 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.5 zeroinitializer, ptr @__syscall_meta__timerfd_settime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timerfd_settime = internal global ptr @event_exit__timerfd_settime, section "_ftrace_events", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_timerfd_settime\00", [44 x i8] zeroinitializer }, align 32
@types__timerfd_settime = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.21, ptr @.str.21, ptr @.str.33, ptr @.str.34], [16 x i8] zeroinitializer }, align 32
@args__timerfd_settime = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.35, ptr @.str.23, ptr @.str.36, ptr @.str.37], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timerfd_settime = internal global ptr @__syscall_meta__timerfd_settime, section "__syscalls_metadata", align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_timerfd_gettime\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__timerfd_gettime = internal global %struct.syscall_metadata { ptr @.str.10, i32 -1, i32 2, ptr @types__timerfd_gettime, ptr @args__timerfd_gettime, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timerfd_gettime, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timerfd_gettime, i64 20) }, ptr @event_enter__timerfd_gettime, ptr @event_exit__timerfd_gettime }, align 4
@event_enter__timerfd_gettime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.3 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.5 zeroinitializer, ptr @__syscall_meta__timerfd_gettime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timerfd_gettime = internal global ptr @event_enter__timerfd_gettime, section "_ftrace_events", align 4
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_timerfd_gettime\00", [39 x i8] zeroinitializer }, align 32
@event_exit__timerfd_gettime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.3 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.5 zeroinitializer, ptr @__syscall_meta__timerfd_gettime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timerfd_gettime = internal global ptr @event_exit__timerfd_gettime, section "_ftrace_events", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_timerfd_gettime\00", [44 x i8] zeroinitializer }, align 32
@types__timerfd_gettime = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.34], [24 x i8] zeroinitializer }, align 32
@args__timerfd_gettime = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.35, ptr @.str.37], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timerfd_gettime = internal global ptr @__syscall_meta__timerfd_gettime, section "__syscalls_metadata", align 4
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sys_enter_timerfd_settime32\00", [36 x i8] zeroinitializer }, align 32
@__syscall_meta__timerfd_settime32 = internal global %struct.syscall_metadata { ptr @.str.13, i32 -1, i32 4, ptr @types__timerfd_settime32, ptr @args__timerfd_settime32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timerfd_settime32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timerfd_settime32, i64 20) }, ptr @event_enter__timerfd_settime32, ptr @event_exit__timerfd_settime32 }, align 4
@event_enter__timerfd_settime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.3 { ptr @.str.11 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.5 zeroinitializer, ptr @__syscall_meta__timerfd_settime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timerfd_settime32 = internal global ptr @event_enter__timerfd_settime32, section "_ftrace_events", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_exit_timerfd_settime32\00", [37 x i8] zeroinitializer }, align 32
@event_exit__timerfd_settime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.3 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.5 zeroinitializer, ptr @__syscall_meta__timerfd_settime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timerfd_settime32 = internal global ptr @event_exit__timerfd_settime32, section "_ftrace_events", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_timerfd_settime32\00", [42 x i8] zeroinitializer }, align 32
@types__timerfd_settime32 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.21, ptr @.str.21, ptr @.str.38, ptr @.str.39], [16 x i8] zeroinitializer }, align 32
@args__timerfd_settime32 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.35, ptr @.str.23, ptr @.str.36, ptr @.str.37], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timerfd_settime32 = internal global ptr @__syscall_meta__timerfd_settime32, section "__syscalls_metadata", align 4
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sys_enter_timerfd_gettime32\00", [36 x i8] zeroinitializer }, align 32
@__syscall_meta__timerfd_gettime32 = internal global %struct.syscall_metadata { ptr @.str.16, i32 -1, i32 2, ptr @types__timerfd_gettime32, ptr @args__timerfd_gettime32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timerfd_gettime32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timerfd_gettime32, i64 20) }, ptr @event_enter__timerfd_gettime32, ptr @event_exit__timerfd_gettime32 }, align 4
@event_enter__timerfd_gettime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.3 { ptr @.str.14 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.5 zeroinitializer, ptr @__syscall_meta__timerfd_gettime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timerfd_gettime32 = internal global ptr @event_enter__timerfd_gettime32, section "_ftrace_events", align 4
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_exit_timerfd_gettime32\00", [37 x i8] zeroinitializer }, align 32
@event_exit__timerfd_gettime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.3 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.5 zeroinitializer, ptr @__syscall_meta__timerfd_gettime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timerfd_gettime32 = internal global ptr @event_exit__timerfd_gettime32, section "_ftrace_events", align 4
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_timerfd_gettime32\00", [42 x i8] zeroinitializer }, align 32
@types__timerfd_gettime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.39], [24 x i8] zeroinitializer }, align 32
@args__timerfd_gettime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.35, ptr @.str.37], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timerfd_gettime32 = internal global ptr @__syscall_meta__timerfd_gettime32, section "__syscalls_metadata", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timerfd_work\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clockid\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@__do_sys_timerfd_create.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ctx->wqh\00", [22 x i8] zeroinitializer }, align 32
@__do_sys_timerfd_create.__key.25 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ctx->cancel_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[timerfd]\00", [22 x i8] zeroinitializer }, align 32
@timerfd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @timerfd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @timerfd_poll, ptr @timerfd_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @timerfd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @timerfd_show, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cancel_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cancel_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"clockid: %d\0Aticks: %llu\0Asettime flags: 0%o\0Ait_value: (%llu, %llu)\0Ait_interval: (%llu, %llu)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"const struct __kernel_itimerspec *\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"struct __kernel_itimerspec *\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ufd\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utmr\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"otmr\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"const struct old_itimerspec32 *\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"struct old_itimerspec32 *\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 104, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"cancel_list\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 49, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"timerfd_work\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [28 x i8] c"event_enter__timerfd_create\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"event_exit__timerfd_create\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"types__timerfd_create\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"args__timerfd_create\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [29 x i8] c"event_enter__timerfd_settime\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [28 x i8] c"event_exit__timerfd_settime\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"types__timerfd_settime\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [22 x i8] c"args__timerfd_settime\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [29 x i8] c"event_enter__timerfd_gettime\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"event_exit__timerfd_gettime\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"types__timerfd_gettime\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"args__timerfd_gettime\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 576, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [31 x i8] c"event_enter__timerfd_settime32\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [30 x i8] c"event_exit__timerfd_settime32\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [25 x i8] c"types__timerfd_settime32\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [24 x i8] c"args__timerfd_settime32\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [31 x i8] c"event_enter__timerfd_gettime32\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [30 x i8] c"event_exit__timerfd_gettime32\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [25 x i8] c"types__timerfd_gettime32\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [24 x i8] c"args__timerfd_gettime32\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 603, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 695, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 723, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 123, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 406, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 432, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 433, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 446, i32 25 }
@___asan_gen_.188 = private unnamed_addr constant [13 x i8] c"timerfd_fops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 384, i32 37 }
@___asan_gen_.192 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 156, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"cancel_lock\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 50, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 332, i32 6 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 558, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [16 x i8] c"../fs/timerfd.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 586, i32 1 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__event_enter__timerfd_create, ptr @__event_enter__timerfd_gettime, ptr @__event_enter__timerfd_gettime32, ptr @__event_enter__timerfd_settime, ptr @__event_enter__timerfd_settime32, ptr @__event_exit__timerfd_create, ptr @__event_exit__timerfd_gettime, ptr @__event_exit__timerfd_gettime32, ptr @__event_exit__timerfd_settime, ptr @__event_exit__timerfd_settime32, ptr @__p_syscall_meta__timerfd_create, ptr @__p_syscall_meta__timerfd_gettime, ptr @__p_syscall_meta__timerfd_gettime32, ptr @__p_syscall_meta__timerfd_settime, ptr @__p_syscall_meta__timerfd_settime32, ptr @__syscall_meta__timerfd_create, ptr @__syscall_meta__timerfd_gettime, ptr @__syscall_meta__timerfd_gettime32, ptr @__syscall_meta__timerfd_settime, ptr @__syscall_meta__timerfd_settime32, ptr @event_enter__timerfd_create, ptr @event_enter__timerfd_gettime, ptr @event_enter__timerfd_gettime32, ptr @event_enter__timerfd_settime, ptr @event_enter__timerfd_settime32, ptr @event_exit__timerfd_create, ptr @event_exit__timerfd_gettime, ptr @event_exit__timerfd_gettime32, ptr @event_exit__timerfd_settime, ptr @event_exit__timerfd_settime32, ptr @.str, ptr @.str.1, ptr @cancel_list, ptr @timerfd_work, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @types__timerfd_create, ptr @args__timerfd_create, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @types__timerfd_settime, ptr @args__timerfd_settime, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @types__timerfd_gettime, ptr @args__timerfd_gettime, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @types__timerfd_settime32, ptr @args__timerfd_settime32, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @types__timerfd_gettime32, ptr @args__timerfd_gettime32, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @timerfd_fops, ptr @.str.30, ptr @cancel_lock, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cancel_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timerfd_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timerfd_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timerfd_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timerfd_create to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timerfd_create to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timerfd_settime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timerfd_settime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timerfd_settime to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timerfd_settime to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timerfd_gettime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timerfd_gettime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timerfd_gettime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timerfd_gettime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timerfd_settime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timerfd_settime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timerfd_settime32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timerfd_settime32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timerfd_gettime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timerfd_gettime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timerfd_gettime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timerfd_gettime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timerfd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cancel_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_timerfd_create = dso_local alias i32 (i32, i32), ptr @__se_sys_timerfd_create
@sys_timerfd_settime = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_timerfd_settime
@sys_timerfd_gettime = dso_local alias i32 (i32, ptr), ptr @__se_sys_timerfd_gettime
@sys_timerfd_settime32 = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_timerfd_settime32
@sys_timerfd_gettime32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_timerfd_gettime32

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timerfd_clock_was_set() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i49 = tail call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !120
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @timerfd_clock_was_set.__warned, align 1
  br i1 %.b48, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @timerfd_clock_was_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 104, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn59 = load volatile ptr, ptr @cancel_list, align 4
  %cmp.not60 = icmp eq ptr %.pn59, @cancel_list
  br i1 %cmp.not60, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn61 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn59, %do.end.for.body_crit_edge ]
  %might_cancel = getelementptr i8, ptr %.pn61, i32 52
  %4 = ptrtoint ptr %might_cancel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %might_cancel, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %do.body14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body14:                                        ; preds = %for.body
  %wqh = getelementptr i8, ptr %.pn61, i32 -80
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wqh) #7
  %moffs23 = getelementptr i8, ptr %.pn61, i32 -88
  %6 = ptrtoint ptr %moffs23 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %moffs23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %call.i49)
  %cmp24.not = icmp eq i64 %7, %call.i49
  br i1 %cmp24.not, label %do.body14.if.end29_crit_edge, label %if.then26

do.body14.if.end29_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %moffs23 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 9223372036854775807, ptr %moffs23, align 8
  %ticks = getelementptr i8, ptr %.pn61, i32 -24
  %9 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ticks, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %ticks, align 8
  tail call void @__wake_up_locked_key(ptr noundef %wqh, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %do.body14.if.end29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wqh, i32 noundef %call18) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn61, align 4
  %cmp.not = icmp eq ptr %.pn, @cancel_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i50 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i50, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i53

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i53:                                ; preds = %for.end
  %call1.i51 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %tobool.not.i52 = icmp eq i32 %call1.i51, 0
  br i1 %tobool.not.i52, label %land.lhs.true.i53.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i55

land.lhs.true.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i55:                               ; preds = %land.lhs.true.i53
  %.b4.i54 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i54, label %land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge, label %if.then.i56

land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i56:                                      ; preds = %land.lhs.true2.i55
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i56, %land.lhs.true2.i55.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i53.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !122
  %12 = tail call i32 @llvm.read_register.i32(metadata !110) #7
  %and.i.i.i.i.i57 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i57 to ptr
  %preempt_count.i.i.i.i58 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i58, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i58, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timerfd_resume() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @timerfd_work) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timerfd_create(i32 noundef %clockid, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %flags, -526337
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.__do_sys_timerfd_create.exit_crit_edge

entry.__do_sys_timerfd_create.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_create.exit

lor.lhs.false.i:                                  ; preds = %entry
  %0 = zext i32 %clockid to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clockid, label %lor.lhs.false.i.__do_sys_timerfd_create.exit_crit_edge [
    i32 8, label %lor.lhs.false.i.land.lhs.true14.i_crit_edge
    i32 9, label %lor.lhs.false.i.land.lhs.true14.i_crit_edge1
    i32 0, label %lor.lhs.false.i.if.end16.i_crit_edge
    i32 1, label %lor.lhs.false.i.if.end16.i_crit_edge2
    i32 7, label %lor.lhs.false.i.if.end16.i_crit_edge3
  ]

lor.lhs.false.i.if.end16.i_crit_edge3:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

lor.lhs.false.i.if.end16.i_crit_edge2:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

lor.lhs.false.i.land.lhs.true14.i_crit_edge1:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14.i

lor.lhs.false.i.land.lhs.true14.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true14.i

lor.lhs.false.i.__do_sys_timerfd_create.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_create.exit

land.lhs.true14.i:                                ; preds = %lor.lhs.false.i.land.lhs.true14.i_crit_edge, %lor.lhs.false.i.land.lhs.true14.i_crit_edge1
  %call.i = tail call zeroext i1 @capable(i32 noundef 35) #7
  br i1 %call.i, label %land.lhs.true14.i.if.end16.i_crit_edge, label %land.lhs.true14.i.__do_sys_timerfd_create.exit_crit_edge

land.lhs.true14.i.__do_sys_timerfd_create.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_create.exit

land.lhs.true14.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true14.i.if.end16.i_crit_edge, %lor.lhs.false.i.if.end16.i_crit_edge, %lor.lhs.false.i.if.end16.i_crit_edge2, %lor.lhs.false.i.if.end16.i_crit_edge3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 240) #10
  %tobool18.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool18.not.i, label %if.end16.i.__do_sys_timerfd_create.exit_crit_edge, label %do.body21.i

if.end16.i.__do_sys_timerfd_create.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_create.exit

do.body21.i:                                      ; preds = %if.end16.i
  %wqh.i = getelementptr inbounds %struct.timerfd_ctx, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wqh.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @__do_sys_timerfd_create.__key) #7
  %cancel_lock.i = getelementptr inbounds %struct.timerfd_ctx, ptr %call7.i.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %cancel_lock.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @__do_sys_timerfd_create.__key.25, i16 noundef signext 3) #7
  %clockid28.i = getelementptr inbounds %struct.timerfd_ctx, ptr %call7.i.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %clockid28.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %clockid, ptr %clockid28.i, align 8
  %3 = and i32 %clockid, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %clockid)
  %cmp32.i = icmp ne i32 %clockid, 8
  %cond.i = zext i1 %cmp32.i to i32
  tail call void @alarm_init(ptr noundef nonnull %call7.i.i.i, i32 noundef %cond.i, ptr noundef nonnull @timerfd_alarmproc) #7
  br label %if.end34.i

if.else.i:                                        ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hrtimer_init(ptr noundef nonnull %call7.i.i.i, i32 noundef %clockid, i32 noundef 0) #7
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.then30.i
  %call.i.i = tail call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #7
  %moffs.i = getelementptr inbounds %struct.timerfd_ctx, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %moffs.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i.i, ptr %moffs.i, align 8
  %and36.i = and i32 %flags, 526336
  %or.i = or i32 %and36.i, 2
  %call37.i = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.27, ptr noundef nonnull @timerfd_fops, ptr noundef nonnull %call7.i.i.i, i32 noundef %or.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.then39.i, label %if.end34.i.__do_sys_timerfd_create.exit_crit_edge

if.end34.i.__do_sys_timerfd_create.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_create.exit

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %__do_sys_timerfd_create.exit

__do_sys_timerfd_create.exit:                     ; preds = %if.then39.i, %if.end34.i.__do_sys_timerfd_create.exit_crit_edge, %if.end16.i.__do_sys_timerfd_create.exit_crit_edge, %land.lhs.true14.i.__do_sys_timerfd_create.exit_crit_edge, %lor.lhs.false.i.__do_sys_timerfd_create.exit_crit_edge, %entry.__do_sys_timerfd_create.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.__do_sys_timerfd_create.exit_crit_edge ], [ -22, %entry.__do_sys_timerfd_create.exit_crit_edge ], [ -1, %land.lhs.true14.i.__do_sys_timerfd_create.exit_crit_edge ], [ -12, %if.end16.i.__do_sys_timerfd_create.exit_crit_edge ], [ %call37.i, %if.then39.i ], [ %call37.i, %if.end34.i.__do_sys_timerfd_create.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timerfd_settime(i32 noundef %ufd, i32 noundef %flags, i32 noundef %utmr, i32 noundef %otmr) #0 align 64 {
entry:
  %new.i = alloca %struct.itimerspec64, align 8
  %old.i = alloca %struct.itimerspec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %utmr to ptr
  %1 = inttoptr i32 %otmr to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %new.i) #7
  %2 = call ptr @memset(ptr %new.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i) #7
  %3 = call ptr @memset(ptr %old.i, i32 255, i32 32)
  %call.i = call i32 @get_itimerspec64(ptr noundef nonnull %new.i, ptr noundef %0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_timerfd_settime.exit_crit_edge

entry.__do_sys_timerfd_settime.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_settime.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @do_timerfd_settime(i32 noundef %ufd, i32 noundef %flags, ptr noundef nonnull %new.i, ptr noundef nonnull %old.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.__do_sys_timerfd_settime.exit_crit_edge

if.end.i.__do_sys_timerfd_settime.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_settime.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %otmr)
  %tobool5.not.i = icmp eq i32 %otmr, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %call6.i = call i32 @put_itimerspec64(ptr noundef nonnull %old.i, ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %land.lhs.true.i.__do_sys_timerfd_settime.exit_crit_edge

land.lhs.true.i.__do_sys_timerfd_settime.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_settime.exit

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.end4.i.if.end9.i_crit_edge
  br label %__do_sys_timerfd_settime.exit

__do_sys_timerfd_settime.exit:                    ; preds = %if.end9.i, %land.lhs.true.i.__do_sys_timerfd_settime.exit_crit_edge, %if.end.i.__do_sys_timerfd_settime.exit_crit_edge, %entry.__do_sys_timerfd_settime.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ -14, %entry.__do_sys_timerfd_settime.exit_crit_edge ], [ %call1.i, %if.end.i.__do_sys_timerfd_settime.exit_crit_edge ], [ -14, %land.lhs.true.i.__do_sys_timerfd_settime.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %new.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timerfd_gettime(i32 noundef %ufd, i32 noundef %otmr) #0 align 64 {
entry:
  %kotmr.i = alloca %struct.itimerspec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %kotmr.i) #7
  %0 = call ptr @memset(ptr %kotmr.i, i32 255, i32 32)
  %call.i = call fastcc i32 @do_timerfd_gettime(i32 noundef %ufd, ptr noundef nonnull %kotmr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_timerfd_gettime.exit_crit_edge

entry.__do_sys_timerfd_gettime.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_gettime.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = inttoptr i32 %otmr to ptr
  %call1.i = call i32 @put_itimerspec64(ptr noundef nonnull %kotmr.i, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  %cond.i = select i1 %tobool2.not.i, i32 0, i32 -14
  br label %__do_sys_timerfd_gettime.exit

__do_sys_timerfd_gettime.exit:                    ; preds = %if.end.i, %entry.__do_sys_timerfd_gettime.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ %call.i, %entry.__do_sys_timerfd_gettime.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %kotmr.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timerfd_settime32(i32 noundef %ufd, i32 noundef %flags, i32 noundef %utmr, i32 noundef %otmr) #0 align 64 {
entry:
  %new.i = alloca %struct.itimerspec64, align 8
  %old.i = alloca %struct.itimerspec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %utmr to ptr
  %1 = inttoptr i32 %otmr to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %new.i) #7
  %2 = call ptr @memset(ptr %new.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i) #7
  %3 = call ptr @memset(ptr %old.i, i32 255, i32 32)
  %call.i = call i32 @get_old_itimerspec32(ptr noundef nonnull %new.i, ptr noundef %0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_timerfd_settime32.exit_crit_edge

entry.__do_sys_timerfd_settime32.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_settime32.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call fastcc i32 @do_timerfd_settime(i32 noundef %ufd, i32 noundef %flags, ptr noundef nonnull %new.i, ptr noundef nonnull %old.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.__do_sys_timerfd_settime32.exit_crit_edge

if.end.i.__do_sys_timerfd_settime32.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_settime32.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %otmr)
  %tobool5.not.i = icmp eq i32 %otmr, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %call6.i = call i32 @put_old_itimerspec32(ptr noundef nonnull %old.i, ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %land.lhs.true.i.__do_sys_timerfd_settime32.exit_crit_edge

land.lhs.true.i.__do_sys_timerfd_settime32.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_settime32.exit

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.end4.i.if.end9.i_crit_edge
  br label %__do_sys_timerfd_settime32.exit

__do_sys_timerfd_settime32.exit:                  ; preds = %if.end9.i, %land.lhs.true.i.__do_sys_timerfd_settime32.exit_crit_edge, %if.end.i.__do_sys_timerfd_settime32.exit_crit_edge, %entry.__do_sys_timerfd_settime32.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ -14, %entry.__do_sys_timerfd_settime32.exit_crit_edge ], [ %call1.i, %if.end.i.__do_sys_timerfd_settime32.exit_crit_edge ], [ -14, %land.lhs.true.i.__do_sys_timerfd_settime32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %new.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timerfd_gettime32(i32 noundef %ufd, i32 noundef %otmr) #0 align 64 {
entry:
  %kotmr.i = alloca %struct.itimerspec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %kotmr.i) #7
  %0 = call ptr @memset(ptr %kotmr.i, i32 255, i32 32)
  %call.i = call fastcc i32 @do_timerfd_gettime(i32 noundef %ufd, ptr noundef nonnull %kotmr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_timerfd_gettime32.exit_crit_edge

entry.__do_sys_timerfd_gettime32.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_timerfd_gettime32.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = inttoptr i32 %otmr to ptr
  %call1.i = call i32 @put_old_itimerspec32(ptr noundef nonnull %kotmr.i, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  %cond.i = select i1 %tobool2.not.i, i32 0, i32 -14
  br label %__do_sys_timerfd_gettime32.exit

__do_sys_timerfd_gettime32.exit:                  ; preds = %if.end.i, %entry.__do_sys_timerfd_gettime32.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ %call.i, %entry.__do_sys_timerfd_gettime32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %kotmr.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_mono_to_any(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timerfd_resume_work(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @timerfd_clock_was_set()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timerfd_alarmproc(ptr noundef %alarm, i64 noundef %now) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wqh.i = getelementptr inbounds %struct.timerfd_ctx, ptr %alarm, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wqh.i) #7
  %expired.i = getelementptr inbounds %struct.timerfd_ctx, ptr %alarm, i32 0, i32 6
  %0 = ptrtoint ptr %expired.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %expired.i, align 4
  %ticks.i = getelementptr inbounds %struct.timerfd_ctx, ptr %alarm, i32 0, i32 4
  %1 = ptrtoint ptr %ticks.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ticks.i, align 8
  %inc.i = add i64 %2, 1
  store i64 %inc.i, ptr %ticks.i, align 8
  tail call void @__wake_up_locked_key(ptr noundef %wqh.i, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wqh.i, i32 noundef %call2.i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timerfd_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp = icmp ult i32 %count, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %wqh = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %wqh) #7
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end.if.end75_crit_edge

if.end.if.end75_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.else:                                          ; preds = %if.end
  %ticks2 = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ticks2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ticks2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool3.not = icmp eq i64 %5, 0
  br i1 %tobool3.not, label %cond.false, label %if.else.if.end75_crit_edge

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

cond.false:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #7
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %__wait, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !110) #7
  %and.i148 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i148 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @autoremove_wake_function, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %8, ptr %9, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %cond.false
  %call8 = call i32 @do_wait_intr_irq(ptr noundef %wqh, ptr noundef nonnull %__wait) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.cond, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.cond:                                          ; preds = %do.body
  %19 = ptrtoint ptr %ticks2 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ticks2, align 8
  %tobool13.not = icmp eq i64 %20, 0
  br i1 %tobool13.not, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.__here_crit_edge

do.end.__here_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %9, align 4
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %__here

__here:                                           ; preds = %if.end.i.i.i, %do.end.__here_crit_edge
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 212
  %29 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 ptrtoint (ptr blockaddress(@timerfd_read, %__here) to i32), ptr %task_state_change, align 4
  %30 = load ptr, ptr %task, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %30, align 128
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #7
  br label %if.end75

if.end75:                                         ; preds = %__here, %if.else.if.end75_crit_edge, %if.end.if.end75_crit_edge
  %res.0 = phi i32 [ -11, %if.end.if.end75_crit_edge ], [ %call8, %__here ], [ 0, %if.else.if.end75_crit_edge ]
  %might_cancel.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %might_cancel.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %might_cancel.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end75.if.end79_crit_edge, label %lor.lhs.false.i

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

lor.lhs.false.i:                                  ; preds = %if.end75
  %moffs.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %moffs.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %moffs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %35)
  %cmp.not.i = icmp eq i64 %35, 9223372036854775807
  br i1 %cmp.not.i, label %if.then77, label %lor.lhs.false.i.if.end79_crit_edge

lor.lhs.false.i.if.end79_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then77:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #7
  %36 = ptrtoint ptr %moffs.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call.i.i, ptr %moffs.i, align 8
  %ticks78 = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %ticks78 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %ticks78, align 8
  %expired = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %expired to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %expired, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %lor.lhs.false.i.if.end79_crit_edge, %if.end75.if.end79_crit_edge
  %res.1 = phi i32 [ -125, %if.then77 ], [ %res.0, %lor.lhs.false.i.if.end79_crit_edge ], [ %res.0, %if.end75.if.end79_crit_edge ]
  %ticks80 = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %ticks80 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ticks80, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool81.not = icmp eq i64 %40, 0
  br i1 %tobool81.not, label %if.end104.thread, label %if.then82

if.end104.thread:                                 ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irq(ptr noundef %wqh) #7
  br label %cleanup

if.then82:                                        ; preds = %if.end79
  %expired84 = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %expired84 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %expired84, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool85.not = icmp eq i16 %42, 0
  br i1 %tobool85.not, label %if.then82.if.end104_crit_edge, label %land.lhs.true

if.then82.if.end104_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

land.lhs.true:                                    ; preds = %if.then82
  %tintv = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %tintv to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tintv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool86.not = icmp eq i64 %44, 0
  br i1 %tobool86.not, label %land.lhs.true.if.end104_crit_edge, label %if.then87

land.lhs.true.if.end104_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then87:                                        ; preds = %land.lhs.true
  %clockid.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clockid.i, align 8
  %47 = and i32 %46, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %if.then89, label %if.else93

if.then89:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = call i64 @alarm_forward_now(ptr noundef %1, i64 noundef %44) #7
  %sub = add i64 %40, -1
  %add = add i64 %sub, %call91
  call void @alarm_restart(ptr noundef %1) #7
  br label %if.end104

if.else93:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_time.i, align 4
  %call.i = call i64 %52() #7
  %call1.i = call i64 @hrtimer_forward(ptr noundef %1, i64 noundef %call.i, i64 noundef %44) #7
  %sub97 = add i64 %40, -1
  %add98 = add i64 %sub97, %call1.i
  %_softexpires.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %_softexpires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %_softexpires.i.i.i, align 8
  %expires.i.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %expires.i.i.i, align 8
  %sub.i.i = sub i64 %56, %54
  call void @hrtimer_start_range_ns(ptr noundef %1, i64 noundef %54, i64 noundef %sub.i.i, i32 noundef 0) #7
  br label %if.end104

if.end104:                                        ; preds = %if.else93, %if.then89, %land.lhs.true.if.end104_crit_edge, %if.then82.if.end104_crit_edge
  %ticks.0 = phi i64 [ %add, %if.then89 ], [ %add98, %if.else93 ], [ %40, %land.lhs.true.if.end104_crit_edge ], [ %40, %if.then82.if.end104_crit_edge ]
  %57 = ptrtoint ptr %expired84 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %expired84, align 4
  %58 = ptrtoint ptr %ticks80 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %ticks80, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %wqh) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ticks.0)
  %tobool107.not = icmp eq i64 %ticks.0, 0
  br i1 %tobool107.not, label %if.end104.cleanup_crit_edge, label %if.then108

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 316) #7
  %59 = call i32 @llvm.read_register.i32(metadata !110) #7
  %and.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 4
  %61 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !123
  %and.i = and i32 %61, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !124
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %62 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf, i64 %ticks.0, i32 -1226833921) #7, !srcloc !126
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #7, !srcloc !124
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool115.not = icmp eq i32 %62, 0
  %cond116 = select i1 %tobool115.not, i32 8, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %if.end104.cleanup_crit_edge, %if.end104.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %cond116, %if.then108 ], [ %res.1, %if.end104.cleanup_crit_edge ], [ %res.1, %if.end104.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timerfd_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wqh = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wqh, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wqh, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wqh) #7
  %ticks = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ticks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp ne i64 %5, 0
  %spec.select = zext i1 %tobool.not to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wqh, i32 noundef %call3) #7
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timerfd_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %ticks = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074287616, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074287616
  br i1 %cond, label %sw.bb, label %entry.cleanup11_crit_edge

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ticks) #7
  %2 = ptrtoint ptr %ticks to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ticks, align 8, !annotation !127
  %3 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 8, i32 -1226833920) #11, !srcloc !128
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !129

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ticks, i32 noundef 8) #7
  %5 = call i32 @llvm.read_register.i32(metadata !110) #7
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !123
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !124
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ticks, ptr noundef %3, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #7, !srcloc !124
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !129

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %sw.bb.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %ticks, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup.thread

if.end:                                           ; preds = %if.end.i.i
  %9 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ticks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool1.not = icmp eq i64 %10, 0
  br i1 %tobool1.not, label %if.end.cleanup.thread_crit_edge, label %if.end3

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end3:                                          ; preds = %if.end
  %wqh = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %wqh) #7
  %might_cancel.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %might_cancel.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %might_cancel.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end3.if.then5_crit_edge, label %lor.lhs.false.i

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

lor.lhs.false.i:                                  ; preds = %if.end3
  %moffs.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %moffs.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %moffs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %14)
  %cmp.not.i = icmp eq i64 %14, 9223372036854775807
  br i1 %cmp.not.i, label %timerfd_canceled.exit, label %lor.lhs.false.i.if.then5_crit_edge

lor.lhs.false.i.if.then5_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

timerfd_canceled.exit:                            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i18 = call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #7
  %15 = ptrtoint ptr %moffs.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call.i.i18, ptr %moffs.i, align 8
  br label %cleanup

if.then5:                                         ; preds = %lor.lhs.false.i.if.then5_crit_edge, %if.end3.if.then5_crit_edge
  %16 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ticks, align 8
  %ticks6 = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %ticks6 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %ticks6, align 8
  call void @__wake_up_locked_key(ptr noundef %wqh, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #7
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %if.then11.i.i
  %retval.0.ph = phi i32 [ -22, %if.end.cleanup.thread_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ticks) #7
  br label %cleanup11

cleanup:                                          ; preds = %if.then5, %timerfd_canceled.exit
  %ret.0 = phi i32 [ 0, %if.then5 ], [ -125, %timerfd_canceled.exit ]
  call void @_raw_spin_unlock_irq(ptr noundef %wqh) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ticks) #7
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup, %cleanup.thread, %entry.cleanup11_crit_edge
  %retval.1 = phi i32 [ %retval.0.ph, %cleanup.thread ], [ %ret.0, %cleanup ], [ -25, %entry.cleanup11_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timerfd_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cancel_lock.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %cancel_lock.i) #7
  %might_cancel.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %might_cancel.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %might_cancel.i.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %entry.timerfd_remove_cancel.exit_crit_edge, label %if.then.i.i

entry.timerfd_remove_cancel.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %timerfd_remove_cancel.exit

if.then.i.i:                                      ; preds = %entry
  %4 = ptrtoint ptr %might_cancel.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %might_cancel.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cancel_lock) #7
  %clist.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %clist.i.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_rcu.exit.i.i_crit_edge

if.then.i.i.list_del_rcu.exit.i.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i.i, align 4
  %7 = ptrtoint ptr %clist.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clist.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_rcu.exit.i.i

list_del_rcu.exit.i.i:                            ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_rcu.exit.i.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cancel_lock) #7
  br label %timerfd_remove_cancel.exit

timerfd_remove_cancel.exit:                       ; preds = %list_del_rcu.exit.i.i, %entry.timerfd_remove_cancel.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cancel_lock.i) #7
  %clockid.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clockid.i, align 8
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %if.then, label %if.else

if.then:                                          ; preds = %timerfd_remove_cancel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @alarm_cancel(ptr noundef %1) #7
  br label %do.body

if.else:                                          ; preds = %timerfd_remove_cancel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @hrtimer_cancel(ptr noundef %1) #7
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.if.end6_crit_edge, label %do.end

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %rcu = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 176 to ptr)) #7
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timerfd_show(ptr noundef %m, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp1 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wqh = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %wqh) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  %clockid.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clockid.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clockid.i.i, align 8
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i64 @alarm_expires_remaining(ptr noundef %1) #7
  br label %timerfd_get_remaining.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %get_time.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %get_time.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_time.i.i, align 4
  %call.i.i = tail call i64 %9() #7
  %expires.i.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %expires.i.i.i, align 8
  %sub.i.i.i = sub i64 %11, %call.i.i
  br label %timerfd_get_remaining.exit

timerfd_get_remaining.exit:                       ; preds = %if.else.i, %if.then.i
  %remaining.0.i = phi i64 [ %call1.i, %if.then.i ], [ %sub.i.i.i, %if.else.i ]
  %12 = tail call i64 @llvm.smax.i64(i64 %remaining.0.i, i64 0) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %12) #7
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %13)
  %value.sroa.0.0.copyload11 = load i64, ptr %tmp, align 8
  %value.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %14 = ptrtoint ptr %value.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %value.sroa.5.0.copyload12 = load i32, ptr %value.sroa.5.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1) #7
  %tintv = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %tintv to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tintv, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp1, i64 noundef %16) #7
  %17 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %interval.sroa.0.0.copyload8 = load i64, ptr %tmp1, align 8
  %interval.sroa.5.0.tmp1.sroa_idx = getelementptr inbounds i8, ptr %tmp1, i32 8
  %18 = ptrtoint ptr %interval.sroa.5.0.tmp1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %interval.sroa.5.0.copyload9 = load i32, ptr %interval.sroa.5.0.tmp1.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1) #7
  call void @_raw_spin_unlock_irq(ptr noundef %wqh) #7
  %19 = ptrtoint ptr %clockid.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clockid.i.i, align 8
  %ticks = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ticks, align 8
  %settime_flags = getelementptr inbounds %struct.timerfd_ctx, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %settime_flags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %settime_flags, align 2
  %conv = zext i16 %24 to i32
  %conv4 = sext i32 %value.sroa.5.0.copyload12 to i64
  %conv7 = sext i32 %interval.sroa.5.0.copyload9 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %20, i64 noundef %22, i32 noundef %conv, i64 noundef %value.sroa.0.0.copyload11, i64 noundef %conv4, i64 noundef %interval.sroa.0.0.copyload8, i64 noundef %conv7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr_irq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @alarm_forward_now(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alarm_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @alarm_expires_remaining(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_itimerspec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_timerfd_settime(i32 noundef %ufd, i32 noundef %flags, ptr nocapture noundef readonly %new, ptr nocapture noundef writeonly %old) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp44 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 4
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %new to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %new, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.i.i = icmp slt i64 %1, 0
  br i1 %cmp.i.i, label %lor.lhs.false.cleanup_crit_edge, label %timespec64_valid.exit.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

timespec64_valid.exit.i:                          ; preds = %lor.lhs.false
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %new, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %3)
  %cmp1.i.i = icmp ult i32 %3, 1000000000
  br i1 %cmp1.i.i, label %lor.lhs.false.i, label %timespec64_valid.exit.i.cleanup_crit_edge

timespec64_valid.exit.i.cleanup_crit_edge:        ; preds = %timespec64_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %timespec64_valid.exit.i
  %it_value.i = getelementptr inbounds %struct.itimerspec64, ptr %new, i32 0, i32 1
  %4 = ptrtoint ptr %it_value.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %it_value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.i3.i = icmp slt i64 %5, 0
  br i1 %cmp.i3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %itimerspec64_valid.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

itimerspec64_valid.exit:                          ; preds = %lor.lhs.false.i
  %tv_nsec.i4.i = getelementptr inbounds %struct.itimerspec64, ptr %new, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %tv_nsec.i4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_nsec.i4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %7)
  %cmp1.i5.i = icmp ult i32 %7, 1000000000
  br i1 %cmp1.i5.i, label %if.end, label %itimerspec64_valid.exit.cleanup_crit_edge

itimerspec64_valid.exit.cleanup_crit_edge:        ; preds = %itimerspec64_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %itimerspec64_valid.exit
  %call.i.i = tail call i32 @__fdget(i32 noundef %ufd) #7, !noalias !130
  %and.i.i.i = and i32 %call.i.i, -4
  %8 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %f_op.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_op.i, align 4
  %cmp.not.i = icmp eq ptr %10, @timerfd_fops
  br i1 %cmp.not.i, label %if.end4, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then2.i.cleanup_crit_edge, label %if.then.i.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fput(ptr noundef nonnull %8) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  %private_data = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 4
  %clockid.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clockid.i, align 8
  %15 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %land.lhs.true, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %call6 = tail call zeroext i1 @capable(i32 noundef 35) #7
  br i1 %call6, label %land.lhs.true.if.end8_crit_edge, label %if.then7

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i84 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i84, label %if.then7.cleanup_crit_edge, label %if.then.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fput(ptr noundef nonnull %8) #7
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %cancel_lock.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %cancel_lock.i) #7
  %17 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clockid.i, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %18, label %if.end8.if.else.i_crit_edge [
    i32 0, label %if.end8.land.lhs.true.i_crit_edge
    i32 8, label %if.end8.land.lhs.true.i_crit_edge119
  ]

if.end8.land.lhs.true.i_crit_edge119:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end8.land.lhs.true.i_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end8.if.else.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end8.land.lhs.true.i_crit_edge, %if.end8.land.lhs.true.i_crit_edge119
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %flags)
  %.not.i = icmp eq i32 %flags, 3
  br i1 %.not.i, label %if.then.i87, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i87:                                      ; preds = %land.lhs.true.i
  %might_cancel.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 11
  %20 = ptrtoint ptr %might_cancel.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %might_cancel.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not.i = icmp eq i8 %21, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.i87.timerfd_setup_cancel.exit_crit_edge

if.then.i87.timerfd_setup_cancel.exit_crit_edge:  ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %timerfd_setup_cancel.exit

if.then7.i:                                       ; preds = %if.then.i87
  %22 = ptrtoint ptr %might_cancel.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %might_cancel.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cancel_lock) #7
  %clist.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 9
  %23 = load ptr, ptr @cancel_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %clist.i, ptr noundef nonnull @cancel_list, ptr noundef %23) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.if.end9.sink.split.i_crit_edge

if.then7.i.if.end9.sink.split.i_crit_edge:        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.sink.split.i

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %clist.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %clist.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @cancel_list, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !133
  store volatile ptr %clist.i, ptr @cancel_list, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %clist.i, ptr %prev37.i.i.i, align 4
  br label %if.end9.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end8.if.else.i_crit_edge
  %might_cancel.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 11
  %27 = ptrtoint ptr %might_cancel.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %might_cancel.i.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i88 = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i88, label %if.else.i.timerfd_setup_cancel.exit_crit_edge, label %if.then.i.i89

if.else.i.timerfd_setup_cancel.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timerfd_setup_cancel.exit

if.then.i.i89:                                    ; preds = %if.else.i
  %29 = ptrtoint ptr %might_cancel.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %might_cancel.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @cancel_lock) #7
  %clist.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %clist.i.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i89.list_del_rcu.exit.i.i_crit_edge

if.then.i.i89.list_del_rcu.exit.i.i_crit_edge:    ; preds = %if.then.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i.i, align 4
  %32 = ptrtoint ptr %clist.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clist.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del_rcu.exit.i.i

list_del_rcu.exit.i.i:                            ; preds = %if.end.i.i.i.i, %if.then.i.i89.list_del_rcu.exit.i.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %list_del_rcu.exit.i.i, %if.end.i.i.i, %if.then7.i.if.end9.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cancel_lock) #7
  br label %timerfd_setup_cancel.exit

timerfd_setup_cancel.exit:                        ; preds = %if.end9.sink.split.i, %if.else.i.timerfd_setup_cancel.exit_crit_edge, %if.then.i87.timerfd_setup_cancel.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cancel_lock.i) #7
  %wqh = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end19, %timerfd_setup_cancel.exit
  tail call void @_raw_spin_lock_irq(ptr noundef %wqh) #7
  %37 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clockid.i, align 8
  %39 = and i32 %38, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %39)
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.cond
  %call11 = tail call i32 @alarm_try_to_cancel(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp = icmp sgt i32 %call11, -1
  br i1 %cmp, label %if.then10.for.end_crit_edge, label %if.then10.if.end19_crit_edge

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.else:                                          ; preds = %for.cond
  %call15 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %if.else.for.end_crit_edge, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then10.if.end19_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %wqh) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7
  br label %for.cond

for.end:                                          ; preds = %if.else.for.end_crit_edge, %if.then10.for.end_crit_edge
  %expired = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 6
  %41 = ptrtoint ptr %expired to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %expired, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool28.not = icmp eq i16 %42, 0
  br i1 %tobool28.not, label %for.end.if.end42_crit_edge, label %land.lhs.true29

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true29:                                  ; preds = %for.end
  %tintv = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 1
  %43 = ptrtoint ptr %tintv to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tintv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool30.not = icmp eq i64 %44, 0
  br i1 %tobool30.not, label %land.lhs.true29.if.end42_crit_edge, label %if.then31

land.lhs.true29.if.end42_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then31:                                        ; preds = %land.lhs.true29
  %45 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clockid.i, align 8
  %47 = and i32 %46, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i64 @alarm_forward_now(ptr noundef %12, i64 noundef %44) #7
  br label %if.end42

if.else37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %12, i32 0, i32 3
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %52() #7
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %12, i64 noundef %call.i, i64 noundef %44) #7
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.then33, %land.lhs.true29.if.end42_crit_edge, %for.end.if.end42_crit_edge
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %old, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  %53 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %clockid.i, align 8
  %55 = and i32 %54, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %if.then.i94, label %if.else.i96

if.then.i94:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i93 = tail call i64 @alarm_expires_remaining(ptr noundef %12) #7
  br label %timerfd_get_remaining.exit

if.else.i96:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.hrtimer, ptr %12, i32 0, i32 3
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %get_time.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %get_time.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_time.i.i, align 4
  %call.i.i95 = tail call i64 %60() #7
  %expires.i.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %12, i32 0, i32 1
  %61 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %expires.i.i.i, align 8
  %sub.i.i.i = sub i64 %62, %call.i.i95
  br label %timerfd_get_remaining.exit

timerfd_get_remaining.exit:                       ; preds = %if.else.i96, %if.then.i94
  %remaining.0.i = phi i64 [ %call1.i93, %if.then.i94 ], [ %sub.i.i.i, %if.else.i96 ]
  %63 = tail call i64 @llvm.smax.i64(i64 %remaining.0.i, i64 0) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %63) #7
  %64 = call ptr @memcpy(ptr %it_value, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp44) #7
  %tintv45 = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 1
  %65 = ptrtoint ptr %tintv45 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %tintv45, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp44, i64 noundef %66) #7
  %67 = call ptr @memcpy(ptr %old, ptr %tmp44, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp44) #7
  %68 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %clockid.i, align 8
  %and.i98 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i99 = icmp eq i32 %and.i98, 0
  %70 = xor i32 %and.i98, 1
  %71 = ptrtoint ptr %it_value.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %.unpack.i = load i64, ptr %it_value.i, align 8
  %72 = ptrtoint ptr %tv_nsec.i4.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %.unpack62.i = load i64, ptr %tv_nsec.i4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack.i)
  %cmp.i.i.i = icmp sgt i64 %.unpack.i, 9223372035
  %ts.sroa.2.8.extract.shift.i.i = lshr i64 %.unpack62.i, 32
  %mul.i.i.i = mul i64 %.unpack.i, 1000000000
  %add.i.i.i = add i64 %ts.sroa.2.8.extract.shift.i.i, %mul.i.i.i
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i64 9223372036854775807, i64 %add.i.i.i, !prof !134
  %73 = ptrtoint ptr %expired to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %expired, align 4
  %ticks.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 4
  %74 = ptrtoint ptr %ticks.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %ticks.i, align 8
  %75 = ptrtoint ptr %new to i32
  call void @__asan_load8_noabort(i32 %75)
  %.unpack63.i = load i64, ptr %new, align 8
  %76 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %.unpack65.i = load i64, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack63.i)
  %cmp.i.i66.i = icmp sgt i64 %.unpack63.i, 9223372035
  %ts.sroa.2.8.extract.shift.i67.i = lshr i64 %.unpack65.i, 32
  %mul.i.i68.i = mul i64 %.unpack63.i, 1000000000
  %add.i.i69.i = add i64 %ts.sroa.2.8.extract.shift.i67.i, %mul.i.i68.i
  %retval.0.i.i70.i = select i1 %cmp.i.i66.i, i64 9223372036854775807, i64 %add.i.i69.i, !prof !134
  %77 = ptrtoint ptr %tintv45 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %retval.0.i.i70.i, ptr %tintv45, align 8
  %78 = and i32 %69, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %78)
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %if.then.i101, label %if.else.i102

if.then.i101:                                     ; preds = %timerfd_get_remaining.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %69)
  %cmp.i = icmp ne i32 %69, 8
  %cond5.i = zext i1 %cmp.i to i32
  call void @alarm_init(ptr noundef %12, i32 noundef %cond5.i, ptr noundef nonnull @timerfd_alarmproc) #7
  br label %if.end.i103

if.else.i102:                                     ; preds = %timerfd_get_remaining.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @hrtimer_init(ptr noundef %12, i32 noundef %69, i32 noundef %70) #7
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %12, i32 0, i32 1
  %80 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %retval.0.i.i.i, ptr %expires.i.i, align 8
  %_softexpires.i.i = getelementptr inbounds %struct.hrtimer, ptr %12, i32 0, i32 1
  %81 = ptrtoint ptr %_softexpires.i.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %retval.0.i.i.i, ptr %_softexpires.i.i, align 8
  %function.i = getelementptr inbounds %struct.hrtimer, ptr %12, i32 0, i32 2
  %82 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @timerfd_tmrproc, ptr %function.i, align 8
  br label %if.end.i103

if.end.i103:                                      ; preds = %if.else.i102, %if.then.i101
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i.i.i)
  %cmp9.not.i = icmp eq i64 %retval.0.i.i.i, 0
  br i1 %cmp9.not.i, label %if.end.i103.if.end31.i_crit_edge, label %if.end15.i

if.end.i103.if.end31.i_crit_edge:                 ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.end15.i:                                       ; preds = %if.end.i103
  %83 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %clockid.i, align 8
  %85 = and i32 %84, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %85)
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %if.then17.i, label %if.else25.i

if.then17.i:                                      ; preds = %if.end15.i
  br i1 %tobool.not.i99, label %if.else22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @alarm_start(ptr noundef %12, i64 noundef %retval.0.i.i.i) #7
  br label %if.end27.i

if.else22.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @alarm_start_relative(ptr noundef %12, i64 noundef %retval.0.i.i.i) #7
  br label %if.end27.i

if.else25.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @hrtimer_start_range_ns(ptr noundef %12, i64 noundef %retval.0.i.i.i, i64 noundef 0, i32 noundef %70) #7
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else25.i, %if.else22.i, %if.then20.i
  %might_cancel.i.i104 = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 11
  %87 = ptrtoint ptr %might_cancel.i.i104 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %might_cancel.i.i104, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i.i105 = icmp eq i8 %88, 0
  br i1 %tobool.not.i.i105, label %if.end27.i.if.end31.i_crit_edge, label %lor.lhs.false.i.i

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

lor.lhs.false.i.i:                                ; preds = %if.end27.i
  %moffs.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 2
  %89 = ptrtoint ptr %moffs.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %moffs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %90)
  %cmp.not.i.i = icmp eq i64 %90, 9223372036854775807
  br i1 %cmp.not.i.i, label %timerfd_canceled.exit.i, label %lor.lhs.false.i.i.if.end31.i_crit_edge

lor.lhs.false.i.i.if.end31.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

timerfd_canceled.exit.i:                          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i106 = call i64 @ktime_mono_to_any(i64 noundef 0, i32 noundef 0) #7
  %91 = ptrtoint ptr %moffs.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %call.i.i.i106, ptr %moffs.i.i, align 8
  br label %timerfd_setup.exit

if.end31.i:                                       ; preds = %lor.lhs.false.i.i.if.end31.i_crit_edge, %if.end27.i.if.end31.i_crit_edge, %if.end.i103.if.end31.i_crit_edge
  %92 = trunc i32 %flags to i16
  %conv.i = and i16 %92, 3
  %settime_flags.i = getelementptr inbounds %struct.timerfd_ctx, ptr %12, i32 0, i32 7
  %93 = ptrtoint ptr %settime_flags.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.i, ptr %settime_flags.i, align 2
  br label %timerfd_setup.exit

timerfd_setup.exit:                               ; preds = %if.end31.i, %timerfd_canceled.exit.i
  %retval.0.i107 = phi i32 [ 0, %if.end31.i ], [ -125, %timerfd_canceled.exit.i ]
  call void @_raw_spin_unlock_irq(ptr noundef %wqh) #7
  %and.i108 = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.not.i109 = icmp eq i32 %and.i108, 0
  br i1 %tobool.not.i109, label %timerfd_setup.exit.cleanup_crit_edge, label %if.then.i110

timerfd_setup.exit.cleanup_crit_edge:             ; preds = %timerfd_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i110:                                     ; preds = %timerfd_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @fput(ptr noundef nonnull %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i110, %timerfd_setup.exit.cleanup_crit_edge, %if.then.i, %if.then7.cleanup_crit_edge, %if.then.i.i, %if.then2.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %itimerspec64_valid.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %timespec64_valid.exit.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %itimerspec64_valid.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.then7.cleanup_crit_edge ], [ -1, %if.then.i ], [ %retval.0.i107, %timerfd_setup.exit.cleanup_crit_edge ], [ %retval.0.i107, %if.then.i110 ], [ -22, %timespec64_valid.exit.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.i.i ], [ -22, %if.then2.i.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_itimerspec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alarm_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timerfd_tmrproc(ptr noundef %htmr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wqh.i = getelementptr inbounds %struct.timerfd_ctx, ptr %htmr, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wqh.i) #7
  %expired.i = getelementptr inbounds %struct.timerfd_ctx, ptr %htmr, i32 0, i32 6
  %0 = ptrtoint ptr %expired.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %expired.i, align 4
  %ticks.i = getelementptr inbounds %struct.timerfd_ctx, ptr %htmr, i32 0, i32 4
  %1 = ptrtoint ptr %ticks.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ticks.i, align 8
  %inc.i = add i64 %2, 1
  store i64 %inc.i, ptr %ticks.i, align 8
  tail call void @__wake_up_locked_key(ptr noundef %wqh.i, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wqh.i, i32 noundef %call2.i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_start_relative(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_timerfd_gettime(i32 noundef %ufd, ptr nocapture noundef writeonly %t) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp21 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__fdget(i32 noundef %ufd) #7, !noalias !135
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %f_op.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_op.i, align 4
  %cmp.not.i = icmp eq ptr %2, @timerfd_fops
  br i1 %cmp.not.i, label %if.end, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then2.i.cleanup_crit_edge, label %if.then.i.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fput(ptr noundef nonnull %0) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %wqh = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %wqh) #7
  %expired = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %expired to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %expired, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.not = icmp eq i16 %6, 0
  br i1 %tobool1.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %tintv = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %tintv to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tintv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool2.not = icmp eq i64 %8, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end19_crit_edge, label %if.then3

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then3:                                         ; preds = %land.lhs.true
  %9 = ptrtoint ptr %expired to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %expired, align 4
  %clockid.i = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 5
  %10 = ptrtoint ptr %clockid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clockid.i, align 8
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i64 @alarm_forward_now(ptr noundef %4, i64 noundef %8) #7
  %sub = add i64 %call9, -1
  %ticks = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 4
  %14 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ticks, align 8
  %add = add i64 %sub, %15
  store i64 %add, ptr %ticks, align 8
  tail call void @alarm_restart(ptr noundef %4) #7
  br label %if.end19

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %19() #7
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %4, i64 noundef %call.i, i64 noundef %8) #7
  %sub14 = add i64 %call1.i, -1
  %ticks15 = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 4
  %20 = ptrtoint ptr %ticks15 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ticks15, align 8
  %add16 = add i64 %sub14, %21
  store i64 %add16, ptr %ticks15, align 8
  %_softexpires.i.i.i = getelementptr inbounds %struct.hrtimer, ptr %4, i32 0, i32 1
  %22 = ptrtoint ptr %_softexpires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %_softexpires.i.i.i, align 8
  %expires.i.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %4, i32 0, i32 1
  %24 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %expires.i.i.i, align 8
  %sub.i.i = sub i64 %25, %23
  tail call void @hrtimer_start_range_ns(ptr noundef %4, i64 noundef %23, i64 noundef %sub.i.i, i32 noundef 0) #7
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then6, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %t, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  %clockid.i.i = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 5
  %26 = ptrtoint ptr %clockid.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clockid.i.i, align 8
  %28 = and i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i44 = tail call i64 @alarm_expires_remaining(ptr noundef %4) #7
  br label %timerfd_get_remaining.exit

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.hrtimer, ptr %4, i32 0, i32 3
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %get_time.i.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %get_time.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_time.i.i, align 4
  %call.i.i45 = tail call i64 %33() #7
  %expires.i.i.i46 = getelementptr inbounds %struct.timerqueue_node, ptr %4, i32 0, i32 1
  %34 = ptrtoint ptr %expires.i.i.i46 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %expires.i.i.i46, align 8
  %sub.i.i.i = sub i64 %35, %call.i.i45
  br label %timerfd_get_remaining.exit

timerfd_get_remaining.exit:                       ; preds = %if.else.i, %if.then.i
  %remaining.0.i = phi i64 [ %call1.i44, %if.then.i ], [ %sub.i.i.i, %if.else.i ]
  %36 = tail call i64 @llvm.smax.i64(i64 %remaining.0.i, i64 0) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %36) #7
  %37 = call ptr @memcpy(ptr %it_value, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp21) #7
  %tintv22 = getelementptr inbounds %struct.timerfd_ctx, ptr %4, i32 0, i32 1
  %38 = ptrtoint ptr %tintv22 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %tintv22, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp21, i64 noundef %39) #7
  %40 = call ptr @memcpy(ptr %t, ptr %tmp21, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp21) #7
  call void @_raw_spin_unlock_irq(ptr noundef %wqh) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i48 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i48, label %timerfd_get_remaining.exit.cleanup_crit_edge, label %if.then.i49

timerfd_get_remaining.exit.cleanup_crit_edge:     ; preds = %timerfd_get_remaining.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i49:                                      ; preds = %timerfd_get_remaining.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @fput(ptr noundef nonnull %0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i49, %timerfd_get_remaining.exit.cleanup_crit_edge, %if.then.i.i, %if.then2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %timerfd_get_remaining.exit.cleanup_crit_edge ], [ 0, %if.then.i49 ], [ -22, %if.then.i.i ], [ -22, %if.then2.i.cleanup_crit_edge ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_itimerspec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_itimerspec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !65, !66, !67, !68, !69, !70, !71, !73, !74, !76, !77, !79, !81, !83, !85, !86, !88, !90, !92, !93, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/timerfd.c", i32 104, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/timerfd.c", i32 406, i32 1}
!6 = !{ptr @event_enter__timerfd_create, !5, !"event_enter__timerfd_create", i1 false, i1 false}
!7 = !{ptr @__event_enter__timerfd_create, !5, !"__event_enter__timerfd_create", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @event_exit__timerfd_create, !5, !"event_exit__timerfd_create", i1 false, i1 false}
!10 = !{ptr @__event_exit__timerfd_create, !5, !"__event_exit__timerfd_create", i1 false, i1 false}
!11 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__syscall_meta__timerfd_create, !5, !"__syscall_meta__timerfd_create", i1 false, i1 false}
!13 = !{ptr @__p_syscall_meta__timerfd_create, !5, !"__p_syscall_meta__timerfd_create", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/timerfd.c", i32 558, i32 1}
!16 = !{ptr @event_enter__timerfd_settime, !15, !"event_enter__timerfd_settime", i1 false, i1 false}
!17 = !{ptr @__event_enter__timerfd_settime, !15, !"__event_enter__timerfd_settime", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @event_exit__timerfd_settime, !15, !"event_exit__timerfd_settime", i1 false, i1 false}
!20 = !{ptr @__event_exit__timerfd_settime, !15, !"__event_exit__timerfd_settime", i1 false, i1 false}
!21 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__syscall_meta__timerfd_settime, !15, !"__syscall_meta__timerfd_settime", i1 false, i1 false}
!23 = !{ptr @__p_syscall_meta__timerfd_settime, !15, !"__p_syscall_meta__timerfd_settime", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/timerfd.c", i32 576, i32 1}
!26 = !{ptr @event_enter__timerfd_gettime, !25, !"event_enter__timerfd_gettime", i1 false, i1 false}
!27 = !{ptr @__event_enter__timerfd_gettime, !25, !"__event_enter__timerfd_gettime", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @event_exit__timerfd_gettime, !25, !"event_exit__timerfd_gettime", i1 false, i1 false}
!30 = !{ptr @__event_exit__timerfd_gettime, !25, !"__event_exit__timerfd_gettime", i1 false, i1 false}
!31 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__syscall_meta__timerfd_gettime, !25, !"__syscall_meta__timerfd_gettime", i1 false, i1 false}
!33 = !{ptr @__p_syscall_meta__timerfd_gettime, !25, !"__p_syscall_meta__timerfd_gettime", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/timerfd.c", i32 586, i32 1}
!36 = !{ptr @event_enter__timerfd_settime32, !35, !"event_enter__timerfd_settime32", i1 false, i1 false}
!37 = !{ptr @__event_enter__timerfd_settime32, !35, !"__event_enter__timerfd_settime32", i1 false, i1 false}
!38 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @event_exit__timerfd_settime32, !35, !"event_exit__timerfd_settime32", i1 false, i1 false}
!40 = !{ptr @__event_exit__timerfd_settime32, !35, !"__event_exit__timerfd_settime32", i1 false, i1 false}
!41 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__syscall_meta__timerfd_settime32, !35, !"__syscall_meta__timerfd_settime32", i1 false, i1 false}
!43 = !{ptr @__p_syscall_meta__timerfd_settime32, !35, !"__p_syscall_meta__timerfd_settime32", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/timerfd.c", i32 603, i32 1}
!46 = !{ptr @event_enter__timerfd_gettime32, !45, !"event_enter__timerfd_gettime32", i1 false, i1 false}
!47 = !{ptr @__event_enter__timerfd_gettime32, !45, !"__event_enter__timerfd_gettime32", i1 false, i1 false}
!48 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @event_exit__timerfd_gettime32, !45, !"event_exit__timerfd_gettime32", i1 false, i1 false}
!50 = !{ptr @__event_exit__timerfd_gettime32, !45, !"__event_exit__timerfd_gettime32", i1 false, i1 false}
!51 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__syscall_meta__timerfd_gettime32, !45, !"__syscall_meta__timerfd_gettime32", i1 false, i1 false}
!53 = !{ptr @__p_syscall_meta__timerfd_gettime32, !45, !"__p_syscall_meta__timerfd_gettime32", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cancel_list, !59, !"cancel_list", i1 false, i1 false}
!59 = !{!"../fs/timerfd.c", i32 49, i32 8}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/timerfd.c", i32 123, i32 8}
!65 = !{ptr @timerfd_work, !64, !"timerfd_work", i1 false, i1 false}
!66 = !{ptr @.str.21, !5, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @types__timerfd_create, !5, !"types__timerfd_create", i1 false, i1 false}
!68 = !{ptr @.str.22, !5, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.23, !5, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @args__timerfd_create, !5, !"args__timerfd_create", i1 false, i1 false}
!71 = !{ptr @__do_sys_timerfd_create.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../fs/timerfd.c", i32 432, i32 2}
!73 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__do_sys_timerfd_create.__key.25, !75, !"__key", i1 false, i1 false}
!75 = !{!"../fs/timerfd.c", i32 433, i32 2}
!76 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/timerfd.c", i32 446, i32 25}
!79 = !{ptr @timerfd_fops, !80, !"timerfd_fops", i1 false, i1 false}
!80 = !{!"../fs/timerfd.c", i32 384, i32 37}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../fs/timerfd.c", i32 278, i32 9}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!85 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/timerfd.c", i32 50, i32 8}
!92 = !{ptr @cancel_lock, !91, !"cancel_lock", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/timerfd.c", i32 332, i32 6}
!95 = !{ptr @.str.33, !15, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.34, !15, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @types__timerfd_settime, !15, !"types__timerfd_settime", i1 false, i1 false}
!98 = !{ptr @.str.35, !15, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.36, !15, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.37, !15, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @args__timerfd_settime, !15, !"args__timerfd_settime", i1 false, i1 false}
!102 = !{ptr @types__timerfd_gettime, !25, !"types__timerfd_gettime", i1 false, i1 false}
!103 = !{ptr @args__timerfd_gettime, !25, !"args__timerfd_gettime", i1 false, i1 false}
!104 = !{ptr @.str.38, !35, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.39, !35, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @types__timerfd_settime32, !35, !"types__timerfd_settime32", i1 false, i1 false}
!107 = !{ptr @args__timerfd_settime32, !35, !"args__timerfd_settime32", i1 false, i1 false}
!108 = !{ptr @types__timerfd_gettime32, !45, !"types__timerfd_gettime32", i1 false, i1 false}
!109 = !{ptr @args__timerfd_gettime32, !45, !"args__timerfd_gettime32", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2149249482}
!121 = !{i8 0, i8 2}
!122 = !{i64 2149249748}
!123 = !{i64 4680977}
!124 = !{i64 4681174}
!125 = !{i64 2152166407}
!126 = !{i64 2155051521, i64 2155051801, i64 2155052135, i64 2155052469}
!127 = !{!"auto-init"}
!128 = !{i64 2152185422, i64 2152185447}
!129 = !{!"branch_weights", i32 2000, i32 1}
!130 = !{!131}
!131 = distinct !{!131, !132, !"fdget: %agg.result"}
!132 = distinct !{!132, !"fdget"}
!133 = !{i64 2150092522}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{!136}
!136 = distinct !{!136, !137, !"fdget: %agg.result"}
!137 = distinct !{!137, !"fdget"}
