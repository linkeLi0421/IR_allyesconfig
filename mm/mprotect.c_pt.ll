; ModuleID = '/llk/IR_all_yes/mm/mprotect.c_pt.bc'
source_filename = "../mm/mprotect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.75, %struct.trace_event, ptr, ptr, %union.anon.77, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.75 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.76 }
%struct.atomic_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.mmu_notifier_range = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.106, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.18, %union.anon.30, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.81, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.81 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.88 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm/mprotect.c\00", [18 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_mprotect\00", [45 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__mprotect = internal global %struct.syscall_metadata { ptr @.str.3, i32 -1, i32 3, ptr @types__mprotect, ptr @args__mprotect, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mprotect, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mprotect, i64 20) }, ptr @event_enter__mprotect, ptr @event_exit__mprotect }, align 4
@event_enter__mprotect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.75 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr @__syscall_meta__mprotect, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mprotect = internal global ptr @event_enter__mprotect, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_mprotect\00", [46 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__mprotect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.75 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr @__syscall_meta__mprotect, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mprotect = internal global ptr @event_exit__mprotect, section "_ftrace_events", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_mprotect\00", [19 x i8] zeroinitializer }, align 32
@types__mprotect = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.9], [20 x i8] zeroinitializer }, align 32
@args__mprotect = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mprotect = internal global ptr @__syscall_meta__mprotect, section "__syscalls_metadata", align 4
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/mmu_notifier.h\00", [35 x i8] zeroinitializer }, align 32
@__mmu_notifier_invalidate_range_start_map = external dso_local global %struct.lockdep_map, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"prot\00", [27 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 470, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"event_enter__mprotect\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"event_exit__mprotect\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"types__mprotect\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"args__mprotect\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [32 x i8] c"../include/linux/mmu_notifier.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 454, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 260, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 420, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1368, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [17 x i8] c"../mm/mprotect.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 662, i32 1 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__event_enter__mprotect, ptr @__event_exit__mprotect, ptr @__p_syscall_meta__mprotect, ptr @__syscall_meta__mprotect, ptr @event_enter__mprotect, ptr @event_exit__mprotect, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @types__mprotect, ptr @args__mprotect, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mprotect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mprotect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mprotect to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mprotect to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_mprotect = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_mprotect

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @change_protection(ptr noundef %vma, i32 noundef %start, i32 noundef %end, i32 noundef %newprot, i32 noundef %cp_flags) local_unnamed_addr #0 align 64 {
entry:
  %range.i.i.i.i = alloca %struct.mmu_notifier_range, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cp_flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and)
  %cmp = icmp eq i32 %and, 12
  br i1 %cmp, label %do.body2, label %do.end7, !prof !41

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mprotect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #7, !srcloc !42
  unreachable

do.end7:                                          ; preds = %entry
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp.not.i = icmp ult i32 %start, %end
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !43

do.body2.i:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mprotect.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 344, 0\0A.popsection", ""() #7, !srcloc !44
  unreachable

do.end7.i:                                        ; preds = %do.end7
  %0 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm.i, align 4
  %pgd8.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pgd8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgd8.i, align 4
  %shr.i.i = lshr i32 %start, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %3, i32 %shr.i.i
  tail call void @flush_cache_range(ptr noundef %vma, i32 noundef %start, i32 noundef %end) #7
  %tlb_flush_pending.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 50
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tlb_flush_pending.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %tlb_flush_pending.i.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tlb_flush_pending.i.i, ptr %tlb_flush_pending.i.i, i32 1, ptr elementtype(i32) %tlb_flush_pending.i.i) #7, !srcloc !45
  %sub10.i = add i32 %end, -1
  %5 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i.i.i.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i.i.i.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i.i.i.i, i32 0, i32 3
  %8 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i.i.i.i, i32 0, i32 4
  %9 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i.i.i.i, i32 0, i32 5
  %and.i83.i.i.i.i = and i32 %cp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83.i.i.i.i)
  %tobool.not.i84.i.i.i.i = icmp eq i32 %and.i83.i.i.i.i, 0
  %and1.i.i.i.i.i = and i32 %cp_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  %vm_flags.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %not.tobool2.not.i.i.i.i.i = xor i1 %tobool2.not.i.i.i.i.i, true
  %and1.i.i.i.i.i.i = and i32 %newprot, 2945
  %and4.i.i.i.i.i = shl i32 %cp_flags, 5
  %10 = and i32 %and4.i.i.i.i.i, 128
  br label %do.body9.i

do.body9.i:                                       ; preds = %change_p4d_range.exit.i.do.body9.i_crit_edge, %do.end7.i
  %pgd.0.i = phi ptr [ %add.ptr.i.i, %do.end7.i ], [ %incdec.ptr.i, %change_p4d_range.exit.i.do.body9.i_crit_edge ]
  %pages.0.i = phi i32 [ 0, %do.end7.i ], [ %add17.i, %change_p4d_range.exit.i.do.body9.i_crit_edge ]
  %addr.addr.0.i = phi i32 [ %start, %do.end7.i ], [ %and.end.i, %change_p4d_range.exit.i.do.body9.i_crit_edge ]
  %add.i = add i32 %addr.addr.0.i, 2097152
  %and.i = and i32 %add.i, -2097152
  %sub.i = add i32 %and.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub10.i)
  %cmp11.i = icmp ult i32 %sub.i, %sub10.i
  %and.end.i = select i1 %cmp11.i, i32 %and.i, i32 %end
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range.i.i.i.i) #7
  %11 = call ptr @memset(ptr %range.i.i.i.i, i32 255, i32 28)
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %6, align 4
  %13 = ptrtoint ptr %pgd.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pgd.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body9.i.next43.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

do.body9.i.next43.i.i.i.i_crit_edge:              ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next43.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body9.i
  %and.i.i.i.i.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool5.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool5.not.i.i.i.i.i, label %if.end10.i.i.i.i, label %if.then8.i.i.i.i.i, !prof !43

if.then8.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @pmd_clear_bad(ptr noundef %pgd.0.i) #7
  br label %next43.i.i.i.i

if.end10.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.i
  %15 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vm_mm.i, align 4
  %17 = ptrtoint ptr %range.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vma, ptr %range.i.i.i.i, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %9, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %5, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %addr.addr.0.i, ptr %6, align 4
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.end.i, ptr %7, align 4
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %8, align 4
  call fastcc void @mmu_notifier_invalidate_range_start(ptr noundef nonnull %range.i.i.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %pgd.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pgd.0.i, align 4
  %shr.i.i.i.i.i.i = lshr i32 %25, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i.i.i.i.i = sub i32 %shr.i.i.i.i.i.i, %26
  %ptl.i.i.i.i.i.i.i = getelementptr %struct.page, ptr %23, i32 %sub.i.i.i.i.i.i, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %ptl.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptl.i.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr %struct.page, ptr %23, i32 %sub.i.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %29 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i.i.i.i = or i32 %29, 512
  %30 = call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %34 = call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i1.i.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i1.i.i.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 213
  %38 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i.i.i.i = add i32 %39, 1
  store i32 %inc.i.i.i.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %call.i.i324.i.i.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %or.i.i.i.i.i.i) #7
  %shr.i325.i.i.i.i.i = lshr i32 %addr.addr.0.i, 12
  %and.i.i.i.i.i.i = and i32 %shr.i325.i.i.i.i.i, 511
  %add.ptr15.i.i.i.i.i = getelementptr i32, ptr %call.i.i324.i.i.i.i.i, i32 %and.i.i.i.i.i.i
  call void @_raw_spin_lock(ptr noundef %28) #7
  br i1 %tobool2.not.i.i.i.i.i, label %if.end10.i.i.i.i.if.end24.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end10.i.i.i.i.if.end24.i.i.i.i.i_crit_edge:    ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end10.i.i.i.i
  %40 = ptrtoint ptr %vm_flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vm_flags.i.i.i.i.i, align 4
  %and17.i.i.i.i.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i.i.i.i)
  %tobool18.not.i.i.i.i.i = icmp eq i32 %and17.i.i.i.i.i, 0
  br i1 %tobool18.not.i.i.i.i.i, label %land.lhs.true19.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.end24.i.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.end24.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i.i.i.i

land.lhs.true19.i.i.i.i.i:                        ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vm_mm.i, align 4
  %mm_users.i.i.i.i.i = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 10
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i.i.i.i.i, i32 noundef 4) #7
  %44 = ptrtoint ptr %mm_users.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %mm_users.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i.i.i.i.i = icmp eq i32 %45, 1
  br label %if.end24.i.i.i.i.i

if.end24.i.i.i.i.i:                               ; preds = %land.lhs.true19.i.i.i.i.i, %land.lhs.true.i.i.i.i.i.if.end24.i.i.i.i.i_crit_edge, %if.end10.i.i.i.i.if.end24.i.i.i.i.i_crit_edge
  %cmp64.i.i.i.i.i = phi i1 [ false, %land.lhs.true.i.i.i.i.i.if.end24.i.i.i.i.i_crit_edge ], [ false, %if.end10.i.i.i.i.if.end24.i.i.i.i.i_crit_edge ], [ %cmp.i.i.i.i.i, %land.lhs.true19.i.i.i.i.i ]
  br label %do.body26.i.i.i.i.i

do.body26.i.i.i.i.i:                              ; preds = %do.cond192.i.i.i.i.i.do.body26.i.i.i.i.i_crit_edge, %if.end24.i.i.i.i.i
  %pages.0.i.i.i.i.i = phi i32 [ 0, %if.end24.i.i.i.i.i ], [ %pages.3.i.i.i.i.i, %do.cond192.i.i.i.i.i.do.body26.i.i.i.i.i_crit_edge ]
  %pte.0.i.i.i.i.i = phi ptr [ %add.ptr15.i.i.i.i.i, %if.end24.i.i.i.i.i ], [ %incdec.ptr.i.i.i.i.i, %do.cond192.i.i.i.i.i.do.body26.i.i.i.i.i_crit_edge ]
  %addr.addr.0.i.i.i.i.i = phi i32 [ %addr.addr.0.i, %if.end24.i.i.i.i.i ], [ %add.i.i.i.i.i, %do.cond192.i.i.i.i.i.do.body26.i.i.i.i.i_crit_edge ]
  %46 = ptrtoint ptr %pte.0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pte.0.i.i.i.i.i, align 4
  %and27.i.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i.i.i)
  %tobool28.not.i.i.i.i.i = icmp eq i32 %and27.i.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i.i, label %if.else107.i.i.i.i.i, label %if.then32.i.i.i.i.i

if.then32.i.i.i.i.i:                              ; preds = %do.body26.i.i.i.i.i
  %and34.i.i.i.i.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i.i.i.i)
  %tobool35.not.i.i.i.i.i = icmp eq i32 %and34.i.i.i.i.i, 0
  %48 = select i1 %not.tobool2.not.i.i.i.i.i, i1 %tobool35.not.i.i.i.i.i, i1 false
  br i1 %tobool2.not.i.i.i.i.i, label %if.then32.i.i.i.i.i.if.end67.i.i.i.i.i_crit_edge, label %if.then39.i.i.i.i.i

if.then32.i.i.i.i.i.if.end67.i.i.i.i.i_crit_edge: ; preds = %if.then32.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i.i.i.i.i

if.then39.i.i.i.i.i:                              ; preds = %if.then32.i.i.i.i.i
  %call44.i.i.i.i.i = call ptr @vm_normal_page(ptr noundef %vma, i32 noundef %addr.addr.0.i.i.i.i.i, i32 noundef %47) #7
  %tobool45.not.i.i.i.i.i = icmp eq ptr %call44.i.i.i.i.i, null
  br i1 %tobool45.not.i.i.i.i.i, label %if.then39.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.then39.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge: ; preds = %if.then39.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond192.i.i.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.then39.i.i.i.i.i
  %49 = getelementptr inbounds %struct.page, ptr %call44.i.i.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i2.i.i.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and.i2.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, !prof !43

if.then.i.i.i.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i.i.i.i.i = add i32 %51, -1
  br label %PageKsm.exit.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call44.i.i.i.i.i to i32
  br label %PageKsm.exit.i.i.i.i.i

PageKsm.exit.i.i.i.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i ], [ %52, %if.end.i.i.i.i.i.i.i ]
  %53 = inttoptr i32 %retval.0.i.i.i.i.i.i.i to ptr
  %mapping.i.i.i.i.i.i.i = getelementptr inbounds %struct.anon.88, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %mapping.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mapping.i.i.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  %and.i.i.i.i.i.i.i = and i32 %56, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i.i, label %PageKsm.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, label %if.end48.i.i.i.i.i

PageKsm.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge: ; preds = %PageKsm.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond192.i.i.i.i.i

if.end48.i.i.i.i.i:                               ; preds = %PageKsm.exit.i.i.i.i.i
  %57 = ptrtoint ptr %vm_flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vm_flags.i.i.i.i.i, align 4
  %and.i326.i.i.i.i.i = and i32 %58, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i326.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %and.i326.i.i.i.i.i, 32
  br i1 %cmp.i.i.i.i.i.i, label %land.lhs.true51.i.i.i.i.i, label %if.end48.i.i.i.i.i.if.end55.i.i.i.i.i_crit_edge

if.end48.i.i.i.i.i.if.end55.i.i.i.i.i_crit_edge:  ; preds = %if.end48.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i.i.i.i.i

land.lhs.true51.i.i.i.i.i:                        ; preds = %if.end48.i.i.i.i.i
  %59 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %49, align 4
  %and.i.i327.i.i.i.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i327.i.i.i.i.i)
  %tobool.not.i.i328.i.i.i.i.i = icmp eq i32 %and.i.i327.i.i.i.i.i, 0
  br i1 %tobool.not.i.i328.i.i.i.i.i, label %if.end.i.i331.i.i.i.i.i, label %if.then.i.i330.i.i.i.i.i, !prof !43

if.then.i.i330.i.i.i.i.i:                         ; preds = %land.lhs.true51.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i329.i.i.i.i.i = add i32 %60, -1
  br label %page_count.exit.i.i.i.i.i

if.end.i.i331.i.i.i.i.i:                          ; preds = %land.lhs.true51.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %call44.i.i.i.i.i to i32
  br label %page_count.exit.i.i.i.i.i

page_count.exit.i.i.i.i.i:                        ; preds = %if.end.i.i331.i.i.i.i.i, %if.then.i.i330.i.i.i.i.i
  %retval.0.i.i332.i.i.i.i.i = phi i32 [ %sub.i.i329.i.i.i.i.i, %if.then.i.i330.i.i.i.i.i ], [ %61, %if.end.i.i331.i.i.i.i.i ]
  %62 = inttoptr i32 %retval.0.i.i332.i.i.i.i.i to ptr
  %_refcount.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i.i.i, i32 noundef 4) #7
  %63 = ptrtoint ptr %_refcount.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %_refcount.i.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp53.not.i.i.i.i.i = icmp eq i32 %64, 1
  br i1 %cmp53.not.i.i.i.i.i, label %page_count.exit.i.i.i.i.i.if.end55.i.i.i.i.i_crit_edge, label %page_count.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge

page_count.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge: ; preds = %page_count.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond192.i.i.i.i.i

page_count.exit.i.i.i.i.i.if.end55.i.i.i.i.i_crit_edge: ; preds = %page_count.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i.i.i.i.i

if.end55.i.i.i.i.i:                               ; preds = %page_count.exit.i.i.i.i.i.if.end55.i.i.i.i.i_crit_edge, %if.end48.i.i.i.i.i.if.end55.i.i.i.i.i_crit_edge
  %65 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %49, align 4
  %and.i.i334.i.i.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i334.i.i.i.i.i)
  %tobool.not.i.i335.i.i.i.i.i = icmp eq i32 %and.i.i334.i.i.i.i.i, 0
  br i1 %tobool.not.i.i335.i.i.i.i.i, label %if.end.i.i338.i.i.i.i.i, label %if.then.i.i337.i.i.i.i.i, !prof !43

if.then.i.i337.i.i.i.i.i:                         ; preds = %if.end55.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i336.i.i.i.i.i = add i32 %66, -1
  br label %_compound_head.exit.i341.i.i.i.i.i

if.end.i.i338.i.i.i.i.i:                          ; preds = %if.end55.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %call44.i.i.i.i.i to i32
  br label %_compound_head.exit.i341.i.i.i.i.i

_compound_head.exit.i341.i.i.i.i.i:               ; preds = %if.end.i.i338.i.i.i.i.i, %if.then.i.i337.i.i.i.i.i
  %retval.0.i.i339.i.i.i.i.i = phi i32 [ %sub.i.i336.i.i.i.i.i, %if.then.i.i337.i.i.i.i.i ], [ %67, %if.end.i.i338.i.i.i.i.i ]
  %68 = inttoptr i32 %retval.0.i.i339.i.i.i.i.i to ptr
  %69 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %and.i.i.i.i.i340.i.i.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i340.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i340.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %page_is_file_lru.exit.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i.i.i, !prof !43

if.then.i.i.i.i.i.i.i.i.i:                        ; preds = %_compound_head.exit.i341.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = inttoptr i32 %retval.0.i.i339.i.i.i.i.i to ptr
  call void @dump_page(ptr noundef %72, ptr noundef nonnull @.str.5) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

page_is_file_lru.exit.i.i.i.i.i:                  ; preds = %_compound_head.exit.i341.i.i.i.i.i
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %68, align 4
  %75 = and i32 %74, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool57.not.not.i.i.i.i.i = icmp eq i32 %75, 0
  br i1 %tobool57.not.not.i.i.i.i.i, label %land.lhs.true58.i.i.i.i.i, label %page_is_file_lru.exit.i.i.i.i.i.if.end62.i.i.i.i.i_crit_edge

page_is_file_lru.exit.i.i.i.i.i.if.end62.i.i.i.i.i_crit_edge: ; preds = %page_is_file_lru.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i.i.i.i.i

land.lhs.true58.i.i.i.i.i:                        ; preds = %page_is_file_lru.exit.i.i.i.i.i
  %76 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %49, align 4
  %and.i.i318.i.i.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i318.i.i.i.i.i)
  %tobool.not.i.i319.i.i.i.i.i = icmp eq i32 %and.i.i318.i.i.i.i.i, 0
  br i1 %tobool.not.i.i319.i.i.i.i.i, label %if.end.i.i322.i.i.i.i.i, label %if.then.i.i321.i.i.i.i.i, !prof !43

if.then.i.i321.i.i.i.i.i:                         ; preds = %land.lhs.true58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i320.i.i.i.i.i = add i32 %77, -1
  br label %_compound_head.exit.i.i.i.i.i.i

if.end.i.i322.i.i.i.i.i:                          ; preds = %land.lhs.true58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %call44.i.i.i.i.i to i32
  br label %_compound_head.exit.i.i.i.i.i.i

_compound_head.exit.i.i.i.i.i.i:                  ; preds = %if.end.i.i322.i.i.i.i.i, %if.then.i.i321.i.i.i.i.i
  %retval.0.i.i323.i.i.i.i.i = phi i32 [ %sub.i.i320.i.i.i.i.i, %if.then.i.i321.i.i.i.i.i ], [ %78, %if.end.i.i322.i.i.i.i.i ]
  %79 = inttoptr i32 %retval.0.i.i323.i.i.i.i.i to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %81, -1
  %82 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %49, align 4
  %and.i13.i.i.i.i.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i.i.i.i)
  %tobool.not.i14.i.i.i.i.i.i = icmp eq i32 %and.i13.i.i.i.i.i.i, 0
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %do.end8.i.i.i.i.i.i, !prof !41

if.then.i.i.i.i.i.i:                              ; preds = %_compound_head.exit.i.i.i.i.i.i
  br i1 %tobool.not.i14.i.i.i.i.i.i, label %if.end.i17.i.i.i.i.i.i, label %if.then.i16.i.i.i.i.i.i, !prof !43

if.then.i16.i.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15.i.i.i.i.i.i = add i32 %83, -1
  br label %_compound_head.exit19.i.i.i.i.i.i

if.end.i17.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %call44.i.i.i.i.i to i32
  br label %_compound_head.exit19.i.i.i.i.i.i

_compound_head.exit19.i.i.i.i.i.i:                ; preds = %if.end.i17.i.i.i.i.i.i, %if.then.i16.i.i.i.i.i.i
  %retval.0.i18.i.i.i.i.i.i = phi i32 [ %sub.i15.i.i.i.i.i.i, %if.then.i16.i.i.i.i.i.i ], [ %84, %if.end.i17.i.i.i.i.i.i ]
  %85 = inttoptr i32 %retval.0.i18.i.i.i.i.i.i to ptr
  call void @dump_page(ptr noundef %85, ptr noundef nonnull @.str.7) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

do.end8.i.i.i.i.i.i:                              ; preds = %_compound_head.exit.i.i.i.i.i.i
  br i1 %tobool.not.i14.i.i.i.i.i.i, label %if.end.i24.i.i.i.i.i.i, label %if.then.i23.i.i.i.i.i.i, !prof !43

if.then.i23.i.i.i.i.i.i:                          ; preds = %do.end8.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i22.i.i.i.i.i.i = add i32 %83, -1
  br label %PageDirty.exit.i.i.i.i.i

if.end.i24.i.i.i.i.i.i:                           ; preds = %do.end8.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %call44.i.i.i.i.i to i32
  br label %PageDirty.exit.i.i.i.i.i

PageDirty.exit.i.i.i.i.i:                         ; preds = %if.end.i24.i.i.i.i.i.i, %if.then.i23.i.i.i.i.i.i
  %retval.0.i25.i.i.i.i.i.i = phi i32 [ %sub.i22.i.i.i.i.i.i, %if.then.i23.i.i.i.i.i.i ], [ %86, %if.end.i24.i.i.i.i.i.i ]
  %87 = inttoptr i32 %retval.0.i25.i.i.i.i.i.i to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  %90 = and i32 %89, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool60.not.i.i.i.i.i = icmp eq i32 %90, 0
  br i1 %tobool60.not.i.i.i.i.i, label %PageDirty.exit.i.i.i.i.i.if.end62.i.i.i.i.i_crit_edge, label %PageDirty.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge

PageDirty.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge: ; preds = %PageDirty.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond192.i.i.i.i.i

PageDirty.exit.i.i.i.i.i.if.end62.i.i.i.i.i_crit_edge: ; preds = %PageDirty.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i.i.i.i.i

if.end62.i.i.i.i.i:                               ; preds = %PageDirty.exit.i.i.i.i.i.if.end62.i.i.i.i.i_crit_edge, %page_is_file_lru.exit.i.i.i.i.i.if.end62.i.i.i.i.i_crit_edge
  %91 = ptrtoint ptr %call44.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %call44.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp.i.not.i342.i.i.i.i.i = icmp eq i32 %92, -1
  br i1 %cmp.i.not.i342.i.i.i.i.i, label %if.then.i343.i.i.i.i.i, label %page_to_nid.exit.i.i.i.i.i, !prof !41

if.then.i343.i.i.i.i.i:                           ; preds = %if.end62.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef nonnull %call44.i.i.i.i.i, ptr noundef nonnull @.str.8) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

page_to_nid.exit.i.i.i.i.i:                       ; preds = %if.end62.i.i.i.i.i
  br i1 %cmp64.i.i.i.i.i, label %page_to_nid.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, label %page_to_nid.exit.i.i.i.i.i.if.end67.i.i.i.i.i_crit_edge

page_to_nid.exit.i.i.i.i.i.if.end67.i.i.i.i.i_crit_edge: ; preds = %page_to_nid.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i.i.i.i.i

page_to_nid.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge: ; preds = %page_to_nid.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond192.i.i.i.i.i

if.end67.i.i.i.i.i:                               ; preds = %page_to_nid.exit.i.i.i.i.i.if.end67.i.i.i.i.i_crit_edge, %if.then32.i.i.i.i.i.if.end67.i.i.i.i.i_crit_edge
  %93 = ptrtoint ptr %pte.0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pte.0.i.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %95 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.processor, ptr %95, i32 0, i32 9
  %96 = ptrtoint ptr %set_pte_ext.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_pte_ext.i.i.i.i.i.i.i.i, align 4
  call void %97(ptr noundef %pte.0.i.i.i.i.i, i32 noundef 0, i32 noundef 0) #7
  %and.i345.i.i.i.i.i = and i32 %94, -2946
  %or.i346.i.i.i.i.i = or i32 %and.i345.i.i.i.i.i, %and1.i.i.i.i.i.i
  %and.i.i347.i.i.i.i.i = and i32 %or.i346.i.i.i.i.i, -129
  %spec.select356.i.i.i.i.i = select i1 %48, i32 %and.i.i347.i.i.i.i.i, i32 %or.i346.i.i.i.i.i
  %98 = or i32 %spec.select356.i.i.i.i.i, %10
  %and86.i.i.i.i.i = and i32 %spec.select356.i.i.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i.i.i.i.i)
  %tobool87.not.i.i.i.i.i = icmp eq i32 %and86.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = select i1 %tobool.not.i84.i.i.i.i, i1 true, i1 %tobool87.not.i.i.i.i.i
  %ptent.2.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i32 %98, i32 %and.i.i347.i.i.i.i.i
  br label %do.cond192.sink.split.i.i.i.i.i

if.else107.i.i.i.i.i:                             ; preds = %do.body26.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.else107.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, label %if.then110.i.i.i.i.i

if.else107.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge: ; preds = %if.else107.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond192.i.i.i.i.i

if.then110.i.i.i.i.i:                             ; preds = %if.else107.i.i.i.i.i
  %shr3.i.i.i.i.i.i = and i32 %47, -128
  %99 = and i32 %47, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 124, i32 %99)
  %cmp.i351.not.i.i.i.i.i = icmp eq i32 %99, 124
  %or.i353.i.i.i.i.i = or i32 %shr3.i.i.i.i.i.i, 120
  %newpte.2.i.i.i.i.i = select i1 %cmp.i351.not.i.i.i.i.i, i32 %or.i353.i.i.i.i.i, i32 %47
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %newpte.2.i.i.i.i.i)
  %cmp.i354.not.i.i.i.i.i = icmp eq i32 %47, %newpte.2.i.i.i.i.i
  br i1 %cmp.i354.not.i.i.i.i.i, label %if.then110.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, label %if.then110.i.i.i.i.i.do.cond192.sink.split.i.i.i.i.i_crit_edge

if.then110.i.i.i.i.i.do.cond192.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then110.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond192.sink.split.i.i.i.i.i

if.then110.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge: ; preds = %if.then110.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond192.i.i.i.i.i

do.cond192.sink.split.i.i.i.i.i:                  ; preds = %if.then110.i.i.i.i.i.do.cond192.sink.split.i.i.i.i.i_crit_edge, %if.end67.i.i.i.i.i
  %newpte.2.sink.i.i.i.i.i = phi i32 [ %ptent.2.i.i.i.i.i, %if.end67.i.i.i.i.i ], [ %newpte.2.i.i.i.i.i, %if.then110.i.i.i.i.i.do.cond192.sink.split.i.i.i.i.i_crit_edge ]
  %100 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %vm_mm.i, align 4
  call void @set_pte_at(ptr noundef %101, i32 noundef %addr.addr.0.i.i.i.i.i, ptr noundef %pte.0.i.i.i.i.i, i32 noundef %newpte.2.sink.i.i.i.i.i) #7
  %inc188.i.i.i.i.i = add i32 %pages.0.i.i.i.i.i, 1
  br label %do.cond192.i.i.i.i.i

do.cond192.i.i.i.i.i:                             ; preds = %do.cond192.sink.split.i.i.i.i.i, %if.then110.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, %if.else107.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, %page_to_nid.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, %PageDirty.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, %page_count.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, %PageKsm.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge, %if.then39.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge
  %pages.3.i.i.i.i.i = phi i32 [ %pages.0.i.i.i.i.i, %if.else107.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge ], [ %pages.0.i.i.i.i.i, %page_to_nid.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge ], [ %pages.0.i.i.i.i.i, %PageKsm.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge ], [ %pages.0.i.i.i.i.i, %if.then39.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge ], [ %pages.0.i.i.i.i.i, %page_count.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge ], [ %pages.0.i.i.i.i.i, %PageDirty.exit.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge ], [ %pages.0.i.i.i.i.i, %if.then110.i.i.i.i.i.do.cond192.i.i.i.i.i_crit_edge ], [ %inc188.i.i.i.i.i, %do.cond192.sink.split.i.i.i.i.i ]
  %incdec.ptr.i.i.i.i.i = getelementptr i32, ptr %pte.0.i.i.i.i.i, i32 1
  %add.i.i.i.i.i = add i32 %addr.addr.0.i.i.i.i.i, 4096
  %cmp193.not.i.i.i.i.i = icmp eq i32 %add.i.i.i.i.i, %and.end.i
  br i1 %cmp193.not.i.i.i.i.i, label %change_pte_range.exit.i.i.i.i, label %do.cond192.i.i.i.i.i.do.body26.i.i.i.i.i_crit_edge

do.cond192.i.i.i.i.i.do.body26.i.i.i.i.i_crit_edge: ; preds = %do.cond192.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26.i.i.i.i.i

change_pte_range.exit.i.i.i.i:                    ; preds = %do.cond192.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %28) #7
  call void @kunmap_local_indexed(ptr noundef %pte.0.i.i.i.i.i) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %102 = call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i1.i.i.i.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i1.i.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task.i.i.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 213
  %106 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i.i.i = add i32 %107, -1
  store i32 %dec.i.i.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %108 = call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i.i.i.i.i.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %sub.i.i355.i.i.i.i.i = add i32 %111, -1
  store volatile i32 %sub.i.i355.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  br label %next43.i.i.i.i

next43.i.i.i.i:                                   ; preds = %change_pte_range.exit.i.i.i.i, %if.then8.i.i.i.i.i, %do.body9.i.next43.i.i.i.i_crit_edge
  %pages.1.i.i.i.i = phi i32 [ %pages.3.i.i.i.i.i, %change_pte_range.exit.i.i.i.i ], [ 0, %if.then8.i.i.i.i.i ], [ 0, %do.body9.i.next43.i.i.i.i_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 283, i32 noundef 0) #7
  %call.i.i.i.i.i = call i32 @__cond_resched() #7
  %112 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool50.not.i.i.i.i = icmp eq i32 %113, 0
  br i1 %tobool50.not.i.i.i.i, label %next43.i.i.i.i.change_p4d_range.exit.i_crit_edge, label %if.then51.i.i.i.i

next43.i.i.i.i.change_p4d_range.exit.i_crit_edge: ; preds = %next43.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %change_p4d_range.exit.i

if.then51.i.i.i.i:                                ; preds = %next43.i.i.i.i
  %114 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %8, align 4
  %and.i.i85.i.i.i.i = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i85.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i85.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %if.then51.i.i.i.i.if.end.i86.i.i.i.i_crit_edge, label %do.body.i.i.i.i.i

if.then51.i.i.i.i.if.end.i86.i.i.i.i_crit_edge:   ; preds = %if.then51.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i86.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %if.then51.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 482) #7
  br label %if.end.i86.i.i.i.i

if.end.i86.i.i.i.i:                               ; preds = %do.body.i.i.i.i.i, %if.then51.i.i.i.i.if.end.i86.i.i.i.i_crit_edge
  %116 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %5, align 4
  %notifier_subscriptions.i.i.i.i.i.i = getelementptr inbounds %struct.anon, ptr %117, i32 0, i32 49
  %118 = ptrtoint ptr %notifier_subscriptions.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %notifier_subscriptions.i.i.i.i.i.i, align 8
  %tobool.i8.not.i.i.i.i.i = icmp eq ptr %119, null
  br i1 %tobool.i8.not.i.i.i.i.i, label %if.end.i86.i.i.i.i.change_p4d_range.exit.i_crit_edge, label %if.then4.i.i.i.i.i

if.end.i86.i.i.i.i.change_p4d_range.exit.i_crit_edge: ; preds = %if.end.i86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %change_p4d_range.exit.i

if.then4.i.i.i.i.i:                               ; preds = %if.end.i86.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %range.i.i.i.i, i1 noundef zeroext false) #7
  br label %change_p4d_range.exit.i

change_p4d_range.exit.i:                          ; preds = %if.then4.i.i.i.i.i, %if.end.i86.i.i.i.i.change_p4d_range.exit.i_crit_edge, %next43.i.i.i.i.change_p4d_range.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range.i.i.i.i) #7
  %add17.i = add i32 %pages.1.i.i.i.i, %pages.0.i
  %incdec.ptr.i = getelementptr [2 x i32], ptr %pgd.0.i, i32 1
  %cmp19.not.i = icmp eq i32 %and.end.i, %end
  br i1 %cmp19.not.i, label %do.end20.i, label %change_p4d_range.exit.i.do.body9.i_crit_edge

change_p4d_range.exit.i.do.body9.i_crit_edge:     ; preds = %change_p4d_range.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

do.end20.i:                                       ; preds = %change_p4d_range.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17.i)
  %tobool21.not.i = icmp eq i32 %add17.i, 0
  br i1 %tobool21.not.i, label %do.end20.i.change_protection_range.exit_crit_edge, label %if.then22.i

do.end20.i.change_protection_range.exit_crit_edge: ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %change_protection_range.exit

if.then22.i:                                      ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @flush_tlb_range(ptr noundef %vma, i32 noundef %start, i32 noundef %end) #7
  br label %change_protection_range.exit

change_protection_range.exit:                     ; preds = %if.then22.i, %do.end20.i.change_protection_range.exit_crit_edge
  %call.i.i.i47.i = call zeroext i1 @__kasan_check_write(ptr noundef %tlb_flush_pending.i.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %tlb_flush_pending.i.i, i32 1, i32 3, i32 1) #7
  %120 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tlb_flush_pending.i.i, ptr %tlb_flush_pending.i.i, i32 1, ptr elementtype(i32) %tlb_flush_pending.i.i) #7, !srcloc !53
  ret i32 %add17.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mprotect_fixup(ptr noundef %vma, ptr nocapture noundef %pprev, i32 noundef %start, i32 noundef %end, i32 noundef %newflags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  %sub = sub i32 %end, %start
  %shr = lshr i32 %sub, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %newflags)
  %cmp = icmp eq i32 %3, %newflags
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %pprev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vma, ptr %pprev, align 4
  br label %cleanup91

if.end:                                           ; preds = %entry
  %and14 = and i32 %newflags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end30_crit_edge, label %if.then16

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then16:                                        ; preds = %if.end
  %call17 = tail call zeroext i1 @may_expand_vm(ptr noundef %1, i32 noundef %newflags, i32 noundef %shr) #7
  br i1 %call17, label %if.then16.if.end21_crit_edge, label %land.lhs.true18

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true18:                                  ; preds = %if.then16
  %call19 = tail call zeroext i1 @may_expand_vm(ptr noundef %1, i32 noundef %3, i32 noundef %shr) #7
  br i1 %call19, label %land.lhs.true18.cleanup91_crit_edge, label %land.lhs.true18.if.end21_crit_edge

land.lhs.true18.if.end21_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true18.cleanup91_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup91

if.end21:                                         ; preds = %land.lhs.true18.if.end21_crit_edge, %if.then16.if.end21_crit_edge
  %and22 = and i32 %3, 7340042
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then24:                                        ; preds = %if.end21
  %call25 = tail call i32 @security_vm_enough_memory_mm(ptr noundef %1, i32 noundef %shr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then24.cleanup91_crit_edge

if.then24.cleanup91_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup91

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %newflags, 1048576
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.end21.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %newflags.addr.0 = phi i32 [ %newflags, %if.end21.if.end30_crit_edge ], [ %or, %if.end28 ], [ %newflags, %if.end.if.end30_crit_edge ]
  %charged.0 = phi i32 [ 0, %if.end21.if.end30_crit_edge ], [ %shr, %if.end28 ], [ 0, %if.end.if.end30_crit_edge ]
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %5 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_pgoff, align 4
  %7 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vma, align 4
  %sub31 = sub i32 %start, %8
  %shr32 = lshr i32 %sub31, 12
  %add = add i32 %shr32, %6
  %9 = ptrtoint ptr %pprev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev, align 4
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %11 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %anon_vma, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %13 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_file, align 4
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 17
  %call33 = tail call ptr @anon_vma_name(ptr noundef %vma) #7
  %15 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %vm_userfaultfd_ctx, align 4
  %16 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call34 = tail call ptr @vma_merge(ptr noundef %1, ptr noundef %10, i32 noundef %start, i32 noundef %end, i32 noundef %newflags.addr.0, ptr noundef %12, ptr noundef %14, i32 noundef %add, ptr noundef null, [1 x i32] %16, ptr noundef %call33) #7
  %17 = ptrtoint ptr %pprev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call34, ptr %pprev, align 4
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end61, label %if.then36

if.then36:                                        ; preds = %if.end30
  %vm_flags37 = getelementptr inbounds %struct.vm_area_struct, ptr %call34, i32 0, i32 8
  %18 = ptrtoint ptr %vm_flags37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_flags37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %newflags.addr.0)
  %tobool39.not = icmp eq i32 %19, %newflags.addr.0
  br i1 %tobool39.not, label %if.then36.success_crit_edge, label %do.end, !prof !43

if.then36.success_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %success

do.end:                                           ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 470, i32 noundef 9, ptr noundef null) #7
  br label %success

if.end61:                                         ; preds = %if.end30
  %20 = ptrtoint ptr %pprev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %vma, ptr %pprev, align 4
  %21 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %start)
  %cmp63.not = icmp eq i32 %22, %start
  br i1 %cmp63.not, label %if.end61.if.end69_crit_edge, label %if.then64

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then64:                                        ; preds = %if.end61
  %call65 = tail call i32 @split_vma(ptr noundef %1, ptr noundef %vma, i32 noundef %start, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end69_crit_edge, label %if.then64.fail_crit_edge

if.then64.fail_crit_edge:                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %if.end61.if.end69_crit_edge
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %23 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %end)
  %cmp70.not = icmp eq i32 %24, %end
  br i1 %cmp70.not, label %if.end69.success_crit_edge, label %if.then71

if.end69.success_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %success

if.then71:                                        ; preds = %if.end69
  %call72 = tail call i32 @split_vma(ptr noundef %1, ptr noundef %vma, i32 noundef %end, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then71.success_crit_edge, label %if.then71.fail_crit_edge

if.then71.fail_crit_edge:                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.then71.success_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %success

success:                                          ; preds = %if.then71.success_crit_edge, %if.end69.success_crit_edge, %do.end, %if.then36.success_crit_edge
  %vma.addr.0 = phi ptr [ %vma, %if.then71.success_crit_edge ], [ %vma, %if.end69.success_crit_edge ], [ %call34, %do.end ], [ %call34, %if.then36.success_crit_edge ]
  %vm_flags77 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 8
  %25 = ptrtoint ptr %vm_flags77 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %newflags.addr.0, ptr %vm_flags77, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 7
  %26 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_page_prot, align 4
  %call78 = tail call i32 @vma_wants_writenotify(ptr noundef %vma.addr.0, i32 noundef %27) #7
  tail call void @vma_set_page_prot(ptr noundef %vma.addr.0) #7
  %28 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_page_prot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool80.not = icmp ne i32 %call78, 0
  %cond = zext i1 %tobool80.not to i32
  %call81 = tail call i32 @change_protection(ptr noundef %vma.addr.0, i32 noundef %start, i32 noundef %end, i32 noundef %29, i32 noundef %cond)
  %and82 = and i32 %3, 8202
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and82)
  %cmp83 = icmp ne i32 %and82, 8192
  %and85 = and i32 %newflags.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %or.cond = or i1 %cmp83, %tobool86.not
  br i1 %or.cond, label %success.if.end89_crit_edge, label %if.then87

success.if.end89_crit_edge:                       ; preds = %success
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then87:                                        ; preds = %success
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = tail call i32 @populate_vma_page_range(ptr noundef %vma.addr.0, i32 noundef %start, i32 noundef %end, ptr noundef null) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %success.if.end89_crit_edge
  %sub90 = sub nsw i32 0, %shr
  tail call void @vm_stat_account(ptr noundef %1, i32 noundef %3, i32 noundef %sub90) #7
  tail call void @vm_stat_account(ptr noundef %1, i32 noundef %newflags.addr.0, i32 noundef %shr) #7
  tail call void @perf_event_mmap(ptr noundef %vma.addr.0) #7
  br label %cleanup91

fail:                                             ; preds = %if.then71.fail_crit_edge, %if.then64.fail_crit_edge
  %error.0 = phi i32 [ %call65, %if.then64.fail_crit_edge ], [ %call72, %if.then71.fail_crit_edge ]
  %sub.i = sub nsw i32 0, %charged.0
  %conv.i.i = sext i32 %sub.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %30 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i, i32 noundef %30) #7
  br label %cleanup91

cleanup91:                                        ; preds = %fail, %if.end89, %if.then24.cleanup91_crit_edge, %land.lhs.true18.cleanup91_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.end89 ], [ %error.0, %fail ], [ -12, %land.lhs.true18.cleanup91_crit_edge ], [ -12, %if.then24.cleanup91_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @may_expand_vm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_vm_enough_memory_mm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_merge(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @split_vma(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vma_wants_writenotify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_set_page_prot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @populate_vma_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_stat_account(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_mmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mprotect(i32 noundef %start, i32 noundef %len, i32 noundef %prot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @do_mprotect_pkey(i32 noundef %start, i32 noundef %len, i32 noundef %prot) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmu_notifier_invalidate_range_start(ptr noundef %range) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 454) #7
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start, %__here) to i32)) #7
  %mm = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 4
  %notifier_subscriptions.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %notifier_subscriptions.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier_subscriptions.i, align 8
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %__here.__here4_crit_edge, label %if.then

__here.__here4_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here4

if.then:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 4
  %call3 = tail call i32 @__mmu_notifier_invalidate_range_start(ptr noundef %range) #7
  br label %__here4

__here4:                                          ; preds = %if.then, %__here.__here4_crit_edge
  tail call void @lock_release(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start, %__here4) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_invalidate_range_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range_end(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_mprotect_pkey(i32 noundef %start, i32 noundef %len, i32 noundef %prot) unnamed_addr #0 align 64 {
entry:
  %prev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #7
  %and = and i32 %prot, 50331648
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %personality = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 62
  %4 = ptrtoint ptr %personality to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %personality, align 32
  %and1 = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp ne i32 %and1, 0
  %and2 = and i32 %prot, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3 = icmp ne i32 %and2, 0
  %6 = and i1 %tobool3, %tobool.not
  %and4 = and i32 %prot, -50331649
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %and)
  %cmp = icmp ne i32 %and, 50331648
  %and5 = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = and i1 %tobool6.not, %cmp
  br i1 %or.cond, label %if.end8, label %entry.cleanup140_crit_edge

entry.cleanup140_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup140

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool9.not = icmp eq i32 %len, 0
  br i1 %tobool9.not, label %if.end8.cleanup140_crit_edge, label %if.end11

if.end8.cleanup140_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup140

if.end11:                                         ; preds = %if.end8
  %add = add i32 %len, 4095
  %and12 = and i32 %add, -4096
  %add13 = add i32 %and12, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %start)
  %cmp14.not = icmp ugt i32 %add13, %start
  br i1 %cmp14.not, label %if.end16, label %if.end11.cleanup140_crit_edge

if.end11.cleanup140_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup140

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and4)
  %cmp.i = icmp ult i32 %and4, 16
  br i1 %cmp.i, label %if.end19, label %if.end16.cleanup140_crit_edge

if.end16.cleanup140_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup140

if.end19:                                         ; preds = %if.end16
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %7 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@do_mprotect_pkey, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !54

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %8, i1 noundef zeroext true) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end19
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@do_mprotect_pkey, %if.then.i4.i)) #7
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !54

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i4 = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %8, i1 noundef zeroext true, i1 noundef zeroext %cmp.i4) #7
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end32, label %mmap_write_lock_killable.exit.cleanup140_crit_edge

mmap_write_lock_killable.exit.cleanup140_crit_edge: ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup140

if.end32:                                         ; preds = %mmap_write_lock_killable.exit
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %mm35 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %mm35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mm35, align 8
  %call36 = tail call ptr @find_vma(ptr noundef %12, i32 noundef %start) #7
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end32.out_crit_edge, label %if.end39

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end39:                                         ; preds = %if.end32
  %and40 = and i32 %prot, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %13 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call36, align 4
  br i1 %tobool41.not, label %if.else, label %if.then44, !prof !43

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add13)
  %cmp45.not = icmp ult i32 %14, %add13
  br i1 %cmp45.not, label %if.end47, label %if.then44.out_crit_edge

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end47:                                         ; preds = %if.then44
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call36, i32 0, i32 8
  %15 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_flags, align 4
  %and49 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.out_crit_edge, label %if.end47.if.end72_crit_edge

if.end47.if.end72_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %start)
  %cmp54 = icmp ugt i32 %14, %start
  br i1 %cmp54, label %if.else.out_crit_edge, label %if.end56

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end56:                                         ; preds = %if.else
  %and57 = and i32 %prot, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end72_crit_edge, label %if.end56.out_crit_edge, !prof !43

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end56.if.end72_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end72:                                         ; preds = %if.end56.if.end72_crit_edge, %if.end47.if.end72_crit_edge
  %start.addr.0 = phi i32 [ %14, %if.end47.if.end72_crit_edge ], [ %start, %if.end56.if.end72_crit_edge ]
  %17 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0, i32 %18)
  %cmp74 = icmp ugt i32 %start.addr.0, %18
  br i1 %cmp74, label %if.end72.if.end77_crit_edge, label %if.else76

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.else76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %call36, i32 0, i32 3
  %19 = ptrtoint ptr %vm_prev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vm_prev, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.else76, %if.end72.if.end77_crit_edge
  %storemerge = phi ptr [ %20, %if.else76 ], [ %call36, %if.end72.if.end77_crit_edge ]
  %21 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %storemerge, ptr %prev, align 4
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %if.end77
  %nstart.0 = phi i32 [ %start.addr.0, %if.end77 ], [ %39, %lor.lhs.false.for.cond_crit_edge ]
  %vma.0 = phi ptr [ %call36, %if.end77 ], [ %41, %lor.lhs.false.for.cond_crit_edge ]
  br i1 %6, label %land.lhs.true79, label %for.cond.if.end84_crit_edge

for.cond.if.end84_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

land.lhs.true79:                                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %vm_flags80 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 8
  %22 = ptrtoint ptr %vm_flags80 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vm_flags80, align 4
  %and81 = lshr i32 %23, 4
  %24 = and i32 %and81, 4
  %25 = or i32 %24, %and4
  br label %if.end84

if.end84:                                         ; preds = %land.lhs.true79, %for.cond.if.end84_crit_edge
  %prot.addr.1 = phi i32 [ %and4, %for.cond.if.end84_crit_edge ], [ %25, %land.lhs.true79 ]
  %or5.i = and i32 %prot.addr.1, 7
  %vm_flags86 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 8
  %26 = ptrtoint ptr %vm_flags86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_flags86, align 4
  %and87 = and i32 %27, -8
  %or88 = or i32 %and87, %or5.i
  %shr = lshr i32 %27, 4
  %neg89 = xor i32 %shr, -1
  %and90 = and i32 %or5.i, %neg89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool92.not = icmp eq i32 %and90, 0
  br i1 %tobool92.not, label %if.end94, label %if.end84.out_crit_edge

if.end84.out_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end94:                                         ; preds = %if.end84
  %call98 = tail call i32 @security_file_mprotect(ptr noundef nonnull %vma.0, i32 noundef %and4, i32 noundef %prot.addr.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end94.out_crit_edge

if.end94.out_crit_edge:                           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end101:                                        ; preds = %if.end94
  %vm_end102 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 1
  %28 = ptrtoint ptr %vm_end102 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_end102, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %add13)
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 12
  %31 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vm_ops, align 4
  %tobool106.not = icmp eq ptr %32, null
  br i1 %tobool106.not, label %if.end101.if.end117_crit_edge, label %land.lhs.true107

if.end101.if.end117_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

land.lhs.true107:                                 ; preds = %if.end101
  %mprotect = getelementptr inbounds %struct.vm_operations_struct, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %mprotect to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mprotect, align 4
  %tobool109.not = icmp eq ptr %34, null
  br i1 %tobool109.not, label %land.lhs.true107.if.end117_crit_edge, label %if.then110

land.lhs.true107.if.end117_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then110:                                       ; preds = %land.lhs.true107
  %call113 = tail call i32 %34(ptr noundef nonnull %vma.0, i32 noundef %nstart.0, i32 noundef %30, i32 noundef %or88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then110.if.end117_crit_edge, label %if.then110.out_crit_edge

if.then110.out_crit_edge:                         ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then110.if.end117_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.end117:                                        ; preds = %if.then110.if.end117_crit_edge, %land.lhs.true107.if.end117_crit_edge, %if.end101.if.end117_crit_edge
  %call118 = call i32 @mprotect_fixup(ptr noundef nonnull %vma.0, ptr noundef nonnull %prev, i32 noundef %nstart.0, i32 noundef %30, i32 noundef %or88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end117.out_crit_edge

if.end117.out_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end121:                                        ; preds = %if.end117
  %35 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev, align 4
  %vm_end122 = getelementptr inbounds %struct.vm_area_struct, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %vm_end122 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vm_end122, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %30, i32 %38)
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add13)
  %cmp127.not = icmp ult i32 %39, %add13
  br i1 %cmp127.not, label %if.end129, label %if.end121.out_crit_edge

if.end121.out_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end129:                                        ; preds = %if.end121
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %36, i32 0, i32 2
  %40 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vm_next, align 4
  %tobool130.not = icmp eq ptr %41, null
  br i1 %tobool130.not, label %if.end129.out_crit_edge, label %lor.lhs.false

if.end129.out_crit_edge:                          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.end129
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %cmp132.not = icmp eq i32 %43, %39
  br i1 %cmp132.not, label %lor.lhs.false.for.cond_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

out:                                              ; preds = %lor.lhs.false.out_crit_edge, %if.end129.out_crit_edge, %if.end121.out_crit_edge, %if.end117.out_crit_edge, %if.then110.out_crit_edge, %if.end94.out_crit_edge, %if.end84.out_crit_edge, %if.end56.out_crit_edge, %if.else.out_crit_edge, %if.end47.out_crit_edge, %if.then44.out_crit_edge, %if.end32.out_crit_edge
  %error.1 = phi i32 [ -12, %if.then44.out_crit_edge ], [ -22, %if.end47.out_crit_edge ], [ -12, %if.else.out_crit_edge ], [ -12, %if.end32.out_crit_edge ], [ -22, %if.end56.out_crit_edge ], [ -13, %if.end84.out_crit_edge ], [ %call98, %if.end94.out_crit_edge ], [ %call113, %if.then110.out_crit_edge ], [ %call118, %if.end117.out_crit_edge ], [ 0, %if.end121.out_crit_edge ], [ -12, %lor.lhs.false.out_crit_edge ], [ -12, %if.end129.out_crit_edge ]
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %mm139 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 53
  %46 = ptrtoint ptr %mm139 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mm139, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@do_mprotect_pkey, %if.then.i.i5)) #7
          to label %mmap_write_unlock.exit [label %if.then.i.i5], !srcloc !54

if.then.i.i5:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %47, i1 noundef zeroext true) #7
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i5, %out
  %mmap_lock.i6 = getelementptr inbounds %struct.anon, ptr %47, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock.i6) #7
  br label %cleanup140

cleanup140:                                       ; preds = %mmap_write_unlock.exit, %mmap_write_lock_killable.exit.cleanup140_crit_edge, %if.end16.cleanup140_crit_edge, %if.end11.cleanup140_crit_edge, %if.end8.cleanup140_crit_edge, %entry.cleanup140_crit_edge
  %retval.0 = phi i32 [ %error.1, %mmap_write_unlock.exit ], [ -22, %entry.cleanup140_crit_edge ], [ 0, %if.end8.cleanup140_crit_edge ], [ -12, %if.end11.cleanup140_crit_edge ], [ -22, %if.end16.cleanup140_crit_edge ], [ -4, %mmap_write_lock_killable.exit.cleanup140_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_mprotect(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/mprotect.c", i32 470, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/mprotect.c", i32 662, i32 1}
!4 = !{ptr @event_enter__mprotect, !3, !"event_enter__mprotect", i1 false, i1 false}
!5 = !{ptr @__event_enter__mprotect, !3, !"__event_enter__mprotect", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @event_exit__mprotect, !3, !"event_exit__mprotect", i1 false, i1 false}
!8 = !{ptr @__event_exit__mprotect, !3, !"__event_exit__mprotect", i1 false, i1 false}
!9 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__syscall_meta__mprotect, !3, !"__syscall_meta__mprotect", i1 false, i1 false}
!11 = !{ptr @__p_syscall_meta__mprotect, !3, !"__p_syscall_meta__mprotect", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/mmu_notifier.h", i32 454, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!22 = distinct !{null, !23, !"prot_none_walk_ops", i1 false, i1 false}
!23 = !{!"../mm/mprotect.c", i32 402, i32 33}
!24 = !{ptr @.str.9, !3, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !3, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @types__mprotect, !3, !"types__mprotect", i1 false, i1 false}
!27 = !{ptr @.str.11, !3, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !3, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !3, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @args__mprotect, !3, !"args__mprotect", i1 false, i1 false}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2155679554, i64 2155680032, i64 2155679591, i64 2155679647, i64 2155679681, i64 2155679705, i64 2155679746, i64 2155679767, i64 2155679795, i64 2155679829}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2155677476, i64 2155677954, i64 2155677513, i64 2155677569, i64 2155677603, i64 2155677627, i64 2155677668, i64 2155677689, i64 2155677717, i64 2155677751}
!45 = !{i64 2148685554, i64 2148685580, i64 2148685609, i64 2148685643, i64 2148685674, i64 2148685697}
!46 = !{i64 2154104169}
!47 = !{i64 2152748601}
!48 = !{i64 2150240552, i64 2150241043, i64 2150240589, i64 2150240645, i64 2150240679, i64 2150240703, i64 2150240744, i64 2150240765, i64 2150240793, i64 2150240827}
!49 = !{i64 2150354522, i64 2150355013, i64 2150354559, i64 2150354615, i64 2150354649, i64 2150354673, i64 2150354714, i64 2150354735, i64 2150354763, i64 2150354797}
!50 = !{i64 2153161305, i64 2153161789, i64 2153161342, i64 2153161398, i64 2153161432, i64 2153161456, i64 2153161497, i64 2153161518, i64 2153161546, i64 2153161580}
!51 = !{i64 2152748808}
!52 = !{i64 2154106940}
!53 = !{i64 2148688019, i64 2148688045, i64 2148688074, i64 2148688108, i64 2148688139, i64 2148688162}
!54 = !{i64 2148286231, i64 2148286236, i64 2148286249, i64 2148286293, i64 2148286327, i64 2148286348}
