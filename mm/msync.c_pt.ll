; ModuleID = '/llk/IR_all_yes/mm/msync.c_pt.bc'
source_filename = "../mm/msync.c"
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.14, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_msync\00", [16 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__msync = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__msync, ptr @args__msync, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__msync, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__msync, i64 20) }, ptr @event_enter__msync, ptr @event_exit__msync }, align 4
@event_enter__msync = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__msync, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__msync = internal global ptr @event_enter__msync, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_msync\00", [17 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__msync = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__msync, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__msync = internal global ptr @event_exit__msync, section "_ftrace_events", align 4
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_msync\00", [22 x i8] zeroinitializer }, align 32
@types__msync = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], [20 x i8] zeroinitializer }, align 32
@args__msync = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__msync = internal global ptr @__syscall_meta__msync, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"event_enter__msync\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"event_exit__msync\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"types__msync\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"args__msync\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [14 x i8] c"../mm/msync.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 32, i32 1 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__event_enter__msync, ptr @__event_exit__msync, ptr @__p_syscall_meta__msync, ptr @__syscall_meta__msync, ptr @event_enter__msync, ptr @event_exit__msync, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__msync, ptr @args__msync, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__msync to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__msync to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__msync to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__msync to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_msync = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_msync

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_msync(i32 noundef %start, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__do_sys_msync(i32 noundef %start, i32 noundef %len, i32 noundef %flags)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_msync(i32 noundef %start, i32 noundef %len, i32 noundef %flags) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !18) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 8
  %and2 = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = and i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %if.end5, label %entry.cleanup79_crit_edge

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.end5:                                          ; preds = %entry
  %and8 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %6 = and i32 %flags, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %.not = icmp eq i32 %6, 5
  br i1 %.not, label %if.end5.cleanup79_crit_edge, label %if.end11

if.end5.cleanup79_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.end11:                                         ; preds = %if.end5
  %add = add i32 %len, 4095
  %and12 = and i32 %add, -4096
  %add13 = add i32 %and12, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %start)
  %cmp = icmp ult i32 %add13, %start
  br i1 %cmp, label %if.end11.cleanup79_crit_edge, label %if.end15

if.end11.cleanup79_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp16 = icmp eq i32 %and12, 0
  br i1 %cmp16, label %if.end15.out.thread161_crit_edge, label %if.end18

if.end15.out.thread161_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread161

if.end18:                                         ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__do_sys_msync, %if.then.i.i)) #6
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !28

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #6
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end18
  %mmap_lock.i = getelementptr inbounds %struct.anon.13, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__do_sys_msync, %if.then.i3.i)) #6
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !28

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call19 = tail call ptr @find_vma(ptr noundef %5, i32 noundef %start) #6
  %tobool20.not167 = icmp eq ptr %call19, null
  br i1 %tobool20.not167, label %mmap_read_lock.exit.out_unlock_crit_edge, label %if.end22.lr.ph

mmap_read_lock.exit.out_unlock_crit_edge:         ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end22.lr.ph:                                   ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flags)
  %cmp25 = icmp ne i32 %flags, 1
  %and33 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br label %if.end22

if.end22:                                         ; preds = %cleanup.if.end22_crit_edge, %if.end22.lr.ph
  %unmapped_error.0172 = phi i32 [ 0, %if.end22.lr.ph ], [ %unmapped_error.1, %cleanup.if.end22_crit_edge ]
  %vma.0169 = phi ptr [ %call19, %if.end22.lr.ph ], [ %vma.2, %cleanup.if.end22_crit_edge ]
  %start.addr.0168 = phi i32 [ %start, %if.end22.lr.ph ], [ %16, %cleanup.if.end22_crit_edge ]
  %7 = ptrtoint ptr %vma.0169 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vma.0169, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0168, i32 %8)
  %cmp23 = icmp ult i32 %start.addr.0168, %8
  br i1 %cmp23, label %if.then24, label %if.end22.if.end32_crit_edge

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add13)
  %cmp29.not = icmp ult i32 %8, %add13
  %or.cond166 = select i1 %cmp25, i1 %cmp29.not, i1 false
  br i1 %or.cond166, label %if.then24.if.end32_crit_edge, label %if.then24.out_unlock_crit_edge

if.then24.out_unlock_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then24.if.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end32:                                         ; preds = %if.then24.if.end32_crit_edge, %if.end22.if.end32_crit_edge
  %start.addr.1 = phi i32 [ %start.addr.0168, %if.end22.if.end32_crit_edge ], [ %8, %if.then24.if.end32_crit_edge ]
  %unmapped_error.1 = phi i32 [ %unmapped_error.0172, %if.end22.if.end32_crit_edge ], [ -12, %if.then24.if.end32_crit_edge ]
  br i1 %tobool34.not, label %if.end32.if.end39_crit_edge, label %land.lhs.true35

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true35:                                  ; preds = %if.end32
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0169, i32 0, i32 8
  %9 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_flags, align 4
  %and36 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %land.lhs.true35.if.end39_crit_edge, label %land.lhs.true35.out_unlock_crit_edge

land.lhs.true35.out_unlock_crit_edge:             ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

land.lhs.true35.if.end39_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true35.if.end39_crit_edge, %if.end32.if.end39_crit_edge
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0169, i32 0, i32 14
  %11 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vm_file, align 4
  %sub = sub i32 %start.addr.1, %8
  %conv = zext i32 %sub to i64
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0169, i32 0, i32 13
  %13 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_pgoff, align 4
  %conv41 = zext i32 %14 to i64
  %shl = shl nuw nsw i64 %conv41, 12
  %add42 = add nuw nsw i64 %shl, %conv
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0169, i32 0, i32 1
  %15 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_end, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %add13, i32 %16)
  %sub45 = sub i32 %17, %start.addr.1
  %conv46 = zext i32 %sub45 to i64
  %add47 = add nsw i64 %add42, -1
  %sub48 = add nsw i64 %add47, %conv46
  %tobool53.not = icmp eq ptr %12, null
  %or.cond133 = select i1 %tobool9.not, i1 true, i1 %tobool53.not
  br i1 %or.cond133, label %if.end39.if.else_crit_edge, label %land.lhs.true54

if.end39.if.else_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true54:                                  ; preds = %if.end39
  %vm_flags55 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0169, i32 0, i32 8
  %18 = ptrtoint ptr %vm_flags55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_flags55, align 4
  %and56 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %land.lhs.true54.if.else_crit_edge, label %if.then58

land.lhs.true54.if.else_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then58:                                        ; preds = %land.lhs.true54
  %f_count.i = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #6
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #6, !srcloc !29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__do_sys_msync, %if.then.i.i135)) #6
          to label %mmap_read_unlock.exit [label %if.then.i.i135], !srcloc !28

if.then.i.i135:                                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #6
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i135, %if.then58
  tail call void @up_read(ptr noundef %mmap_lock.i) #6
  %call60 = tail call i32 @vfs_fsync_range(ptr noundef nonnull %12, i64 noundef %add42, i64 noundef %sub48, i32 noundef 1) #6
  tail call void @fput(ptr noundef nonnull %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add13)
  %cmp62.not = icmp ult i32 %16, %add13
  %or.cond134 = select i1 %tobool61.not, i1 %cmp62.not, i1 false
  br i1 %or.cond134, label %if.end65, label %mmap_read_unlock.exit.out_crit_edge

mmap_read_unlock.exit.out_crit_edge:              ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end65:                                         ; preds = %mmap_read_unlock.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__do_sys_msync, %if.then.i.i137)) #6
          to label %__mmap_lock_trace_start_locking.exit.i139 [label %if.then.i.i137], !srcloc !28

if.then.i.i137:                                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #6
  br label %__mmap_lock_trace_start_locking.exit.i139

__mmap_lock_trace_start_locking.exit.i139:        ; preds = %if.then.i.i137, %if.end65
  tail call void @down_read(ptr noundef %mmap_lock.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__do_sys_msync, %if.then.i3.i140)) #6
          to label %mmap_read_lock.exit141 [label %if.then.i3.i140], !srcloc !28

if.then.i3.i140:                                  ; preds = %__mmap_lock_trace_start_locking.exit.i139
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %mmap_read_lock.exit141

mmap_read_lock.exit141:                           ; preds = %if.then.i3.i140, %__mmap_lock_trace_start_locking.exit.i139
  %call66 = tail call ptr @find_vma(ptr noundef %5, i32 noundef %16) #6
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true54.if.else_crit_edge, %if.end39.if.else_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add13)
  %cmp67.not = icmp ult i32 %16, %add13
  br i1 %cmp67.not, label %if.end70, label %if.else.out_unlock_crit_edge

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end70:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0169, i32 0, i32 2
  %21 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vm_next, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %mmap_read_lock.exit141
  %vma.2 = phi ptr [ %call66, %mmap_read_lock.exit141 ], [ %22, %if.end70 ]
  %tobool20.not = icmp eq ptr %vma.2, null
  br i1 %tobool20.not, label %cleanup.out_unlock_crit_edge, label %cleanup.if.end22_crit_edge

cleanup.if.end22_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

cleanup.out_unlock_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

out_unlock:                                       ; preds = %cleanup.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %land.lhs.true35.out_unlock_crit_edge, %if.then24.out_unlock_crit_edge, %mmap_read_lock.exit.out_unlock_crit_edge
  %unmapped_error.2.ph = phi i32 [ 0, %mmap_read_lock.exit.out_unlock_crit_edge ], [ %unmapped_error.1, %cleanup.out_unlock_crit_edge ], [ %unmapped_error.0172, %if.then24.out_unlock_crit_edge ], [ %unmapped_error.1, %land.lhs.true35.out_unlock_crit_edge ], [ %unmapped_error.1, %if.else.out_unlock_crit_edge ]
  %error.1.ph = phi i32 [ -12, %mmap_read_lock.exit.out_unlock_crit_edge ], [ -12, %cleanup.out_unlock_crit_edge ], [ -12, %if.then24.out_unlock_crit_edge ], [ -16, %land.lhs.true35.out_unlock_crit_edge ], [ 0, %if.else.out_unlock_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__do_sys_msync, %if.then.i.i142)) #6
          to label %mmap_read_unlock.exit144 [label %if.then.i.i142], !srcloc !28

if.then.i.i142:                                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #6
  br label %mmap_read_unlock.exit144

mmap_read_unlock.exit144:                         ; preds = %if.then.i.i142, %out_unlock
  tail call void @up_read(ptr noundef %mmap_lock.i) #6
  br label %out

out:                                              ; preds = %mmap_read_unlock.exit144, %mmap_read_unlock.exit.out_crit_edge
  %unmapped_error.3 = phi i32 [ %unmapped_error.2.ph, %mmap_read_unlock.exit144 ], [ %unmapped_error.1, %mmap_read_unlock.exit.out_crit_edge ]
  %error.2 = phi i32 [ %error.1.ph, %mmap_read_unlock.exit144 ], [ %call60, %mmap_read_unlock.exit.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2)
  %tobool74.not = icmp eq i32 %error.2, 0
  br i1 %tobool74.not, label %out.out.thread161_crit_edge, label %out.cleanup79_crit_edge

out.cleanup79_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup79

out.out.thread161_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread161

out.thread161:                                    ; preds = %out.out.thread161_crit_edge, %if.end15.out.thread161_crit_edge
  %unmapped_error.3165 = phi i32 [ %unmapped_error.3, %out.out.thread161_crit_edge ], [ 0, %if.end15.out.thread161_crit_edge ]
  br label %cleanup79

cleanup79:                                        ; preds = %out.thread161, %out.cleanup79_crit_edge, %if.end11.cleanup79_crit_edge, %if.end5.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  %23 = phi i32 [ %unmapped_error.3165, %out.thread161 ], [ %error.2, %out.cleanup79_crit_edge ], [ -22, %if.end5.cleanup79_crit_edge ], [ -12, %if.end11.cleanup79_crit_edge ], [ -22, %entry.cleanup79_crit_edge ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/msync.c", i32 32, i32 1}
!2 = !{ptr @event_enter__msync, !1, !"event_enter__msync", i1 false, i1 false}
!3 = !{ptr @__event_enter__msync, !1, !"__event_enter__msync", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__msync, !1, !"event_exit__msync", i1 false, i1 false}
!6 = !{ptr @__event_exit__msync, !1, !"__event_exit__msync", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__msync, !1, !"__syscall_meta__msync", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__msync, !1, !"__p_syscall_meta__msync", i1 false, i1 false}
!10 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @types__msync, !1, !"types__msync", i1 false, i1 false}
!14 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @args__msync, !1, !"args__msync", i1 false, i1 false}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2148477796, i64 2148477801, i64 2148477814, i64 2148477858, i64 2148477892, i64 2148477913}
!29 = !{i64 2148653198, i64 2148653224, i64 2148653253, i64 2148653287, i64 2148653318, i64 2148653341}
