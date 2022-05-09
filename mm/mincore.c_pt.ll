; ModuleID = '/llk/IR_all_yes/mm/mincore.c_pt.bc'
source_filename = "../mm/mincore.c"
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
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.24 }
%union.anon.24 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.13 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
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
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.80, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.80 = type { %struct.atomic_t }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_mincore\00", [46 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__mincore = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__mincore, ptr @args__mincore, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__mincore, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__mincore, i64 20) }, ptr @event_enter__mincore, ptr @event_exit__mincore }, align 4
@event_enter__mincore = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mincore, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__mincore = internal global ptr @event_enter__mincore, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_mincore\00", [47 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__mincore = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__mincore, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__mincore = internal global ptr @event_exit__mincore, section "_ftrace_events", align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_mincore\00", [20 x i8] zeroinitializer }, align 32
@types__mincore = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], [20 x i8] zeroinitializer }, align 32
@args__mincore = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__mincore = internal global ptr @__syscall_meta__mincore, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unsigned char *\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vec\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@mincore_walk_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @mincore_pte_range, ptr null, ptr @mincore_unmapped_range, ptr @mincore_hugetlb, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@swapper_spaces = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/mincore.c\00", [19 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"event_enter__mincore\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"event_exit__mincore\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"types__mincore\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"args__mincore\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 230, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"mincore_walk_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 174, i32 33 }
@___asan_gen_.59 = private constant [16 x i8] c"../mm/mincore.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 153, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 260, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 717, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 230, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 214, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 174, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__event_enter__mincore, ptr @__event_exit__mincore, ptr @__p_syscall_meta__mincore, ptr @__syscall_meta__mincore, ptr @event_enter__mincore, ptr @event_exit__mincore, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__mincore, ptr @args__mincore, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mincore_walk_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__mincore to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__mincore to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__mincore to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__mincore to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mincore_walk_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_mincore = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_mincore

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mincore(i32 noundef %start, i32 noundef %len, i32 noundef %vec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %vec to ptr
  %call = tail call fastcc i32 @__do_sys_mincore(i32 noundef %start, i32 noundef %len, ptr noundef %0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_sys_mincore(i32 noundef %start, i32 noundef %len, ptr noundef %vec) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = inttoptr i32 %start to ptr
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %len, i32 -1226833920) #10, !srcloc !45
  %asmresult = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  br i1 %cmp, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shr = lshr i32 %len, 12
  %and6 = and i32 %len, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp ne i32 %and6, 0
  %conv = zext i1 %cmp7 to i32
  %add = add nuw nsw i32 %shr, %conv
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %vec, i32 %add, i32 -1226833920) #10, !srcloc !46
  %asmresult10 = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult10)
  %cmp13 = icmp eq i32 %asmresult10, 0
  br i1 %cmp13, label %if.end16, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %call = tail call i32 @__get_free_pages(i32 noundef 1051840, i32 noundef 0) #7
  %3 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %while.cond.preheader

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool20.not70 = icmp eq i32 %add, 0
  br i1 %tobool20.not70, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %start.addr.073 = phi i32 [ %add37, %if.end36.while.body_crit_edge ], [ %start, %while.cond.preheader.while.body_crit_edge ]
  %vec.addr.072 = phi ptr [ %add.ptr, %if.end36.while.body_crit_edge ], [ %vec, %while.cond.preheader.while.body_crit_edge ]
  %pages.071 = phi i32 [ %sub, %if.end36.while.body_crit_edge ], [ %add, %while.cond.preheader.while.body_crit_edge ]
  %4 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__do_sys_mincore, %if.then.i.i62)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i62], !srcloc !47

if.then.i.i62:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %9, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i62, %while.body
  %mmap_lock.i = getelementptr inbounds %struct.anon.13, ptr %9, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__do_sys_mincore, %if.then.i3.i)) #7
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !47

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %9, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %10 = tail call i32 @llvm.umin.i32(i32 %pages.071, i32 4096)
  %11 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 53
  %15 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mm.i, align 8
  %call1.i = tail call ptr @find_vma(ptr noundef %16, i32 noundef %start.addr.073) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %mmap_read_lock.exit.do_mincore.exit_crit_edge, label %lor.lhs.false.i

mmap_read_lock.exit.do_mincore.exit_crit_edge:    ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_mincore.exit

lor.lhs.false.i:                                  ; preds = %mmap_read_lock.exit
  %17 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %start.addr.073)
  %cmp.i = icmp ugt i32 %18, %start.addr.073
  br i1 %cmp.i, label %lor.lhs.false.i.do_mincore.exit_crit_edge, label %if.end.i

lor.lhs.false.i.do_mincore.exit_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_mincore.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %call1.i, i32 0, i32 1
  %19 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_end.i, align 4
  %shl.i = shl nuw nsw i32 %10, 12
  %add.i = add i32 %shl.i, %start.addr.073
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %add.i) #7
  %vm_ops.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call1.i, i32 0, i32 12
  %22 = ptrtoint ptr %vm_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vm_ops.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.end8.i_crit_edge, label %if.end.i.i63

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end.i.i63:                                     ; preds = %if.end.i
  %vm_file.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call1.i, i32 0, i32 14
  %24 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vm_file.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i63.if.then4.i_crit_edge, label %if.end2.i.i

if.end.i.i63.if.then4.i_crit_edge:                ; preds = %if.end.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end2.i.i:                                      ; preds = %if.end.i.i63
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_inode.i.i.i, align 8
  %call5.i.i = tail call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %27) #7
  br i1 %call5.i.i, label %if.end2.i.i.if.end8.i_crit_edge, label %can_do_mincore.exit.i

if.end2.i.i.if.end8.i_crit_edge:                  ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

can_do_mincore.exit.i:                            ; preds = %if.end2.i.i
  %28 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vm_file.i.i, align 4
  %f_path.i.i.i.i = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %f_path.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f_path.i.i.i.i, align 8
  %mnt_userns.i.i.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %mnt_userns.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %mnt_userns.i.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  %f_inode.i.i.i.i = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 2
  %34 = ptrtoint ptr %f_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f_inode.i.i.i.i, align 8
  %call2.i.i.i = tail call i32 @inode_permission(ptr noundef %33, ptr noundef %35, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i64 = icmp eq i32 %call2.i.i.i, 0
  br i1 %cmp.i.i64, label %can_do_mincore.exit.i.if.end8.i_crit_edge, label %can_do_mincore.exit.i.if.then4.i_crit_edge

can_do_mincore.exit.i.if.then4.i_crit_edge:       ; preds = %can_do_mincore.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

can_do_mincore.exit.i.if.end8.i_crit_edge:        ; preds = %can_do_mincore.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then4.i:                                       ; preds = %can_do_mincore.exit.i.if.then4.i_crit_edge, %if.end.i.i63.if.then4.i_crit_edge
  %sub.i = sub i32 4095, %start.addr.073
  %sub7.i = add i32 %sub.i, %21
  %div32.i = lshr i32 %sub7.i, 12
  %36 = call ptr @memset(ptr %3, i32 1, i32 %div32.i)
  br label %do_mincore.exit

if.end8.i:                                        ; preds = %can_do_mincore.exit.i.if.end8.i_crit_edge, %if.end2.i.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %call1.i, i32 0, i32 6
  %37 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vm_mm.i, align 4
  %call9.i = tail call i32 @walk_page_range(ptr noundef %38, i32 noundef %start.addr.073, i32 noundef %21, ptr noundef nonnull @mincore_walk_ops, ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.do_mincore.exit_crit_edge, label %if.end12.i

if.end8.i.do_mincore.exit_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_mincore.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub13.i = sub i32 %21, %start.addr.073
  %shr.i = lshr i32 %sub13.i, 12
  br label %do_mincore.exit

do_mincore.exit:                                  ; preds = %if.end12.i, %if.end8.i.do_mincore.exit_crit_edge, %if.then4.i, %lor.lhs.false.i.do_mincore.exit_crit_edge, %mmap_read_lock.exit.do_mincore.exit_crit_edge
  %retval.0.i = phi i32 [ %shr.i, %if.end12.i ], [ %div32.i, %if.then4.i ], [ -12, %lor.lhs.false.i.do_mincore.exit_crit_edge ], [ -12, %mmap_read_lock.exit.do_mincore.exit_crit_edge ], [ %call9.i, %if.end8.i.do_mincore.exit_crit_edge ]
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %mm28 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 53
  %41 = ptrtoint ptr %mm28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mm28, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__do_sys_mincore, %if.then.i.i65)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i65], !srcloc !47

if.then.i.i65:                                    ; preds = %do_mincore.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %42, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i65, %do_mincore.exit
  %mmap_lock.i66 = getelementptr inbounds %struct.anon.13, ptr %42, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp29 = icmp slt i32 %retval.0.i, 1
  br i1 %cmp29, label %mmap_read_unlock.exit.while.end_crit_edge, label %if.then.i.i.i

mmap_read_unlock.exit.while.end_crit_edge:        ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then.i.i.i:                                    ; preds = %mmap_read_unlock.exit
  tail call void @__check_object_size(ptr noundef nonnull %3, i32 noundef %retval.0.i, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.while.end_crit_edge, label %if.end.i.i

if.then.i.i.i.while.end_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %vec.addr.072, i32 %retval.0.i, i32 -1226833920) #10, !srcloc !49
  %asmresult.i.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.while.end_crit_edge

if.end.i.i.while.end_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %3, i32 noundef %retval.0.i) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %vec.addr.072, ptr noundef nonnull %3, i32 noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool34.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool34.not, label %if.end36, label %copy_to_user.exit.while.end_crit_edge

copy_to_user.exit.while.end_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end36:                                         ; preds = %copy_to_user.exit
  %sub = sub i32 %pages.071, %retval.0.i
  %add.ptr = getelementptr i8, ptr %vec.addr.072, i32 %retval.0.i
  %shl = shl nuw i32 %retval.0.i, 12
  %add37 = add i32 %shl, %start.addr.073
  %tobool20.not = icmp eq i32 %sub, 0
  br i1 %tobool20.not, label %if.end36.while.end_crit_edge, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end36.while.end_crit_edge, %copy_to_user.exit.while.end_crit_edge, %if.end.i.i.while.end_crit_edge, %if.then.i.i.i.while.end_crit_edge, %mmap_read_unlock.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %retval1.1 = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %if.end36.while.end_crit_edge ], [ %retval.0.i, %mmap_read_unlock.exit.while.end_crit_edge ], [ -14, %copy_to_user.exit.while.end_crit_edge ], [ -14, %if.then.i.i.i.while.end_crit_edge ], [ -14, %if.end.i.i.while.end_crit_edge ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end16.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ -11, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mincore_pte_range(ptr nocapture noundef readonly %pmd, i32 noundef %addr, i32 noundef %end, ptr nocapture noundef %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vma1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %0 = ptrtoint ptr %vma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vma1, align 4
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pmd, align 4
  %shr.i = lshr i32 %6, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %7
  %ptl.i.i = getelementptr %struct.page, ptr %4, i32 %sub.i, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %10, 512
  %11 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %15 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #7
  %shr.i97 = lshr i32 %addr, 12
  %and.i = and i32 %shr.i97, 511
  %add.ptr12 = getelementptr i32, ptr %call.i.i, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %addr)
  %cmp.not100 = icmp eq i32 %end, %addr
  br i1 %cmp.not100, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %for.body.lr.ph
  %addr.addr.0104 = phi i32 [ %addr, %for.body.lr.ph ], [ %add43, %if.end41.for.body_crit_edge ]
  %ptep.0103 = phi ptr [ %add.ptr12, %for.body.lr.ph ], [ %incdec.ptr42, %if.end41.for.body_crit_edge ]
  %vec.0101 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %if.end41.for.body_crit_edge ]
  %21 = ptrtoint ptr %ptep.0103 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ptep.0103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not = icmp eq i32 %22, 0
  br i1 %tobool13.not, label %if.then14, label %cond.true

if.then14:                                        ; preds = %for.body
  %23 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vm_file.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.then14.if.end41_crit_edge, label %if.then.i

if.then14.if.end41_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %sub.i.i = sub i32 %addr.addr.0104, %26
  %shr.i.i = lshr i32 %sub.i.i, 12
  %27 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_pgoff.i.i, align 4
  %add.i.i = add i32 %shr.i.i, %28
  %29 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vm_file.i, align 4
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_mapping.i, align 4
  %call2.i = tail call fastcc zeroext i8 @mincore_page(ptr noundef %32, i32 noundef %add.i.i) #7
  br label %if.end41

cond.true:                                        ; preds = %for.body
  %and16 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else22, label %cond.true.if.end41_crit_edge

cond.true.if.end41_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.else22:                                        ; preds = %cond.true
  %33 = shl i32 %22, 24
  %shl.i.i = and i32 %33, 2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265920, i32 %shl.i.i)
  %cmp.i = icmp ult i32 %shl.i.i, 2013265920
  br i1 %cmp.i, label %if.else29, label %if.else22.if.end41_crit_edge

if.else22.if.end41_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.else29:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  %shr3.i = lshr i32 %22, 7
  %shr.i98 = lshr exact i32 %shl.i.i, 26
  %arrayidx = getelementptr [0 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i98
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %shr34 = lshr i32 %22, 21
  %arrayidx35 = getelementptr %struct.address_space, ptr %35, i32 %shr34
  %call38 = tail call fastcc zeroext i8 @mincore_page(ptr noundef %arrayidx35, i32 noundef %shr3.i)
  br label %if.end41

if.end41:                                         ; preds = %if.else29, %if.else22.if.end41_crit_edge, %cond.true.if.end41_crit_edge, %if.then.i, %if.then14.if.end41_crit_edge
  %call2.i.sink = phi i8 [ %call2.i, %if.then.i ], [ 0, %if.then14.if.end41_crit_edge ], [ 1, %cond.true.if.end41_crit_edge ], [ %call38, %if.else29 ], [ 1, %if.else22.if.end41_crit_edge ]
  %36 = ptrtoint ptr %vec.0101 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call2.i.sink, ptr %vec.0101, align 1
  %incdec.ptr = getelementptr i8, ptr %vec.0101, i32 1
  %incdec.ptr42 = getelementptr i32, ptr %ptep.0103, i32 1
  %add43 = add i32 %addr.addr.0104, 4096
  %cmp.not = icmp eq i32 %add43, %end
  br i1 %cmp.not, label %if.end41.do.body_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end41.do.body_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end41.do.body_crit_edge, %entry.do.body_crit_edge
  %ptep.0.lcssa = phi ptr [ %add.ptr12, %entry.do.body_crit_edge ], [ %incdec.ptr42, %if.end41.do.body_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %9) #7
  %add.ptr46 = getelementptr i32, ptr %ptep.0.lcssa, i32 -1
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr46) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %37 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i1.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 213
  %41 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %42, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %43 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i99 = add i32 %46, -1
  store volatile i32 %sub.i.i99, ptr %preempt_count.i.i.i, align 4
  %sub = sub i32 %end, %addr
  %shr = lshr i32 %sub, 12
  %47 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private, align 4
  %add.ptr52 = getelementptr i8, ptr %48, i32 %shr
  store ptr %add.ptr52, ptr %private, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 153, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mincore_unmapped_range(i32 noundef %addr, i32 noundef %end, i32 noundef %depth, ptr nocapture noundef %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %0 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vma, align 4
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %sub.i = sub i32 %end, %addr
  %shr.i = lshr i32 %sub.i, 12
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i)
  %cmp527.not.i = icmp ult i32 %sub.i, 4096
  br i1 %tobool.not.i, label %for.cond4.preheader.i, label %if.then.i

for.cond4.preheader.i:                            ; preds = %entry
  br i1 %cmp527.not.i, label %for.cond4.preheader.i.__mincore_unmapped_range.exit_crit_edge, label %for.body6.preheader.i

for.cond4.preheader.i.__mincore_unmapped_range.exit_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mincore_unmapped_range.exit

for.body6.preheader.i:                            ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %umax30.i = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 1) #7
  %6 = call ptr @memset(ptr %3, i32 0, i32 %umax30.i)
  br label %__mincore_unmapped_range.exit

if.then.i:                                        ; preds = %entry
  br i1 %cmp527.not.i, label %if.then.i.__mincore_unmapped_range.exit_crit_edge, label %for.body.preheader.i

if.then.i.__mincore_unmapped_range.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mincore_unmapped_range.exit

for.body.preheader.i:                             ; preds = %if.then.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %sub.i.i = sub i32 %addr, %8
  %shr.i.i = lshr i32 %sub.i.i, 12
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_pgoff.i.i, align 4
  %add.i.i = add i32 %shr.i.i, %10
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %pgoff.026.i = phi i32 [ %inc3.i, %for.body.i.for.body.i_crit_edge ], [ %add.i.i, %for.body.preheader.i ]
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %11 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vm_file.i, align 4
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_mapping.i, align 4
  %call2.i = tail call fastcc zeroext i8 @mincore_page(ptr noundef %14, i32 noundef %pgoff.026.i) #7
  %arrayidx.i = getelementptr i8, ptr %3, i32 %i.025.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call2.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %inc3.i = add i32 %pgoff.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.__mincore_unmapped_range.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.__mincore_unmapped_range.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mincore_unmapped_range.exit

__mincore_unmapped_range.exit:                    ; preds = %for.body.i.__mincore_unmapped_range.exit_crit_edge, %if.then.i.__mincore_unmapped_range.exit_crit_edge, %for.body6.preheader.i, %for.cond4.preheader.i.__mincore_unmapped_range.exit_crit_edge
  %16 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %shr.i
  store ptr %add.ptr, ptr %private, align 4
  ret i32 0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mincore_hugetlb(ptr nocapture noundef readnone %pte, i32 noundef %hmask, i32 noundef %addr, i32 noundef %end, ptr nocapture noundef readnone %walk) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mincore.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 40, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mincore_page(ptr noundef %mapping, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @find_get_incore_page(ptr noundef %mapping, i32 noundef %index) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !55

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !55

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !56
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.PageUptodate.exit_crit_edge, label %do.end.i.i

folio_flags.exit.i.i.PageUptodate.exit_crit_edge: ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %PageUptodate.exit

do.end.i.i:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  br label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %do.end.i.i, %folio_flags.exit.i.i.PageUptodate.exit_crit_edge
  %.lobit.i = lshr exact i32 %10, 2
  %conv = trunc i32 %.lobit.i to i8
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %0, align 4
  %and.i.i4 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4)
  %tobool.not.i.i5 = icmp eq i32 %and.i.i4, 0
  br i1 %tobool.not.i.i5, label %if.end.i.i8, label %if.then.i.i7, !prof !55

if.then.i.i7:                                     ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i6 = add i32 %12, -1
  br label %_compound_head.exit.i10

if.end.i.i8:                                      ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i10

_compound_head.exit.i10:                          ; preds = %if.end.i.i8, %if.then.i.i7
  %retval.0.i.i9 = phi i32 [ %sub.i.i6, %if.then.i.i7 ], [ %13, %if.end.i.i8 ]
  %14 = inttoptr i32 %retval.0.i.i9 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !58

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.12) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i10
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mincore_page, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !47

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %14) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %present.0 = phi i8 [ 0, %entry.if.end_crit_edge ], [ %conv, %folio_put_testzero.exit.i.i.if.end_crit_edge ], [ %conv, %if.then.i4.i ]
  ret i8 %present.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_incore_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !31, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/mincore.c", i32 230, i32 1}
!2 = !{ptr @event_enter__mincore, !1, !"event_enter__mincore", i1 false, i1 false}
!3 = !{ptr @__event_enter__mincore, !1, !"__event_enter__mincore", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__mincore, !1, !"event_exit__mincore", i1 false, i1 false}
!6 = !{ptr @__event_exit__mincore, !1, !"__event_exit__mincore", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__mincore, !1, !"__syscall_meta__mincore", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__mincore, !1, !"__p_syscall_meta__mincore", i1 false, i1 false}
!10 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @types__mincore, !1, !"types__mincore", i1 false, i1 false}
!14 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @args__mincore, !1, !"args__mincore", i1 false, i1 false}
!18 = !{ptr @mincore_walk_ops, !19, !"mincore_walk_ops", i1 false, i1 false}
!19 = !{!"../mm/mincore.c", i32 174, i32 33}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/mincore.c", i32 153, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/mm.h", i32 717, i32 2}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2155600615, i64 2155600640}
!46 = !{i64 2155601449, i64 2155601474}
!47 = !{i64 2148309911, i64 2148309916, i64 2148309929, i64 2148309973, i64 2148310007, i64 2148310028}
!48 = !{i64 2153008445}
!49 = !{i64 2152770145, i64 2152770170}
!50 = !{i64 2153679166}
!51 = !{i64 2152772281}
!52 = !{i64 2152772488}
!53 = !{i64 2153681937}
!54 = !{i64 2155579885, i64 2155580361, i64 2155579922, i64 2155579978, i64 2155580012, i64 2155580036, i64 2155580077, i64 2155580098, i64 2155580126, i64 2155580160}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2150264232, i64 2150264723, i64 2150264269, i64 2150264325, i64 2150264359, i64 2150264383, i64 2150264424, i64 2150264445, i64 2150264473, i64 2150264507}
!57 = !{i64 2151014124}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2153155230, i64 2153155713, i64 2153155267, i64 2153155323, i64 2153155357, i64 2153155381, i64 2153155422, i64 2153155443, i64 2153155471, i64 2153155505}
!60 = !{i64 2148797710}
!61 = !{i64 2148712419, i64 2148712451, i64 2148712480, i64 2148712514, i64 2148712545, i64 2148712568}
!62 = !{i64 2148797939}
