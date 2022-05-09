; ModuleID = '/llk/IR_all_yes/mm/process_vm_access.c_pt.bc'
source_filename = "../mm/process_vm_access.c"
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.0 }
%struct.atomic_t = type { i32 }
%union.anon.0 = type { i32 }
%struct.iovec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.67, %union.anon.68 }
%union.anon.67 = type { ptr }
%union.anon.68 = type { i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.13 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_enter_process_vm_readv\00", [37 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__process_vm_readv = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 6, ptr @types__process_vm_readv, ptr @args__process_vm_readv, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__process_vm_readv, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__process_vm_readv, i64 20) }, ptr @event_enter__process_vm_readv, ptr @event_exit__process_vm_readv }, align 4
@event_enter__process_vm_readv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__process_vm_readv, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__process_vm_readv = internal global ptr @event_enter__process_vm_readv, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_exit_process_vm_readv\00", [38 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__process_vm_readv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__process_vm_readv, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__process_vm_readv = internal global ptr @event_exit__process_vm_readv, section "_ftrace_events", align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_process_vm_readv\00", [43 x i8] zeroinitializer }, align 32
@types__process_vm_readv = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.7, ptr @.str.8, ptr @.str.8], [40 x i8] zeroinitializer }, align 32
@args__process_vm_readv = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__process_vm_readv = internal global ptr @__syscall_meta__process_vm_readv, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sys_enter_process_vm_writev\00", [36 x i8] zeroinitializer }, align 32
@__syscall_meta__process_vm_writev = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 6, ptr @types__process_vm_writev, ptr @args__process_vm_writev, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__process_vm_writev, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__process_vm_writev, i64 20) }, ptr @event_enter__process_vm_writev, ptr @event_exit__process_vm_writev }, align 4
@event_enter__process_vm_writev = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__process_vm_writev, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__process_vm_writev = internal global ptr @event_enter__process_vm_writev, section "_ftrace_events", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_exit_process_vm_writev\00", [37 x i8] zeroinitializer }, align 32
@event_exit__process_vm_writev = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__process_vm_writev, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__process_vm_writev = internal global ptr @event_exit__process_vm_writev, section "_ftrace_events", align 4
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_process_vm_writev\00", [42 x i8] zeroinitializer }, align 32
@types__process_vm_writev = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.7, ptr @.str.8, ptr @.str.8], [40 x i8] zeroinitializer }, align 32
@args__process_vm_writev = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__process_vm_writev = internal global ptr @__syscall_meta__process_vm_writev, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"const struct iovec *\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvec\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"liovcnt\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rvec\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"riovcnt\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.18 = private unnamed_addr constant [30 x i8] c"event_enter__process_vm_readv\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [29 x i8] c"event_exit__process_vm_readv\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"types__process_vm_readv\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"args__process_vm_readv\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [31 x i8] c"event_enter__process_vm_writev\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [30 x i8] c"event_exit__process_vm_writev\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [25 x i8] c"types__process_vm_writev\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"args__process_vm_writev\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 298, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [26 x i8] c"../mm/process_vm_access.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 291, i32 1 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__event_enter__process_vm_readv, ptr @__event_enter__process_vm_writev, ptr @__event_exit__process_vm_readv, ptr @__event_exit__process_vm_writev, ptr @__p_syscall_meta__process_vm_readv, ptr @__p_syscall_meta__process_vm_writev, ptr @__syscall_meta__process_vm_readv, ptr @__syscall_meta__process_vm_writev, ptr @event_enter__process_vm_readv, ptr @event_enter__process_vm_writev, ptr @event_exit__process_vm_readv, ptr @event_exit__process_vm_writev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__process_vm_readv, ptr @args__process_vm_readv, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__process_vm_writev, ptr @args__process_vm_writev, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__process_vm_readv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__process_vm_readv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__process_vm_readv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__process_vm_readv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__process_vm_writev to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__process_vm_writev to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__process_vm_writev to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__process_vm_writev to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_process_vm_readv = dso_local alias i32 (i32, ptr, i32, ptr, i32, i32), ptr @__se_sys_process_vm_readv
@sys_process_vm_writev = dso_local alias i32 (i32, ptr, i32, ptr, i32, i32), ptr @__se_sys_process_vm_writev

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_process_vm_readv(i32 noundef %pid, i32 noundef %lvec, i32 noundef %liovcnt, i32 noundef %rvec, i32 noundef %riovcnt, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %lvec to ptr
  %1 = inttoptr i32 %rvec to ptr
  %call.i = tail call fastcc i32 @process_vm_rw(i32 noundef %pid, ptr noundef %0, i32 noundef %liovcnt, ptr noundef %1, i32 noundef %riovcnt, i32 noundef %flags, i32 noundef 0) #6
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_process_vm_writev(i32 noundef %pid, i32 noundef %lvec, i32 noundef %liovcnt, i32 noundef %rvec, i32 noundef %riovcnt, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %lvec to ptr
  %1 = inttoptr i32 %rvec to ptr
  %call.i = tail call fastcc i32 @process_vm_rw(i32 noundef %pid, ptr noundef %0, i32 noundef %liovcnt, ptr noundef %1, i32 noundef %riovcnt, i32 noundef %flags, i32 noundef 1) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_vm_rw(i32 noundef %pid, ptr noundef %lvec, i32 noundef %liovcnt, ptr noundef %rvec, i32 noundef %riovcnt, i32 noundef %flags, i32 noundef %vm_write) unnamed_addr #0 align 64 {
entry:
  %pp_stack.i = alloca [16 x ptr], align 4
  %iovstack_l = alloca [8 x %struct.iovec], align 4
  %iovstack_r = alloca [8 x %struct.iovec], align 4
  %iov_l = alloca ptr, align 4
  %iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iovstack_l) #6
  %0 = call ptr @memset(ptr %iovstack_l, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iovstack_r) #6
  %1 = call ptr @memset(ptr %iovstack_r, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov_l) #6
  %2 = ptrtoint ptr %iov_l to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %iovstack_l, ptr %iov_l, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #6
  %3 = call ptr @memset(ptr %iter, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %cmp.not = icmp eq i32 %flags, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vm_write)
  %tobool.not = icmp ne i32 %vm_write, 0
  %cond = zext i1 %tobool.not to i32
  %call = call i32 @import_iovec(i32 noundef %cond, ptr noundef %lvec, i32 noundef %liovcnt, i32 noundef 8, ptr noundef nonnull %iov_l, ptr noundef nonnull %iter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end3.free_iov_l_crit_edge, label %if.end7

if.end3.free_iov_l_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_iov_l

if.end7:                                          ; preds = %if.end3
  %call10 = call ptr @iovec_from_user(ptr noundef %rvec, i32 noundef %riovcnt, i32 noundef 8, ptr noundef nonnull %iovstack_r, i1 noundef zeroext false) #6
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call10 to i32
  br label %free_iov_l

if.end14:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pp_stack.i) #6
  %7 = call ptr @memset(ptr %pp_stack.i, i32 255, i32 64)
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %riovcnt)
  %cmp13.not.i = icmp eq i32 %riovcnt, 0
  br i1 %cmp13.not.i, label %if.end14.process_vm_rw_core.exit_crit_edge, label %if.end14.for.body.i_crit_edge

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

if.end14.process_vm_rw_core.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %process_vm_rw_core.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %nr_pages.016.i = phi i32 [ %nr_pages.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %iov_len1.i = getelementptr %struct.iovec, ptr %call10, i32 %i.014.i, i32 1
  %10 = ptrtoint ptr %iov_len1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iov_len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.i = icmp sgt i32 %11, 0
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.iovec, ptr %call10, i32 %i.014.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %add.i = add i32 %11, %14
  %div1.i = lshr i32 %add.i, 12
  %div62.i = lshr i32 %14, 12
  %sub.i = sub nsw i32 1, %div62.i
  %add7.i = add nsw i32 %sub.i, %div1.i
  %15 = call i32 @llvm.umax.i32(i32 %nr_pages.016.i, i32 %add7.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %nr_pages.1.i = phi i32 [ %15, %if.then.i ], [ %nr_pages.016.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %riovcnt
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages.1.i)
  %cmp9.i = icmp eq i32 %nr_pages.1.i, 0
  br i1 %cmp9.i, label %for.end.i.process_vm_rw_core.exit_crit_edge, label %if.end11.i

for.end.i.process_vm_rw_core.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %process_vm_rw_core.exit

if.end11.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %nr_pages.1.i)
  %cmp12.i = icmp ugt i32 %nr_pages.1.i, 16
  br i1 %cmp12.i, label %if.end8.i.i, label %if.end11.i.if.end23.i_crit_edge

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end8.i.i:                                      ; preds = %if.end11.i
  %mul.i = shl i32 %nr_pages.1.i, 2
  %16 = call i32 @llvm.umin.i32(i32 %mul.i, i32 8192) #6
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.process_vm_rw_core.exit_crit_edge, label %if.end8.i.i.if.end23.i_crit_edge

if.end8.i.i.if.end23.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end8.i.i.process_vm_rw_core.exit_crit_edge:    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %process_vm_rw_core.exit

if.end23.i:                                       ; preds = %if.end8.i.i.if.end23.i_crit_edge, %if.end11.i.if.end23.i_crit_edge
  %process_pages.0.i = phi ptr [ %call9.i.i, %if.end8.i.i.if.end23.i_crit_edge ], [ %pp_stack.i, %if.end11.i.if.end23.i_crit_edge ]
  %call24.i = call ptr @find_get_task_by_vpid(i32 noundef %pid) #6
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end23.i.free_proc_pages.i_crit_edge, label %if.end27.i

if.end23.i.free_proc_pages.i_crit_edge:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_proc_pages.i

if.end27.i:                                       ; preds = %if.end23.i
  %call28.i = call ptr @mm_access(ptr noundef nonnull %call24.i, i32 noundef 18) #6
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %if.end27.i.put_task_struct.i_crit_edge, label %lor.lhs.false.i

if.end27.i.put_task_struct.i_crit_edge:           ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_task_struct.i

lor.lhs.false.i:                                  ; preds = %if.end27.i
  %cmp.i.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cond.end36.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  br label %land.lhs.true.i

cond.end36.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call28.i to i32
  %cmp38.i = icmp eq ptr %call28.i, inttoptr (i32 -13 to ptr)
  %spec.select12.i = select i1 %cmp38.i, i32 -1, i32 %17
  br label %put_task_struct.i

land.lhs.true.i:                                  ; preds = %for.body47.i.land.lhs.true.i_crit_edge, %lor.lhs.false.i.land.lhs.true.i_crit_edge
  %rc.019.i = phi i32 [ %call52.i, %for.body47.i.land.lhs.true.i_crit_edge ], [ 0, %lor.lhs.false.i.land.lhs.true.i_crit_edge ]
  %i.118.i = phi i32 [ %inc54.i, %for.body47.i.land.lhs.true.i_crit_edge ], [ 0, %lor.lhs.false.i.land.lhs.true.i_crit_edge ]
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool45.not.i = icmp ne i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.019.i)
  %tobool46.not.i = icmp eq i32 %rc.019.i, 0
  %or.cond.i = select i1 %tobool45.not.i, i1 %tobool46.not.i, i1 false
  br i1 %or.cond.i, label %for.body47.i, label %land.lhs.true.i.for.end55.i_crit_edge

land.lhs.true.i.for.end55.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end55.i

for.body47.i:                                     ; preds = %land.lhs.true.i
  %arrayidx48.i = getelementptr %struct.iovec, ptr %call10, i32 %i.118.i
  %20 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx48.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %iov_len51.i = getelementptr %struct.iovec, ptr %call10, i32 %i.118.i, i32 1
  %23 = ptrtoint ptr %iov_len51.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iov_len51.i, align 4
  %call52.i = call fastcc i32 @process_vm_rw_single_vec(i32 noundef %22, i32 noundef %24, ptr noundef nonnull %iter, ptr noundef %process_pages.0.i, ptr noundef nonnull %call28.i, i32 noundef %vm_write) #6
  %inc54.i = add nuw i32 %i.118.i, 1
  %exitcond22.not.i = icmp eq i32 %inc54.i, %riovcnt
  br i1 %exitcond22.not.i, label %for.body47.i.for.end55.i_crit_edge, label %for.body47.i.land.lhs.true.i_crit_edge

for.body47.i.land.lhs.true.i_crit_edge:           ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.body47.i.for.end55.i_crit_edge:               ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end55.i

for.end55.i:                                      ; preds = %for.body47.i.for.end55.i_crit_edge, %land.lhs.true.i.for.end55.i_crit_edge
  %rc.0.lcssa.i.ph = phi i32 [ %call52.i, %for.body47.i.for.end55.i_crit_edge ], [ %rc.019.i, %land.lhs.true.i.for.end55.i_crit_edge ]
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i, align 8
  %sub57.i = sub i32 %9, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %26)
  %tobool58.not.i = icmp eq i32 %9, %26
  %spec.select.i = select i1 %tobool58.not.i, i32 %rc.0.lcssa.i.ph, i32 %sub57.i
  call void @mmput(ptr noundef nonnull %call28.i) #6
  br label %put_task_struct.i

put_task_struct.i:                                ; preds = %for.end55.i, %cond.end36.i, %if.end27.i.put_task_struct.i_crit_edge
  %rc.2.i = phi i32 [ %spec.select.i, %for.end55.i ], [ -3, %if.end27.i.put_task_struct.i_crit_edge ], [ %spec.select12.i, %cond.end36.i ]
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %call24.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #6
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #6, !srcloc !43
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %put_task_struct.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.free_proc_pages.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !44

if.end5.i.i.i.i.i.free_proc_pages.i_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_proc_pages.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #6
  br label %free_proc_pages.i

if.then.i.i:                                      ; preds = %put_task_struct.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @__put_task_struct(ptr noundef nonnull %call24.i) #6
  br label %free_proc_pages.i

free_proc_pages.i:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.free_proc_pages.i_crit_edge, %if.end23.i.free_proc_pages.i_crit_edge
  %rc.3.i = phi i32 [ -3, %if.end23.i.free_proc_pages.i_crit_edge ], [ %rc.2.i, %if.end5.i.i.i.i.i.free_proc_pages.i_crit_edge ], [ %rc.2.i, %if.then10.i.i.i.i.i ], [ %rc.2.i, %if.then.i.i ]
  %cmp62.not.i = icmp eq ptr %process_pages.0.i, %pp_stack.i
  br i1 %cmp62.not.i, label %free_proc_pages.i.process_vm_rw_core.exit_crit_edge, label %if.then63.i

free_proc_pages.i.process_vm_rw_core.exit_crit_edge: ; preds = %free_proc_pages.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %process_vm_rw_core.exit

if.then63.i:                                      ; preds = %free_proc_pages.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %process_pages.0.i) #6
  br label %process_vm_rw_core.exit

process_vm_rw_core.exit:                          ; preds = %if.then63.i, %free_proc_pages.i.process_vm_rw_core.exit_crit_edge, %if.end8.i.i.process_vm_rw_core.exit_crit_edge, %for.end.i.process_vm_rw_core.exit_crit_edge, %if.end14.process_vm_rw_core.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i.process_vm_rw_core.exit_crit_edge ], [ -12, %if.end8.i.i.process_vm_rw_core.exit_crit_edge ], [ %rc.3.i, %if.then63.i ], [ %rc.3.i, %free_proc_pages.i.process_vm_rw_core.exit_crit_edge ], [ 0, %if.end14.process_vm_rw_core.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pp_stack.i) #6
  %cmp17.not = icmp eq ptr %call10, %iovstack_r
  br i1 %cmp17.not, label %process_vm_rw_core.exit.free_iov_l_crit_edge, label %if.then18

process_vm_rw_core.exit.free_iov_l_crit_edge:     ; preds = %process_vm_rw_core.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_iov_l

if.then18:                                        ; preds = %process_vm_rw_core.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %call10) #6
  br label %free_iov_l

free_iov_l:                                       ; preds = %if.then18, %process_vm_rw_core.exit.free_iov_l_crit_edge, %if.then12, %if.end3.free_iov_l_crit_edge
  %rc.0 = phi i32 [ %6, %if.then12 ], [ %retval.0.i, %if.then18 ], [ %retval.0.i, %process_vm_rw_core.exit.free_iov_l_crit_edge ], [ %call, %if.end3.free_iov_l_crit_edge ]
  %28 = ptrtoint ptr %iov_l to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iov_l, align 4
  call void @kfree(ptr noundef %29) #6
  br label %cleanup

cleanup:                                          ; preds = %free_iov_l, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %free_iov_l ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov_l) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack_r) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack_l) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iovec_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mm_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_vm_rw_single_vec(i32 noundef %addr, i32 noundef %len, ptr noundef %iter, ptr noundef %process_pages, ptr noundef %mm, i32 noundef %vm_write) unnamed_addr #0 align 64 {
entry:
  %locked = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

if.end:                                           ; preds = %entry
  %add = add i32 %addr, -1
  %sub1 = add i32 %add, %len
  %div1 = lshr i32 %sub1, 12
  %div22 = lshr i32 %addr, 12
  %sub3 = sub nsw i32 1, %div22
  %add4 = add nsw i32 %sub3, %div1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vm_write)
  %tobool = icmp ne i32 %vm_write, 0
  %spec.select = zext i1 %tobool to i32
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %mmap_lock.i = getelementptr inbounds %struct.anon.13, ptr %mm, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vm_write)
  %tobool2.not.i = icmp eq i32 %vm_write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4)
  %tobool8.not11 = icmp eq i32 %add4, 0
  br i1 %tobool8.not11, label %if.end.cleanup30_crit_edge, label %land.rhs.lr.ph

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

land.rhs.lr.ph:                                   ; preds = %if.end
  %and = and i32 %addr, -4096
  %sub = and i32 %addr, 4095
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %nr_pages.015 = phi i32 [ %add4, %land.rhs.lr.ph ], [ %sub24, %cleanup.land.rhs_crit_edge ]
  %start_offset.014 = phi i32 [ %sub, %land.rhs.lr.ph ], [ 0, %cleanup.land.rhs_crit_edge ]
  %pa.013 = phi i32 [ %and, %land.rhs.lr.ph ], [ %add26, %cleanup.land.rhs_crit_edge ]
  %len.addr.012 = phi i32 [ %len, %land.rhs.lr.ph ], [ %sub23, %cleanup.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool9.not = icmp eq i32 %1, 0
  br i1 %tobool9.not, label %land.rhs.cleanup30_crit_edge, label %while.body

land.rhs.cleanup30_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

while.body:                                       ; preds = %land.rhs
  %2 = call i32 @llvm.umin.i32(i32 %nr_pages.015, i32 2048)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locked) #6
  %3 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %locked, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@process_vm_rw_single_vec, %if.then.i.i)) #6
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !46

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #6
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %while.body
  call void @down_read(ptr noundef %mmap_lock.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@process_vm_rw_single_vec, %if.then.i3.i)) #6
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !46

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call11 = call i32 @pin_user_pages_remote(ptr noundef %mm, i32 noundef %pa.013, i32 noundef %2, i32 noundef %spec.select, ptr noundef %process_pages, ptr noundef null, ptr noundef nonnull %locked) #6
  %4 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %mmap_read_lock.exit.if.end14_crit_edge, label %if.then13

mmap_read_lock.exit.if.end14_crit_edge:           ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %mmap_read_lock.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@process_vm_rw_single_vec, %if.then.i.i4)) #6
          to label %mmap_read_unlock.exit [label %if.then.i.i4], !srcloc !46

if.then.i.i4:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #6
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i4, %if.then13
  call void @up_read(ptr noundef %mmap_lock.i) #6
  br label %if.end14

if.end14:                                         ; preds = %mmap_read_unlock.exit, %mmap_read_lock.exit.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp15 = icmp slt i32 %call11, 1
  br i1 %cmp15, label %cleanup.thread, label %if.end17

cleanup.thread:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locked) #6
  br label %cleanup30

if.end17:                                         ; preds = %if.end14
  %mul = shl i32 %call11, 12
  %sub18 = sub i32 %mul, %start_offset.014
  %6 = call i32 @llvm.umin.i32(i32 %sub18, i32 %len.addr.012)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not32.i = icmp eq i32 %6, 0
  br i1 %tobool.not32.i, label %if.end17.cleanup_crit_edge, label %if.end17.land.rhs.i_crit_edge

if.end17.land.rhs.i_crit_edge:                    ; preds = %if.end17
  br label %land.rhs.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %if.end17.land.rhs.i_crit_edge
  %pages.addr.035.i = phi ptr [ %incdec.ptr.i, %cleanup.i.land.rhs.i_crit_edge ], [ %process_pages, %if.end17.land.rhs.i_crit_edge ]
  %len.addr.034.i = phi i32 [ %sub7.i, %cleanup.i.land.rhs.i_crit_edge ], [ %6, %if.end17.land.rhs.i_crit_edge ]
  %offset.addr.033.i = phi i32 [ 0, %cleanup.i.land.rhs.i_crit_edge ], [ %start_offset.014, %if.end17.land.rhs.i_crit_edge ]
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %land.rhs.i.cleanup_crit_edge, label %while.body.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i:                                     ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr ptr, ptr %pages.addr.035.i, i32 1
  %9 = ptrtoint ptr %pages.addr.035.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pages.addr.035.i, align 4
  %sub.i = sub nuw nsw i32 4096, %offset.addr.033.i
  %11 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %len.addr.034.i) #6
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = call i32 @copy_page_from_iter(ptr noundef %10, i32 noundef %offset.addr.033.i, i32 noundef %11, ptr noundef %iter) #6
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 @copy_page_to_iter(ptr noundef %10, i32 noundef %offset.addr.033.i, i32 noundef %11, ptr noundef %iter) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then3.i
  %copied.0.i = phi i32 [ %call4.i, %if.then3.i ], [ %call5.i, %if.else.i ]
  %sub7.i = sub i32 %len.addr.034.i, %copied.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.0.i, i32 %11)
  %cmp8.i = icmp ult i32 %copied.0.i, %11
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.end6.i.cleanup.i_crit_edge

if.end6.i.cleanup.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp eq i32 %13, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %if.end6.i.cleanup.i_crit_edge
  %tobool.not.i = icmp eq i32 %sub7.i, 0
  br i1 %tobool.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.land.rhs.i_crit_edge

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %tobool7.not = phi i1 [ false, %if.end17.cleanup_crit_edge ], [ false, %land.rhs.i.cleanup_crit_edge ], [ true, %land.lhs.true.i.cleanup_crit_edge ], [ false, %cleanup.i.cleanup_crit_edge ]
  %retval.2.i = phi i32 [ 0, %if.end17.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ -14, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %cleanup.i.cleanup_crit_edge ]
  %sub23 = sub i32 %len.addr.012, %6
  %sub24 = sub i32 %nr_pages.015, %call11
  %add26 = add i32 %mul, %pa.013
  call void @unpin_user_pages_dirty_lock(ptr noundef %process_pages, i32 noundef %call11, i1 noundef zeroext %tobool) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locked) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24)
  %tobool8.not = icmp eq i32 %sub24, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %cleanup.cleanup30_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

cleanup.cleanup30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup.cleanup30_crit_edge, %cleanup.thread, %land.rhs.cleanup30_crit_edge, %if.end.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup30_crit_edge ], [ -14, %cleanup.thread ], [ 0, %if.end.cleanup30_crit_edge ], [ 0, %land.rhs.cleanup30_crit_edge ], [ %retval.2.i, %cleanup.cleanup30_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_remote(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

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
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/process_vm_access.c", i32 291, i32 1}
!2 = !{ptr @event_enter__process_vm_readv, !1, !"event_enter__process_vm_readv", i1 false, i1 false}
!3 = !{ptr @__event_enter__process_vm_readv, !1, !"__event_enter__process_vm_readv", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__process_vm_readv, !1, !"event_exit__process_vm_readv", i1 false, i1 false}
!6 = !{ptr @__event_exit__process_vm_readv, !1, !"__event_exit__process_vm_readv", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__process_vm_readv, !1, !"__syscall_meta__process_vm_readv", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__process_vm_readv, !1, !"__p_syscall_meta__process_vm_readv", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/process_vm_access.c", i32 298, i32 1}
!12 = !{ptr @event_enter__process_vm_writev, !11, !"event_enter__process_vm_writev", i1 false, i1 false}
!13 = !{ptr @__event_enter__process_vm_writev, !11, !"__event_enter__process_vm_writev", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__process_vm_writev, !11, !"event_exit__process_vm_writev", i1 false, i1 false}
!16 = !{ptr @__event_exit__process_vm_writev, !11, !"__event_exit__process_vm_writev", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__process_vm_writev, !11, !"__syscall_meta__process_vm_writev", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__process_vm_writev, !11, !"__p_syscall_meta__process_vm_writev", i1 false, i1 false}
!20 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @types__process_vm_readv, !1, !"types__process_vm_readv", i1 false, i1 false}
!24 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @args__process_vm_readv, !1, !"args__process_vm_readv", i1 false, i1 false}
!31 = !{ptr @types__process_vm_writev, !11, !"types__process_vm_writev", i1 false, i1 false}
!32 = !{ptr @args__process_vm_writev, !11, !"args__process_vm_writev", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2148328127}
!43 = !{i64 2148242591, i64 2148242623, i64 2148242652, i64 2148242686, i64 2148242717, i64 2148242740}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2149446179}
!46 = !{i64 2148938526, i64 2148938531, i64 2148938544, i64 2148938588, i64 2148938622, i64 2148938643}
