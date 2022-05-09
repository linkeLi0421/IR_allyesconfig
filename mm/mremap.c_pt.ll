; ModuleID = '/llk/IR_all_yes/mm/mremap.c_pt.bc'
source_filename = "../mm/mremap.c"
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.76 }
%struct.atomic_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon_vma = type { ptr, %struct.rw_semaphore, %struct.atomic_t, i32, ptr, %struct.rb_root_cached }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.81 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm/mremap.c\00", [20 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_mremap\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__mremap = internal global %struct.syscall_metadata { ptr @.str.3, i32 -1, i32 5, ptr @types__mremap, ptr @args__mremap, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mremap, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mremap, i64 20) }, ptr @event_enter__mremap, ptr @event_exit__mremap }, align 4
@event_enter__mremap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.75 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr @__syscall_meta__mremap, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mremap = internal global ptr @event_enter__mremap, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_mremap\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__mremap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.75 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr @__syscall_meta__mremap, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mremap = internal global ptr @event_exit__mremap, section "_ftrace_events", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_mremap\00", [21 x i8] zeroinitializer }, align 32
@types__mremap = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5], [44 x i8] zeroinitializer }, align 32
@args__mremap = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mremap = internal global ptr @__syscall_meta__mremap, section "__syscalls_metadata", align 4
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/mmu_notifier.h\00", [35 x i8] zeroinitializer }, align 32
@__mmu_notifier_invalidate_range_start_map = external dso_local global %struct.lockdep_map, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"old_len\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"new_len\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"new_addr\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@sysctl_max_map_count = external dso_local local_unnamed_addr global i32, align 4
@vma_to_resize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vma_to_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\014%s (%d): attempted to duplicate a private mapping with mremap.  This is not supported.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vma_to_resize\00", [18 x i8] zeroinitializer }, align 32
@vma_to_resize._entry_ptr = internal global ptr @vma_to_resize._entry, section ".printk_index", align 4
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 501, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"event_enter__mremap\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"event_exit__mremap\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"types__mremap\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"args__mremap\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [32 x i8] c"../include/linux/mmu_notifier.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 454, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 889, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [15 x i8] c"../mm/mremap.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 742, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__event_enter__mremap, ptr @__event_exit__mremap, ptr @__p_syscall_meta__mremap, ptr @__syscall_meta__mremap, ptr @event_enter__mremap, ptr @event_exit__mremap, ptr @vma_to_resize._entry, ptr @vma_to_resize._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @types__mremap, ptr @args__mremap, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mremap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mremap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mremap to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mremap to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vma_to_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_mremap = dso_local alias i32 (i32, i32, i32, i32, i32), ptr @__se_sys_mremap

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @move_page_tables(ptr noundef %vma, i32 noundef %old_addr, ptr nocapture noundef readonly %new_vma, i32 noundef %new_addr, i32 noundef %len, i1 noundef zeroext %need_rmap_locks) local_unnamed_addr #0 align 64 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range) #7
  %0 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 5
  %add = add i32 %len, %old_addr
  %5 = getelementptr inbounds i8, ptr %range, i32 24
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  tail call void @flush_cache_range(ptr noundef %vma, i32 noundef %old_addr, i32 noundef %add) #7
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %7 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vm_mm, align 4
  %9 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vma, ptr %range, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %old_addr, ptr %1, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %3, align 4
  call fastcc void @mmu_notifier_invalidate_range_start(ptr noundef nonnull %range)
  %vm_mm71 = getelementptr inbounds %struct.vm_area_struct, ptr %new_vma, i32 0, i32 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %old_addr)
  %cmp158 = icmp ugt i32 %add, %old_addr
  br i1 %cmp158, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vm_file.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %anon_vma.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %old_addr.addr.0162 = phi i32 [ %old_addr, %for.body.lr.ph ], [ %add78, %for.inc.for.body_crit_edge ]
  %new_addr.addr.0159 = phi i32 [ %new_addr, %for.body.lr.ph ], [ %add79, %for.inc.for.body_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 501, i32 noundef 0) #7
  %call.i = call i32 @__cond_resched() #7
  %add.i = add i32 %old_addr.addr.0162, 2097152
  %and.i = and i32 %add.i, -2097152
  %sub.i = sub i32 %and.i, %old_addr.addr.0162
  %sub3.i = sub i32 %add, %old_addr.addr.0162
  %15 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub3.i) #7
  %add5.i = add i32 %new_addr.addr.0159, 2097152
  %and6.i = and i32 %add5.i, -2097152
  %sub7.i = sub i32 %and6.i, %new_addr.addr.0159
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 %sub7.i) #7
  %17 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vm_mm, align 4
  %pgd1.i = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %pgd1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pgd1.i, align 4
  %shr.i.i = lshr i32 %old_addr.addr.0162, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %20, i32 %shr.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %shr.i.i146 = lshr i32 %new_addr.addr.0159, 21
  %add.ptr.i.i147 = getelementptr [2 x i32], ptr %20, i32 %shr.i.i146
  %tobool10.not = icmp eq ptr %add.ptr.i.i147, null
  br i1 %tobool10.not, label %if.end7.for.end_crit_edge, label %get_old_pmd.exit

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

get_old_pmd.exit:                                 ; preds = %if.end7
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i = icmp eq i32 %22, 0
  %.call1.i = select i1 %tobool2.not.i, ptr null, ptr %add.ptr.i.i
  br i1 %tobool2.not.i, label %get_old_pmd.exit.for.inc_crit_edge, label %if.end38

get_old_pmd.exit.for.inc_crit_edge:               ; preds = %get_old_pmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end38:                                         ; preds = %get_old_pmd.exit
  %23 = ptrtoint ptr %add.ptr.i.i147 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool66.not = icmp eq i32 %24, 0
  br i1 %tobool66.not, label %land.lhs.true70, label %if.end38.if.end75_crit_edge, !prof !40

if.end38.if.end75_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

land.lhs.true70:                                  ; preds = %if.end38
  %25 = ptrtoint ptr %vm_mm71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vm_mm71, align 4
  %call72 = call i32 @__pte_alloc(ptr noundef %26, ptr noundef nonnull %add.ptr.i.i147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true70.if.end75_crit_edge, label %land.lhs.true70.for.end_crit_edge

land.lhs.true70.for.end_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true70.if.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true70.if.end75_crit_edge, %if.end38.if.end75_crit_edge
  %add76 = add i32 %16, %old_addr.addr.0162
  %27 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vm_mm, align 4
  br i1 %need_rmap_locks, label %if.then.i, label %if.end75.if.end.i153_crit_edge

if.end75.if.end.i153_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i153

if.then.i:                                        ; preds = %if.end75
  %29 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vm_file.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %f_mapping.i.i = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_mapping.i.i, align 4
  %i_mmap_rwsem.i.i.i = getelementptr inbounds %struct.address_space, ptr %32, i32 0, i32 6
  call void @down_write(ptr noundef %i_mmap_rwsem.i.i.i) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %33 = ptrtoint ptr %anon_vma.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %anon_vma.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %34, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i153_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i153_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i153

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %rwsem.i.i.i = getelementptr inbounds %struct.anon_vma, ptr %36, i32 0, i32 1
  call void @down_write(ptr noundef %rwsem.i.i.i) #7
  br label %if.end.i153

if.end.i153:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end.i153_crit_edge, %if.end75.if.end.i153_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %.call1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %.call1.i, align 4
  %shr.i.i151 = lshr i32 %39, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %shr.i.i151, %40
  %ptl.i.i.i = getelementptr %struct.page, ptr %37, i32 %sub.i.i, i32 1, i32 0, i32 3
  %41 = ptrtoint ptr %ptl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ptl.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %37, i32 %sub.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %43 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %43, 512
  %44 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  %48 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i1.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 213
  %52 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i.i) #7
  %shr.i4.i = lshr i32 %old_addr.addr.0162, 12
  %and.i.i = and i32 %shr.i4.i, 511
  %add.ptr4.i = getelementptr i32, ptr %call.i.i.i, i32 %and.i.i
  call void @_raw_spin_lock(ptr noundef %42) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %54 = load ptr, ptr @mem_map, align 4
  %55 = ptrtoint ptr %add.ptr.i.i147 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i147, align 4
  %shr6.i = lshr i32 %56, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %57 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub7.i152 = sub i32 %shr6.i, %57
  %add.ptr8.i = getelementptr %struct.page, ptr %54, i32 %sub7.i152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %58 = load i32, ptr @pgprot_kernel, align 4
  %or.i5.i = or i32 %58, 512
  %59 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i6.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i6.i to ptr
  %preempt_count.i.i.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i7.i, align 4
  %add.i.i.i8.i = add i32 %62, 1
  store volatile i32 %add.i.i.i8.i, ptr %preempt_count.i.i.i.i7.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  %63 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i1.i.i9.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i1.i.i9.i to ptr
  %task.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i.i.i.i10.i, align 8
  %pagefault_disabled.i.i.i.i11.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 213
  %67 = ptrtoint ptr %pagefault_disabled.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pagefault_disabled.i.i.i.i11.i, align 8
  %inc.i.i.i.i12.i = add i32 %68, 1
  store i32 %inc.i.i.i.i12.i, ptr %pagefault_disabled.i.i.i.i11.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %call.i.i13.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr8.i, i32 noundef %or.i5.i) #7
  %shr.i14.i = lshr i32 %new_addr.addr.0159, 12
  %and.i15.i = and i32 %shr.i14.i, 511
  %add.ptr11.i = getelementptr i32, ptr %call.i.i13.i, i32 %and.i15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %add.ptr.i.i147 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i.i147, align 4
  %shr.i16.i = lshr i32 %71, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %72 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i17.i = sub i32 %shr.i16.i, %72
  %ptl.i.i18.i = getelementptr %struct.page, ptr %69, i32 %sub.i17.i, i32 1, i32 0, i32 3
  %73 = ptrtoint ptr %ptl.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ptl.i.i18.i, align 4
  %cmp.not.i = icmp eq ptr %74, %42
  br i1 %cmp.not.i, label %if.end.i153.if.end15.i_crit_edge, label %do.body.i

if.end.i153.if.end15.i_crit_edge:                 ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

do.body.i:                                        ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_lock_nested(ptr noundef %74, i32 noundef 1) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.body.i, %if.end.i153.if.end15.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %old_addr.addr.0162, i32 %add76)
  %cmp2036.i = icmp ult i32 %old_addr.addr.0162, %add76
  br i1 %cmp2036.i, label %if.end15.i.for.body.i_crit_edge, label %if.end15.i.if.end41.i_crit_edge

if.end15.i.if.end41.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end15.i.for.body.i_crit_edge
  %old_addr.addr.042.i = phi i32 [ %add.i154, %for.inc.i.for.body.i_crit_edge ], [ %old_addr.addr.0162, %if.end15.i.for.body.i_crit_edge ]
  %new_addr.addr.041.i = phi i32 [ %add34.i, %for.inc.i.for.body.i_crit_edge ], [ %new_addr.addr.0159, %if.end15.i.for.body.i_crit_edge ]
  %force_flush.0.off040.i = phi i1 [ %force_flush.2.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %if.end15.i.for.body.i_crit_edge ]
  %new_pte.039.i = phi ptr [ %incdec.ptr33.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr11.i, %if.end15.i.for.body.i_crit_edge ]
  %old_pte.037.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr4.i, %if.end15.i.for.body.i_crit_edge ]
  %75 = ptrtoint ptr %old_pte.037.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %old_pte.037.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool21.not.i = icmp eq i32 %76, 0
  br i1 %tobool21.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end23.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %77 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i = getelementptr inbounds %struct.processor, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %set_pte_ext.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_pte_ext.i.i, align 4
  call void %79(ptr noundef %old_pte.037.i, i32 noundef 0, i32 noundef 0) #7
  %and25.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp ne i32 %and25.i, 0
  %spec.select.i = select i1 %tobool26.not.i, i1 true, i1 %force_flush.0.off040.i
  call void @set_pte_at(ptr noundef %28, i32 noundef %new_addr.addr.041.i, ptr noundef %new_pte.039.i, i32 noundef %76) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i, %for.body.i.for.inc.i_crit_edge
  %force_flush.2.off0.i = phi i1 [ %spec.select.i, %if.end23.i ], [ %force_flush.0.off040.i, %for.body.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %old_pte.037.i, i32 1
  %add.i154 = add i32 %old_addr.addr.042.i, 4096
  %incdec.ptr33.i = getelementptr i32, ptr %new_pte.039.i, i32 1
  %add34.i = add i32 %new_addr.addr.041.i, 4096
  %cmp20.i = icmp ult i32 %add.i154, %add76
  br i1 %cmp20.i, label %for.inc.i.for.body.i_crit_edge, label %do.end37.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end37.i:                                       ; preds = %for.inc.i
  br i1 %force_flush.2.off0.i, label %if.then39.i, label %do.end37.i.if.end41.i_crit_edge

do.end37.i.if.end41.i_crit_edge:                  ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then39.i:                                      ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @flush_tlb_range(ptr noundef %vma, i32 noundef %old_addr.addr.0162, i32 noundef %add76) #7
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %do.end37.i.if.end41.i_crit_edge, %if.end15.i.if.end41.i_crit_edge
  %new_pte.0.lcssa49.i = phi ptr [ %incdec.ptr33.i, %if.then39.i ], [ %incdec.ptr33.i, %do.end37.i.if.end41.i_crit_edge ], [ %add.ptr11.i, %if.end15.i.if.end41.i_crit_edge ]
  %old_pte.0.lcssa48.i = phi ptr [ %incdec.ptr.i, %if.then39.i ], [ %incdec.ptr.i, %do.end37.i.if.end41.i_crit_edge ], [ %add.ptr4.i, %if.end15.i.if.end41.i_crit_edge ]
  br i1 %cmp.not.i, label %if.end41.i.do.end48.i_crit_edge, label %if.then43.i

if.end41.i.do.end48.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48.i

if.then43.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %74) #7
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then43.i, %if.end41.i.do.end48.i_crit_edge
  %add.ptr49.i = getelementptr i32, ptr %new_pte.0.lcssa49.i, i32 -1
  call void @kunmap_local_indexed(ptr noundef %add.ptr49.i) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %80 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i1.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 213
  %84 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %85, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  %86 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %89, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %42) #7
  %add.ptr57.i = getelementptr i32, ptr %old_pte.0.lcssa48.i, i32 -1
  call void @kunmap_local_indexed(ptr noundef %add.ptr57.i) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %90 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i1.i19.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i1.i19.i to ptr
  %task.i.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i.i.i20.i, align 8
  %pagefault_disabled.i.i.i21.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 213
  %94 = ptrtoint ptr %pagefault_disabled.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pagefault_disabled.i.i.i21.i, align 8
  %dec.i.i.i22.i = add i32 %95, -1
  store i32 %dec.i.i.i22.i, ptr %pagefault_disabled.i.i.i21.i, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  %96 = call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i.i.i23.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i23.i to ptr
  %preempt_count.i.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i24.i, align 4
  %sub.i.i25.i = add i32 %99, -1
  store volatile i32 %sub.i.i25.i, ptr %preempt_count.i.i.i24.i, align 4
  br i1 %need_rmap_locks, label %if.then63.i, label %do.end48.i.for.inc_crit_edge

do.end48.i.for.inc_crit_edge:                     ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then63.i:                                      ; preds = %do.end48.i
  %100 = ptrtoint ptr %anon_vma.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %anon_vma.i.i, align 4
  %tobool.not.i27.i = icmp eq ptr %101, null
  br i1 %tobool.not.i27.i, label %if.then63.i.if.end.i32.i_crit_edge, label %if.then.i29.i

if.then63.i.if.end.i32.i_crit_edge:               ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i32.i

if.then.i29.i:                                    ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %rwsem.i.i28.i = getelementptr inbounds %struct.anon_vma, ptr %103, i32 0, i32 1
  call void @up_write(ptr noundef %rwsem.i.i28.i) #7
  br label %if.end.i32.i

if.end.i32.i:                                     ; preds = %if.then.i29.i, %if.then63.i.if.end.i32.i_crit_edge
  %104 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vm_file.i.i, align 4
  %tobool2.not.i31.i = icmp eq ptr %105, null
  br i1 %tobool2.not.i31.i, label %if.end.i32.i.for.inc_crit_edge, label %if.then3.i35.i

if.end.i32.i.for.inc_crit_edge:                   ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3.i35.i:                                   ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #9
  %f_mapping.i33.i = getelementptr inbounds %struct.file, ptr %105, i32 0, i32 18
  %106 = ptrtoint ptr %f_mapping.i33.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %f_mapping.i33.i, align 4
  %i_mmap_rwsem.i.i34.i = getelementptr inbounds %struct.address_space, ptr %107, i32 0, i32 6
  call void @up_write(ptr noundef %i_mmap_rwsem.i.i34.i) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then3.i35.i, %if.end.i32.i.for.inc_crit_edge, %do.end48.i.for.inc_crit_edge, %get_old_pmd.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add78 = add i32 %16, %old_addr.addr.0162
  %add79 = add i32 %16, %new_addr.addr.0159
  %cmp = icmp ugt i32 %add, %add78
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true70.for.end_crit_edge, %if.end7.for.end_crit_edge, %entry.for.end_crit_edge
  %old_addr.addr.0.lcssa = phi i32 [ %old_addr, %entry.for.end_crit_edge ], [ %old_addr.addr.0162, %land.lhs.true70.for.end_crit_edge ], [ %old_addr.addr.0162, %if.end7.for.end_crit_edge ], [ %add78, %for.inc.for.end_crit_edge ]
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %3, align 4
  %and.i.i155 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i155)
  %tobool.i.not.i = icmp eq i32 %and.i.i155, 0
  br i1 %tobool.i.not.i, label %for.end.if.end.i157_crit_edge, label %do.body.i156

for.end.if.end.i157_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i157

do.body.i156:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 482) #7
  br label %if.end.i157

if.end.i157:                                      ; preds = %do.body.i156, %for.end.if.end.i157_crit_edge
  %110 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %0, align 4
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon, ptr %111, i32 0, i32 49
  %112 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i8.not.i = icmp eq ptr %113, null
  br i1 %tobool.i8.not.i, label %if.end.i157.mmu_notifier_invalidate_range_end.exit_crit_edge, label %if.then4.i

if.end.i157.mmu_notifier_invalidate_range_end.exit_crit_edge: ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmu_notifier_invalidate_range_end.exit

if.then4.i:                                       ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %range, i1 noundef zeroext false) #7
  br label %mmu_notifier_invalidate_range_end.exit

mmu_notifier_invalidate_range_end.exit:           ; preds = %if.then4.i, %if.end.i157.mmu_notifier_invalidate_range_end.exit_crit_edge
  %sub = sub i32 %old_addr.addr.0.lcssa, %old_addr
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range) #7
  ret i32 %sub
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmu_notifier_invalidate_range_start(ptr noundef %range) #3 align 64 {
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
declare dso_local i32 @__pte_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mremap(i32 noundef %addr, i32 noundef %old_len, i32 noundef %new_len, i32 noundef %flags, i32 noundef %new_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__do_sys_mremap(i32 noundef %addr, i32 noundef %old_len, i32 noundef %new_len, i32 noundef %flags, i32 noundef %new_addr)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_mremap(i32 noundef %addr, i32 noundef %old_len, i32 noundef %new_len, i32 noundef %flags, i32 noundef %new_addr) unnamed_addr #3 align 64 {
entry:
  %locked = alloca i8, align 1
  %uf = alloca %struct.vm_userfaultfd_ctx, align 4
  %uf_unmap_early = alloca %struct.list_head, align 4
  %uf_unmap = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %locked) #7
  %6 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %locked, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uf) #7
  %7 = ptrtoint ptr %uf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %uf, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uf_unmap_early) #7
  %8 = getelementptr inbounds %struct.list_head, ptr %uf_unmap_early, i32 0, i32 1
  %9 = ptrtoint ptr %uf_unmap_early to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %uf_unmap_early, ptr %uf_unmap_early, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %uf_unmap_early, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uf_unmap) #7
  %11 = getelementptr inbounds %struct.list_head, ptr %uf_unmap, i32 0, i32 1
  %12 = ptrtoint ptr %uf_unmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %uf_unmap, ptr %uf_unmap, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %uf_unmap, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 8
  br i1 %tobool.not, label %if.end, label %entry.cleanup176_crit_edge

entry.cleanup176_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

if.end:                                           ; preds = %entry
  %and6 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %14 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %if.end.cleanup176_crit_edge, label %if.end9

if.end.cleanup176_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

if.end9:                                          ; preds = %if.end
  %and10 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool14.not = icmp ne i32 %and6, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %old_len, i32 %new_len)
  %cmp.not = icmp eq i32 %old_len, %new_len
  %or.cond292 = and i1 %cmp.not, %tobool14.not
  %and17 = and i32 %addr, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond295 = and i1 %tobool18.not, %or.cond292
  br i1 %or.cond295, label %land.lhs.true12.if.end20_crit_edge, label %land.lhs.true12.cleanup176_crit_edge

land.lhs.true12.cleanup176_crit_edge:             ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

land.lhs.true12.if.end20_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end16:                                         ; preds = %if.end9
  %and17.old = and i32 %addr, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.old)
  %tobool18.not.old = icmp eq i32 %and17.old, 0
  br i1 %tobool18.not.old, label %if.end16.if.end20_crit_edge, label %if.end16.cleanup176_crit_edge

if.end16.cleanup176_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %land.lhs.true12.if.end20_crit_edge
  %add = add i32 %old_len, 4095
  %and21 = and i32 %add, -4096
  %add22 = add i32 %new_len, 4095
  %and23 = and i32 %add22, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end20.cleanup176_crit_edge, label %if.end26

if.end20.cleanup176_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

if.end26:                                         ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__do_sys_mremap, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !45

if.then.i.i:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end26
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 15
  %call.i = call i32 @down_write_killable(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__do_sys_mremap, %if.then.i4.i)) #7
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !45

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #7
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %if.end33, label %mmap_write_lock_killable.exit.cleanup176_crit_edge

mmap_write_lock_killable.exit.cleanup176_crit_edge: ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

if.end33:                                         ; preds = %mmap_write_lock_killable.exit
  %call34 = call ptr @find_vma(ptr noundef %5, i32 noundef %addr) #7
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.if.then157.thread_crit_edge, label %lor.lhs.false36

if.end33.if.then157.thread_crit_edge:             ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then157.thread

lor.lhs.false36:                                  ; preds = %if.end33
  %16 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %addr)
  %cmp37 = icmp ugt i32 %17, %addr
  br i1 %cmp37, label %lor.lhs.false36.if.then157.thread_crit_edge, label %if.end39

lor.lhs.false36.if.then157.thread_crit_edge:      ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then157.thread

if.end39:                                         ; preds = %lor.lhs.false36
  %and71 = and i32 %flags, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end75, label %if.then73

if.then73:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = call fastcc i32 @mremap_to(i32 noundef %addr, i32 noundef %and21, i32 noundef %new_addr, i32 noundef %and23, ptr noundef nonnull %locked, i32 noundef %flags, ptr noundef nonnull %uf, ptr noundef nonnull %uf_unmap_early, ptr noundef nonnull %uf_unmap)
  br label %out

if.end75:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp4(i32 %and23, i32 %and21)
  %cmp76.not = icmp ugt i32 %and23, %and21
  br i1 %cmp76.not, label %if.end91, label %if.then77

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %add79 = add i32 %and23, %addr
  %sub80 = sub i32 %and21, %and23
  %call81 = call i32 @__do_munmap(ptr noundef %5, i32 noundef %add79, i32 noundef %sub80, ptr noundef nonnull %uf_unmap, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call81)
  %cmp82 = icmp sgt i32 %call81, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and23, i32 %and21)
  %cmp84.not = icmp eq i32 %and23, %and21
  %or.cond293 = or i1 %cmp84.not, %cmp82
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call81)
  %cmp86 = icmp eq i32 %call81, 1
  %ret.0 = select i1 %or.cond293, i32 %addr, i32 %call81
  %downgraded.1 = and i1 %cmp86, %or.cond293
  br label %out

if.end91:                                         ; preds = %if.end75
  %call92 = call fastcc ptr @vma_to_resize(i32 noundef %addr, i32 noundef %and21, i32 noundef %and23, i32 noundef %flags)
  %cmp.i296 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call92 to i32
  br label %out

if.end96:                                         ; preds = %if.end91
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call92, i32 0, i32 1
  %19 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_end, align 4
  %sub97 = sub i32 %20, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %sub97)
  %cmp98 = icmp eq i32 %and21, %sub97
  br i1 %cmp98, label %if.then99, label %if.end96.if.end128_crit_edge

if.end96.if.end128_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then99:                                        ; preds = %if.end96
  %sub100 = sub i32 %and23, %and21
  %call101 = call fastcc i32 @vma_expandable(ptr noundef %call92, i32 noundef %sub100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then99.if.end128_crit_edge, label %if.then103

if.then99.if.end128_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then103:                                       ; preds = %if.then99
  %shr = lshr exact i32 %sub100, 12
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call92, i32 0, i32 8
  %21 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_flags, align 4
  %and105 = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.then103.if.end112_crit_edge, label %if.then107

if.then103.if.end112_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then107:                                       ; preds = %if.then103
  %call108 = call i32 @security_vm_enough_memory_mm(ptr noundef %5, i32 noundef %shr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then107.if.end112_crit_edge, label %if.then107.if.then157.thread_crit_edge

if.then107.if.then157.thread_crit_edge:           ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then157.thread

if.then107.if.end112_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.end112:                                        ; preds = %if.then107.if.end112_crit_edge, %if.then103.if.end112_crit_edge
  %23 = ptrtoint ptr %call92 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call92, align 4
  %add114 = add i32 %and23, %addr
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %call92, i32 0, i32 13
  %25 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_pgoff, align 4
  %call.i297 = call i32 @__vma_adjust(ptr noundef %call92, i32 noundef %24, i32 noundef %add114, i32 noundef %26, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %tobool116.not = icmp eq i32 %call.i297, 0
  br i1 %tobool116.not, label %if.end118, label %if.then117

if.then117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i32 0, %shr
  %conv.i.i = sext i32 %sub.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %27 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i, i32 noundef %27) #7
  br label %if.then157.thread

if.end118:                                        ; preds = %if.end112
  %28 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_flags, align 4
  call void @vm_stat_account(ptr noundef %5, i32 noundef %29, i32 noundef %shr) #7
  %30 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vm_flags, align 4
  %and121 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end118.out_crit_edge, label %if.then123

if.end118.out_crit_edge:                          ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  %locked_vm = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 20
  %32 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %locked_vm, align 4
  %add124 = add i32 %33, %shr
  store i32 %add124, ptr %locked_vm, align 4
  %34 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %locked, align 1
  br label %out

if.end128:                                        ; preds = %if.then99.if.end128_crit_edge, %if.end96.if.end128_crit_edge
  br i1 %tobool7.not, label %if.end128.if.then157.thread_crit_edge, label %if.then131

if.end128.if.then157.thread_crit_edge:            ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then157.thread

if.then131:                                       ; preds = %if.end128
  %vm_flags132 = getelementptr inbounds %struct.vm_area_struct, ptr %call92, i32 0, i32 8
  %35 = ptrtoint ptr %vm_flags132 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vm_flags132, align 4
  %and133 = lshr i32 %36, 7
  %and133.lobit = and i32 %and133, 1
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %call92, i32 0, i32 14
  %37 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vm_file, align 4
  %vm_pgoff137 = getelementptr inbounds %struct.vm_area_struct, ptr %call92, i32 0, i32 13
  %39 = ptrtoint ptr %vm_pgoff137 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vm_pgoff137, align 4
  %41 = ptrtoint ptr %call92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call92, align 4
  %sub139 = sub i32 %addr, %42
  %shr140 = lshr i32 %sub139, 12
  %add141 = add i32 %shr140, %40
  %call142 = call i32 @get_unmapped_area(ptr noundef %38, i32 noundef 0, i32 noundef %and23, i32 noundef %add141, i32 noundef %and133.lobit) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call142)
  %cmp143 = icmp ugt i32 %call142, -4096
  br i1 %cmp143, label %if.then131.out_crit_edge, label %if.end147, !prof !40

if.then131.out_crit_edge:                         ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end147:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #9
  %call148 = call fastcc i32 @move_vma(ptr noundef %call92, i32 noundef %addr, i32 noundef %and21, i32 noundef %and23, i32 noundef %call142, ptr noundef nonnull %locked, i32 noundef %flags, ptr noundef nonnull %uf, ptr noundef nonnull %uf_unmap)
  br label %out

out:                                              ; preds = %if.end147, %if.then131.out_crit_edge, %if.then123, %if.end118.out_crit_edge, %if.then94, %if.then77, %if.then73
  %new_addr.addr.2 = phi i32 [ %new_addr, %if.then73 ], [ %new_addr, %if.then77 ], [ %new_addr, %if.then94 ], [ %addr, %if.then123 ], [ %new_addr, %if.end118.out_crit_edge ], [ %call142, %if.then131.out_crit_edge ], [ %call142, %if.end147 ]
  %ret.3 = phi i32 [ %call74, %if.then73 ], [ %ret.0, %if.then77 ], [ %18, %if.then94 ], [ %addr, %if.then123 ], [ %addr, %if.end118.out_crit_edge ], [ %call142, %if.then131.out_crit_edge ], [ %call148, %if.end147 ]
  %downgraded.2.off0 = phi i1 [ false, %if.then73 ], [ %downgraded.1, %if.then77 ], [ false, %if.then94 ], [ false, %if.then123 ], [ false, %if.end118.out_crit_edge ], [ false, %if.then131.out_crit_edge ], [ false, %if.end147 ]
  %and155 = and i32 %ret.3, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end158, label %if.then157

if.then157.thread:                                ; preds = %if.end128.if.then157.thread_crit_edge, %if.then117, %if.then107.if.then157.thread_crit_edge, %lor.lhs.false36.if.then157.thread_crit_edge, %if.end33.if.then157.thread_crit_edge
  %ret.3306.ph = phi i32 [ -12, %if.end128.if.then157.thread_crit_edge ], [ 14, %lor.lhs.false36.if.then157.thread_crit_edge ], [ 14, %if.end33.if.then157.thread_crit_edge ], [ -12, %if.then117 ], [ -12, %if.then107.if.then157.thread_crit_edge ]
  %43 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %locked, align 1
  br label %if.else164

if.then157:                                       ; preds = %out
  %44 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %locked, align 1
  br i1 %downgraded.2.off0, label %if.then157.if.then160_crit_edge, label %if.then157.if.else164_crit_edge

if.then157.if.else164_crit_edge:                  ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else164

if.then157.if.then160_crit_edge:                  ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then160

if.end158:                                        ; preds = %out
  br i1 %downgraded.2.off0, label %if.end158.if.then160_crit_edge, label %if.end158.if.else164_crit_edge

if.end158.if.else164_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else164

if.end158.if.then160_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then160

if.then160:                                       ; preds = %if.end158.if.then160_crit_edge, %if.then157.if.then160_crit_edge
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %mm163 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 53
  %47 = ptrtoint ptr %mm163 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mm163, align 8
  call fastcc void @mmap_read_unlock(ptr noundef %48)
  br label %if.end168

if.else164:                                       ; preds = %if.end158.if.else164_crit_edge, %if.then157.if.else164_crit_edge, %if.then157.thread
  %new_addr.addr.2305314 = phi i32 [ %new_addr.addr.2, %if.then157.if.else164_crit_edge ], [ %new_addr.addr.2, %if.end158.if.else164_crit_edge ], [ %new_addr, %if.then157.thread ]
  %ret.3307311 = phi i32 [ %ret.3, %if.then157.if.else164_crit_edge ], [ %ret.3, %if.end158.if.else164_crit_edge ], [ %ret.3306.ph, %if.then157.thread ]
  %49 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task, align 8
  %mm167 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 53
  %51 = ptrtoint ptr %mm167 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mm167, align 8
  call fastcc void @mmap_write_unlock(ptr noundef %52)
  br label %if.end168

if.end168:                                        ; preds = %if.else164, %if.then160
  %new_addr.addr.2305313 = phi i32 [ %new_addr.addr.2305314, %if.else164 ], [ %new_addr.addr.2, %if.then160 ]
  %ret.3307310 = phi i32 [ %ret.3307311, %if.else164 ], [ %ret.3, %if.then160 ]
  %53 = ptrtoint ptr %locked to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %locked, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool169.not = icmp ne i8 %54, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and23, i32 %and21)
  %cmp171 = icmp ugt i32 %and23, %and21
  %or.cond294 = and i1 %cmp171, %tobool169.not
  br i1 %or.cond294, label %if.then172, label %if.end168.if.end175_crit_edge

if.end168.if.end175_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175

if.then172:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  %add173 = add i32 %new_addr.addr.2305313, %and21
  %sub174 = sub i32 %and23, %and21
  %call.i298 = call i32 @__mm_populate(i32 noundef %add173, i32 noundef %sub174, i32 noundef 1) #7
  br label %if.end175

if.end175:                                        ; preds = %if.then172, %if.end168.if.end175_crit_edge
  call void @userfaultfd_unmap_complete(ptr noundef %5, ptr noundef nonnull %uf_unmap_early) #7
  call void @mremap_userfaultfd_complete(ptr noundef nonnull %uf, i32 noundef %addr, i32 noundef %ret.3307310, i32 noundef %and21) #7
  call void @userfaultfd_unmap_complete(ptr noundef %5, ptr noundef nonnull %uf_unmap) #7
  br label %cleanup176

cleanup176:                                       ; preds = %if.end175, %mmap_write_lock_killable.exit.cleanup176_crit_edge, %if.end20.cleanup176_crit_edge, %if.end16.cleanup176_crit_edge, %land.lhs.true12.cleanup176_crit_edge, %if.end.cleanup176_crit_edge, %entry.cleanup176_crit_edge
  %retval.0 = phi i32 [ %ret.3307310, %if.end175 ], [ -22, %entry.cleanup176_crit_edge ], [ -22, %if.end.cleanup176_crit_edge ], [ -22, %land.lhs.true12.cleanup176_crit_edge ], [ -22, %if.end16.cleanup176_crit_edge ], [ -22, %if.end20.cleanup176_crit_edge ], [ -4, %mmap_write_lock_killable.exit.cleanup176_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uf_unmap) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uf_unmap_early) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uf) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %locked) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_invalidate_range_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range_end(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mremap_to(i32 noundef %addr, i32 noundef %old_len, i32 noundef %new_addr, i32 noundef %new_len, ptr nocapture noundef writeonly %locked, i32 noundef %flags, ptr noundef %uf, ptr noundef %uf_unmap_early, ptr noundef %uf_unmap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  %and = and i32 %new_addr, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %new_len)
  %cmp = icmp ugt i32 %new_len, -1226833920
  %or.cond = or i1 %tobool.not, %cmp
  %sub = sub i32 -1226833920, %new_len
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %new_addr)
  %cmp2 = icmp ult i32 %sub, %new_addr
  %or.cond122 = or i1 %or.cond, %cmp2
  br i1 %or.cond122, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %add = add i32 %old_len, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %new_addr)
  %cmp5 = icmp ugt i32 %add, %new_addr
  %add6 = add i32 %new_len, %new_addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %addr)
  %cmp7 = icmp ugt i32 %add6, %addr
  %or.cond123 = and i1 %cmp5, %cmp7
  br i1 %or.cond123, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %map_count = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_count, align 8
  %add10 = add i32 %7, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_max_map_count to i32))
  %8 = load i32, ptr @sysctl_max_map_count, align 4
  %sub11 = add i32 %8, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %sub11)
  %cmp12.not = icmp slt i32 %add10, %sub11
  br i1 %cmp12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %and15 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end22_crit_edge, label %if.then17

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then17:                                        ; preds = %if.end14
  %call18 = tail call i32 @do_munmap(ptr noundef %5, i32 noundef %new_addr, i32 noundef %new_len, ptr noundef %uf_unmap_early) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %old_len, i32 %new_len)
  %cmp23.not = icmp ult i32 %old_len, %new_len
  br i1 %cmp23.not, label %if.end22.if.end33_crit_edge, label %if.then24

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then24:                                        ; preds = %if.end22
  %add25 = add i32 %new_len, %addr
  %sub26 = sub i32 %old_len, %new_len
  %call27 = tail call i32 @do_munmap(ptr noundef %5, i32 noundef %add25, i32 noundef %sub26, ptr noundef %uf_unmap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %old_len, i32 %new_len)
  %cmp30.not = icmp eq i32 %old_len, %new_len
  %or.cond124 = or i1 %cmp30.not, %tobool28.not
  br i1 %or.cond124, label %if.then24.if.end33_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %if.then24.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %old_len.addr.0 = phi i32 [ %old_len, %if.end22.if.end33_crit_edge ], [ %new_len, %if.then24.if.end33_crit_edge ]
  %call34 = tail call fastcc ptr @vma_to_resize(i32 noundef %addr, i32 noundef %old_len.addr.0, i32 noundef %new_len, i32 noundef %flags)
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %and39 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %land.lhs.true41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

land.lhs.true41:                                  ; preds = %if.end38
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call34, i32 0, i32 8
  %10 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_flags, align 4
  %shr = lshr i32 %old_len.addr.0, 12
  %call42 = tail call zeroext i1 @may_expand_vm(ptr noundef %5, i32 noundef %11, i32 noundef %shr) #7
  br i1 %call42, label %land.lhs.true41.if.end44_crit_edge, label %land.lhs.true41.cleanup_crit_edge

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true41.if.end44_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true41.if.end44_crit_edge, %if.end38.if.end44_crit_edge
  %12 = shl nuw nsw i32 %and15, 3
  %vm_flags49 = getelementptr inbounds %struct.vm_area_struct, ptr %call34, i32 0, i32 8
  %13 = ptrtoint ptr %vm_flags49 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_flags49, align 4
  %and50 = lshr i32 %14, 7
  %15 = and i32 %and50, 1
  %16 = or i32 %15, %12
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %call34, i32 0, i32 14
  %17 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vm_file, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %call34, i32 0, i32 13
  %19 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_pgoff, align 4
  %21 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call34, align 4
  %sub55 = sub i32 %addr, %22
  %shr56 = lshr i32 %sub55, 12
  %add57 = add i32 %shr56, %20
  %call58 = tail call i32 @get_unmapped_area(ptr noundef %18, i32 noundef %new_addr, i32 noundef %new_len, i32 noundef %add57, i32 noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call58)
  %cmp59 = icmp ugt i32 %call58, -4096
  br i1 %cmp59, label %if.end44.cleanup_crit_edge, label %if.end63, !prof !40

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select125 = select i1 %tobool16.not, i32 %call58, i32 %new_addr
  %call68 = tail call fastcc i32 @move_vma(ptr noundef %call34, i32 noundef %addr, i32 noundef %old_len.addr.0, i32 noundef %new_len, i32 noundef %spec.select125, ptr noundef %locked, i32 noundef %flags, ptr noundef %uf, ptr noundef %uf_unmap)
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end44.cleanup_crit_edge, %land.lhs.true41.cleanup_crit_edge, %if.then36, %if.then24.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end9.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call18, %if.then17.cleanup_crit_edge ], [ %9, %if.then36 ], [ %call58, %if.end44.cleanup_crit_edge ], [ %call68, %if.end63 ], [ -22, %if.end4.cleanup_crit_edge ], [ %call27, %if.then24.cleanup_crit_edge ], [ -12, %land.lhs.true41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__do_munmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vma_to_resize(i32 noundef %addr, i32 noundef %old_len, i32 noundef %new_len, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #7
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
  %call.i = tail call ptr @find_vma(ptr noundef %5, i32 noundef %addr) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup78_crit_edge, label %land.lhs.true.i

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp.i = icmp ugt i32 %7, %addr
  br i1 %cmp.i, label %land.lhs.true.i.cleanup78_crit_edge, label %if.end

land.lhs.true.i.cleanup78_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

if.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_len)
  %tobool4.not = icmp eq i32 %old_len, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %and = and i32 %9, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.end, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.end:                                         ; preds = %land.lhs.true
  %.b106 = load i1, ptr @vma_to_resize.__already_done, align 1
  br i1 %.b106, label %land.end.cleanup78_crit_edge, label %if.then12, !prof !47

land.end.cleanup78_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

if.then12:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vma_to_resize.__already_done, align 1
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm, i32 noundef %13) #10
  br label %cleanup78

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %and28 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end36_crit_edge, label %land.lhs.true30

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true30:                                  ; preds = %if.end27
  %vm_flags31 = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %vm_flags31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_flags31, align 4
  %and32 = and i32 %15, 263168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %land.lhs.true30.if.end36_crit_edge, label %land.lhs.true30.cleanup78_crit_edge

land.lhs.true30.cleanup78_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

land.lhs.true30.if.end36_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true30.if.end36_crit_edge, %if.end27.if.end36_crit_edge
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %17, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %old_len)
  %cmp = icmp ult i32 %sub, %old_len
  br i1 %cmp, label %if.end36.cleanup78_crit_edge, label %if.end39

if.end36.cleanup78_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

if.end39:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_cmp4(i32 %new_len, i32 %old_len)
  %cmp40 = icmp eq i32 %new_len, %old_len
  br i1 %cmp40, label %if.end39.cleanup78_crit_edge, label %if.end42

if.end39.cleanup78_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

if.end42:                                         ; preds = %if.end39
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i, align 4
  %sub43 = sub i32 %addr, %19
  %shr = lshr i32 %sub43, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 13
  %20 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_pgoff, align 4
  %add = add i32 %shr, %21
  %shr44 = lshr i32 %new_len, 12
  %22 = xor i32 %add, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr44, i32 %22)
  %cmp46 = icmp ugt i32 %shr44, %22
  br i1 %cmp46, label %if.end42.cleanup78_crit_edge, label %if.end49

if.end42.cleanup78_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

if.end49:                                         ; preds = %if.end42
  %vm_flags50 = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %vm_flags50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_flags50, align 4
  %and51 = and i32 %24, 263168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end55, label %if.end49.cleanup78_crit_edge

if.end49.cleanup78_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

if.end55:                                         ; preds = %if.end49
  %and57 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end70_crit_edge, label %if.then59

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = sub i32 %new_len, %old_len
  br label %if.end70

if.then59:                                        ; preds = %if.end55
  %locked_vm = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 20
  %25 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %locked_vm, align 4
  %shl = shl i32 %26, 12
  %27 = tail call i32 @llvm.read_register.i32(metadata !30) #7
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 111
  %31 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %32, i32 0, i32 51, i32 8
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i.i, align 8
  %sub61 = sub i32 %new_len, %old_len
  %add62 = add i32 %sub61, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add62, i32 %34)
  %cmp63 = icmp ugt i32 %add62, %34
  br i1 %cmp63, label %land.lhs.true64, label %if.then59.if.end70_crit_edge

if.then59.if.end70_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

land.lhs.true64:                                  ; preds = %if.then59
  %call65 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %call65, label %land.lhs.true64.if.end70_crit_edge, label %land.lhs.true64.cleanup78_crit_edge

land.lhs.true64.cleanup78_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup78

land.lhs.true64.if.end70_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true64.if.end70_crit_edge, %if.then59.if.end70_crit_edge, %if.end55.if.end70_crit_edge
  %sub72.pre-phi = phi i32 [ %.pre, %if.end55.if.end70_crit_edge ], [ %sub61, %if.then59.if.end70_crit_edge ], [ %sub61, %land.lhs.true64.if.end70_crit_edge ]
  %35 = ptrtoint ptr %vm_flags50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vm_flags50, align 4
  %shr73 = lshr i32 %sub72.pre-phi, 12
  %call74 = tail call zeroext i1 @may_expand_vm(ptr noundef %5, i32 noundef %36, i32 noundef %shr73) #7
  %spec.select = select i1 %call74, ptr %call.i, ptr inttoptr (i32 -12 to ptr)
  br label %cleanup78

cleanup78:                                        ; preds = %if.end70, %land.lhs.true64.cleanup78_crit_edge, %if.end49.cleanup78_crit_edge, %if.end42.cleanup78_crit_edge, %if.end39.cleanup78_crit_edge, %if.end36.cleanup78_crit_edge, %land.lhs.true30.cleanup78_crit_edge, %if.then12, %land.end.cleanup78_crit_edge, %land.lhs.true.i.cleanup78_crit_edge, %entry.cleanup78_crit_edge
  %retval.1 = phi ptr [ %call.i, %if.end39.cleanup78_crit_edge ], [ inttoptr (i32 -14 to ptr), %entry.cleanup78_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then12 ], [ inttoptr (i32 -22 to ptr), %land.end.cleanup78_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true30.cleanup78_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end36.cleanup78_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end42.cleanup78_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.end49.cleanup78_crit_edge ], [ inttoptr (i32 -11 to ptr), %land.lhs.true64.cleanup78_crit_edge ], [ inttoptr (i32 -14 to ptr), %land.lhs.true.i.cleanup78_crit_edge ], [ %spec.select, %if.end70 ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vma_expandable(ptr nocapture noundef readonly %vma, i32 noundef %delta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %add = add i32 %1, %delta
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp ult i32 %add, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 2
  %2 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp3 = icmp ult i32 %5, %add
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub = sub i32 %add, %7
  %call = tail call i32 @get_unmapped_area(ptr noundef null, i32 noundef %7, i32 noundef %sub, i32 noundef 0, i32 noundef 16) #7
  %and = and i32 %call, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %. = zext i1 %tobool8.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_vm_enough_memory_mm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_stat_account(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @move_vma(ptr noundef %vma, i32 noundef %old_addr, i32 noundef %old_len, i32 noundef %new_len, i32 noundef %new_addr, ptr nocapture noundef writeonly %locked, i32 noundef %flags, ptr noundef %uf, ptr noundef %uf_unmap) unnamed_addr #0 align 64 {
entry:
  %vma.addr = alloca ptr, align 4
  %vm_flags = alloca i32, align 4
  %need_rmap_locks = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vma.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %vma, ptr %vma.addr, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %1 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm_mm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vm_flags) #7
  %vm_flags1 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %3 = ptrtoint ptr %vm_flags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_flags1, align 4
  %5 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %vm_flags, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %need_rmap_locks) #7
  %6 = ptrtoint ptr %need_rmap_locks to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %need_rmap_locks, align 1, !annotation !48
  %map_count = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 13
  %7 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_max_map_count to i32))
  %9 = load i32, ptr @sysctl_max_map_count, align 4
  %sub2 = add i32 %9, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub2)
  %cmp.not = icmp slt i32 %8, %sub2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %new_len, %old_len
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then5, label %if.end.if.end6_crit_edge, !prof !40

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %to_account.0 = phi i32 [ %new_len, %if.then5 ], [ %sub, %if.end.if.end6_crit_edge ]
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %10 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vm_ops, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end6.if.end28_crit_edge, label %land.lhs.true

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end6
  %may_split = getelementptr inbounds %struct.vm_operations_struct, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %may_split to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %may_split, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %land.lhs.true.if.end28_crit_edge, label %if.then10

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then10:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %old_addr)
  %cmp11.not = icmp eq i32 %15, %old_addr
  br i1 %cmp11.not, label %if.then10.land.lhs.true17_crit_edge, label %if.end15

if.then10.land.lhs.true17_crit_edge:              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true17

if.end15:                                         ; preds = %if.then10
  %call = tail call i32 %13(ptr noundef %vma, i32 noundef %old_addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end15.land.lhs.true17_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.land.lhs.true17_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end15.land.lhs.true17_crit_edge, %if.then10.land.lhs.true17_crit_edge
  %16 = ptrtoint ptr %vma.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vma.addr, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_end, align 4
  %add = add i32 %old_len, %old_addr
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add)
  %cmp18.not = icmp eq i32 %19, %add
  br i1 %cmp18.not, label %land.lhs.true17.if.end28_crit_edge, label %if.end24

land.lhs.true17.if.end28_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end24:                                         ; preds = %land.lhs.true17
  %vm_ops20 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 12
  %20 = ptrtoint ptr %vm_ops20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vm_ops20, align 4
  %may_split21 = getelementptr inbounds %struct.vm_operations_struct, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %may_split21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %may_split21, align 4
  %call23 = tail call i32 %23(ptr noundef %17, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %if.end24.if.end28_crit_edge, %land.lhs.true17.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %if.end6.if.end28_crit_edge
  %24 = ptrtoint ptr %vma.addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vma.addr, align 4
  %add29 = add i32 %old_len, %old_addr
  %call30 = call i32 @ksm_madvise(ptr noundef %25, i32 noundef %old_addr, i32 noundef %add29, i32 noundef 13, ptr noundef nonnull %vm_flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %26 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_flags, align 4
  %and34 = and i32 %27, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end41_crit_edge, label %if.then36

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then36:                                        ; preds = %if.end33
  %shr = ashr i32 %to_account.0, 12
  %call37 = call i32 @security_vm_enough_memory_mm(ptr noundef %2, i32 noundef %shr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.if.end41_crit_edge, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %if.then36.if.end41_crit_edge, %if.end33.if.end41_crit_edge
  %28 = ptrtoint ptr %vma.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vma.addr, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vm_pgoff, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %sub43 = sub i32 %old_addr, %33
  %shr44 = lshr i32 %sub43, 12
  %add45 = add i32 %shr44, %31
  %call46 = call ptr @copy_vma(ptr noundef nonnull %vma.addr, i32 noundef %new_addr, i32 noundef %new_len, i32 noundef %add45, ptr noundef nonnull %need_rmap_locks) #7
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.end41
  %34 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vm_flags, align 4
  %and49 = and i32 %35, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then48.cleanup_crit_edge, label %if.then51

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %shr52 = ashr i32 %to_account.0, 12
  %sub.i = sub nsw i32 0, %shr52
  %conv.i.i = sext i32 %sub.i to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %36 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i, i32 noundef %36) #7
  br label %cleanup

if.end54:                                         ; preds = %if.end41
  %37 = ptrtoint ptr %vma.addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vma.addr, align 4
  %39 = ptrtoint ptr %need_rmap_locks to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %need_rmap_locks, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool55 = icmp ne i8 %40, 0
  %call56 = call i32 @move_page_tables(ptr noundef %38, i32 noundef %old_addr, ptr noundef nonnull %call46, i32 noundef %new_addr, i32 noundef %old_len, i1 noundef zeroext %tobool55)
  call void @__sanitizer_cov_trace_cmp4(i32 %call56, i32 %old_len)
  %cmp57 = icmp ult i32 %call56, %old_len
  br i1 %cmp57, label %if.end54.if.then77_crit_edge, label %if.else

if.end54.if.then77_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then77

if.else:                                          ; preds = %if.end54
  %41 = ptrtoint ptr %vma.addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vma.addr, align 4
  %vm_ops59 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %vm_ops59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vm_ops59, align 4
  %tobool60.not = icmp eq ptr %44, null
  br i1 %tobool60.not, label %if.else.if.else79_crit_edge, label %land.lhs.true61

if.else.if.else79_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else79

land.lhs.true61:                                  ; preds = %if.else
  %mremap = getelementptr inbounds %struct.vm_operations_struct, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %mremap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mremap, align 4
  %tobool63.not = icmp eq ptr %46, null
  br i1 %tobool63.not, label %land.lhs.true61.if.else79_crit_edge, label %if.end69

land.lhs.true61.if.else79_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else79

if.end69:                                         ; preds = %land.lhs.true61
  %call67 = call i32 %46(ptr noundef nonnull %call46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool70.not = icmp eq i32 %call67, 0
  br i1 %tobool70.not, label %if.end69.if.else79_crit_edge, label %if.end69.if.then77_crit_edge, !prof !47

if.end69.if.then77_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then77

if.end69.if.else79_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else79

if.then77:                                        ; preds = %if.end69.if.then77_crit_edge, %if.end54.if.then77_crit_edge
  %err.2257 = phi i32 [ %call67, %if.end69.if.then77_crit_edge ], [ -12, %if.end54.if.then77_crit_edge ]
  %47 = ptrtoint ptr %vma.addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vma.addr, align 4
  %call78 = call i32 @move_page_tables(ptr noundef nonnull %call46, i32 noundef %new_addr, ptr noundef %48, i32 noundef %old_addr, i32 noundef %call56, i1 noundef zeroext true)
  %49 = ptrtoint ptr %vma.addr to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call46, ptr %vma.addr, align 4
  br label %if.end80

if.else79:                                        ; preds = %if.end69.if.else79_crit_edge, %land.lhs.true61.if.else79_crit_edge, %if.else.if.else79_crit_edge
  call void @mremap_userfaultfd_prep(ptr noundef nonnull %call46, ptr noundef %uf) #7
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.then77
  %tobool70.not252 = phi i1 [ false, %if.then77 ], [ true, %if.else79 ]
  %new_addr.addr.0 = phi i32 [ %err.2257, %if.then77 ], [ %new_addr, %if.else79 ]
  %old_len.addr.0 = phi i32 [ %new_len, %if.then77 ], [ %old_len, %if.else79 ]
  %old_addr.addr.0 = phi i32 [ %new_addr, %if.then77 ], [ %old_addr, %if.else79 ]
  %50 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vm_flags, align 4
  %and84 = and i32 %51, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %brmerge = or i1 %tobool, %tobool85.not
  br i1 %brmerge, label %if.end80.if.end104_crit_edge, label %if.then89

if.end80.if.end104_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then89:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %vma.addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vma.addr, align 4
  %vm_flags90 = getelementptr inbounds %struct.vm_area_struct, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %vm_flags90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vm_flags90, align 4
  %and91 = and i32 %55, -1048577
  store i32 %and91, ptr %vm_flags90, align 4
  %vm_end92 = getelementptr inbounds %struct.vm_area_struct, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %vm_end92 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vm_end92, align 4
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %53, align 4
  %60 = add i32 %old_len.addr.0, %59
  %sub95 = sub i32 %57, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %old_addr.addr.0, i32 %59)
  %cmp97 = icmp ule i32 %old_addr.addr.0, %59
  %add99 = add i32 %old_addr.addr.0, %old_len.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add99, i32 %57)
  %cmp101 = icmp uge i32 %add99, %57
  %or.cond = select i1 %cmp97, i1 true, i1 %cmp101
  br label %if.end104

if.end104:                                        ; preds = %if.then89, %if.end80.if.end104_crit_edge
  %excess.0 = phi i32 [ 0, %if.end80.if.end104_crit_edge ], [ %sub95, %if.then89 ]
  %tobool164.not = phi i1 [ true, %if.end80.if.end104_crit_edge ], [ %or.cond, %if.then89 ]
  %hiwater_vm105 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 18
  %61 = ptrtoint ptr %hiwater_vm105 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hiwater_vm105, align 4
  %63 = ptrtoint ptr %vma.addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vma.addr, align 4
  %vm_flags106 = getelementptr inbounds %struct.vm_area_struct, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %vm_flags106 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vm_flags106, align 4
  %shr107 = lshr i32 %new_len, 12
  call void @vm_stat_account(ptr noundef %2, i32 noundef %66, i32 noundef %shr107) #7
  %67 = ptrtoint ptr %vma.addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vma.addr, align 4
  %spec.select = and i1 %tobool, %tobool70.not252
  br i1 %spec.select, label %if.then128, label %if.end141, !prof !40

if.then128:                                       ; preds = %if.end104
  %vm_flags108 = getelementptr inbounds %struct.vm_area_struct, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %vm_flags108 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vm_flags108, align 4
  %and130 = and i32 %70, -532481
  store i32 %and130, ptr %vm_flags108, align 4
  %cmp131.not = icmp eq ptr %call46, %68
  br i1 %cmp131.not, label %if.then128.cleanup_crit_edge, label %land.lhs.true132

if.then128.cleanup_crit_edge:                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true132:                                 ; preds = %if.then128
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %old_addr.addr.0)
  %cmp134 = icmp eq i32 %72, %old_addr.addr.0
  br i1 %cmp134, label %land.lhs.true135, label %land.lhs.true132.cleanup_crit_edge

land.lhs.true132.cleanup_crit_edge:               ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %vm_end136 = getelementptr inbounds %struct.vm_area_struct, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %vm_end136 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vm_end136, align 4
  %add137 = add i32 %old_addr.addr.0, %old_len.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %add137)
  %cmp138 = icmp eq i32 %74, %add137
  br i1 %cmp138, label %if.then139, label %land.lhs.true135.cleanup_crit_edge

land.lhs.true135.cleanup_crit_edge:               ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then139:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #9
  call void @unlink_anon_vmas(ptr noundef %68) #7
  br label %cleanup

if.end141:                                        ; preds = %if.end104
  %call142 = call i32 @do_munmap(ptr noundef %2, i32 noundef %old_addr.addr.0, i32 noundef %old_len.addr.0, ptr noundef %uf_unmap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.then144, label %if.end141.if.end153_crit_edge

if.end141.if.end153_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then144:                                       ; preds = %if.end141
  %75 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vm_flags, align 4
  %and145 = and i32 %76, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  %brmerge241 = or i1 %tobool, %tobool146.not
  br i1 %brmerge241, label %if.then144.if.end153_crit_edge, label %if.then150

if.then144.if.end153_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then150:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  %shr151 = lshr i32 %old_len.addr.0, 12
  %conv.i259 = zext i32 %shr151 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %77 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i259, i32 noundef %77) #7
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.then144.if.end153_crit_edge, %if.end141.if.end153_crit_edge
  %excess.1 = phi i32 [ %excess.0, %if.end141.if.end153_crit_edge ], [ 0, %if.then144.if.end153_crit_edge ], [ 0, %if.then150 ]
  %78 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vm_flags, align 4
  %and154 = and i32 %79, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end153.if.end159_crit_edge, label %if.then156

if.end153.if.end159_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then156:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  %locked_vm = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 20
  %80 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %locked_vm, align 4
  %add158 = add i32 %81, %shr107
  store i32 %add158, ptr %locked_vm, align 4
  %82 = ptrtoint ptr %locked to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %locked, align 1
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end153.if.end159_crit_edge
  %83 = ptrtoint ptr %hiwater_vm105 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %62, ptr %hiwater_vm105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %excess.1)
  %tobool161.not = icmp eq i32 %excess.1, 0
  br i1 %tobool161.not, label %if.end159.cleanup_crit_edge, label %if.then162

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then162:                                       ; preds = %if.end159
  %84 = ptrtoint ptr %vma.addr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vma.addr, align 4
  %vm_flags163 = getelementptr inbounds %struct.vm_area_struct, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %vm_flags163 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vm_flags163, align 4
  %or = or i32 %87, 1048576
  store i32 %or, ptr %vm_flags163, align 4
  br i1 %tobool164.not, label %if.then162.cleanup_crit_edge, label %if.then165

if.then162.cleanup_crit_edge:                     ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then165:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #9
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %85, i32 0, i32 2
  %88 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vm_next, align 4
  %vm_flags166 = getelementptr inbounds %struct.vm_area_struct, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %vm_flags166 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vm_flags166, align 4
  %or167 = or i32 %91, 1048576
  store i32 %or167, ptr %vm_flags166, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then165, %if.then162.cleanup_crit_edge, %if.end159.cleanup_crit_edge, %if.then139, %land.lhs.true135.cleanup_crit_edge, %land.lhs.true132.cleanup_crit_edge, %if.then128.cleanup_crit_edge, %if.then51, %if.then48.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call23, %if.end24.cleanup_crit_edge ], [ %call30, %if.end28.cleanup_crit_edge ], [ -12, %if.then36.cleanup_crit_edge ], [ -12, %if.then51 ], [ -12, %if.then48.cleanup_crit_edge ], [ %new_addr.addr.0, %if.then139 ], [ %new_addr.addr.0, %land.lhs.true135.cleanup_crit_edge ], [ %new_addr.addr.0, %land.lhs.true132.cleanup_crit_edge ], [ %new_addr.addr.0, %if.then128.cleanup_crit_edge ], [ %new_addr.addr.0, %if.then162.cleanup_crit_edge ], [ %new_addr.addr.0, %if.then165 ], [ %new_addr.addr.0, %if.end159.cleanup_crit_edge ], [ %call, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %need_rmap_locks) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vm_flags) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_read_unlock(ptr noundef %mm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mmap_read_unlock, %if.then.i)) #7
          to label %__mmap_lock_trace_released.exit [label %if.then.i], !srcloc !45

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_released.exit

__mmap_lock_trace_released.exit:                  ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_write_unlock(ptr noundef %mm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mmap_write_unlock, %if.then.i)) #7
          to label %__mmap_lock_trace_released.exit [label %if.then.i], !srcloc !45

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext true) #7
  br label %__mmap_lock_trace_released.exit

__mmap_lock_trace_released.exit:                  ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @userfaultfd_unmap_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mremap_userfaultfd_complete(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_munmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @may_expand_vm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vma_adjust(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksm_madvise(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_vma(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mremap_userfaultfd_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlink_anon_vmas(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/mremap.c", i32 501, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/mremap.c", i32 889, i32 1}
!4 = !{ptr @event_enter__mremap, !3, !"event_enter__mremap", i1 false, i1 false}
!5 = !{ptr @__event_enter__mremap, !3, !"__event_enter__mremap", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @event_exit__mremap, !3, !"event_exit__mremap", i1 false, i1 false}
!8 = !{ptr @__event_exit__mremap, !3, !"__event_exit__mremap", i1 false, i1 false}
!9 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__syscall_meta__mremap, !3, !"__syscall_meta__mremap", i1 false, i1 false}
!11 = !{ptr @__p_syscall_meta__mremap, !3, !"__p_syscall_meta__mremap", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/mmu_notifier.h", i32 454, i32 2}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../mm/mremap.c", i32 469, i32 3}
!16 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @types__mremap, !3, !"types__mremap", i1 false, i1 false}
!18 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !3, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !3, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !3, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !3, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @args__mremap, !3, !"args__mremap", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../mm/mremap.c", i32 742, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vma_to_resize._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @vma_to_resize._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2154139524}
!42 = !{i64 2152755287}
!43 = !{i64 2152755494}
!44 = !{i64 2154142295}
!45 = !{i64 2148292917, i64 2148292922, i64 2148292935, i64 2148292979, i64 2148293013, i64 2148293034}
!46 = !{i8 0, i8 2}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{!"auto-init"}
