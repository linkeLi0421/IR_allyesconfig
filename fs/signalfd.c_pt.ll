; ModuleID = '/llk/IR_all_yes/fs/signalfd.c_pt.bc'
source_filename = "../fs/signalfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.2, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.2 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.sigset_t = type { [2 x i32] }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.signalfd_siginfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i16, i32, i64, i32, [28 x i8] }
%struct.kernel_siginfo = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, i32, i32 }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_signalfd4\00", [44 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__signalfd4 = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 4, ptr @types__signalfd4, ptr @args__signalfd4, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__signalfd4, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__signalfd4, i64 20) }, ptr @event_enter__signalfd4, ptr @event_exit__signalfd4 }, align 4
@event_enter__signalfd4 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.2 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__signalfd4, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__signalfd4 = internal global ptr @event_enter__signalfd4, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_signalfd4\00", [45 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__signalfd4 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.2 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__signalfd4, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__signalfd4 = internal global ptr @event_exit__signalfd4, section "_ftrace_events", align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_signalfd4\00", [18 x i8] zeroinitializer }, align 32
@types__signalfd4 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@args__signalfd4 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__signalfd4 = internal global ptr @__syscall_meta__signalfd4, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_signalfd\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__signalfd = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 3, ptr @types__signalfd, ptr @args__signalfd, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__signalfd, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__signalfd, i64 20) }, ptr @event_enter__signalfd, ptr @event_exit__signalfd }, align 4
@event_enter__signalfd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.2 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__signalfd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__signalfd = internal global ptr @event_enter__signalfd, section "_ftrace_events", align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_signalfd\00", [46 x i8] zeroinitializer }, align 32
@event_exit__signalfd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.2 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.4 zeroinitializer, ptr @__syscall_meta__signalfd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__signalfd = internal global ptr @event_exit__signalfd, section "_ftrace_events", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_signalfd\00", [19 x i8] zeroinitializer }, align 32
@types__signalfd = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], [20 x i8] zeroinitializer }, align 32
@args__signalfd = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__signalfd = internal global ptr @__syscall_meta__signalfd, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sigset_t *\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ufd\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"user_mask\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sizemask\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[signalfd]\00", [21 x i8] zeroinitializer }, align 32
@signalfd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @signalfd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @signalfd_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @signalfd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @signalfd_show_fdinfo, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sigmask:\09\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"event_enter__signalfd4\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"event_exit__signalfd4\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"types__signalfd4\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"args__signalfd4\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"event_enter__signalfd\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"event_exit__signalfd\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"types__signalfd\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"args__signalfd\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 314, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 302, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 156, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 278, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"signalfd_fops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 243, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [17 x i8] c"../fs/signalfd.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 239, i32 21 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__event_enter__signalfd, ptr @__event_enter__signalfd4, ptr @__event_exit__signalfd, ptr @__event_exit__signalfd4, ptr @__p_syscall_meta__signalfd, ptr @__p_syscall_meta__signalfd4, ptr @__syscall_meta__signalfd, ptr @__syscall_meta__signalfd4, ptr @event_enter__signalfd, ptr @event_enter__signalfd4, ptr @event_exit__signalfd, ptr @event_exit__signalfd4, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__signalfd4, ptr @args__signalfd4, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__signalfd, ptr @args__signalfd, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @signalfd_fops, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__signalfd4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__signalfd4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__signalfd4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__signalfd4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__signalfd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__signalfd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__signalfd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__signalfd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signalfd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_signalfd4 = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_signalfd4
@sys_signalfd = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_signalfd

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @signalfd_cleanup(ptr noundef %sighand) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sighand_struct, ptr %sighand, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %1, %head.i.i
  br i1 %cmp.i.i.not.i, label %entry.wake_up_pollfree.exit_crit_edge, label %if.then.i

entry.wake_up_pollfree.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wake_up_pollfree.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, ptr %sighand, i32 0, i32 2
  tail call void @__wake_up_pollfree(ptr noundef %signalfd_wqh) #5
  br label %wake_up_pollfree.exit

wake_up_pollfree.exit:                            ; preds = %if.then.i, %entry.wake_up_pollfree.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_signalfd4(i32 noundef %ufd, i32 noundef %user_mask, i32 noundef %sizemask, i32 noundef %flags) #0 align 64 {
entry:
  %mask.i = alloca %struct.sigset_t, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %user_mask to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask.i) #5
  %1 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask.i, align 4, !annotation !59
  %2 = getelementptr inbounds [2 x i32], ptr %mask.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sizemask)
  %cmp.not.i = icmp eq i32 %sizemask, 8
  br i1 %cmp.not.i, label %if.then.i.i, label %entry.__do_sys_signalfd4.exit_crit_edge

entry.__do_sys_signalfd4.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_signalfd4.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #5
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %if.then.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.if.then11.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #8, !srcloc !60
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !61

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mask.i, i32 noundef 8) #5
  %5 = call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !62
  %and.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #5, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mask.i, ptr noundef %0, i32 noundef 8) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #5, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end2.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !61

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.then.i.i.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %mask.i, i32 %sub.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %__do_sys_signalfd4.exit

if.end2.i:                                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = call fastcc i32 @do_signalfd4(i32 noundef %ufd, ptr noundef nonnull %mask.i, i32 noundef %flags) #5
  br label %__do_sys_signalfd4.exit

__do_sys_signalfd4.exit:                          ; preds = %if.end2.i, %if.then11.i.i.i, %entry.__do_sys_signalfd4.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end2.i ], [ -22, %entry.__do_sys_signalfd4.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_signalfd(i32 noundef %ufd, i32 noundef %user_mask, i32 noundef %sizemask) #0 align 64 {
entry:
  %mask.i = alloca %struct.sigset_t, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %user_mask to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask.i) #5
  %1 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask.i, align 4, !annotation !59
  %2 = getelementptr inbounds [2 x i32], ptr %mask.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sizemask)
  %cmp.not.i = icmp eq i32 %sizemask, 8
  br i1 %cmp.not.i, label %if.then.i.i, label %entry.__do_sys_signalfd.exit_crit_edge

entry.__do_sys_signalfd.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__do_sys_signalfd.exit

if.then.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #5
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %if.then.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.if.then11.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #8, !srcloc !60
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !61

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mask.i, i32 noundef 8) #5
  %5 = call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !62
  %and.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #5, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mask.i, ptr noundef %0, i32 noundef 8) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #5, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end2.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !61

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.then.i.i.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %mask.i, i32 %sub.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %__do_sys_signalfd.exit

if.end2.i:                                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = call fastcc i32 @do_signalfd4(i32 noundef %ufd, ptr noundef nonnull %mask.i, i32 noundef 0) #5
  br label %__do_sys_signalfd.exit

__do_sys_signalfd.exit:                           ; preds = %if.end2.i, %if.then11.i.i.i, %entry.__do_sys_signalfd.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end2.i ], [ -22, %entry.__do_sys_signalfd.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_pollfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_signalfd4(i32 noundef %ufd, ptr nocapture noundef %mask, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, -526337
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup31_crit_edge

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %and.i = and i32 %1, -262401
  %arrayidx.i = getelementptr [2 x i32], ptr %mask, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %neg.i = xor i32 %3, -1
  store i32 %neg.i, ptr %arrayidx.i, align 4
  %neg5.i = xor i32 %and.i, -1
  store i32 %neg5.i, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ufd)
  %cmp = icmp eq i32 %ufd, -1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 8) #9
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.then4.cleanup31_crit_edge, label %if.end7

if.then4.cleanup31_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

if.end7:                                          ; preds = %if.then4
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %mask, align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %call7.i, align 8
  %and8 = and i32 %flags, 526336
  %or = or i32 %and8, 2
  %call9 = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.16, ptr noundef nonnull @signalfd_fops, ptr noundef nonnull %call7.i, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end7.cleanup31_crit_edge

if.end7.cleanup31_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup31

if.else:                                          ; preds = %if.end
  %call.i = tail call i32 @__fdget(i32 noundef %ufd) #5, !noalias !65
  %and.i.i = and i32 %call.i, -4
  %8 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool13.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool13.not, label %if.else.cleanup31_crit_edge, label %if.end15

if.else.cleanup31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

if.end15:                                         ; preds = %if.else
  %f_op = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_op, align 4
  %cmp18.not = icmp eq ptr %10, @signalfd_fops
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end15
  %and.i49 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i, label %if.then19.cleanup31_crit_edge, label %if.then.i

if.then19.cleanup31_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fput(ptr noundef nonnull %8) #5
  br label %cleanup31

if.end20:                                         ; preds = %if.end15
  %private_data = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i50 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i50 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 112
  %17 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %18) #5
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %mask, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %12, align 4
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %sighand25 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 112
  %24 = ptrtoint ptr %sighand25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sighand25, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %25) #5
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %sighand29 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 112
  %28 = ptrtoint ptr %sighand29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sighand29, align 4
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, ptr %29, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %signalfd_wqh, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  %and.i51 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %if.end20.cleanup31_crit_edge, label %if.then.i53

if.end20.cleanup31_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

if.then.i53:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fput(ptr noundef nonnull %8) #5
  br label %cleanup31

cleanup31:                                        ; preds = %if.then.i53, %if.end20.cleanup31_crit_edge, %if.then.i, %if.then19.cleanup31_crit_edge, %if.else.cleanup31_crit_edge, %if.then11, %if.end7.cleanup31_crit_edge, %if.then4.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup31_crit_edge ], [ -12, %if.then4.cleanup31_crit_edge ], [ %call9, %if.then11 ], [ %call9, %if.end7.cleanup31_crit_edge ], [ %ufd, %if.then.i53 ], [ %ufd, %if.end20.cleanup31_crit_edge ], [ -22, %if.then.i ], [ -22, %if.then19.cleanup31_crit_edge ], [ -9, %if.else.cleanup31_crit_edge ]
  ret i32 %retval.1
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @signalfd_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %new.i = alloca %struct.signalfd_siginfo, align 8
  %info = alloca %struct.kernel_siginfo, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #5
  %4 = getelementptr inbounds %struct.anon.47, ptr %info, i32 0, i32 1
  %5 = getelementptr inbounds %struct.anon.47, ptr %info, i32 0, i32 2
  %6 = getelementptr inbounds %struct.anon.47, ptr %info, i32 0, i32 3
  %7 = getelementptr inbounds %struct.anon.47, ptr %info, i32 0, i32 3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.anon.47, ptr %info, i32 0, i32 3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.anon.47, ptr %info, i32 0, i32 3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.anon.47, ptr %info, i32 0, i32 3, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %count)
  %tobool.not = icmp ult i32 %count, 128
  %11 = call ptr @memset(ptr %info, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %div25 = lshr i32 %count, 7
  %and = and i32 %3, 2048
  %12 = getelementptr inbounds i8, ptr %new.i, i32 8
  %ssi_errno.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 1
  %ssi_call_addr.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 19
  %ssi_syscall.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 18
  %ssi_arch.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 20
  %ssi_pid43.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 3
  %ssi_uid46.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 4
  %ssi_ptr50.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 12
  %ssi_int53.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 11
  %ssi_status.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 10
  %ssi_utime.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 13
  %ssi_stime.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 14
  %ssi_addr26.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 15
  %ssi_addr_lsb.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 16
  %ssi_trapno.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 9
  %ssi_band.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 7
  %ssi_fd.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 5
  %ssi_tid.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 6
  %ssi_overrun.i = getelementptr inbounds %struct.signalfd_siginfo, ptr %new.i, i32 0, i32 8
  %13 = and i32 %count, -128
  br label %do.body

do.body:                                          ; preds = %if.end8.do.body_crit_edge, %if.end
  %count.addr.0 = phi i32 [ %div25, %if.end ], [ %dec, %if.end8.do.body_crit_edge ]
  %siginfo.0 = phi ptr [ %buf, %if.end ], [ %incdec.ptr, %if.end8.do.body_crit_edge ]
  %nonblock.0 = phi i32 [ %and, %if.end ], [ 1, %if.end8.do.body_crit_edge ]
  %total.0 = phi i32 [ 0, %if.end ], [ %add, %if.end8.do.body_crit_edge ]
  %call = call fastcc i32 @signalfd_dequeue(ptr noundef %1, ptr noundef nonnull %info, i32 noundef %nonblock.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %do.body.do.end_crit_edge, label %if.end4, !prof !68

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end4:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %new.i) #5
  %14 = call ptr @memset(ptr %12, i32 0, i32 120)
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %info, align 4
  %17 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %new.i, align 8
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 4
  %20 = ptrtoint ptr %ssi_errno.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ssi_errno.i, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %12, align 8
  %call.i = call i32 @siginfo_layout(i32 noundef %16, i32 noundef %22) #5
  %24 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end4.if.then.i.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb10.i
    i32 6, label %if.end4.sw.bb13.i_crit_edge
    i32 7, label %if.end4.sw.bb13.i_crit_edge33
    i32 8, label %if.end4.sw.bb13.i_crit_edge34
    i32 3, label %if.end4.sw.bb13.i_crit_edge35
    i32 4, label %sw.bb16.i
    i32 5, label %sw.bb22.i
    i32 9, label %sw.bb28.i
    i32 10, label %sw.bb40.i
    i32 11, label %sw.bb54.i
  ]

if.end4.sw.bb13.i_crit_edge35:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end4.sw.bb13.i_crit_edge34:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end4.sw.bb13.i_crit_edge33:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end4.sw.bb13.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end4.if.then.i.i_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

sw.bb.i:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %6, align 4
  %27 = ptrtoint ptr %ssi_pid43.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ssi_pid43.i, align 4
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %7, align 4
  %30 = ptrtoint ptr %ssi_uid46.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ssi_uid46.i, align 8
  br label %if.then.i.i

sw.bb4.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %6, align 4
  %33 = ptrtoint ptr %ssi_tid.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ssi_tid.i, align 8
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %7, align 4
  %36 = ptrtoint ptr %ssi_overrun.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ssi_overrun.i, align 8
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %8, align 4
  %39 = ptrtoint ptr %38 to i32
  %conv.i = sext i32 %39 to i64
  %40 = ptrtoint ptr %ssi_ptr50.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv.i, ptr %ssi_ptr50.i, align 8
  %41 = ptrtoint ptr %ssi_int53.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %ssi_int53.i, align 4
  br label %if.then.i.i

sw.bb10.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %6, align 4
  %44 = ptrtoint ptr %ssi_band.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %ssi_band.i, align 4
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %7, align 4
  %47 = ptrtoint ptr %ssi_fd.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %ssi_fd.i, align 4
  br label %if.then.i.i

sw.bb13.i:                                        ; preds = %if.end4.sw.bb13.i_crit_edge, %if.end4.sw.bb13.i_crit_edge33, %if.end4.sw.bb13.i_crit_edge34, %if.end4.sw.bb13.i_crit_edge35
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %6, align 4
  %50 = ptrtoint ptr %49 to i32
  %conv15.i = sext i32 %50 to i64
  %51 = ptrtoint ptr %ssi_addr26.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv15.i, ptr %ssi_addr26.i, align 8
  br label %if.then.i.i

sw.bb16.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %6, align 4
  %54 = ptrtoint ptr %53 to i32
  %conv19.i = sext i32 %54 to i64
  %55 = ptrtoint ptr %ssi_addr26.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv19.i, ptr %ssi_addr26.i, align 8
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %7, align 4
  %58 = ptrtoint ptr %ssi_trapno.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %ssi_trapno.i, align 4
  br label %if.then.i.i

sw.bb22.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %6, align 4
  %61 = ptrtoint ptr %60 to i32
  %conv25.i = sext i32 %61 to i64
  %62 = ptrtoint ptr %ssi_addr26.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv25.i, ptr %ssi_addr26.i, align 8
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %7, align 4
  %65 = ptrtoint ptr %ssi_addr_lsb.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %ssi_addr_lsb.i, align 8
  br label %if.then.i.i

sw.bb28.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %6, align 4
  %68 = ptrtoint ptr %ssi_pid43.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %ssi_pid43.i, align 4
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %7, align 4
  %71 = ptrtoint ptr %ssi_uid46.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %ssi_uid46.i, align 8
  %72 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %8, align 4
  %74 = ptrtoint ptr %ssi_status.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %ssi_status.i, align 8
  %75 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %9, align 4
  %conv37.i = sext i32 %76 to i64
  %77 = ptrtoint ptr %ssi_utime.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv37.i, ptr %ssi_utime.i, align 8
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %10, align 4
  %conv39.i = sext i32 %79 to i64
  %80 = ptrtoint ptr %ssi_stime.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv39.i, ptr %ssi_stime.i, align 8
  br label %if.then.i.i

sw.bb40.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %6, align 4
  %83 = ptrtoint ptr %ssi_pid43.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %ssi_pid43.i, align 4
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %7, align 4
  %86 = ptrtoint ptr %ssi_uid46.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %ssi_uid46.i, align 8
  %87 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %8, align 4
  %89 = ptrtoint ptr %88 to i32
  %conv49.i = sext i32 %89 to i64
  %90 = ptrtoint ptr %ssi_ptr50.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv49.i, ptr %ssi_ptr50.i, align 8
  %91 = ptrtoint ptr %ssi_int53.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %89, ptr %ssi_int53.i, align 4
  br label %if.then.i.i

sw.bb54.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %6, align 4
  %94 = ptrtoint ptr %93 to i32
  %conv56.i = sext i32 %94 to i64
  %95 = ptrtoint ptr %ssi_call_addr.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %conv56.i, ptr %ssi_call_addr.i, align 8
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %7, align 4
  %98 = ptrtoint ptr %ssi_syscall.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %ssi_syscall.i, align 4
  %99 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %8, align 4
  %101 = ptrtoint ptr %ssi_arch.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %ssi_arch.i, align 8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb54.i, %sw.bb40.i, %sw.bb28.i, %sw.bb22.i, %sw.bb16.i, %sw.bb13.i, %sw.bb10.i, %sw.bb4.i, %sw.bb.i, %if.end4.if.then.i.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #5
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %if.then.i.i.signalfd_copyinfo.exit.thread_crit_edge, label %if.end.i.i.i

if.then.i.i.signalfd_copyinfo.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %signalfd_copyinfo.exit.thread

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %102 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %siginfo.0, i32 128, i32 -1226833920) #8, !srcloc !69
  %asmresult.i.i.i = extractvalue { i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.signalfd_copyinfo.exit.thread_crit_edge

if.end.i.i.i.signalfd_copyinfo.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %signalfd_copyinfo.exit.thread

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %new.i, i32 noundef 128) #5
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %siginfo.0, ptr noundef nonnull %new.i, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end8, label %copy_to_user.exit.i.signalfd_copyinfo.exit.thread_crit_edge

copy_to_user.exit.i.signalfd_copyinfo.exit.thread_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %signalfd_copyinfo.exit.thread

signalfd_copyinfo.exit.thread:                    ; preds = %copy_to_user.exit.i.signalfd_copyinfo.exit.thread_crit_edge, %if.end.i.i.i.signalfd_copyinfo.exit.thread_crit_edge, %if.then.i.i.signalfd_copyinfo.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %new.i) #5
  br label %do.end

if.end8:                                          ; preds = %copy_to_user.exit.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %new.i) #5
  %incdec.ptr = getelementptr %struct.signalfd_siginfo, ptr %siginfo.0, i32 1
  %add = add nuw i32 %total.0, 128
  %dec = add nsw i32 %count.addr.0, -1
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %if.end8.do.end_crit_edge, label %if.end8.do.body_crit_edge

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end8.do.end_crit_edge, %signalfd_copyinfo.exit.thread, %do.body.do.end_crit_edge
  %ret.0 = phi i32 [ -14, %signalfd_copyinfo.exit.thread ], [ 128, %if.end8.do.end_crit_edge ], [ %call, %do.body.do.end_crit_edge ]
  %total.1 = phi i32 [ %total.0, %signalfd_copyinfo.exit.thread ], [ %13, %if.end8.do.end_crit_edge ], [ %total.0, %do.body.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total.1)
  %tobool10.not = icmp eq i32 %total.1, 0
  %ret.0.total.1 = select i1 %tobool10.not, i32 %ret.0, i32 %total.1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.total.1, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @signalfd_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 112
  %6 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sighand, align 4
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, ptr %7, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  %tobool3.not.i = icmp eq ptr %signalfd_wqh, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef %file, ptr noundef nonnull %signalfd_wqh, ptr noundef nonnull %wait) #5
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %sighand3 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 112
  %12 = ptrtoint ptr %sighand3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sighand3, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #5
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pending = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 116
  %call6 = tail call i32 @next_signal(ptr noundef %pending, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %poll_wait.exit.if.then_crit_edge

poll_wait.exit.if.then_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %poll_wait.exit
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 111
  %18 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal, align 16
  %shared_pending = getelementptr inbounds %struct.signal_struct, ptr %19, i32 0, i32 6
  %call10 = tail call i32 @next_signal(ptr noundef %shared_pending, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %poll_wait.exit.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %events.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %sighand14 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 112
  %22 = ptrtoint ptr %sighand14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sighand14, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %23) #5
  ret i32 %events.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @signalfd_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @signalfd_show_fdinfo(ptr noundef %m, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  %sigmask = alloca %struct.sigset_t, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sigmask) #5
  %2 = getelementptr inbounds [2 x i32], ptr %sigmask, i32 0, i32 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %1, align 4
  %5 = trunc i64 %4 to i32
  %neg.i = xor i32 %5, -1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %neg.i, ptr %2, align 4
  %7 = lshr i64 %4, 32
  %8 = trunc i64 %7 to i32
  %neg5.i = xor i32 %8, -1
  %9 = ptrtoint ptr %sigmask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %neg5.i, ptr %sigmask, align 8
  call void @render_sigset_t(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef nonnull %sigmask) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sigmask) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @signalfd_dequeue(ptr noundef %ctx, ptr noundef %info, i32 noundef %nonblock) #0 align 64 {
entry:
  %type = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #5
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #5
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !49) #5
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @default_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 112
  %15 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #5
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %call6 = call i32 @dequeue_signal(ptr noundef %18, ptr noundef %ctx, ptr noundef %info, ptr noundef nonnull %type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cond = icmp eq i32 %call6, 0
  br i1 %cond, label %sw.bb, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool.not = icmp eq i32 %nonblock, 0
  br i1 %tobool.not, label %sw.epilog, label %sw.bb.sw.default_crit_edge

sw.bb.sw.default_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.default:                                       ; preds = %sw.bb.sw.default_crit_edge, %entry.sw.default_crit_edge
  %ret.0 = phi i32 [ %call6, %entry.sw.default_crit_edge ], [ -11, %sw.bb.sw.default_crit_edge ]
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %sighand9 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 112
  %21 = ptrtoint ptr %sighand9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sighand9, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %22) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %sighand13 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 112
  %25 = ptrtoint ptr %sighand13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sighand13, align 4
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, ptr %26, i32 0, i32 2
  call void @add_wait_queue(ptr noundef %signalfd_wqh, ptr noundef nonnull %wait) #5
  br label %__here

__here:                                           ; preds = %if.end89, %sw.epilog
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 212
  %29 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 ptrtoint (ptr blockaddress(@signalfd_dequeue, %__here) to i32), ptr %task_state_change, align 4
  %30 = load ptr, ptr %task, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 1, ptr %30, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !70
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %call81 = call i32 @dequeue_signal(ptr noundef %33, ptr noundef %ctx, ptr noundef %info, ptr noundef nonnull %type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp.not = icmp eq i32 %call81, 0
  br i1 %cmp.not, label %if.end83, label %__here.for.end_crit_edge

__here.for.end_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end83:                                         ; preds = %__here
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stack.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %40 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end83.for.end_crit_edge, !prof !61

if.end83.for.end_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

signal_pending.exit:                              ; preds = %if.end83
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %37, align 4
  %and1.i.i.i.i.i = and i32 %42, 1
  %tobool87.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool87.not, label %if.end89, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end89:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sighand92 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 112
  %43 = ptrtoint ptr %sighand92 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sighand92, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %44) #5
  call void @schedule() #5
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %sighand96 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 112
  %47 = ptrtoint ptr %sighand96 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sighand96, align 4
  call void @_raw_spin_lock_irq(ptr noundef %48) #5
  br label %__here

for.end:                                          ; preds = %signal_pending.exit.for.end_crit_edge, %if.end83.for.end_crit_edge, %__here.for.end_crit_edge
  %ret.1 = phi i32 [ %call81, %__here.for.end_crit_edge ], [ -512, %signal_pending.exit.for.end_crit_edge ], [ -512, %if.end83.for.end_crit_edge ]
  %49 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task, align 8
  %sighand100 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 112
  %51 = ptrtoint ptr %sighand100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sighand100, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %52) #5
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %sighand104 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 112
  %55 = ptrtoint ptr %sighand104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sighand104, align 4
  %signalfd_wqh105 = getelementptr inbounds %struct.sighand_struct, ptr %56, i32 0, i32 2
  call void @remove_wait_queue(ptr noundef %signalfd_wqh105, ptr noundef nonnull %wait) #5
  br label %__here156

__here156:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task, align 8
  %task_state_change160 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 212
  %59 = ptrtoint ptr %task_state_change160 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 ptrtoint (ptr blockaddress(@signalfd_dequeue, %__here156) to i32), ptr %task_state_change160, align 4
  %60 = load ptr, ptr %task, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %60, align 128
  br label %cleanup

cleanup:                                          ; preds = %__here156, %sw.default
  %retval.0 = phi i32 [ %ret.0, %sw.default ], [ %ret.1, %__here156 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dequeue_signal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @siginfo_layout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @next_signal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @render_sigset_t(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !43, !45, !47, !48}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/signalfd.c", i32 302, i32 1}
!2 = !{ptr @event_enter__signalfd4, !1, !"event_enter__signalfd4", i1 false, i1 false}
!3 = !{ptr @__event_enter__signalfd4, !1, !"__event_enter__signalfd4", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__signalfd4, !1, !"event_exit__signalfd4", i1 false, i1 false}
!6 = !{ptr @__event_exit__signalfd4, !1, !"__event_exit__signalfd4", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__signalfd4, !1, !"__syscall_meta__signalfd4", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__signalfd4, !1, !"__p_syscall_meta__signalfd4", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/signalfd.c", i32 314, i32 1}
!12 = !{ptr @event_enter__signalfd, !11, !"event_enter__signalfd", i1 false, i1 false}
!13 = !{ptr @__event_enter__signalfd, !11, !"__event_enter__signalfd", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__signalfd, !11, !"event_exit__signalfd", i1 false, i1 false}
!16 = !{ptr @__event_exit__signalfd, !11, !"__event_exit__signalfd", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__signalfd, !11, !"__syscall_meta__signalfd", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__signalfd, !11, !"__p_syscall_meta__signalfd", i1 false, i1 false}
!20 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @types__signalfd4, !1, !"types__signalfd4", i1 false, i1 false}
!24 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @args__signalfd4, !1, !"args__signalfd4", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!31 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/signalfd.c", i32 278, i32 26}
!38 = !{ptr @signalfd_fops, !39, !"signalfd_fops", i1 false, i1 false}
!39 = !{!"../fs/signalfd.c", i32 243, i32 37}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/signalfd.c", i32 177, i32 3}
!42 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/signalfd.c", i32 192, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/signalfd.c", i32 239, i32 21}
!47 = !{ptr @types__signalfd, !11, !"types__signalfd", i1 false, i1 false}
!48 = !{ptr @args__signalfd, !11, !"args__signalfd", i1 false, i1 false}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i64 2152180100, i64 2152180125}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 4675655}
!63 = !{i64 4675852}
!64 = !{i64 2152161085}
!65 = !{!66}
!66 = distinct !{!66, !67, !"fdget: %agg.result"}
!67 = distinct !{!67, !"fdget"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2152180781, i64 2152180806}
!70 = !{i64 2155005455}
