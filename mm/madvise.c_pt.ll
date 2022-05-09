; ModuleID = '/llk/IR_all_yes/mm/madvise.c_pt.bc'
source_filename = "../mm/madvise.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.76, %struct.trace_event, ptr, ptr, %union.anon.78, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.6 }
%union.anon.6 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon_vma_name = type { %struct.kref, [0 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.108, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.madvise_walk_private = type { ptr, i8 }
%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.82, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.82 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iovec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.90, %union.anon.91 }
%union.anon.90 = type { ptr }
%union.anon.91 = type { i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmu_notifier_range = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.20, %union.anon.32, %struct.atomic_t, i32 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.32 = type { %struct.atomic_t }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.110, [64 x ptr], %union.anon.111 }
%union.anon.110 = type { %struct.list_head }
%union.anon.111 = type { [3 x [2 x i32]] }
%struct.anon.3 = type { [16 x i8], %struct.lockdep_map }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_madvise\00", [46 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__madvise = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__madvise, ptr @args__madvise, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__madvise, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__madvise, i64 20) }, ptr @event_enter__madvise, ptr @event_exit__madvise }, align 4
@event_enter__madvise = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__madvise, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__madvise = internal global ptr @event_enter__madvise, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_madvise\00", [47 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__madvise = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__madvise, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__madvise = internal global ptr @event_exit__madvise, section "_ftrace_events", align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_madvise\00", [20 x i8] zeroinitializer }, align 32
@types__madvise = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@args__madvise = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__madvise = internal global ptr @__syscall_meta__madvise, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_process_madvise\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__process_madvise = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 5, ptr @types__process_madvise, ptr @args__process_madvise, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__process_madvise, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__process_madvise, i64 20) }, ptr @event_enter__process_madvise, ptr @event_exit__process_madvise }, align 4
@event_enter__process_madvise = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__process_madvise, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__process_madvise = internal global ptr @event_enter__process_madvise, section "_ftrace_events", align 4
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_process_madvise\00", [39 x i8] zeroinitializer }, align 32
@event_exit__process_madvise = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__process_madvise, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__process_madvise = internal global ptr @event_exit__process_madvise, section "_ftrace_events", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_process_madvise\00", [44 x i8] zeroinitializer }, align 32
@types__process_madvise = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.24, ptr @.str.28, ptr @.str.23, ptr @.str.24, ptr @.str.29], [44 x i8] zeroinitializer }, align 32
@args__process_madvise = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.27, ptr @.str.33], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__process_madvise = internal global ptr @__syscall_meta__process_madvise, section "__syscalls_metadata", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/mmap_lock.h\00", [38 x i8] zeroinitializer }, align 32
@sysctl_max_map_count = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@swapin_walk_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @swapin_walk_pmd_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cold_walk_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @madvise_cold_or_pageout_pte_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/madvise.c\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@madvise_free_walk_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @madvise_free_pte_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/mmu_notifier.h\00", [35 x i8] zeroinitializer }, align 32
@__mmu_notifier_invalidate_range_start_map = external dso_local global %struct.lockdep_map, align 4
@madvise_populate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@madvise_populate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.14, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: unhandled return value: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"madvise_populate\00", [47 x i8] zeroinitializer }, align 32
@madvise_populate._entry_ptr = internal global ptr @madvise_populate._entry, section ".printk_index", align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"len_in\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"behavior\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"const struct iovec *\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pidfd\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vec\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vlen\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.34 = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.35 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 8, i64 9, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.36 = internal global [23 x i64] [i64 21, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 20, i64 21]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 32, i64 4294967163, i64 4294967274, i64 4294967282, i64 4294967284, i64 4294967292]
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"event_enter__madvise\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"event_exit__madvise\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"types__madvise\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"args__madvise\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [29 x i8] c"event_enter__process_madvise\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"event_exit__process_madvise\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"types__process_madvise\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"args__process_madvise\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [29 x i8] c"../include/linux/mmap_lock.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 155, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"swapin_walk_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 228, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 717, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 695, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 723, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1182, i32 9 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"cold_walk_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 487, i32 33 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 482, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 260, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 417, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"madvise_free_walk_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 710, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant [32 x i8] c"../include/linux/mmu_notifier.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 454, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 878, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1372, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [16 x i8] c"../mm/madvise.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1377, i32 1 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__event_enter__madvise, ptr @__event_enter__process_madvise, ptr @__event_exit__madvise, ptr @__event_exit__process_madvise, ptr @__p_syscall_meta__madvise, ptr @__p_syscall_meta__process_madvise, ptr @__syscall_meta__madvise, ptr @__syscall_meta__process_madvise, ptr @event_enter__madvise, ptr @event_enter__process_madvise, ptr @event_exit__madvise, ptr @event_exit__process_madvise, ptr @madvise_populate._entry, ptr @madvise_populate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__madvise, ptr @args__madvise, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__process_madvise, ptr @args__process_madvise, ptr @.str.6, ptr @swapin_walk_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @cold_walk_ops, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @madvise_free_walk_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__madvise to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__madvise to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__madvise to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__madvise to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__process_madvise to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__process_madvise to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__process_madvise to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__process_madvise to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swapin_walk_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cold_walk_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madvise_free_walk_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madvise_populate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_madvise = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_madvise
@sys_process_madvise = dso_local alias i32 (i32, ptr, i32, i32, i32), ptr @__se_sys_process_madvise

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @anon_vma_name_alloc(ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %name) #13
  %add = add i32 %call, 1
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %add, i32 4) #10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef 4) #10
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %call9.i, align 128
  %name3 = getelementptr inbounds %struct.anon_vma_name, ptr %call9.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %name3, ptr %name, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call9.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @anon_vma_name_free(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kref) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @anon_vma_name(ptr nocapture noundef readonly %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !87

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 155, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %mmap_lock25.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i, i32 noundef 4) #10
  %3 = ptrtoint ptr %mmap_lock25.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mmap_lock25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not.i = icmp eq i32 %4, 0
  br i1 %cmp.i.not.i, label %if.then36.i, label %mmap_assert_locked.exit, !prof !87

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_mm(ptr noundef %1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

mmap_assert_locked.exit:                          ; preds = %if.end.i
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %5 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vm_file, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end, label %mmap_assert_locked.exit.return_crit_edge

mmap_assert_locked.exit.return_crit_edge:         ; preds = %mmap_assert_locked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %mmap_assert_locked.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  br label %return

return:                                           ; preds = %if.end, %mmap_assert_locked.exit.return_crit_edge
  %retval.0 = phi ptr [ %9, %if.end ], [ null, %mmap_assert_locked.exit.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @madvise_set_anon_name(ptr noundef %mm, i32 noundef %start, i32 noundef %len_in, ptr noundef %anon_name) local_unnamed_addr #0 align 64 {
entry:
  %prev.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %len_in, 4095
  %and1 = and i32 %add, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len_in)
  %tobool2.not = icmp ne i32 %len_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool3.not = icmp eq i32 %and1, 0
  %or.cond = and i1 %tobool2.not, %tobool3.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add6 = add i32 %and1, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %start)
  %cmp = icmp ult i32 %add6, %start
  %brmerge = or i1 %tobool3.not, %cmp
  %.mux = select i1 %cmp, i32 -22, i32 0
  br i1 %brmerge, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev.i) #10
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev.i, align 4, !annotation !89
  %call.i = call ptr @find_vma_prev(ptr noundef %mm, i32 noundef %start, ptr noundef nonnull %prev.i) #10
  %cond.i = icmp eq ptr %call.i, null
  br i1 %cond.i, label %if.end11.madvise_walk_vmas.exit_crit_edge, label %land.lhs.true.i

if.end11.madvise_walk_vmas.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %start)
  %cmp.i = icmp ult i32 %2, %start
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end3.i.preheader_crit_edge

land.lhs.true.i.if.end3.i.preheader_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.preheader

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %prev.i, align 4
  br label %if.end3.i.preheader

if.end3.i.preheader:                              ; preds = %if.then.i, %land.lhs.true.i.if.end3.i.preheader_crit_edge
  br label %if.end3.i

if.end3.i:                                        ; preds = %cleanup.i.if.end3.i_crit_edge, %if.end3.i.preheader
  %unmapped_error.085.i = phi i32 [ %unmapped_error.1.i, %cleanup.i.if.end3.i_crit_edge ], [ 0, %if.end3.i.preheader ]
  %vma.084.i = phi ptr [ %vma.2.i, %cleanup.i.if.end3.i_crit_edge ], [ %call.i, %if.end3.i.preheader ]
  %start.addr.083.i = phi i32 [ %start.addr.3.i, %cleanup.i.if.end3.i_crit_edge ], [ %start, %if.end3.i.preheader ]
  %4 = ptrtoint ptr %vma.084.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma.084.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.083.i, i32 %5)
  %cmp5.i = icmp ult i32 %start.addr.083.i, %5
  br i1 %cmp5.i, label %if.then6.i, label %if.end3.i.if.end11.i_crit_edge

if.end3.i.if.end11.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add6)
  %cmp8.not.i = icmp ult i32 %5, %add6
  br i1 %cmp8.not.i, label %if.then6.i.if.end11.i_crit_edge, label %if.then6.i.madvise_walk_vmas.exit.loopexit_crit_edge

if.then6.i.madvise_walk_vmas.exit.loopexit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit.loopexit

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i.if.end11.i_crit_edge, %if.end3.i.if.end11.i_crit_edge
  %start.addr.1.i = phi i32 [ %5, %if.then6.i.if.end11.i_crit_edge ], [ %start.addr.083.i, %if.end3.i.if.end11.i_crit_edge ]
  %unmapped_error.1.i = phi i32 [ -12, %if.then6.i.if.end11.i_crit_edge ], [ %unmapped_error.085.i, %if.end3.i.if.end11.i_crit_edge ]
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end.i, align 4
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 %add6) #10
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 14
  %9 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_file.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.i.madvise_walk_vmas.exit.loopexit_crit_edge

if.end11.i.madvise_walk_vmas.exit.loopexit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit.loopexit

if.end.i:                                         ; preds = %if.end11.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 8
  %11 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_flags.i, align 4
  %call.i21 = call fastcc i32 @madvise_update_vma(ptr noundef nonnull %vma.084.i, ptr noundef nonnull %prev.i, i32 noundef %start.addr.1.i, i32 noundef %8, i32 noundef %12, ptr noundef %anon_name) #10
  %13 = zext i32 %call.i21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i21, label %if.end.i.madvise_walk_vmas.exit_crit_edge [
    i32 -12, label %if.end.i.madvise_walk_vmas.exit.loopexit_crit_edge
    i32 0, label %if.end18.i
  ]

if.end.i.madvise_walk_vmas.exit.loopexit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit.loopexit

if.end.i.madvise_walk_vmas.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit

if.end18.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %tobool19.not.i = icmp eq ptr %15, null
  br i1 %tobool19.not.i, label %if.end25.i, label %if.end25.thread.i

if.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add6)
  %cmp26.not.i = icmp ult i32 %7, %add6
  br i1 %cmp26.not.i, label %if.else.i, label %if.end25.i.madvise_walk_vmas.exit.loopexit_crit_edge

if.end25.i.madvise_walk_vmas.exit.loopexit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit.loopexit

if.end25.thread.i:                                ; preds = %if.end18.i
  %vm_end21.i = getelementptr inbounds %struct.vm_area_struct, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %vm_end21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_end21.i, align 4
  %18 = call i32 @llvm.umax.i32(i32 %8, i32 %17) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add6)
  %cmp26.not64.i = icmp ult i32 %18, %add6
  br i1 %cmp26.not64.i, label %if.then30.i, label %if.end25.thread.i.madvise_walk_vmas.exit.loopexit_crit_edge

if.end25.thread.i.madvise_walk_vmas.exit.loopexit_crit_edge: ; preds = %if.end25.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit.loopexit

if.then30.i:                                      ; preds = %if.end25.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vm_next.i, align 4
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %call31.i = call ptr @find_vma(ptr noundef %mm, i32 noundef %8) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then30.i
  %start.addr.3.i = phi i32 [ %8, %if.else.i ], [ %18, %if.then30.i ]
  %vma.2.i = phi ptr [ %call31.i, %if.else.i ], [ %20, %if.then30.i ]
  %tobool1.not.i = icmp eq ptr %vma.2.i, null
  br i1 %tobool1.not.i, label %cleanup.i.madvise_walk_vmas.exit.loopexit_crit_edge, label %cleanup.i.if.end3.i_crit_edge

cleanup.i.if.end3.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

cleanup.i.madvise_walk_vmas.exit.loopexit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit.loopexit

madvise_walk_vmas.exit.loopexit:                  ; preds = %cleanup.i.madvise_walk_vmas.exit.loopexit_crit_edge, %if.end25.thread.i.madvise_walk_vmas.exit.loopexit_crit_edge, %if.end25.i.madvise_walk_vmas.exit.loopexit_crit_edge, %if.end.i.madvise_walk_vmas.exit.loopexit_crit_edge, %if.end11.i.madvise_walk_vmas.exit.loopexit_crit_edge, %if.then6.i.madvise_walk_vmas.exit.loopexit_crit_edge
  %retval.2.i.ph = phi i32 [ -11, %if.end.i.madvise_walk_vmas.exit.loopexit_crit_edge ], [ -9, %if.end11.i.madvise_walk_vmas.exit.loopexit_crit_edge ], [ -12, %if.then6.i.madvise_walk_vmas.exit.loopexit_crit_edge ], [ %unmapped_error.1.i, %if.end25.i.madvise_walk_vmas.exit.loopexit_crit_edge ], [ %unmapped_error.1.i, %if.end25.thread.i.madvise_walk_vmas.exit.loopexit_crit_edge ], [ -12, %cleanup.i.madvise_walk_vmas.exit.loopexit_crit_edge ]
  br label %madvise_walk_vmas.exit

madvise_walk_vmas.exit:                           ; preds = %madvise_walk_vmas.exit.loopexit, %if.end.i.madvise_walk_vmas.exit_crit_edge, %if.end11.madvise_walk_vmas.exit_crit_edge
  %retval.2.i = phi i32 [ -12, %if.end11.madvise_walk_vmas.exit_crit_edge ], [ %retval.2.i.ph, %madvise_walk_vmas.exit.loopexit ], [ %call.i21, %if.end.i.madvise_walk_vmas.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev.i) #10
  br label %cleanup

cleanup:                                          ; preds = %madvise_walk_vmas.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.2.i, %madvise_walk_vmas.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %.mux, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_madvise(ptr noundef %mm, i32 noundef %start, i32 noundef %len_in, i32 noundef %behavior) local_unnamed_addr #0 align 64 {
entry:
  %vma.i.i.i.i.i102.i = alloca %struct.vm_area_struct, align 4
  %walk_private.i.i103.i = alloca %struct.madvise_walk_private, align 8
  %tlb.i104.i = alloca %struct.mmu_gather, align 4
  %vma.i.i.i.i.i.i = alloca %struct.vm_area_struct, align 4
  %walk_private.i.i.i = alloca %struct.madvise_walk_private, align 8
  %tlb.i.i = alloca %struct.mmu_gather, align 4
  %new_flags.i = alloca i32, align 4
  %prev.i = alloca ptr, align 4
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #10
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %1 = zext i32 %behavior to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %behavior, label %entry.cleanup_crit_edge [
    i32 11, label %entry.madvise_behavior_valid.exit_crit_edge
    i32 10, label %entry.madvise_behavior_valid.exit_crit_edge77
    i32 0, label %entry.madvise_behavior_valid.exit_crit_edge78
    i32 2, label %entry.madvise_behavior_valid.exit_crit_edge79
    i32 1, label %entry.madvise_behavior_valid.exit_crit_edge80
    i32 9, label %entry.madvise_behavior_valid.exit_crit_edge81
    i32 3, label %entry.madvise_behavior_valid.exit_crit_edge82
    i32 4, label %entry.madvise_behavior_valid.exit_crit_edge83
    i32 8, label %entry.madvise_behavior_valid.exit_crit_edge84
    i32 20, label %entry.madvise_behavior_valid.exit_crit_edge85
    i32 21, label %entry.madvise_behavior_valid.exit_crit_edge86
    i32 22, label %entry.madvise_behavior_valid.exit_crit_edge87
    i32 23, label %entry.madvise_behavior_valid.exit_crit_edge88
    i32 12, label %entry.madvise_behavior_valid.exit_crit_edge89
    i32 13, label %entry.madvise_behavior_valid.exit_crit_edge90
    i32 16, label %entry.madvise_behavior_valid.exit_crit_edge91
    i32 17, label %entry.madvise_behavior_valid.exit_crit_edge92
    i32 18, label %entry.madvise_behavior_valid.exit_crit_edge93
    i32 19, label %entry.madvise_behavior_valid.exit_crit_edge94
  ]

entry.madvise_behavior_valid.exit_crit_edge94:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge93:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge92:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge91:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge90:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge89:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge88:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge87:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge86:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge85:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge84:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge83:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge82:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge81:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge80:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge79:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge78:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge77:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.madvise_behavior_valid.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_behavior_valid.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

madvise_behavior_valid.exit:                      ; preds = %entry.madvise_behavior_valid.exit_crit_edge, %entry.madvise_behavior_valid.exit_crit_edge77, %entry.madvise_behavior_valid.exit_crit_edge78, %entry.madvise_behavior_valid.exit_crit_edge79, %entry.madvise_behavior_valid.exit_crit_edge80, %entry.madvise_behavior_valid.exit_crit_edge81, %entry.madvise_behavior_valid.exit_crit_edge82, %entry.madvise_behavior_valid.exit_crit_edge83, %entry.madvise_behavior_valid.exit_crit_edge84, %entry.madvise_behavior_valid.exit_crit_edge85, %entry.madvise_behavior_valid.exit_crit_edge86, %entry.madvise_behavior_valid.exit_crit_edge87, %entry.madvise_behavior_valid.exit_crit_edge88, %entry.madvise_behavior_valid.exit_crit_edge89, %entry.madvise_behavior_valid.exit_crit_edge90, %entry.madvise_behavior_valid.exit_crit_edge91, %entry.madvise_behavior_valid.exit_crit_edge92, %entry.madvise_behavior_valid.exit_crit_edge93, %entry.madvise_behavior_valid.exit_crit_edge94
  %and = and i32 %start, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end2, label %madvise_behavior_valid.exit.cleanup_crit_edge

madvise_behavior_valid.exit.cleanup_crit_edge:    ; preds = %madvise_behavior_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %madvise_behavior_valid.exit
  %add = add i32 %len_in, 4095
  %and3 = and i32 %add, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len_in)
  %tobool.not = icmp ne i32 %len_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = and i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %add7 = add i32 %and3, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %start)
  %cmp8 = icmp ult i32 %add7, %start
  %brmerge = or i1 %tobool4.not, %cmp8
  %.mux = select i1 %cmp8, i32 -22, i32 0
  br i1 %brmerge, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %2 = zext i32 %behavior to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %behavior, label %if.then16 [
    i32 9, label %if.end13.if.else_crit_edge
    i32 3, label %if.end13.if.else_crit_edge95
    i32 4, label %if.end13.if.else_crit_edge96
    i32 20, label %if.end13.if.else_crit_edge97
    i32 21, label %if.end13.if.else_crit_edge98
    i32 8, label %if.end13.if.else_crit_edge99
    i32 22, label %if.end13.if.else_crit_edge100
    i32 23, label %if.end13.if.else_crit_edge101
  ]

if.end13.if.else_crit_edge101:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end13.if.else_crit_edge100:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end13.if.else_crit_edge99:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end13.if.else_crit_edge98:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end13.if.else_crit_edge97:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end13.if.else_crit_edge96:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end13.if.else_crit_edge95:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then16:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@do_madvise, %if.then.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !90

if.then.i.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext true) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then16
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@do_madvise, %if.then.i4.i)) #10
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !90

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #10
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %mmap_write_lock_killable.exit.if.end21_crit_edge, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mmap_write_lock_killable.exit.if.end21_crit_edge: ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.else:                                          ; preds = %if.end13.if.else_crit_edge, %if.end13.if.else_crit_edge95, %if.end13.if.else_crit_edge96, %if.end13.if.else_crit_edge97, %if.end13.if.else_crit_edge98, %if.end13.if.else_crit_edge99, %if.end13.if.else_crit_edge100, %if.end13.if.else_crit_edge101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@do_madvise, %if.then.i.i50)) #10
          to label %__mmap_lock_trace_start_locking.exit.i52 [label %if.then.i.i50], !srcloc !90

if.then.i.i50:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i52

__mmap_lock_trace_start_locking.exit.i52:         ; preds = %if.then.i.i50, %if.else
  %mmap_lock.i51 = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i51) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@do_madvise, %if.then.i3.i)) #10
          to label %if.end21 [label %if.then.i3.i], !srcloc !90

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i52, %mmap_write_lock_killable.exit.if.end21_crit_edge
  %tobool15.not70 = phi i1 [ false, %mmap_write_lock_killable.exit.if.end21_crit_edge ], [ true, %__mmap_lock_trace_start_locking.exit.i52 ], [ true, %if.then.i3.i ]
  call void @blk_start_plug(ptr noundef nonnull %plug) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev.i) #10
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev.i, align 4, !annotation !89
  %call.i53 = call ptr @find_vma_prev(ptr noundef %mm, i32 noundef %start, ptr noundef nonnull %prev.i) #10
  %cond.i = icmp eq ptr %call.i53, null
  br i1 %cond.i, label %if.end21.madvise_walk_vmas.exit_crit_edge, label %land.lhs.true.i

if.end21.madvise_walk_vmas.exit_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit

land.lhs.true.i:                                  ; preds = %if.end21
  %4 = ptrtoint ptr %call.i53 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %start)
  %cmp.i54 = icmp ult i32 %5, %start
  br i1 %cmp.i54, label %if.then.i, label %land.lhs.true.i.if.end3.preheader.i_crit_edge

land.lhs.true.i.if.end3.preheader.i_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.preheader.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i53, ptr %prev.i, align 4
  br label %if.end3.preheader.i

if.end3.preheader.i:                              ; preds = %if.then.i, %land.lhs.true.i.if.end3.preheader.i_crit_edge
  %fullmm.i.i.i111.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i104.i, i32 0, i32 3
  %end.i.i.i.i.i125.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i104.i, i32 0, i32 2
  %vm_mm.i.i.i.i.i128.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.i.i.i.i.i102.i, i32 0, i32 6
  %vm_flags.i.i.i.i.i129.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.i.i.i.i.i102.i, i32 0, i32 8
  %start.i.i.i.i.i131.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i104.i, i32 0, i32 1
  %fullmm.i.i.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i.i, i32 0, i32 3
  %end.i.i.i.i.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i.i, i32 0, i32 2
  %vm_mm.i.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.i.i.i.i.i.i, i32 0, i32 6
  %vm_flags.i.i.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.i.i.i.i.i.i, i32 0, i32 8
  %start.i.i.i.i.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i.i, i32 0, i32 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %cleanup.i.if.end3.i_crit_edge, %if.end3.preheader.i
  %unmapped_error.085.i = phi i32 [ %unmapped_error.1.i, %cleanup.i.if.end3.i_crit_edge ], [ 0, %if.end3.preheader.i ]
  %vma.084.i = phi ptr [ %vma.2.i, %cleanup.i.if.end3.i_crit_edge ], [ %call.i53, %if.end3.preheader.i ]
  %start.addr.083.i = phi i32 [ %start.addr.3.i, %cleanup.i.if.end3.i_crit_edge ], [ %start, %if.end3.preheader.i ]
  %7 = ptrtoint ptr %vma.084.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vma.084.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.083.i, i32 %8)
  %cmp5.i = icmp ult i32 %start.addr.083.i, %8
  br i1 %cmp5.i, label %if.then6.i, label %if.end3.i.if.end11.i_crit_edge

if.end3.i.if.end11.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add7)
  %cmp8.not.i = icmp ult i32 %8, %add7
  br i1 %cmp8.not.i, label %if.then6.i.if.end11.i_crit_edge, label %if.then6.i.madvise_walk_vmas.exit_crit_edge

if.then6.i.madvise_walk_vmas.exit_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i.if.end11.i_crit_edge, %if.end3.i.if.end11.i_crit_edge
  %start.addr.1.i = phi i32 [ %8, %if.then6.i.if.end11.i_crit_edge ], [ %start.addr.083.i, %if.end3.i.if.end11.i_crit_edge ]
  %unmapped_error.1.i = phi i32 [ -12, %if.then6.i.if.end11.i_crit_edge ], [ %unmapped_error.085.i, %if.end3.i.if.end11.i_crit_edge ]
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 1
  %9 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_end.i, align 4
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 %add7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_flags.i) #10
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 8
  %12 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_flags.i, align 4
  %14 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %new_flags.i, align 4
  %15 = zext i32 %behavior to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %behavior, label %if.end11.i.sw.epilog.i_crit_edge [
    i32 9, label %sw.bb.i
    i32 3, label %madvise_vma_behavior.exit.thread74
    i32 20, label %sw.bb3.i
    i32 21, label %sw.bb5.i
    i32 8, label %if.end11.i.sw.bb7.i_crit_edge
    i32 4, label %if.end11.i.sw.bb7.i_crit_edge102
    i32 22, label %if.end11.i.sw.bb9.i_crit_edge
    i32 23, label %if.end11.i.sw.bb9.i_crit_edge103
    i32 0, label %sw.bb11.i
    i32 2, label %sw.bb13.i
    i32 1, label %sw.bb15.i
    i32 10, label %sw.bb18.i
    i32 11, label %sw.bb20.i
    i32 18, label %sw.bb24.i
    i32 19, label %sw.bb32.i
    i32 16, label %sw.bb34.i
    i32 17, label %sw.bb36.i
    i32 12, label %if.end11.i.sw.bb43.i_crit_edge
    i32 13, label %if.end11.i.sw.bb43.i_crit_edge104
    i32 14, label %if.end11.i.sw.bb48.i_crit_edge
    i32 15, label %if.end11.i.sw.bb48.i_crit_edge105
  ]

if.end11.i.sw.bb48.i_crit_edge105:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb48.i

if.end11.i.sw.bb48.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb48.i

if.end11.i.sw.bb43.i_crit_edge104:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43.i

if.end11.i.sw.bb43.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43.i

if.end11.i.sw.bb9.i_crit_edge103:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9.i

if.end11.i.sw.bb9.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9.i

if.end11.i.sw.bb7.i_crit_edge102:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i

if.end11.i.sw.bb7.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i

if.end11.i.sw.epilog.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i59 = call fastcc i32 @madvise_remove(ptr noundef nonnull %vma.084.i, ptr noundef nonnull %prev.i, i32 noundef %start.addr.1.i, i32 noundef %11) #10
  br label %madvise_vma_behavior.exit

madvise_vma_behavior.exit.thread74:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @madvise_willneed(ptr noundef nonnull %vma.084.i, ptr noundef nonnull %prev.i, i32 noundef %start.addr.1.i, i32 noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_flags.i) #10
  br label %if.end18.i

sw.bb3.i:                                         ; preds = %if.end11.i
  %vm_mm.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 6
  %16 = ptrtoint ptr %vm_mm.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vm_mm.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tlb.i.i) #10
  %18 = call ptr @memset(ptr %tlb.i.i, i32 255, i32 68)
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vma.084.i, ptr %prev.i, align 4
  %20 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_flags.i, align 4
  %and.i.i.i = and i32 %21, 4203520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %sw.bb3.i.madvise_cold.exit.i_crit_edge

sw.bb3.i.madvise_cold.exit.i_crit_edge:           ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_cold.exit.i

if.end.i.i:                                       ; preds = %sw.bb3.i
  call void @lru_add_drain() #10
  call void @tlb_gather_mmu(ptr noundef nonnull %tlb.i.i, ptr noundef %17) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %walk_private.i.i.i) #10
  %22 = ptrtoint ptr %walk_private.i.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -4278190081, ptr %walk_private.i.i.i, align 8, !annotation !89
  store ptr %tlb.i.i, ptr %walk_private.i.i.i, align 8
  %23 = ptrtoint ptr %fullmm.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i.i.i.i = load i16, ptr %fullmm.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i16 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.tlb_start_vma.exit.i.i.i_crit_edge

if.end.i.i.tlb_start_vma.exit.i.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_start_vma.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_flags.i, align 4
  %26 = trunc i32 %25 to i16
  %27 = shl i16 %26, 6
  %bf.shl4.i.i.i.i.i = and i16 %27, 256
  %bf.clear5.i.i.i.i.i = and i16 %bf.load.i.i.i.i, -385
  %bf.set6.i.i.i.i.i = or i16 %bf.shl4.i.i.i.i.i, %bf.clear5.i.i.i.i.i
  %28 = ptrtoint ptr %fullmm.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %bf.set6.i.i.i.i.i, ptr %fullmm.i.i.i.i, align 4
  %29 = ptrtoint ptr %vma.084.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vma.084.i, align 4
  %31 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_end.i, align 4
  call void @flush_cache_range(ptr noundef nonnull %vma.084.i, i32 noundef %30, i32 noundef %32) #10
  br label %tlb_start_vma.exit.i.i.i

tlb_start_vma.exit.i.i.i:                         ; preds = %if.end.i.i.i.i, %if.end.i.i.tlb_start_vma.exit.i.i.i_crit_edge
  %33 = ptrtoint ptr %vm_mm.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vm_mm.i.i, align 4
  %call.i.i.i = call i32 @walk_page_range(ptr noundef %34, i32 noundef %start.addr.1.i, i32 noundef %11, ptr noundef nonnull @cold_walk_ops, ptr noundef nonnull %walk_private.i.i.i) #10
  %35 = ptrtoint ptr %fullmm.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i7.i.i.i = load i16, ptr %fullmm.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i7.i.i.i)
  %tobool.not.i8.i.i.i = icmp slt i16 %bf.load.i7.i.i.i, 0
  %36 = and i16 %bf.load.i7.i.i.i, 15872
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %37 = icmp eq i16 %36, 0
  %or.cond.i.i.i.i = or i1 %tobool.not.i8.i.i.i, %37
  br i1 %or.cond.i.i.i.i, label %tlb_start_vma.exit.i.i.i.madvise_cold_page_range.exit.i.i_crit_edge, label %if.end.i.i.i.i.i

tlb_start_vma.exit.i.i.i.madvise_cold_page_range.exit.i.i_crit_edge: ; preds = %tlb_start_vma.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_cold_page_range.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %tlb_start_vma.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i7.i.i.i)
  %38 = icmp ult i16 %bf.load.i7.i.i.i, 16384
  br i1 %38, label %if.else.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %tlb.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tlb.i.i, align 4
  call void @flush_tlb_mm(ptr noundef %40) #10
  br label %tlb_flush.exit.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i
  %41 = ptrtoint ptr %end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %end.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool5.not.i.i.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool5.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.tlb_flush.exit.i.i.i.i.i_crit_edge, label %if.then6.i.i.i.i.i.i

if.else.i.i.i.i.i.i.tlb_flush.exit.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_flush.exit.i.i.i.i.i

if.then6.i.i.i.i.i.i:                             ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %vma.i.i.i.i.i.i) #10
  %43 = call ptr @memset(ptr %vma.i.i.i.i.i.i, i32 0, i32 96)
  %44 = ptrtoint ptr %tlb.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tlb.i.i, align 4
  %46 = ptrtoint ptr %vm_mm.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %vm_mm.i.i.i.i.i.i, align 4
  %47 = lshr i16 %bf.load.i7.i.i.i, 6
  %48 = and i16 %47, 4
  %49 = zext i16 %48 to i32
  %50 = and i16 %bf.load.i7.i.i.i, 128
  %51 = zext i16 %50 to i32
  %52 = shl nuw nsw i32 %51, 15
  %or.i.i.i.i.i.i = or i32 %52, %49
  %53 = ptrtoint ptr %vm_flags.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i.i.i.i.i.i, ptr %vm_flags.i.i.i.i.i.i, align 4
  %54 = ptrtoint ptr %start.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %start.i.i.i.i.i.i, align 4
  call void @flush_tlb_range(ptr noundef nonnull %vma.i.i.i.i.i.i, i32 noundef %55, i32 noundef %42) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %vma.i.i.i.i.i.i) #10
  br label %tlb_flush.exit.i.i.i.i.i

tlb_flush.exit.i.i.i.i.i:                         ; preds = %if.then6.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.tlb_flush.exit.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.i
  %56 = ptrtoint ptr %tlb.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tlb.i.i, align 4
  %notifier_subscriptions.i.i.i.i.i.i.i = getelementptr inbounds %struct.anon, ptr %57, i32 0, i32 49
  %58 = ptrtoint ptr %notifier_subscriptions.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %notifier_subscriptions.i.i.i.i.i.i.i, align 8
  %tobool.i.not.i.i.i.i.i.i = icmp eq ptr %59, null
  br i1 %tobool.i.not.i.i.i.i.i.i, label %tlb_flush.exit.i.i.i.i.i.mmu_notifier_invalidate_range.exit.i.i.i.i.i_crit_edge, label %if.then.i36.i.i.i.i.i

tlb_flush.exit.i.i.i.i.i.mmu_notifier_invalidate_range.exit.i.i.i.i.i_crit_edge: ; preds = %tlb_flush.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmu_notifier_invalidate_range.exit.i.i.i.i.i

if.then.i36.i.i.i.i.i:                            ; preds = %tlb_flush.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %end.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %end.i.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %start.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %start.i.i.i.i.i.i, align 4
  call void @__mmu_notifier_invalidate_range(ptr noundef %57, i32 noundef %63, i32 noundef %61) #10
  br label %mmu_notifier_invalidate_range.exit.i.i.i.i.i

mmu_notifier_invalidate_range.exit.i.i.i.i.i:     ; preds = %if.then.i36.i.i.i.i.i, %tlb_flush.exit.i.i.i.i.i.mmu_notifier_invalidate_range.exit.i.i.i.i.i_crit_edge
  %64 = ptrtoint ptr %fullmm.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i38.i.i.i.i.i = load i16, ptr %fullmm.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i38.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp sgt i16 %bf.load.i38.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 -1226833920, i32 -1
  %not.tobool.not.i.i.i.i.i.i = xor i1 %tobool.not.i.i.i.i.i.i, true
  %spec.select26.i.i.i.i.i.i = sext i1 %not.tobool.not.i.i.i.i.i.i to i32
  %65 = ptrtoint ptr %start.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %spec.select.i.i.i.i.i.i, ptr %start.i.i.i.i.i.i, align 4
  %66 = ptrtoint ptr %end.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select26.i.i.i.i.i.i, ptr %end.i.i.i.i.i.i, align 4
  %bf.clear14.i.i.i.i.i.i = and i16 %bf.load.i38.i.i.i.i.i, -15873
  %67 = ptrtoint ptr %fullmm.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %bf.clear14.i.i.i.i.i.i, ptr %fullmm.i.i.i.i, align 4
  br label %madvise_cold_page_range.exit.i.i

madvise_cold_page_range.exit.i.i:                 ; preds = %mmu_notifier_invalidate_range.exit.i.i.i.i.i, %tlb_start_vma.exit.i.i.i.madvise_cold_page_range.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk_private.i.i.i) #10
  call void @tlb_finish_mmu(ptr noundef nonnull %tlb.i.i) #10
  br label %madvise_cold.exit.i

madvise_cold.exit.i:                              ; preds = %madvise_cold_page_range.exit.i.i, %sw.bb3.i.madvise_cold.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %madvise_cold_page_range.exit.i.i ], [ -22, %sw.bb3.i.madvise_cold.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tlb.i.i) #10
  br label %madvise_vma_behavior.exit

sw.bb5.i:                                         ; preds = %if.end11.i
  %vm_mm.i105.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 6
  %68 = ptrtoint ptr %vm_mm.i105.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vm_mm.i105.i, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tlb.i104.i) #10
  %70 = call ptr @memset(ptr %tlb.i104.i, i32 255, i32 68)
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %vma.084.i, ptr %prev.i, align 4
  %72 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vm_flags.i, align 4
  %and.i.i107.i = and i32 %73, 4203520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i107.i)
  %tobool.not.i.i108.i = icmp eq i32 %and.i.i107.i, 0
  br i1 %tobool.not.i.i108.i, label %if.end.i110.i, label %sw.bb5.i.madvise_pageout.exit.i_crit_edge

sw.bb5.i.madvise_pageout.exit.i_crit_edge:        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_pageout.exit.i

if.end.i110.i:                                    ; preds = %sw.bb5.i
  %vm_ops.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 12
  %74 = ptrtoint ptr %vm_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vm_ops.i.i.i.i, align 4
  %tobool.not.i.i.i109.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i.i109.i, label %if.end.i110.i.if.end3.i.i_crit_edge, label %if.end.i.i.i

if.end.i110.i.if.end3.i.i_crit_edge:              ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

if.end.i.i.i:                                     ; preds = %if.end.i110.i
  %vm_file.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 14
  %76 = ptrtoint ptr %vm_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vm_file.i.i.i, align 4
  %tobool.not.i9.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i9.i.i, label %if.end.i.i.i.madvise_pageout.exit.i_crit_edge, label %if.end2.i.i.i

if.end.i.i.i.madvise_pageout.exit.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_pageout.exit.i

if.end2.i.i.i:                                    ; preds = %if.end.i.i.i
  %f_inode.i.i.i.i = getelementptr inbounds %struct.file, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %f_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %f_inode.i.i.i.i, align 8
  %call5.i.i.i = call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %79) #10
  br i1 %call5.i.i.i, label %if.end2.i.i.i.if.end3.i.i_crit_edge, label %can_do_pageout.exit.i.i

if.end2.i.i.i.if.end3.i.i_crit_edge:              ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

can_do_pageout.exit.i.i:                          ; preds = %if.end2.i.i.i
  %80 = ptrtoint ptr %vm_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vm_file.i.i.i, align 4
  %f_path.i.i.i.i.i = getelementptr inbounds %struct.file, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %f_path.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %f_path.i.i.i.i.i, align 8
  %mnt_userns.i.i.i.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %mnt_userns.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %mnt_userns.i.i.i.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !91
  %f_inode.i.i.i.i.i = getelementptr inbounds %struct.file, ptr %81, i32 0, i32 2
  %86 = ptrtoint ptr %f_inode.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %f_inode.i.i.i.i.i, align 8
  %call2.i.i.i.i = call i32 @inode_permission(ptr noundef %85, ptr noundef %87, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %can_do_pageout.exit.i.i.if.end3.i.i_crit_edge, label %can_do_pageout.exit.i.i.madvise_pageout.exit.i_crit_edge

can_do_pageout.exit.i.i.madvise_pageout.exit.i_crit_edge: ; preds = %can_do_pageout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_pageout.exit.i

can_do_pageout.exit.i.i.if.end3.i.i_crit_edge:    ; preds = %can_do_pageout.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %can_do_pageout.exit.i.i.if.end3.i.i_crit_edge, %if.end2.i.i.i.if.end3.i.i_crit_edge, %if.end.i110.i.if.end3.i.i_crit_edge
  call void @lru_add_drain() #10
  call void @tlb_gather_mmu(ptr noundef nonnull %tlb.i104.i, ptr noundef %69) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %walk_private.i.i103.i) #10
  %88 = ptrtoint ptr %walk_private.i.i103.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 -4261412865, ptr %walk_private.i.i103.i, align 8, !annotation !89
  store ptr %tlb.i104.i, ptr %walk_private.i.i103.i, align 8
  %89 = ptrtoint ptr %fullmm.i.i.i111.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load.i.i.i112.i = load i16, ptr %fullmm.i.i.i111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i.i112.i)
  %tobool.not.i.i10.i.i = icmp sgt i16 %bf.load.i.i.i112.i, -1
  br i1 %tobool.not.i.i10.i.i, label %if.end.i.i.i117.i, label %if.end3.i.i.tlb_start_vma.exit.i.i122.i_crit_edge

if.end3.i.i.tlb_start_vma.exit.i.i122.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_start_vma.exit.i.i122.i

if.end.i.i.i117.i:                                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vm_flags.i, align 4
  %92 = trunc i32 %91 to i16
  %93 = shl i16 %92, 6
  %bf.shl4.i.i.i.i113.i = and i16 %93, 256
  %bf.clear5.i.i.i.i114.i = and i16 %bf.load.i.i.i112.i, -385
  %bf.set6.i.i.i.i115.i = or i16 %bf.shl4.i.i.i.i113.i, %bf.clear5.i.i.i.i114.i
  %94 = ptrtoint ptr %fullmm.i.i.i111.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %bf.set6.i.i.i.i115.i, ptr %fullmm.i.i.i111.i, align 4
  %95 = ptrtoint ptr %vma.084.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vma.084.i, align 4
  %97 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vm_end.i, align 4
  call void @flush_cache_range(ptr noundef nonnull %vma.084.i, i32 noundef %96, i32 noundef %98) #10
  br label %tlb_start_vma.exit.i.i122.i

tlb_start_vma.exit.i.i122.i:                      ; preds = %if.end.i.i.i117.i, %if.end3.i.i.tlb_start_vma.exit.i.i122.i_crit_edge
  %99 = ptrtoint ptr %vm_mm.i105.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %vm_mm.i105.i, align 4
  %call.i.i118.i = call i32 @walk_page_range(ptr noundef %100, i32 noundef %start.addr.1.i, i32 noundef %11, ptr noundef nonnull @cold_walk_ops, ptr noundef nonnull %walk_private.i.i103.i) #10
  %101 = ptrtoint ptr %fullmm.i.i.i111.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %bf.load.i7.i.i119.i = load i16, ptr %fullmm.i.i.i111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i7.i.i119.i)
  %tobool.not.i8.i.i120.i = icmp slt i16 %bf.load.i7.i.i119.i, 0
  %102 = and i16 %bf.load.i7.i.i119.i, 15872
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %103 = icmp eq i16 %102, 0
  %or.cond.i.i.i121.i = or i1 %tobool.not.i8.i.i120.i, %103
  br i1 %or.cond.i.i.i121.i, label %tlb_start_vma.exit.i.i122.i.madvise_pageout_page_range.exit.i.i_crit_edge, label %if.end.i.i.i.i123.i

tlb_start_vma.exit.i.i122.i.madvise_pageout_page_range.exit.i.i_crit_edge: ; preds = %tlb_start_vma.exit.i.i122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_pageout_page_range.exit.i.i

if.end.i.i.i.i123.i:                              ; preds = %tlb_start_vma.exit.i.i122.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i7.i.i119.i)
  %104 = icmp ult i16 %bf.load.i7.i.i119.i, 16384
  br i1 %104, label %if.else.i.i.i.i.i127.i, label %if.then.i.i.i.i.i124.i

if.then.i.i.i.i.i124.i:                           ; preds = %if.end.i.i.i.i123.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %tlb.i104.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tlb.i104.i, align 4
  call void @flush_tlb_mm(ptr noundef %106) #10
  br label %tlb_flush.exit.i.i.i.i137.i

if.else.i.i.i.i.i127.i:                           ; preds = %if.end.i.i.i.i123.i
  %107 = ptrtoint ptr %end.i.i.i.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %end.i.i.i.i.i125.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool5.not.i.i.i.i.i126.i = icmp eq i32 %108, 0
  br i1 %tobool5.not.i.i.i.i.i126.i, label %if.else.i.i.i.i.i127.i.tlb_flush.exit.i.i.i.i137.i_crit_edge, label %if.then6.i.i.i.i.i132.i

if.else.i.i.i.i.i127.i.tlb_flush.exit.i.i.i.i137.i_crit_edge: ; preds = %if.else.i.i.i.i.i127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_flush.exit.i.i.i.i137.i

if.then6.i.i.i.i.i132.i:                          ; preds = %if.else.i.i.i.i.i127.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %vma.i.i.i.i.i102.i) #10
  %109 = call ptr @memset(ptr %vma.i.i.i.i.i102.i, i32 0, i32 96)
  %110 = ptrtoint ptr %tlb.i104.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tlb.i104.i, align 4
  %112 = ptrtoint ptr %vm_mm.i.i.i.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %vm_mm.i.i.i.i.i128.i, align 4
  %113 = lshr i16 %bf.load.i7.i.i119.i, 6
  %114 = and i16 %113, 4
  %115 = zext i16 %114 to i32
  %116 = and i16 %bf.load.i7.i.i119.i, 128
  %117 = zext i16 %116 to i32
  %118 = shl nuw nsw i32 %117, 15
  %or.i.i.i.i.i130.i = or i32 %118, %115
  %119 = ptrtoint ptr %vm_flags.i.i.i.i.i129.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or.i.i.i.i.i130.i, ptr %vm_flags.i.i.i.i.i129.i, align 4
  %120 = ptrtoint ptr %start.i.i.i.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %start.i.i.i.i.i131.i, align 4
  call void @flush_tlb_range(ptr noundef nonnull %vma.i.i.i.i.i102.i, i32 noundef %121, i32 noundef %108) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %vma.i.i.i.i.i102.i) #10
  br label %tlb_flush.exit.i.i.i.i137.i

tlb_flush.exit.i.i.i.i137.i:                      ; preds = %if.then6.i.i.i.i.i132.i, %if.else.i.i.i.i.i127.i.tlb_flush.exit.i.i.i.i137.i_crit_edge, %if.then.i.i.i.i.i124.i
  %122 = ptrtoint ptr %tlb.i104.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tlb.i104.i, align 4
  %notifier_subscriptions.i.i.i.i.i.i135.i = getelementptr inbounds %struct.anon, ptr %123, i32 0, i32 49
  %124 = ptrtoint ptr %notifier_subscriptions.i.i.i.i.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %notifier_subscriptions.i.i.i.i.i.i135.i, align 8
  %tobool.i.not.i.i.i.i.i136.i = icmp eq ptr %125, null
  br i1 %tobool.i.not.i.i.i.i.i136.i, label %tlb_flush.exit.i.i.i.i137.i.mmu_notifier_invalidate_range.exit.i.i.i.i145.i_crit_edge, label %if.then.i36.i.i.i.i138.i

tlb_flush.exit.i.i.i.i137.i.mmu_notifier_invalidate_range.exit.i.i.i.i145.i_crit_edge: ; preds = %tlb_flush.exit.i.i.i.i137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmu_notifier_invalidate_range.exit.i.i.i.i145.i

if.then.i36.i.i.i.i138.i:                         ; preds = %tlb_flush.exit.i.i.i.i137.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %end.i.i.i.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %end.i.i.i.i.i125.i, align 4
  %128 = ptrtoint ptr %start.i.i.i.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %start.i.i.i.i.i131.i, align 4
  call void @__mmu_notifier_invalidate_range(ptr noundef %123, i32 noundef %129, i32 noundef %127) #10
  br label %mmu_notifier_invalidate_range.exit.i.i.i.i145.i

mmu_notifier_invalidate_range.exit.i.i.i.i145.i:  ; preds = %if.then.i36.i.i.i.i138.i, %tlb_flush.exit.i.i.i.i137.i.mmu_notifier_invalidate_range.exit.i.i.i.i145.i_crit_edge
  %130 = ptrtoint ptr %fullmm.i.i.i111.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %bf.load.i38.i.i.i.i139.i = load i16, ptr %fullmm.i.i.i111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i38.i.i.i.i139.i)
  %tobool.not.i.i.i.i.i140.i = icmp sgt i16 %bf.load.i38.i.i.i.i139.i, -1
  %spec.select.i.i.i.i.i141.i = select i1 %tobool.not.i.i.i.i.i140.i, i32 -1226833920, i32 -1
  %not.tobool.not.i.i.i.i.i142.i = xor i1 %tobool.not.i.i.i.i.i140.i, true
  %spec.select26.i.i.i.i.i143.i = sext i1 %not.tobool.not.i.i.i.i.i142.i to i32
  %131 = ptrtoint ptr %start.i.i.i.i.i131.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %spec.select.i.i.i.i.i141.i, ptr %start.i.i.i.i.i131.i, align 4
  %132 = ptrtoint ptr %end.i.i.i.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %spec.select26.i.i.i.i.i143.i, ptr %end.i.i.i.i.i125.i, align 4
  %bf.clear14.i.i.i.i.i144.i = and i16 %bf.load.i38.i.i.i.i139.i, -15873
  %133 = ptrtoint ptr %fullmm.i.i.i111.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %bf.clear14.i.i.i.i.i144.i, ptr %fullmm.i.i.i111.i, align 4
  br label %madvise_pageout_page_range.exit.i.i

madvise_pageout_page_range.exit.i.i:              ; preds = %mmu_notifier_invalidate_range.exit.i.i.i.i145.i, %tlb_start_vma.exit.i.i122.i.madvise_pageout_page_range.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walk_private.i.i103.i) #10
  call void @tlb_finish_mmu(ptr noundef nonnull %tlb.i104.i) #10
  br label %madvise_pageout.exit.i

madvise_pageout.exit.i:                           ; preds = %madvise_pageout_page_range.exit.i.i, %can_do_pageout.exit.i.i.madvise_pageout.exit.i_crit_edge, %if.end.i.i.i.madvise_pageout.exit.i_crit_edge, %sw.bb5.i.madvise_pageout.exit.i_crit_edge
  %retval.0.i146.i = phi i32 [ 0, %madvise_pageout_page_range.exit.i.i ], [ -22, %sw.bb5.i.madvise_pageout.exit.i_crit_edge ], [ 0, %can_do_pageout.exit.i.i.madvise_pageout.exit.i_crit_edge ], [ 0, %if.end.i.i.i.madvise_pageout.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tlb.i104.i) #10
  br label %madvise_vma_behavior.exit

sw.bb7.i:                                         ; preds = %if.end11.i.sw.bb7.i_crit_edge, %if.end11.i.sw.bb7.i_crit_edge102
  %call8.i = call fastcc i32 @madvise_dontneed_free(ptr noundef nonnull %vma.084.i, ptr noundef nonnull %prev.i, i32 noundef %start.addr.1.i, i32 noundef %11, i32 noundef %behavior) #10
  br label %madvise_vma_behavior.exit

sw.bb9.i:                                         ; preds = %if.end11.i.sw.bb9.i_crit_edge, %if.end11.i.sw.bb9.i_crit_edge103
  %call10.i = call fastcc i32 @madvise_populate(ptr noundef nonnull %vma.084.i, ptr noundef nonnull %prev.i, i32 noundef %start.addr.1.i, i32 noundef %11, i32 noundef %behavior) #10
  br label %madvise_vma_behavior.exit

sw.bb11.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %and12.i = and i32 %13, -98305
  %134 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %and12.i, ptr %new_flags.i, align 4
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %and14.i = and i32 %13, -98305
  %or.i = or i32 %and14.i, 32768
  %135 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or.i, ptr %new_flags.i, align 4
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %and16.i = and i32 %13, -98305
  %or17.i = or i32 %and16.i, 65536
  %136 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %or17.i, ptr %new_flags.i, align 4
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %or19.i = or i32 %13, 131072
  %137 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or19.i, ptr %new_flags.i, align 4
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end11.i
  %and22.i = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb20.i.madvise_vma_behavior.exit.thread_crit_edge

sw.bb20.i.madvise_vma_behavior.exit.thread_crit_edge: ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_vma_behavior.exit.thread

if.end.i:                                         ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  %and23.i = and i32 %13, -131073
  %138 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %and23.i, ptr %new_flags.i, align 4
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %if.end11.i
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 14
  %139 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %vm_file.i, align 4
  %tobool25.not.i = icmp eq ptr %140, null
  %and27.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %or.cond.i = select i1 %tobool25.not.i, i1 %tobool28.not.i, i1 false
  br i1 %or.cond.i, label %if.end30.i, label %sw.bb24.i.madvise_vma_behavior.exit.thread_crit_edge

sw.bb24.i.madvise_vma_behavior.exit.thread_crit_edge: ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_vma_behavior.exit.thread

if.end30.i:                                       ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #12
  %or31.i = or i32 %13, 33554432
  %141 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or31.i, ptr %new_flags.i, align 4
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %and33.i = and i32 %13, -33554433
  %142 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %and33.i, ptr %new_flags.i, align 4
  br label %sw.epilog.i

sw.bb34.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %or35.i = or i32 %13, 67108864
  %143 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or35.i, ptr %new_flags.i, align 4
  br label %sw.epilog.i

sw.bb36.i:                                        ; preds = %if.end11.i
  %and38.i = and i32 %13, 268715008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %sw.bb36.i.madvise_vma_behavior.exit.thread_crit_edge

sw.bb36.i.madvise_vma_behavior.exit.thread_crit_edge: ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_vma_behavior.exit.thread

if.end41.i:                                       ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #12
  %and42.i = and i32 %13, -67108865
  %144 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %and42.i, ptr %new_flags.i, align 4
  br label %sw.epilog.i

sw.bb43.i:                                        ; preds = %if.end11.i.sw.bb43.i_crit_edge, %if.end11.i.sw.bb43.i_crit_edge104
  %call44.i = call i32 @ksm_madvise(ptr noundef nonnull %vma.084.i, i32 noundef %start.addr.1.i, i32 noundef %11, i32 noundef %behavior, ptr noundef nonnull %new_flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %sw.bb43.i.sw.epilog.i_crit_edge, label %sw.bb43.i.out.i_crit_edge

sw.bb43.i.out.i_crit_edge:                        ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

sw.bb43.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb48.i:                                        ; preds = %if.end11.i.sw.bb48.i_crit_edge, %if.end11.i.sw.bb48.i_crit_edge105
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 419, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb43.i.sw.epilog.i_crit_edge, %if.end41.i, %sw.bb34.i, %sw.bb32.i, %if.end30.i, %if.end.i, %sw.bb18.i, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %if.end11.i.sw.epilog.i_crit_edge
  %vm_mm.i147.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 6
  %145 = ptrtoint ptr %vm_mm.i147.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vm_mm.i147.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %147 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i.i148.i = icmp eq i32 %147, 0
  br i1 %tobool.not.i.i148.i, label %sw.epilog.i.if.end.i.i149.i_crit_edge, label %land.rhs.i.i.i

sw.epilog.i.if.end.i.i149.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i149.i

land.rhs.i.i.i:                                   ; preds = %sw.epilog.i
  %dep_map.i.i.i = getelementptr inbounds %struct.anon, ptr %146, i32 0, i32 15, i32 6
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i149.i_crit_edge, !prof !87

land.rhs.i.i.i.if.end.i.i149.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i149.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 155, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i149.i

if.end.i.i149.i:                                  ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i149.i_crit_edge, %sw.epilog.i.if.end.i.i149.i_crit_edge
  %mmap_lock25.i.i.i = getelementptr inbounds %struct.anon, ptr %146, i32 0, i32 15
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i.i.i, i32 noundef 4) #10
  %148 = ptrtoint ptr %mmap_lock25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %mmap_lock25.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp.i.not.i.i.i = icmp eq i32 %149, 0
  br i1 %cmp.i.not.i.i.i, label %if.then36.i.i.i, label %mmap_assert_locked.exit.i.i, !prof !87

if.then36.i.i.i:                                  ; preds = %if.end.i.i149.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_mm(ptr noundef %146) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

mmap_assert_locked.exit.i.i:                      ; preds = %if.end.i.i149.i
  %vm_file.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 14
  %150 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %vm_file.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %151, null
  br i1 %tobool.not.i.i, label %anon_vma_name.exit.i, label %mmap_assert_locked.exit.i.i.anon_vma_name_get.exit.thread.i_crit_edge

mmap_assert_locked.exit.i.i.anon_vma_name_get.exit.thread.i_crit_edge: ; preds = %mmap_assert_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %anon_vma_name_get.exit.thread.i

anon_vma_name.exit.i:                             ; preds = %mmap_assert_locked.exit.i.i
  %152 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 9
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %tobool.not.i152.i = icmp eq ptr %154, null
  br i1 %tobool.not.i152.i, label %anon_vma_name.exit.i.anon_vma_name_get.exit.thread.i_crit_edge, label %if.then.i.i60

anon_vma_name.exit.i.anon_vma_name_get.exit.thread.i_crit_edge: ; preds = %anon_vma_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %anon_vma_name_get.exit.thread.i

if.then.i.i60:                                    ; preds = %anon_vma_name.exit.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %154, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %154, i32 1, i32 3, i32 1) #10
  %155 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %154, ptr nonnull %154, i32 1, ptr nonnull elementtype(i32) %154) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %155, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i60.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i153.i, !prof !87

if.then.i.i60.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i153.i:                           ; preds = %if.then.i.i60
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %156 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %156)
  %.not.i.i.i.i.i.i = icmp sgt i32 %156, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i153.i.if.then.i157.i_crit_edge, label %if.else.i.i.i.i.i153.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !94

if.else.i.i.i.i.i153.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i153.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i153.i.if.then.i157.i_crit_edge:  ; preds = %if.else.i.i.i.i.i153.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i157.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i153.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i60.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i60.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i153.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %154, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %if.then.i157.i

anon_vma_name_get.exit.thread.i:                  ; preds = %anon_vma_name.exit.i.anon_vma_name_get.exit.thread.i_crit_edge, %mmap_assert_locked.exit.i.i.anon_vma_name_get.exit.thread.i_crit_edge
  %157 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %new_flags.i, align 4
  %call54166.i = call fastcc i32 @madvise_update_vma(ptr noundef nonnull %vma.084.i, ptr noundef nonnull %prev.i, i32 noundef %start.addr.1.i, i32 noundef %11, i32 noundef %158, ptr noundef null) #10
  br label %out.i

if.then.i157.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i153.i.if.then.i157.i_crit_edge
  %159 = ptrtoint ptr %new_flags.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %new_flags.i, align 4
  %call54.i = call fastcc i32 @madvise_update_vma(ptr noundef nonnull %vma.084.i, ptr noundef nonnull %prev.i, i32 noundef %start.addr.1.i, i32 noundef %11, i32 noundef %160, ptr noundef nonnull %154) #10
  %call.i.i.i.i.i.i.i156.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %154, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @llvm.prefetch.p0(ptr nonnull %154, i32 1, i32 3, i32 1) #10
  %161 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %154, ptr nonnull %154, i32 1, ptr nonnull elementtype(i32) %154) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %161, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i157.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i158.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i158.i, label %if.end5.i.i.i.i.i.i.out.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.i.out.i_crit_edge:              ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %154, i32 noundef 3) #10
  br label %out.i

if.then.i.i.i:                                    ; preds = %if.then.i157.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !97
  call void @kfree(ptr noundef nonnull %154) #10
  br label %out.i

out.i:                                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.out.i_crit_edge, %anon_vma_name_get.exit.thread.i, %sw.bb43.i.out.i_crit_edge
  %error.0.i = phi i32 [ %call44.i, %sw.bb43.i.out.i_crit_edge ], [ %call54166.i, %anon_vma_name_get.exit.thread.i ], [ %call54.i, %if.end5.i.i.i.i.i.i.out.i_crit_edge ], [ %call54.i, %if.then10.i.i.i.i.i.i ], [ %call54.i, %if.then.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %error.0.i)
  %cmp.i61 = icmp eq i32 %error.0.i, -12
  br i1 %cmp.i61, label %out.i.madvise_vma_behavior.exit.thread_crit_edge, label %out.i.madvise_vma_behavior.exit_crit_edge

out.i.madvise_vma_behavior.exit_crit_edge:        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_vma_behavior.exit

out.i.madvise_vma_behavior.exit.thread_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_vma_behavior.exit.thread

madvise_vma_behavior.exit.thread:                 ; preds = %out.i.madvise_vma_behavior.exit.thread_crit_edge, %sw.bb36.i.madvise_vma_behavior.exit.thread_crit_edge, %sw.bb24.i.madvise_vma_behavior.exit.thread_crit_edge, %sw.bb20.i.madvise_vma_behavior.exit.thread_crit_edge
  %retval.0.i62.ph = phi i32 [ -22, %sw.bb36.i.madvise_vma_behavior.exit.thread_crit_edge ], [ -22, %sw.bb24.i.madvise_vma_behavior.exit.thread_crit_edge ], [ -22, %sw.bb20.i.madvise_vma_behavior.exit.thread_crit_edge ], [ -11, %out.i.madvise_vma_behavior.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_flags.i) #10
  br label %madvise_walk_vmas.exit

madvise_vma_behavior.exit:                        ; preds = %out.i.madvise_vma_behavior.exit_crit_edge, %sw.bb9.i, %sw.bb7.i, %madvise_pageout.exit.i, %madvise_cold.exit.i, %sw.bb.i
  %retval.0.i62 = phi i32 [ %error.0.i, %out.i.madvise_vma_behavior.exit_crit_edge ], [ %call10.i, %sw.bb9.i ], [ %call8.i, %sw.bb7.i ], [ %retval.0.i146.i, %madvise_pageout.exit.i ], [ %retval.0.i.i, %madvise_cold.exit.i ], [ %call.i59, %sw.bb.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i62)
  %tobool16.not.i = icmp eq i32 %retval.0.i62, 0
  br i1 %tobool16.not.i, label %madvise_vma_behavior.exit.if.end18.i_crit_edge, label %madvise_vma_behavior.exit.madvise_walk_vmas.exit_crit_edge

madvise_vma_behavior.exit.madvise_walk_vmas.exit_crit_edge: ; preds = %madvise_vma_behavior.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit

madvise_vma_behavior.exit.if.end18.i_crit_edge:   ; preds = %madvise_vma_behavior.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %madvise_vma_behavior.exit.if.end18.i_crit_edge, %madvise_vma_behavior.exit.thread74
  %162 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %prev.i, align 4
  %tobool19.not.i = icmp eq ptr %163, null
  br i1 %tobool19.not.i, label %if.end25.i, label %if.end25.thread.i

if.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add7)
  %cmp26.not.i = icmp ult i32 %10, %add7
  br i1 %cmp26.not.i, label %if.else.i, label %if.end25.i.madvise_walk_vmas.exit_crit_edge

if.end25.i.madvise_walk_vmas.exit_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit

if.end25.thread.i:                                ; preds = %if.end18.i
  %vm_end21.i = getelementptr inbounds %struct.vm_area_struct, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %vm_end21.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %vm_end21.i, align 4
  %166 = call i32 @llvm.umax.i32(i32 %11, i32 %165) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %add7)
  %cmp26.not64.i = icmp ult i32 %166, %add7
  br i1 %cmp26.not64.i, label %if.then30.i, label %if.end25.thread.i.madvise_walk_vmas.exit_crit_edge

if.end25.thread.i.madvise_walk_vmas.exit_crit_edge: ; preds = %if.end25.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit

if.then30.i:                                      ; preds = %if.end25.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %163, i32 0, i32 2
  %167 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %vm_next.i, align 4
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %call31.i = call ptr @find_vma(ptr noundef %mm, i32 noundef %11) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then30.i
  %start.addr.3.i = phi i32 [ %11, %if.else.i ], [ %166, %if.then30.i ]
  %vma.2.i = phi ptr [ %call31.i, %if.else.i ], [ %168, %if.then30.i ]
  %tobool1.not.i = icmp eq ptr %vma.2.i, null
  br i1 %tobool1.not.i, label %cleanup.i.madvise_walk_vmas.exit_crit_edge, label %cleanup.i.if.end3.i_crit_edge

cleanup.i.if.end3.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

cleanup.i.madvise_walk_vmas.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_walk_vmas.exit

madvise_walk_vmas.exit:                           ; preds = %cleanup.i.madvise_walk_vmas.exit_crit_edge, %if.end25.thread.i.madvise_walk_vmas.exit_crit_edge, %if.end25.i.madvise_walk_vmas.exit_crit_edge, %madvise_vma_behavior.exit.madvise_walk_vmas.exit_crit_edge, %madvise_vma_behavior.exit.thread, %if.then6.i.madvise_walk_vmas.exit_crit_edge, %if.end21.madvise_walk_vmas.exit_crit_edge
  %retval.2.i = phi i32 [ -12, %if.end21.madvise_walk_vmas.exit_crit_edge ], [ %retval.0.i62.ph, %madvise_vma_behavior.exit.thread ], [ -12, %if.then6.i.madvise_walk_vmas.exit_crit_edge ], [ %unmapped_error.1.i, %if.end25.i.madvise_walk_vmas.exit_crit_edge ], [ %unmapped_error.1.i, %if.end25.thread.i.madvise_walk_vmas.exit_crit_edge ], [ -12, %cleanup.i.madvise_walk_vmas.exit_crit_edge ], [ %retval.0.i62, %madvise_vma_behavior.exit.madvise_walk_vmas.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev.i) #10
  call void @blk_finish_plug(ptr noundef nonnull %plug) #10
  br i1 %tobool15.not70, label %if.else25, label %if.then24

if.then24:                                        ; preds = %madvise_walk_vmas.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@do_madvise, %if.then.i.i55)) #10
          to label %mmap_write_unlock.exit [label %if.then.i.i55], !srcloc !90

if.then.i.i55:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext true) #10
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i55, %if.then24
  %mmap_lock.i56 = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  call void @up_write(ptr noundef %mmap_lock.i56) #10
  br label %cleanup

if.else25:                                        ; preds = %madvise_walk_vmas.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@do_madvise, %if.then.i.i57)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i57], !srcloc !90

if.then.i.i57:                                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i57, %if.else25
  %mmap_lock.i58 = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  call void @up_read(ptr noundef %mmap_lock.i58) #10
  br label %cleanup

cleanup:                                          ; preds = %mmap_read_unlock.exit, %mmap_write_unlock.exit, %mmap_write_lock_killable.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %madvise_behavior_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %madvise_behavior_valid.exit.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ %.mux, %if.end6.cleanup_crit_edge ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ], [ %retval.2.i, %mmap_read_unlock.exit ], [ %retval.2.i, %mmap_write_unlock.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_madvise(i32 noundef %start, i32 noundef %len_in, i32 noundef %behavior) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm.i, align 8
  %call1.i = tail call i32 @do_madvise(ptr noundef %5, i32 noundef %start, i32 noundef %len_in, i32 noundef %behavior) #10
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_process_madvise(i32 noundef %pidfd, i32 noundef %vec, i32 noundef %vlen, i32 noundef %behavior, i32 noundef %flags) #0 align 64 {
entry:
  %iovstack.i = alloca [8 x %struct.iovec], align 4
  %iov.i = alloca ptr, align 4
  %iter.i = alloca %struct.iov_iter, align 8
  %f_flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iovstack.i) #10
  %0 = call ptr @memset(ptr %iovstack.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov.i) #10
  %1 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %iovstack.i, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #10
  %2 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f_flags.i) #10
  %3 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %f_flags.i, align 4, !annotation !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %cmp.not.i = icmp eq i32 %flags, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.__do_sys_process_madvise.exit_crit_edge

entry.__do_sys_process_madvise.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_process_madvise.exit

if.end.i:                                         ; preds = %entry
  %4 = inttoptr i32 %vec to ptr
  %call.i = call i32 @import_iovec(i32 noundef 0, ptr noundef %4, i32 noundef %vlen, i32 noundef 8, ptr noundef nonnull %iov.i, ptr noundef nonnull %iter.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.__do_sys_process_madvise.exit_crit_edge, label %if.end3.i

if.end.i.__do_sys_process_madvise.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_process_madvise.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call ptr @pidfd_get_task(i32 noundef %pidfd, ptr noundef nonnull %f_flags.i) #10
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call4.i to i32
  br label %free_iov.i

if.end8.i:                                        ; preds = %if.end3.i
  %6 = zext i32 %behavior to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %behavior, label %if.end8.i.release_task.i_crit_edge [
    i32 20, label %if.end8.i.if.end11.i_crit_edge
    i32 21, label %if.end8.i.if.end11.i_crit_edge7
    i32 3, label %if.end8.i.if.end11.i_crit_edge8
  ]

if.end8.i.if.end11.i_crit_edge8:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end8.i.if.end11.i_crit_edge7:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end8.i.release_task.i_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_task.i

if.end11.i:                                       ; preds = %if.end8.i.if.end11.i_crit_edge, %if.end8.i.if.end11.i_crit_edge7, %if.end8.i.if.end11.i_crit_edge8
  %call12.i = call ptr @mm_access(ptr noundef %call4.i, i32 noundef 9) #10
  %tobool.not.i.i = icmp eq ptr %call12.i, null
  %cmp.i44.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i44.i
  br i1 %spec.select.i.i, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call12.i to i32
  %spec.select.i = select i1 %cmp.i44.i, i32 %7, i32 -3
  br label %release_task.i

if.end17.i:                                       ; preds = %if.end11.i
  %call18.i = call zeroext i1 @capable(i32 noundef 23) #10
  br i1 %call18.i, label %if.end20.i, label %if.end17.i.release_mm.i_crit_edge

if.end17.i.release_mm.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_mm.i

if.end20.i:                                       ; preds = %if.end17.i
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %iter.i, i32 0, i32 4
  %8 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not53.i = icmp eq i32 %9, 0
  br i1 %tobool.not53.i, label %if.end20.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end20.i
  %10 = getelementptr inbounds %struct.iov_iter, ptr %iter.i, i32 0, i32 5
  %iov_offset.i.i = getelementptr inbounds %struct.iov_iter, ptr %iter.i, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end26.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %11 = phi i32 [ %9, %while.body.lr.ph.i ], [ %.pr.i, %if.end26.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4, !noalias !98
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4, !noalias !98
  %16 = ptrtoint ptr %iov_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iov_offset.i.i, align 4, !noalias !98
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %17
  %iov_len2.i.i = getelementptr inbounds %struct.iovec, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %iov_len2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iov_len2.i.i, align 4, !noalias !98
  %sub.i.i = sub i32 %19, %17
  %20 = call i32 @llvm.umin.i32(i32 %11, i32 %sub.i.i) #10
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  %call23.i = call i32 @do_madvise(ptr noundef %call12.i, i32 noundef %21, i32 noundef %20, i32 noundef %behavior) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %while.body.i.release_mm.i_crit_edge, label %if.end26.i

while.body.i.release_mm.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_mm.i

if.end26.i:                                       ; preds = %while.body.i
  call void @iov_iter_advance(ptr noundef nonnull %iter.i, i32 noundef %20) #10
  %22 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i = load i32, ptr %count.i.i, align 8
  %tobool.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i, label %if.end26.i.while.end.i_crit_edge, label %if.end26.i.while.body.i_crit_edge

if.end26.i.while.body.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end26.i.while.end.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end26.i.while.end.i_crit_edge, %if.end20.i.while.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ %call.i, %if.end20.i.while.end.i_crit_edge ], [ %call23.i, %if.end26.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %cmp28.i = icmp eq i32 %ret.0.lcssa.i, 0
  br i1 %cmp28.i, label %if.then29.i, label %while.end.i.release_mm.i_crit_edge

while.end.i.release_mm.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_mm.i

if.then29.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count.i.i, align 8
  %sub.i = sub i32 %9, %24
  br label %release_mm.i

release_mm.i:                                     ; preds = %if.then29.i, %while.end.i.release_mm.i_crit_edge, %while.body.i.release_mm.i_crit_edge, %if.end17.i.release_mm.i_crit_edge
  %ret.2.i = phi i32 [ %sub.i, %if.then29.i ], [ %ret.0.lcssa.i, %while.end.i.release_mm.i_crit_edge ], [ -1, %if.end17.i.release_mm.i_crit_edge ], [ %call23.i, %while.body.i.release_mm.i_crit_edge ]
  call void @mmput(ptr noundef %call12.i) #10
  br label %release_task.i

release_task.i:                                   ; preds = %release_mm.i, %if.then14.i, %if.end8.i.release_task.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %release_mm.i ], [ -22, %if.end8.i.release_task.i_crit_edge ], [ %spec.select.i, %if.then14.i ]
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %call4.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #10
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %release_task.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.free_iov.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.free_iov.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_iov.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #10
  br label %free_iov.i

if.then.i.i:                                      ; preds = %release_task.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !97
  call void @__put_task_struct(ptr noundef %call4.i) #10
  br label %free_iov.i

free_iov.i:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.free_iov.i_crit_edge, %if.then6.i
  %ret.4.i = phi i32 [ %5, %if.then6.i ], [ %ret.3.i, %if.end5.i.i.i.i.i.free_iov.i_crit_edge ], [ %ret.3.i, %if.then10.i.i.i.i.i ], [ %ret.3.i, %if.then.i.i ]
  %26 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iov.i, align 4
  call void @kfree(ptr noundef %27) #10
  br label %__do_sys_process_madvise.exit

__do_sys_process_madvise.exit:                    ; preds = %free_iov.i, %if.end.i.__do_sys_process_madvise.exit_crit_edge, %entry.__do_sys_process_madvise.exit_crit_edge
  %ret.5.i = phi i32 [ %call.i, %if.end.i.__do_sys_process_madvise.exit_crit_edge ], [ %ret.4.i, %free_iov.i ], [ -22, %entry.__do_sys_process_madvise.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_flags.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iovstack.i) #10
  ret i32 %ret.5.i
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma_prev(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @madvise_update_vma(ptr noundef %vma, ptr nocapture noundef %prev, i32 noundef %start, i32 noundef %end, i32 noundef %new_flags, ptr noundef %anon_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %new_flags)
  %cmp = icmp eq i32 %3, %new_flags
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.if.end.i.i_crit_edge, label %land.rhs.i.i

land.lhs.true.if.end.i.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15, i32 6
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !87

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 155, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %land.lhs.true.if.end.i.i_crit_edge
  %mmap_lock25.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %mmap_lock25.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %mmap_lock25.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.not.i.i, label %if.then36.i.i, label %mmap_assert_locked.exit.i, !prof !87

if.then36.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_mm(ptr noundef %1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

mmap_assert_locked.exit.i:                        ; preds = %if.end.i.i
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %7 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vm_file.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %mmap_assert_locked.exit.i.anon_vma_name.exit_crit_edge

mmap_assert_locked.exit.i.anon_vma_name.exit_crit_edge: ; preds = %mmap_assert_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %anon_vma_name.exit

if.end.i:                                         ; preds = %mmap_assert_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  br label %anon_vma_name.exit

anon_vma_name.exit:                               ; preds = %if.end.i, %mmap_assert_locked.exit.i.anon_vma_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ null, %mmap_assert_locked.exit.i.anon_vma_name.exit_crit_edge ]
  %cmp.i = icmp eq ptr %retval.0.i, %anon_name
  br i1 %cmp.i, label %anon_vma_name.exit.if.then_crit_edge, label %if.end.i86

anon_vma_name.exit.if.then_crit_edge:             ; preds = %anon_vma_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i86:                                       ; preds = %anon_vma_name.exit
  %tobool.not.i85 = icmp eq ptr %retval.0.i, null
  %tobool1.not.i = icmp eq ptr %anon_name, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i85
  br i1 %or.cond.i, label %if.end.i86.if.end_crit_edge, label %anon_vma_name_eq.exit

if.end.i86.if.end_crit_edge:                      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

anon_vma_name_eq.exit:                            ; preds = %if.end.i86
  %name.i = getelementptr inbounds %struct.anon_vma_name, ptr %retval.0.i, i32 0, i32 1
  %name2.i = getelementptr inbounds %struct.anon_vma_name, ptr %anon_name, i32 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %name.i, ptr noundef %name2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %anon_vma_name_eq.exit.if.then_crit_edge, label %anon_vma_name_eq.exit.if.end_crit_edge

anon_vma_name_eq.exit.if.end_crit_edge:           ; preds = %anon_vma_name_eq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

anon_vma_name_eq.exit.if.then_crit_edge:          ; preds = %anon_vma_name_eq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %anon_vma_name_eq.exit.if.then_crit_edge, %anon_vma_name.exit.if.then_crit_edge
  %12 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vma, ptr %prev, align 4
  br label %cleanup

if.end:                                           ; preds = %anon_vma_name_eq.exit.if.end_crit_edge, %if.end.i86.if.end_crit_edge, %entry.if.end_crit_edge
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %13 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_pgoff, align 4
  %15 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vma, align 4
  %sub = sub i32 %start, %16
  %shr = lshr i32 %sub, 12
  %add = add i32 %shr, %14
  %17 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev, align 4
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %19 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %anon_vma, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %21 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vm_file, align 4
  %vm_userfaultfd_ctx = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 17
  %23 = ptrtoint ptr %vm_userfaultfd_ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack = load i32, ptr %vm_userfaultfd_ctx, align 4
  %24 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call2 = tail call ptr @vma_merge(ptr noundef %1, ptr noundef %18, i32 noundef %start, i32 noundef %end, i32 noundef %new_flags, ptr noundef %20, ptr noundef %22, i32 noundef %add, ptr noundef null, [1 x i32] %24, ptr noundef %anon_name) #10
  %25 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call2, ptr %prev, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end4, label %if.end.success_crit_edge

if.end.success_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %success

if.end4:                                          ; preds = %if.end
  %26 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vma, ptr %prev, align 4
  %27 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %start)
  %cmp6.not = icmp eq i32 %28, %start
  br i1 %cmp6.not, label %if.end4.if.end17_crit_edge, label %if.then7

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then7:                                         ; preds = %if.end4
  %map_count = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %map_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_max_map_count to i32))
  %31 = load i32, ptr @sysctl_max_map_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %31)
  %cmp8.not = icmp slt i32 %30, %31
  br i1 %cmp8.not, label %if.end12, label %if.then7.cleanup_crit_edge, !prof !94

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %call13 = tail call i32 @__split_vma(ptr noundef %1, ptr noundef %vma, i32 noundef %start, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %if.end12.if.end17_crit_edge, %if.end4.if.end17_crit_edge
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %32 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %end)
  %cmp18.not = icmp eq i32 %33, %end
  br i1 %cmp18.not, label %if.end17.success_crit_edge, label %if.then19

if.end17.success_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %success

if.then19:                                        ; preds = %if.end17
  %map_count20 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 13
  %34 = ptrtoint ptr %map_count20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %map_count20, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_max_map_count to i32))
  %36 = load i32, ptr @sysctl_max_map_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %36)
  %cmp21.not = icmp slt i32 %35, %36
  br i1 %cmp21.not, label %if.end29, label %if.then19.cleanup_crit_edge, !prof !94

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.then19
  %call30 = tail call i32 @__split_vma(ptr noundef %1, ptr noundef %vma, i32 noundef %end, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.success_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29.success_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %success

success:                                          ; preds = %if.end29.success_crit_edge, %if.end17.success_crit_edge, %if.end.success_crit_edge
  %vma.addr.0 = phi ptr [ %vma, %if.end29.success_crit_edge ], [ %vma, %if.end17.success_crit_edge ], [ %call2, %if.end.success_crit_edge ]
  %vm_flags35 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 8
  %37 = ptrtoint ptr %vm_flags35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %new_flags, ptr %vm_flags35, align 4
  %vm_file36 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 14
  %38 = ptrtoint ptr %vm_file36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vm_file36, align 4
  %tobool37.not = icmp eq ptr %39, null
  br i1 %tobool37.not, label %if.then38, label %success.cleanup_crit_edge

success.cleanup_crit_edge:                        ; preds = %success
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38:                                        ; preds = %success
  %vm_mm.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 6
  %40 = ptrtoint ptr %vm_mm.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vm_mm.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %42 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i, label %if.then38.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i

if.then38.if.end.i.i.i_crit_edge:                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then38
  %dep_map.i.i.i = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 15, i32 6
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i.i_crit_edge, !prof !87

land.rhs.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 155, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i.i_crit_edge, %if.then38.if.end.i.i.i_crit_edge
  %mmap_lock25.i.i.i = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i.i.i, i32 noundef 4) #10
  %43 = ptrtoint ptr %mmap_lock25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %mmap_lock25.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.not.i.i.i = icmp eq i32 %44, 0
  br i1 %cmp.i.not.i.i.i, label %if.then36.i.i.i, label %mmap_assert_locked.exit.i.i, !prof !87

if.then36.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_mm(ptr noundef %41) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

mmap_assert_locked.exit.i.i:                      ; preds = %if.end.i.i.i
  %45 = ptrtoint ptr %vm_file36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vm_file36, align 4
  %tobool.not.i.i88 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i88, label %anon_vma_name.exit.i, label %anon_vma_name.exit.thread.i

anon_vma_name.exit.i:                             ; preds = %mmap_assert_locked.exit.i.i
  %47 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 9
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %tobool.not.i89 = icmp eq ptr %anon_name, null
  br i1 %tobool.not.i89, label %if.then.i, label %if.end.i90

anon_vma_name.exit.thread.i:                      ; preds = %mmap_assert_locked.exit.i.i
  %tobool.not27.i = icmp eq ptr %anon_name, null
  br i1 %tobool.not27.i, label %if.then.thread.i, label %anon_vma_name.exit.thread.i.if.end3.i_crit_edge

anon_vma_name.exit.thread.i.if.end3.i_crit_edge:  ; preds = %anon_vma_name.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.thread.i:                                 ; preds = %anon_vma_name.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 9
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %50, align 4
  br label %cleanup

if.then.i:                                        ; preds = %anon_vma_name.exit.i
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %47, align 4
  %tobool.not.i1.i = icmp eq ptr %49, null
  br i1 %tobool.not.i1.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %49, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr nonnull %49, i32 1, i32 3, i32 1) #10
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %49, ptr nonnull %49, i32 1, ptr nonnull elementtype(i32) %49) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !94

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %49, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !97
  tail call void @kfree(ptr noundef nonnull %49) #10
  br label %cleanup

if.end.i90:                                       ; preds = %anon_vma_name.exit.i
  %cmp.i.i = icmp eq ptr %49, %anon_name
  br i1 %cmp.i.i, label %if.end.i90.cleanup_crit_edge, label %if.end.i4.i

if.end.i90.cleanup_crit_edge:                     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i4.i:                                      ; preds = %if.end.i90
  %tobool.not.i3.i = icmp eq ptr %49, null
  br i1 %tobool.not.i3.i, label %if.end.i4.i.if.end3.i_crit_edge, label %anon_vma_name_eq.exit.i

if.end.i4.i.if.end3.i_crit_edge:                  ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

anon_vma_name_eq.exit.i:                          ; preds = %if.end.i4.i
  %name.i.i = getelementptr inbounds %struct.anon_vma_name, ptr %49, i32 0, i32 1
  %name2.i.i = getelementptr inbounds %struct.anon_vma_name, ptr %anon_name, i32 0, i32 1
  %call.i.i = tail call i32 @strcmp(ptr noundef %name.i.i, ptr noundef %name2.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %anon_vma_name_eq.exit.i.cleanup_crit_edge, label %anon_vma_name_eq.exit.i.if.end3.i_crit_edge

anon_vma_name_eq.exit.i.if.end3.i_crit_edge:      ; preds = %anon_vma_name_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

anon_vma_name_eq.exit.i.cleanup_crit_edge:        ; preds = %anon_vma_name_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %anon_vma_name_eq.exit.i.if.end3.i_crit_edge, %if.end.i4.i.if.end3.i_crit_edge, %anon_vma_name.exit.thread.i.if.end3.i_crit_edge
  %retval.0.i3044.i = phi ptr [ %49, %anon_vma_name_eq.exit.i.if.end3.i_crit_edge ], [ null, %if.end.i4.i.if.end3.i_crit_edge ], [ null, %anon_vma_name.exit.thread.i.if.end3.i_crit_edge ]
  %call.i.i.i.i.i6.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %anon_name, i32 noundef 4) #10
  %54 = ptrtoint ptr %anon_name to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %anon_name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %55)
  %cmp.i7.i = icmp ult i32 %55, 2147483647
  br i1 %cmp.i7.i, label %if.then.i.i11.i, label %if.end.i13.i

if.then.i.i11.i:                                  ; preds = %if.end3.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %anon_name, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %anon_name, i32 1, i32 3, i32 1) #10
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %anon_name, ptr nonnull %anon_name, i32 1, ptr nonnull elementtype(i32) %anon_name) #10, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i10.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i10.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i10.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i11.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !87

if.then.i.i11.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i11.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i10.i, 1
  %57 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.anon_vma_name_reuse.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !94

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.anon_vma_name_reuse.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %anon_vma_name_reuse.exit.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i11.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i11.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %anon_name, i32 noundef %.sink.i.i.i.i.i.i.i) #10
  br label %anon_vma_name_reuse.exit.i

if.end.i13.i:                                     ; preds = %if.end3.i
  %name.i12.i = getelementptr inbounds %struct.anon_vma_name, ptr %anon_name, i32 0, i32 1
  %call.i.i.i91 = tail call i32 @strlen(ptr noundef %name.i12.i) #15
  %add.i.i.i = add i32 %call.i.i.i91, 1
  %spec.select.i.i.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %add.i.i.i, i32 4) #10
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i.i.i.i, i32 noundef 3264) #14
  %tobool.not.i5.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i5.i.i, label %if.end.i13.i.anon_vma_name_reuse.exit.i_crit_edge, label %if.then.i6.i.i

if.end.i13.i.anon_vma_name_reuse.exit.i_crit_edge: ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %anon_vma_name_reuse.exit.i

if.then.i6.i.i:                                   ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i.i, i32 noundef 4) #10
  %58 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 1, ptr %call9.i.i.i.i, align 128
  %name3.i.i.i = getelementptr inbounds %struct.anon_vma_name, ptr %call9.i.i.i.i, i32 0, i32 1
  %59 = call ptr @memcpy(ptr %name3.i.i.i, ptr %name.i12.i, i32 %add.i.i.i)
  br label %anon_vma_name_reuse.exit.i

anon_vma_name_reuse.exit.i:                       ; preds = %if.then.i6.i.i, %if.end.i13.i.anon_vma_name_reuse.exit.i_crit_edge, %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.anon_vma_name_reuse.exit.i_crit_edge
  %retval.0.i14.i = phi ptr [ %anon_name, %if.else.i.i.i.i.i.i.i.anon_vma_name_reuse.exit.i_crit_edge ], [ %anon_name, %if.end15.sink.split.i.i.i.i.i.i.i ], [ null, %if.end.i13.i.anon_vma_name_reuse.exit.i_crit_edge ], [ %call9.i.i.i.i, %if.then.i6.i.i ]
  %60 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 9
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %retval.0.i14.i, ptr %60, align 4
  %tobool.not.i15.i = icmp eq ptr %retval.0.i3044.i, null
  br i1 %tobool.not.i15.i, label %anon_vma_name_reuse.exit.i.cleanup_crit_edge, label %if.then.i19.i

anon_vma_name_reuse.exit.i.cleanup_crit_edge:     ; preds = %anon_vma_name_reuse.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i19.i:                                    ; preds = %anon_vma_name_reuse.exit.i
  %call.i.i.i.i.i.i.i16.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i3044.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr nonnull %retval.0.i3044.i, i32 1, i32 3, i32 1) #10
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %retval.0.i3044.i, ptr nonnull %retval.0.i3044.i, i32 1, ptr nonnull elementtype(i32) %retval.0.i3044.i) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i17.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i17.i)
  %cmp.i.i.i.i.i18.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i17.i, 1
  br i1 %cmp.i.i.i.i.i18.i, label %if.then.i.i23.i, label %if.end5.i.i.i.i.i21.i

if.end5.i.i.i.i.i21.i:                            ; preds = %if.then.i19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i17.i)
  %.not.i.i.i.i.i20.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i17.i, 0
  br i1 %.not.i.i.i.i.i20.i, label %if.end5.i.i.i.i.i21.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i22.i, !prof !94

if.end5.i.i.i.i.i21.i.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i22.i:                          ; preds = %if.end5.i.i.i.i.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %retval.0.i3044.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i23.i:                                  ; preds = %if.then.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !97
  tail call void @kfree(ptr noundef nonnull %retval.0.i3044.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i23.i, %if.then10.i.i.i.i.i22.i, %if.end5.i.i.i.i.i21.i.cleanup_crit_edge, %anon_vma_name_reuse.exit.i.cleanup_crit_edge, %anon_vma_name_eq.exit.i.cleanup_crit_edge, %if.end.i90.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then.thread.i, %success.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %if.then7.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ -12, %if.then19.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ 0, %success.cleanup_crit_edge ], [ 0, %if.then.thread.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ], [ 0, %if.end.i90.cleanup_crit_edge ], [ 0, %anon_vma_name_eq.exit.i.cleanup_crit_edge ], [ 0, %anon_vma_name_reuse.exit.i.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i21.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i22.i ], [ 0, %if.then.i.i23.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_merge(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, [1 x i32], ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__split_vma(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @madvise_remove(ptr noundef %vma, ptr nocapture noundef writeonly %prev, i32 noundef %start, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %prev, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %3 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_flags, align 4
  %and = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %5 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vm_file, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %f_mapping = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_mapping, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end7

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %and9 = and i32 %4, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 10
  br i1 %cmp.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vma, align 4
  %sub = sub i32 %start, %12
  %conv = zext i32 %sub to i64
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %13 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_pgoff, align 4
  %conv12 = zext i32 %14 to i64
  %shl = shl nuw nsw i64 %conv12, 12
  %add = add nuw nsw i64 %shl, %conv
  %f_count.i = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #10, !srcloc !101
  %call13 = tail call zeroext i1 @userfaultfd_remove(ptr noundef %vma, i32 noundef %start, i32 noundef %end) #10
  br i1 %call13, label %if.then14, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@madvise_remove, %if.then.i.i)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i], !srcloc !90

if.then.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i, %if.then14
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i) #10
  br label %if.end15

if.end15:                                         ; preds = %mmap_read_unlock.exit, %if.end11.if.end15_crit_edge
  %sub16 = sub i32 %end, %start
  %conv17 = zext i32 %sub16 to i64
  %call18 = tail call i32 @vfs_fallocate(ptr noundef nonnull %6, i32 noundef 3, i64 noundef %add, i64 noundef %conv17) #10
  tail call void @fput(ptr noundef nonnull %6) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@madvise_remove, %if.then.i.i38)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i38], !srcloc !90

if.then.i.i38:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i38, %if.end15
  %mmap_lock.i39 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i39) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@madvise_remove, %if.then.i3.i)) #10
          to label %cleanup [label %if.then.i3.i], !srcloc !90

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i, %if.end7.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -13, %if.end7.cleanup_crit_edge ], [ %call18, %__mmap_lock_trace_start_locking.exit.i ], [ %call18, %if.then.i3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @madvise_willneed(ptr noundef %vma, ptr nocapture noundef writeonly %prev, i32 noundef %start, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vma, ptr %prev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vm_mm, align 4
  %call = tail call i32 @walk_page_range(ptr noundef %6, i32 noundef %start, i32 noundef %end, ptr noundef nonnull @swapin_walk_ops, ptr noundef %vma) #10
  tail call void @lru_add_drain() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_mapping, align 4
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %a_ops.i, align 4
  %cmp.i = icmp eq ptr %10, @shmem_aops
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @force_shm_swapin_readahead(ptr noundef %vma, i32 noundef %start, i32 noundef %end, ptr noundef %8)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %prev, align 4
  %f_count.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #10, !srcloc !101
  %13 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vma, align 4
  %sub = sub i32 %start, %14
  %conv = zext i32 %sub to i64
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %15 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_pgoff, align 4
  %conv11 = zext i32 %16 to i64
  %shl = shl nuw nsw i64 %conv11, 12
  %add = add nuw nsw i64 %shl, %conv
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@madvise_willneed, %if.then.i.i)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i], !srcloc !90

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i, %if.end5
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i) #10
  %sub12 = sub i32 %end, %start
  %conv13 = zext i32 %sub12 to i64
  %call14 = tail call i32 @vfs_fadvise(ptr noundef nonnull %3, i64 noundef %add, i64 noundef %conv13, i32 noundef 3) #10
  tail call void @fput(ptr noundef nonnull %3) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@madvise_willneed, %if.then.i.i1)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i1], !srcloc !90

if.then.i.i1:                                     ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i1, %mmap_read_unlock.exit
  tail call void @down_read(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@madvise_willneed, %if.then.i3.i)) #10
          to label %cleanup [label %if.then.i3.i], !srcloc !90

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @madvise_dontneed_free(ptr noundef %vma, ptr nocapture noundef writeonly %prev, i32 noundef %start, i32 noundef %end, i32 noundef %behavior) unnamed_addr #0 align 64 {
entry:
  %vma.i.i.i.i = alloca %struct.vm_area_struct, align 4
  %range.i = alloca %struct.mmu_notifier_range, align 4
  %tlb.i = alloca %struct.mmu_gather, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %vma, ptr %prev, align 4
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %3 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %4, 4203520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @userfaultfd_remove(ptr noundef %vma, i32 noundef %start, i32 noundef %end) #10
  br i1 %call1, label %if.end.if.end37_crit_edge, label %if.then2

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then2:                                         ; preds = %if.end
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %prev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@madvise_dontneed_free, %if.then.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !90

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then2
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@madvise_dontneed_free, %if.then.i3.i)) #10
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !90

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call3 = tail call ptr @find_vma(ptr noundef %1, i32 noundef %start) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %mmap_read_lock.exit.cleanup_crit_edge, label %if.end5

mmap_read_lock.exit.cleanup_crit_edge:            ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %mmap_read_lock.exit
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %start)
  %cmp = icmp ugt i32 %7, %start
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %vm_flags.i68 = getelementptr inbounds %struct.vm_area_struct, ptr %call3, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags.i68 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags.i68, align 4
  %and.i69 = and i32 %9, 4203520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i70, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %end)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %start)
  %cmp15.not = icmp ugt i32 %12, %start
  br i1 %cmp15.not, label %if.end10.if.end37_crit_edge, label %do.end, !prof !94

if.end10.if.end37_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 822, i32 noundef 9, ptr noundef null) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.end10.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %end.addr.1 = phi i32 [ %end, %if.end.if.end37_crit_edge ], [ %12, %do.end ], [ %12, %if.end10.if.end37_crit_edge ]
  %vma.addr.0 = phi ptr [ %vma, %if.end.if.end37_crit_edge ], [ %call3, %do.end ], [ %call3, %if.end10.if.end37_crit_edge ]
  %13 = zext i32 %behavior to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %behavior, label %if.end37.cleanup_crit_edge [
    i32 4, label %if.then39
    i32 8, label %if.then42
  ]

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %end.addr.1, %start
  tail call void @zap_page_range(ptr noundef %vma.addr.0, i32 noundef %start, i32 noundef %sub.i) #10
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 6
  %14 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vm_mm.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range.i) #10
  %16 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i, i32 0, i32 2
  %18 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i, i32 0, i32 3
  %19 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i, i32 0, i32 4
  %20 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i, i32 0, i32 5
  %21 = getelementptr inbounds i8, ptr %range.i, i32 24
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tlb.i) #10
  %23 = call ptr @memset(ptr %tlb.i, i32 255, i32 68)
  %vm_ops.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 12
  %24 = ptrtoint ptr %vm_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vm_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i, label %if.then42.madvise_free_single_vma.exit_crit_edge

if.then42.madvise_free_single_vma.exit_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_free_single_vma.exit

if.end.i:                                         ; preds = %if.then42
  %26 = ptrtoint ptr %vma.addr.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vma.addr.0, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %start) #10
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 1
  %29 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp2.not.i = icmp ult i32 %28, %30
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.madvise_free_single_vma.exit_crit_edge

if.end.i.madvise_free_single_vma.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_free_single_vma.exit

if.end4.i:                                        ; preds = %if.end.i
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %end.addr.1) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %27)
  %cmp14.not.i = icmp ugt i32 %31, %27
  br i1 %cmp14.not.i, label %if.end16.i, label %if.end4.i.madvise_free_single_vma.exit_crit_edge

if.end4.i.madvise_free_single_vma.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %madvise_free_single_vma.exit

if.end16.i:                                       ; preds = %if.end4.i
  %32 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vma.addr.0, ptr %range.i, align 4
  %33 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %20, align 4
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %15, ptr %16, align 4
  %35 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %28, ptr %17, align 4
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %31, ptr %18, align 4
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %19, align 4
  tail call void @lru_add_drain() #10
  call void @tlb_gather_mmu(ptr noundef nonnull %tlb.i, ptr noundef %15) #10
  %rss_stat.i.i.i.i = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 40
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i.i.i, i32 noundef 4) #10
  %38 = ptrtoint ptr %rss_stat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %rss_stat.i.i.i.i, align 4
  %40 = call i32 @llvm.smax.i32(i32 %39, i32 0) #10
  %arrayidx.i.i.i.i = getelementptr %struct.anon, ptr %15, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i.i, i32 noundef 4) #10
  %41 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %43 = call i32 @llvm.smax.i32(i32 %42, i32 0) #10
  %add.i.i.i = add nuw i32 %43, %40
  %arrayidx.i9.i.i.i = getelementptr %struct.anon, ptr %15, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i.i.i, i32 noundef 4) #10
  %44 = ptrtoint ptr %arrayidx.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i9.i.i.i, align 4
  %46 = call i32 @llvm.smax.i32(i32 %45, i32 0) #10
  %add3.i.i.i = add i32 %add.i.i.i, %46
  %hiwater_rss.i.i = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 17
  %47 = ptrtoint ptr %hiwater_rss.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hiwater_rss.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add3.i.i.i)
  %cmp.i.i = icmp ult i32 %48, %add3.i.i.i
  br i1 %cmp.i.i, label %if.then.i.i71, label %if.end16.i.update_hiwater_rss.exit.i_crit_edge

if.end16.i.update_hiwater_rss.exit.i_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_hiwater_rss.exit.i

if.then.i.i71:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %hiwater_rss.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add3.i.i.i, ptr %hiwater_rss.i.i, align 8
  br label %update_hiwater_rss.exit.i

update_hiwater_rss.exit.i:                        ; preds = %if.then.i.i71, %if.end16.i.update_hiwater_rss.exit.i_crit_edge
  call fastcc void @mmu_notifier_invalidate_range_start(ptr noundef nonnull %range.i) #10
  %fullmm.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i, i32 0, i32 3
  %50 = ptrtoint ptr %fullmm.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i.i = load i16, ptr %fullmm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i41.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i41.i, label %if.end.i.i, label %update_hiwater_rss.exit.i.tlb_start_vma.exit.i_crit_edge

update_hiwater_rss.exit.i.tlb_start_vma.exit.i_crit_edge: ; preds = %update_hiwater_rss.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_start_vma.exit.i

if.end.i.i:                                       ; preds = %update_hiwater_rss.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %vm_flags.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0, i32 0, i32 8
  %51 = ptrtoint ptr %vm_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vm_flags.i.i.i, align 4
  %53 = trunc i32 %52 to i16
  %54 = shl i16 %53, 6
  %bf.shl4.i.i.i = and i16 %54, 256
  %bf.clear5.i.i.i = and i16 %bf.load.i.i, -385
  %bf.set6.i.i.i = or i16 %bf.shl4.i.i.i, %bf.clear5.i.i.i
  %55 = ptrtoint ptr %fullmm.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %bf.set6.i.i.i, ptr %fullmm.i.i, align 4
  %56 = ptrtoint ptr %vma.addr.0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vma.addr.0, align 4
  %58 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vm_end.i, align 4
  call void @flush_cache_range(ptr noundef %vma.addr.0, i32 noundef %57, i32 noundef %59) #10
  br label %tlb_start_vma.exit.i

tlb_start_vma.exit.i:                             ; preds = %if.end.i.i, %update_hiwater_rss.exit.i.tlb_start_vma.exit.i_crit_edge
  %60 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vm_mm.i, align 4
  %62 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %17, align 4
  %64 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %18, align 4
  %call22.i = call i32 @walk_page_range(ptr noundef %61, i32 noundef %63, i32 noundef %65, ptr noundef nonnull @madvise_free_walk_ops, ptr noundef nonnull %tlb.i) #10
  %66 = ptrtoint ptr %fullmm.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load.i43.i = load i16, ptr %fullmm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i43.i)
  %tobool.not.i44.i = icmp slt i16 %bf.load.i43.i, 0
  %67 = and i16 %bf.load.i43.i, 15872
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %68 = icmp eq i16 %67, 0
  %or.cond.i.i = or i1 %tobool.not.i44.i, %68
  br i1 %or.cond.i.i, label %tlb_start_vma.exit.i.tlb_end_vma.exit.i_crit_edge, label %if.end.i.i.i

tlb_start_vma.exit.i.tlb_end_vma.exit.i_crit_edge: ; preds = %tlb_start_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_end_vma.exit.i

if.end.i.i.i:                                     ; preds = %tlb_start_vma.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i43.i)
  %69 = icmp ult i16 %bf.load.i43.i, 16384
  br i1 %69, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %tlb.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tlb.i, align 4
  call void @flush_tlb_mm(ptr noundef %71) #10
  br label %tlb_flush.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %end.i.i.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i, i32 0, i32 2
  %72 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %end.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool5.not.i.i.i.i = icmp eq i32 %73, 0
  br i1 %tobool5.not.i.i.i.i, label %if.else.i.i.i.i.tlb_flush.exit.i.i.i_crit_edge, label %if.then6.i.i.i.i

if.else.i.i.i.i.tlb_flush.exit.i.i.i_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tlb_flush.exit.i.i.i

if.then6.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %vma.i.i.i.i) #10
  %74 = call ptr @memset(ptr %vma.i.i.i.i, i32 0, i32 96)
  %vm_mm.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.i.i.i.i, i32 0, i32 6
  %75 = ptrtoint ptr %tlb.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tlb.i, align 4
  %77 = ptrtoint ptr %vm_mm.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %vm_mm.i.i.i.i, align 4
  %vm_flags.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.i.i.i.i, i32 0, i32 8
  %78 = lshr i16 %bf.load.i43.i, 6
  %79 = and i16 %78, 4
  %80 = zext i16 %79 to i32
  %81 = and i16 %bf.load.i43.i, 128
  %82 = zext i16 %81 to i32
  %83 = shl nuw nsw i32 %82, 15
  %or.i.i.i.i = or i32 %83, %80
  %84 = ptrtoint ptr %vm_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or.i.i.i.i, ptr %vm_flags.i.i.i.i, align 4
  %start.i.i.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i, i32 0, i32 1
  %85 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %start.i.i.i.i, align 4
  call void @flush_tlb_range(ptr noundef nonnull %vma.i.i.i.i, i32 noundef %86, i32 noundef %73) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %vma.i.i.i.i) #10
  br label %tlb_flush.exit.i.i.i

tlb_flush.exit.i.i.i:                             ; preds = %if.then6.i.i.i.i, %if.else.i.i.i.i.tlb_flush.exit.i.i.i_crit_edge, %if.then.i.i.i.i
  %87 = ptrtoint ptr %tlb.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tlb.i, align 4
  %start.i.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i, i32 0, i32 1
  %end.i.i.i = getelementptr inbounds %struct.mmu_gather, ptr %tlb.i, i32 0, i32 2
  %notifier_subscriptions.i.i.i.i.i = getelementptr inbounds %struct.anon, ptr %88, i32 0, i32 49
  %89 = ptrtoint ptr %notifier_subscriptions.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %notifier_subscriptions.i.i.i.i.i, align 8
  %tobool.i.not.i.i.i.i = icmp eq ptr %90, null
  br i1 %tobool.i.not.i.i.i.i, label %tlb_flush.exit.i.i.i.mmu_notifier_invalidate_range.exit.i.i.i_crit_edge, label %if.then.i36.i.i.i

tlb_flush.exit.i.i.i.mmu_notifier_invalidate_range.exit.i.i.i_crit_edge: ; preds = %tlb_flush.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmu_notifier_invalidate_range.exit.i.i.i

if.then.i36.i.i.i:                                ; preds = %tlb_flush.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %end.i.i.i, align 4
  %93 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %start.i.i.i, align 4
  call void @__mmu_notifier_invalidate_range(ptr noundef %88, i32 noundef %94, i32 noundef %92) #10
  br label %mmu_notifier_invalidate_range.exit.i.i.i

mmu_notifier_invalidate_range.exit.i.i.i:         ; preds = %if.then.i36.i.i.i, %tlb_flush.exit.i.i.i.mmu_notifier_invalidate_range.exit.i.i.i_crit_edge
  %95 = ptrtoint ptr %fullmm.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load.i38.i.i.i = load i16, ptr %fullmm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i38.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i16 %bf.load.i38.i.i.i, -1
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1226833920, i32 -1
  %not.tobool.not.i.i.i.i = xor i1 %tobool.not.i.i.i.i, true
  %spec.select26.i.i.i.i = sext i1 %not.tobool.not.i.i.i.i to i32
  %96 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %spec.select.i.i.i.i, ptr %start.i.i.i, align 4
  %97 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %spec.select26.i.i.i.i, ptr %end.i.i.i, align 4
  %bf.clear14.i.i.i.i = and i16 %bf.load.i38.i.i.i, -15873
  %98 = ptrtoint ptr %fullmm.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %bf.clear14.i.i.i.i, ptr %fullmm.i.i, align 4
  br label %tlb_end_vma.exit.i

tlb_end_vma.exit.i:                               ; preds = %mmu_notifier_invalidate_range.exit.i.i.i, %tlb_start_vma.exit.i.tlb_end_vma.exit.i_crit_edge
  %99 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %19, align 4
  %and.i.i.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %tlb_end_vma.exit.i.if.end.i45.i_crit_edge, label %do.body.i.i

tlb_end_vma.exit.i.if.end.i45.i_crit_edge:        ; preds = %tlb_end_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i45.i

do.body.i.i:                                      ; preds = %tlb_end_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 482) #10
  br label %if.end.i45.i

if.end.i45.i:                                     ; preds = %do.body.i.i, %tlb_end_vma.exit.i.if.end.i45.i_crit_edge
  %101 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %16, align 4
  %notifier_subscriptions.i.i.i = getelementptr inbounds %struct.anon, ptr %102, i32 0, i32 49
  %103 = ptrtoint ptr %notifier_subscriptions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %notifier_subscriptions.i.i.i, align 8
  %tobool.i8.not.i.i = icmp eq ptr %104, null
  br i1 %tobool.i8.not.i.i, label %if.end.i45.i.mmu_notifier_invalidate_range_end.exit.i_crit_edge, label %if.then4.i.i

if.end.i45.i.mmu_notifier_invalidate_range_end.exit.i_crit_edge: ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmu_notifier_invalidate_range_end.exit.i

if.then4.i.i:                                     ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %range.i, i1 noundef zeroext false) #10
  br label %mmu_notifier_invalidate_range_end.exit.i

mmu_notifier_invalidate_range_end.exit.i:         ; preds = %if.then4.i.i, %if.end.i45.i.mmu_notifier_invalidate_range_end.exit.i_crit_edge
  call void @tlb_finish_mmu(ptr noundef nonnull %tlb.i) #10
  br label %madvise_free_single_vma.exit

madvise_free_single_vma.exit:                     ; preds = %mmu_notifier_invalidate_range_end.exit.i, %if.end4.i.madvise_free_single_vma.exit_crit_edge, %if.end.i.madvise_free_single_vma.exit_crit_edge, %if.then42.madvise_free_single_vma.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %mmu_notifier_invalidate_range_end.exit.i ], [ -22, %if.then42.madvise_free_single_vma.exit_crit_edge ], [ -22, %if.end.i.madvise_free_single_vma.exit_crit_edge ], [ -22, %if.end4.i.madvise_free_single_vma.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tlb.i) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range.i) #10
  br label %cleanup

cleanup:                                          ; preds = %madvise_free_single_vma.exit, %if.then39, %if.end37.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %mmap_read_lock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then39 ], [ %retval.0.i, %madvise_free_single_vma.exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %mmap_read_lock.exit.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @madvise_populate(ptr noundef %vma, ptr nocapture noundef writeonly %prev, i32 noundef %start, i32 noundef %end, i32 noundef %behavior) unnamed_addr #0 align 64 {
entry:
  %locked = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %behavior)
  %cmp = icmp eq i32 %behavior, 23
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locked) #10
  %2 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %locked, align 4
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vma, ptr %prev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp164 = icmp ult i32 %start, %end
  br i1 %cmp164, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %while.body.lr.ph
  %vma.addr.068 = phi ptr [ %vma, %while.body.lr.ph ], [ %vma.addr.2, %if.end37.while.body_crit_edge ]
  %start.addr.065 = phi i32 [ %start, %while.body.lr.ph ], [ %add, %if.end37.while.body_crit_edge ]
  %tobool.not = icmp eq ptr %vma.addr.068, null
  br i1 %tobool.not, label %while.body.if.then_crit_edge, label %lor.lhs.false

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.068, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.065, i32 %5)
  %cmp2.not = icmp ult i32 %start.addr.065, %5
  br i1 %cmp2.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %while.body.if.then_crit_edge
  %call = call ptr @find_vma(ptr noundef %1, i32 noundef %start.addr.065) #10
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.then
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.065, i32 %7)
  %cmp5 = icmp ult i32 %start.addr.065, %7
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false4.if.end7_crit_edge

lor.lhs.false4.if.end7_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4.if.end7_crit_edge, %lor.lhs.false.if.end7_crit_edge
  %vma.addr.1 = phi ptr [ %call, %lor.lhs.false4.if.end7_crit_edge ], [ %vma.addr.068, %lor.lhs.false.if.end7_crit_edge ]
  %vm_end8 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.1, i32 0, i32 1
  %8 = ptrtoint ptr %vm_end8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end8, align 4
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 %end)
  %call11 = call i32 @faultin_vma_page_range(ptr noundef nonnull %vma.addr.1, i32 noundef %start.addr.065, i32 noundef %10, i1 noundef zeroext %cmp, ptr noundef nonnull %locked) #10
  %11 = ptrtoint ptr %locked to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %if.then13, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@madvise_populate, %if.then.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !90

if.then.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then13
  call void @down_read(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@madvise_populate, %if.then.i3.i)) #10
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !90

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %13 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %locked, align 4
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %prev, align 4
  br label %if.end14

if.end14:                                         ; preds = %mmap_read_lock.exit, %if.end7.if.end14_crit_edge
  %vma.addr.2 = phi ptr [ %vma.addr.1, %if.end7.if.end14_crit_edge ], [ null, %mmap_read_lock.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp15 = icmp slt i32 %call11, 0
  br i1 %cmp15, label %if.then16, label %if.end37

if.then16:                                        ; preds = %if.end14
  %15 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call11, label %land.end [
    i32 -4, label %if.then16.cleanup_crit_edge
    i32 -22, label %if.then16.cleanup_crit_edge71
    i32 -133, label %if.then16.cleanup_crit_edge72
    i32 -14, label %if.then16.cleanup_crit_edge73
    i32 -12, label %if.then16.sw.bb36_crit_edge
  ]

if.then16.sw.bb36_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

if.then16.cleanup_crit_edge73:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.cleanup_crit_edge72:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.cleanup_crit_edge71:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.end:                                         ; preds = %if.then16
  %.b63 = load i1, ptr @madvise_populate.__already_done, align 1
  br i1 %.b63, label %land.end.sw.bb36_crit_edge, label %if.then25, !prof !94

land.end.sw.bb36_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

if.then25:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @madvise_populate.__already_done, align 1
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %call11) #16
  br label %sw.bb36

sw.bb36:                                          ; preds = %if.then25, %land.end.sw.bb36_crit_edge, %if.then16.sw.bb36_crit_edge
  br label %cleanup

if.end37:                                         ; preds = %if.end14
  %mul = shl i32 %call11, 12
  %add = add i32 %mul, %start.addr.065
  %cmp1 = icmp ult i32 %add, %end
  br i1 %cmp1, label %if.end37.while.body_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %if.end37.cleanup_crit_edge, %sw.bb36, %if.then16.cleanup_crit_edge, %if.then16.cleanup_crit_edge71, %if.then16.cleanup_crit_edge72, %if.then16.cleanup_crit_edge73, %lor.lhs.false4.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %sw.bb36 ], [ %call11, %if.then16.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call11, %if.then16.cleanup_crit_edge71 ], [ %call11, %if.then16.cleanup_crit_edge72 ], [ %call11, %if.then16.cleanup_crit_edge73 ], [ -12, %lor.lhs.false4.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locked) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksm_madvise(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @userfaultfd_remove(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @force_shm_swapin_readahead(ptr nocapture noundef readonly %vma, i32 noundef %start, i32 noundef %end, ptr noundef %mapping) unnamed_addr #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #10
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1
  %6 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %i_pages, ptr %xas, align 4
  %7 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %start, %8
  %shr.i = lshr i32 %sub.i, 12
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %9 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_pgoff.i, align 4
  %add.i = add i32 %shr.i, %10
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %1, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 3 to ptr), ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %5, align 4
  %sub = add i32 %end, 4095
  %sub.i28 = sub i32 %sub, %8
  %shr.i29 = lshr i32 %sub.i28, 12
  %add.i31 = add i32 %shr.i29, %10
  %16 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call2 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %add.i31) #10
  %tobool.not59 = icmp eq ptr %call2, null
  br i1 %tobool.not59, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %xas_next_entry.exit.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %page.060 = phi ptr [ %retval.0.i, %xas_next_entry.exit.for.body_crit_edge ], [ %call2, %rcu_read_lock.exit.for.body_crit_edge ]
  %20 = ptrtoint ptr %page.060 to i32
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @xas_pause(ptr noundef nonnull %xas) #10
  %call.i32 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i32, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %if.end
  %call1.i33 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  %21 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i39 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i40, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %shr.i.i = lshr i32 %20, 1
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %shr.i.i, 0
  %call6 = call ptr @read_swap_cache_async([1 x i32] %.fca.0.insert, i32 noundef 17829066, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %rcu_read_unlock.exit.if.end9_crit_edge, label %if.then8

rcu_read_unlock.exit.if.end9_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %rcu_read_unlock.exit
  %25 = getelementptr inbounds %struct.page, ptr %call6, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !94

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %call6 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !87

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.7) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !104
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !105
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !106
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@force_shm_swapin_readahead, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !90

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %29, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end9_crit_edge

folio_put_testzero.exit.i.i.if.end9_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %29) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end9_crit_edge, %rcu_read_unlock.exit.if.end9_crit_edge
  %34 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i17 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %add.i.i.i19 = add i32 %37, 1
  store volatile i32 %add.i.i.i19, ptr %preempt_count.i.i.i.i18, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i20 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i20, label %if.end9.cleanup_crit_edge, label %land.lhs.true.i23

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i23:                                ; preds = %if.end9
  %call1.i21 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.cleanup_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.cleanup_crit_edge:              ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.cleanup_crit_edge, label %if.then.i26

land.lhs.true2.i25.cleanup_crit_edge:             ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i26, %land.lhs.true2.i25.cleanup_crit_edge, %land.lhs.true.i23.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i.i41 = and i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i41)
  %tobool.not.i.i42 = icmp ne i32 %and.i.i41, 0
  %tobool1.not.i.i = icmp eq ptr %39, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i42
  br i1 %spec.select.i.i, label %cleanup.cleanup.sink.split.i_crit_edge, label %lor.lhs.false.i, !prof !87

cleanup.cleanup.sink.split.i_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %cleanup
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i43 = icmp eq i8 %42, 0
  br i1 %tobool.not.i43, label %lor.rhs.i, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, !prof !94

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %2, align 2
  %conv2.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %0, align 4
  %and.i44 = and i32 %46, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i44, i32 %conv2.i)
  %cmp.not.i = icmp eq i32 %and.i44, %conv2.i
  br i1 %cmp.not.i, label %lor.rhs.i.do.body.i_crit_edge, label %lor.rhs.i.cleanup.sink.split.i_crit_edge, !prof !94

lor.rhs.i.cleanup.sink.split.i_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

lor.rhs.i.do.body.i_crit_edge:                    ; preds = %lor.rhs.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end44.i.do.body.i_crit_edge, %lor.rhs.i.do.body.i_crit_edge
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add.i31)
  %cmp8.not.i = icmp ult i32 %48, %add.i31
  br i1 %cmp8.not.i, label %if.end18.i, label %do.body.i.cleanup.sink.split.i_crit_edge, !prof !94

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %do.body.i
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %50)
  %cmp21.i = icmp eq i8 %50, 63
  br i1 %cmp21.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %if.end31.i, !prof !87

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end31.i:                                       ; preds = %if.end18.i
  %conv20.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xas, align 4
  %add.i45 = add nuw nsw i32 %conv20.i, 1
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %39, i32 0, i32 7, i32 %add.i45
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon.3, ptr %52, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i73.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i73.i, label %lor.lhs.false.i.i, label %if.end31.i.xa_entry.exit.i_crit_edge

if.end31.i.xa_entry.exit.i_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xa_entry.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end31.i
  %call4.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xa_entry.exit.i_crit_edge

lor.lhs.false.i.i.xa_entry.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xa_entry.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xa_entry.exit.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xa_entry.exit.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xa_entry.exit.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xa_entry.exit.i_crit_edge, label %if.then.i.i46

land.lhs.true8.i.i.xa_entry.exit.i_crit_edge:     ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xa_entry.exit.i

if.then.i.i46:                                    ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 1183, ptr noundef nonnull @.str.12) #10
  br label %xa_entry.exit.i

xa_entry.exit.i:                                  ; preds = %if.then.i.i46, %land.lhs.true8.i.i.xa_entry.exit.i_crit_edge, %land.lhs.true.i.i.xa_entry.exit.i_crit_edge, %lor.lhs.false.i.i.xa_entry.exit.i_crit_edge, %if.end31.i.xa_entry.exit.i_crit_edge
  %55 = ptrtoint ptr %54 to i32
  %and.i74.i = and i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i74.i)
  %cmp.i.i = icmp eq i32 %and.i74.i, 2
  br i1 %cmp.i.i, label %xa_entry.exit.i.cleanup.sink.split.i_crit_edge, label %if.end44.i, !prof !87

xa_entry.exit.i.cleanup.sink.split.i_crit_edge:   ; preds = %xa_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end44.i:                                       ; preds = %xa_entry.exit.i
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %2, align 2
  %inc.i = add i8 %57, 1
  store i8 %inc.i, ptr %2, align 2
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %0, align 4
  %inc47.i = add i32 %59, 1
  store i32 %inc47.i, ptr %0, align 4
  %tobool48.not.i = icmp eq ptr %54, null
  br i1 %tobool48.not.i, label %if.end44.i.do.body.i_crit_edge, label %if.end44.i.xas_next_entry.exit_crit_edge

if.end44.i.xas_next_entry.exit_crit_edge:         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xas_next_entry.exit

if.end44.i.do.body.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

cleanup.sink.split.i:                             ; preds = %xa_entry.exit.i.cleanup.sink.split.i_crit_edge, %if.end18.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge, %lor.rhs.i.cleanup.sink.split.i_crit_edge, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %cleanup.cleanup.sink.split.i_crit_edge
  %call43.i = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %add.i31) #10
  br label %xas_next_entry.exit

xas_next_entry.exit:                              ; preds = %cleanup.sink.split.i, %if.end44.i.xas_next_entry.exit_crit_edge
  %retval.0.i = phi ptr [ %call43.i, %cleanup.sink.split.i ], [ %54, %if.end44.i.xas_next_entry.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xas_next_entry.exit.for.end_crit_edge, label %xas_next_entry.exit.for.body_crit_edge

xas_next_entry.exit.for.body_crit_edge:           ; preds = %xas_next_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

xas_next_entry.exit.for.end_crit_edge:            ; preds = %xas_next_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %xas_next_entry.exit.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i47 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i47, label %for.end.rcu_read_unlock.exit57_crit_edge, label %land.lhs.true.i50

for.end.rcu_read_unlock.exit57_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit57

land.lhs.true.i50:                                ; preds = %for.end
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit57_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit57_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit57

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit57_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit57_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit57

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit57

rcu_read_unlock.exit57:                           ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit57_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit57_crit_edge, %for.end.rcu_read_unlock.exit57_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  %60 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i54 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i56 = add i32 %63, -1
  store volatile i32 %sub.i.i.i56, ptr %preempt_count.i.i.i.i55, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @lru_add_drain() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fadvise(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swapin_walk_pmd_entry(ptr noundef %pmd, i32 noundef %start, i32 noundef %end, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup40_crit_edge, label %lor.lhs.false.i

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

lor.lhs.false.i:                                  ; preds = %entry
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %for.cond.preheader, label %if.then6.i, !prof !94

for.cond.preheader:                               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp.not66 = icmp eq i32 %start, %end
  br i1 %cmp.not66, label %for.cond.preheader.cleanup40_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup40_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %shr.i61 = lshr i32 %start, 12
  %and.i62 = and i32 %shr.i61, 511
  br label %for.body

if.then6.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pmd_clear_bad(ptr noundef %pmd) #10
  br label %cleanup40

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %index.067 = phi i32 [ %start, %for.body.lr.ph ], [ %add, %cleanup.for.body_crit_edge ]
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
  %11 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %15 = tail call i32 @llvm.read_register.i32(metadata !77) #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #10
  %add.ptr5 = getelementptr i32, ptr %call.i.i, i32 %and.i62
  tail call void @_raw_spin_lock(ptr noundef %9) #10
  %sub6 = sub i32 %index.067, %start
  %div60 = lshr i32 %sub6, 12
  %add.ptr7 = getelementptr i32, ptr %add.ptr5, i32 %div60
  %21 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr7, align 4
  tail call void @_raw_spin_unlock(ptr noundef %9) #10
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %23 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i1.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 213
  %27 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %29 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %and14 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp ne i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not = icmp eq i32 %22, 0
  %or.cond = or i1 %tobool19.not, %tobool15.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %if.end21

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %for.body
  %shr3.i = lshr i32 %22, 7
  %33 = shl i32 %22, 24
  %shl.i.i = and i32 %33, 2080374784
  %or.i.i = or i32 %shl.i.i, %shr3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265920, i32 %or.i.i)
  %cmp.i = icmp ult i32 %or.i.i, 2013265920
  br i1 %cmp.i, label %if.end31, label %if.end21.cleanup_crit_edge, !prof !94

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %or.i.i, 0
  %call33 = tail call ptr @read_swap_cache_async([1 x i32] %.fca.0.insert, i32 noundef 17829066, ptr noundef %1, i32 noundef %index.067, i1 noundef zeroext false) #10
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %if.then35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end31
  %34 = getelementptr inbounds %struct.page, ptr %call33, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !94

if.then.i.i:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i63 = add i32 %36, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call33 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i63, %if.then.i.i ], [ %37, %if.end.i.i ]
  %38 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %39 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i.i.i = icmp eq i32 %40, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !87

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.7) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !104
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !106
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@swapin_walk_pmd_entry, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !90

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %38, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %38) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %add = add i32 %index.067, 4096
  %cmp.not = icmp eq i32 %add, %end
  br i1 %cmp.not, label %cleanup.cleanup40_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.cleanup40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

cleanup40:                                        ; preds = %cleanup.cleanup40_crit_edge, %if.then6.i, %for.cond.preheader.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_swap_cache_async([1 x i32], i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madvise_cold_or_pageout_pte_range(ptr nocapture noundef readonly %pmd, i32 noundef %addr, i32 noundef %end, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  %page_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %0 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pageout3 = getelementptr inbounds %struct.madvise_walk_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pageout3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pageout3, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %vma5 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %8 = ptrtoint ptr %vma5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vma5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %page_list) #10
  %10 = getelementptr inbounds %struct.list_head, ptr %page_list, i32 0, i32 1
  %11 = ptrtoint ptr %page_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %page_list, ptr %page_list, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %page_list, ptr %10, align 4
  %13 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stack.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

fatal_signal_pending.exit:                        ; preds = %entry
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 116, i32 1
  %21 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %signal.i.i, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.not = icmp eq i32 %23, 0
  br i1 %tobool7.not, label %fatal_signal_pending.exit.if.end_crit_edge, label %fatal_signal_pending.exit.cleanup_crit_edge

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fatal_signal_pending.exit.if.end_crit_edge:       ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pmd, align 4
  %shr.i = lshr i32 %26, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %27
  %ptl.i.i = getelementptr %struct.page, ptr %24, i32 %sub.i, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %24, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %30 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %30, 512
  %31 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %35 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i1.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 213
  %39 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %40, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #10
  %shr.i225 = lshr i32 %addr, 12
  %and.i226 = and i32 %shr.i225, 511
  %add.ptr11 = getelementptr i32, ptr %call.i.i, i32 %and.i226
  call void @_raw_spin_lock(ptr noundef %29) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 %end)
  %cmp247 = icmp ult i32 %addr, %end
  br i1 %cmp247, label %for.body.lr.ph, label %if.end.do.body131_crit_edge

if.end.do.body131_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

for.body.lr.ph:                                   ; preds = %if.end
  %start.i.i = getelementptr inbounds %struct.mmu_gather, ptr %3, i32 0, i32 1
  %end.i.i = getelementptr inbounds %struct.mmu_gather, ptr %3, i32 0, i32 2
  %cleared_ptes.i = getelementptr inbounds %struct.mmu_gather, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.addr.0251 = phi i32 [ %addr, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %pte.0248 = phi ptr [ %add.ptr11, %for.body.lr.ph ], [ %incdec.ptr127, %for.inc.for.body_crit_edge ]
  %41 = ptrtoint ptr %pte.0248 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pte.0248, align 4
  %and15 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %if.end21

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %call22 = call ptr @vm_normal_page(ptr noundef %9, i32 noundef %addr.addr.0251, i32 noundef %42) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.for.inc_crit_edge, label %if.end25

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end25:                                         ; preds = %if.end21
  %43 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %call22, align 4
  %45 = and i32 %44, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i227 = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i227, label %PageCompound.exit.i, label %if.end25.if.then.i229_crit_edge

if.end25.if.then.i229_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i229

PageCompound.exit.i:                              ; preds = %if.end25
  %46 = getelementptr inbounds %struct.page, ptr %call22, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i228 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i228, label %if.end.i, label %PageCompound.exit.i.if.then.i229_crit_edge, !prof !94

PageCompound.exit.i.if.then.i229_crit_edge:       ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i229

if.then.i229:                                     ; preds = %PageCompound.exit.i.if.then.i229_crit_edge, %if.end25.if.then.i229_crit_edge
  %call3.i = call i32 @__page_mapcount(ptr noundef nonnull %call22) #10
  br label %page_mapcount.exit

if.end.i:                                         ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = getelementptr inbounds %struct.page, ptr %call22, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %49, i32 noundef 4) #10
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %add.i = add i32 %51, 1
  br label %page_mapcount.exit

page_mapcount.exit:                               ; preds = %if.end.i, %if.then.i229
  %retval.0.i = phi i32 [ %call3.i, %if.then.i229 ], [ %add.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp75.not = icmp eq i32 %retval.0.i, 1
  br i1 %cmp75.not, label %do.body78, label %page_mapcount.exit.for.inc_crit_edge

page_mapcount.exit.for.inc_crit_edge:             ; preds = %page_mapcount.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body78:                                        ; preds = %page_mapcount.exit
  %and95 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %do.body78.if.end113_crit_edge, label %if.then104

do.body78.if.end113_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then104:                                       ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %pte.0248 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pte.0248, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %54 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i = getelementptr inbounds %struct.processor, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %set_pte_ext.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_pte_ext.i.i, align 4
  call void %56(ptr noundef %pte.0248, i32 noundef 0, i32 noundef 0) #10
  %and.i.i230 = and i32 %53, -3
  call void @set_pte_at(ptr noundef %7, i32 noundef %addr.addr.0251, ptr noundef %pte.0248, i32 noundef %and.i.i230) #10
  %57 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %start.i.i, align 4
  %59 = call i32 @llvm.umin.i32(i32 %58, i32 %addr.addr.0251) #10
  %60 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %start.i.i, align 4
  %61 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %end.i.i, align 4
  %add.i.i = add i32 %addr.addr.0251, 4096
  %63 = call i32 @llvm.umax.i32(i32 %62, i32 %add.i.i) #10
  %64 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %end.i.i, align 4
  %65 = ptrtoint ptr %cleared_ptes.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i = load i16, ptr %cleared_ptes.i, align 4
  %bf.set.i = or i16 %bf.load.i, 4096
  store i16 %bf.set.i, ptr %cleared_ptes.i, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then104, %do.body78.if.end113_crit_edge
  %66 = getelementptr inbounds %struct.page, ptr %call22, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %and.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !94

if.then.i.i:                                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %68, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %call22 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %69, %if.end.i.i ]
  %70 = inttoptr i32 %retval.0.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.i.not.i = icmp eq i32 %72, -1
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %66, align 4
  %and.i12.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !87

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !94

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i14.i = add i32 %74, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %call22 to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %75, %if.end.i16.i ]
  %76 = inttoptr i32 %retval.0.i17.i to ptr
  call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.18) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !94

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i21.i = add i32 %74, -1
  br label %ClearPageReferenced.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %call22 to i32
  br label %ClearPageReferenced.exit

ClearPageReferenced.exit:                         ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %77, %if.end.i23.i ]
  %78 = inttoptr i32 %retval.0.i24.i to ptr
  call void @_clear_bit(i32 noundef 1, ptr noundef %78) #10
  %79 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %66, align 4
  %and.i.i231 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i231)
  %tobool.not.i.i232 = icmp eq i32 %and.i.i231, 0
  br i1 %tobool.not.i.i232, label %if.end.i.i235, label %if.then.i.i234, !prof !94

if.then.i.i234:                                   ; preds = %ClearPageReferenced.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i233 = add i32 %80, -1
  br label %_compound_head.exit.i238

if.end.i.i235:                                    ; preds = %ClearPageReferenced.exit
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %call22 to i32
  br label %_compound_head.exit.i238

_compound_head.exit.i238:                         ; preds = %if.end.i.i235, %if.then.i.i234
  %retval.0.i.i236 = phi i32 [ %sub.i.i233, %if.then.i.i234 ], [ %81, %if.end.i.i235 ]
  %82 = inttoptr i32 %retval.0.i.i236 to ptr
  %call.i.i237 = call ptr @lookup_page_ext(ptr noundef %82) #10
  %tobool.not.i1.i = icmp eq ptr %call.i.i237, null
  br i1 %tobool.not.i1.i, label %_compound_head.exit.i238.test_and_clear_page_young.exit_crit_edge, label %if.end.i2.i, !prof !87

_compound_head.exit.i238.test_and_clear_page_young.exit_crit_edge: ; preds = %_compound_head.exit.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_and_clear_page_young.exit

if.end.i2.i:                                      ; preds = %_compound_head.exit.i238
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i.i = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef nonnull %call.i.i237) #10
  br label %test_and_clear_page_young.exit

test_and_clear_page_young.exit:                   ; preds = %if.end.i2.i, %_compound_head.exit.i238.test_and_clear_page_young.exit_crit_edge
  br i1 %tobool.not, label %if.else125, label %if.then116

if.then116:                                       ; preds = %test_and_clear_page_young.exit
  %call117 = call i32 @isolate_lru_page(ptr noundef nonnull %call22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then119, label %if.then116.for.inc_crit_edge

if.then116.for.inc_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then119:                                       ; preds = %if.then116
  %83 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %66, align 4
  %and.i.i215 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i215)
  %tobool.not.i.i216 = icmp eq i32 %and.i.i215, 0
  br i1 %tobool.not.i.i216, label %if.end.i.i219, label %if.then.i.i218, !prof !94

if.then.i.i218:                                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i217 = add i32 %84, -1
  br label %_compound_head.exit.i222

if.end.i.i219:                                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %call22 to i32
  br label %_compound_head.exit.i222

_compound_head.exit.i222:                         ; preds = %if.end.i.i219, %if.then.i.i218
  %retval.0.i.i220 = phi i32 [ %sub.i.i217, %if.then.i.i218 ], [ %85, %if.end.i.i219 ]
  %86 = inttoptr i32 %retval.0.i.i220 to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp.i.not.i221 = icmp eq i32 %88, -1
  %89 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %66, align 4
  %and.i13.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i221, label %if.then.i223, label %do.end8.i224, !prof !87

if.then.i223:                                     ; preds = %_compound_head.exit.i222
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !94

if.then.i16.i:                                    ; preds = %if.then.i223
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i15.i = add i32 %90, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i223
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %call22 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %91, %if.end.i17.i ]
  %92 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %92, ptr noundef nonnull @.str.18) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #10, !srcloc !114
  unreachable

do.end8.i224:                                     ; preds = %_compound_head.exit.i222
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !94

if.then.i23.i:                                    ; preds = %do.end8.i224
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i22.i = add i32 %90, -1
  br label %PageUnevictable.exit

if.end.i24.i:                                     ; preds = %do.end8.i224
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %call22 to i32
  br label %PageUnevictable.exit

PageUnevictable.exit:                             ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %93, %if.end.i24.i ]
  %94 = inttoptr i32 %retval.0.i25.i to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %94, align 4
  %97 = and i32 %96, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool121.not = icmp eq i32 %97, 0
  br i1 %tobool121.not, label %if.else, label %if.then122

if.then122:                                       ; preds = %PageUnevictable.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @putback_lru_page(ptr noundef nonnull %call22) #10
  br label %for.inc

if.else:                                          ; preds = %PageUnevictable.exit
  %98 = ptrtoint ptr %page_list to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %page_list, align 4
  %call.i.i239 = call zeroext i1 @__list_add_valid(ptr noundef %66, ptr noundef nonnull %page_list, ptr noundef %99) #10
  br i1 %call.i.i239, label %if.end.i.i240, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i240:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %66, ptr %prev1.i.i, align 4
  %101 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %99, ptr %66, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %call22, i32 0, i32 1, i32 0, i32 0, i32 1
  %102 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %page_list, ptr %prev3.i.i, align 4
  %103 = ptrtoint ptr %page_list to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %66, ptr %page_list, align 4
  br label %for.inc

if.else125:                                       ; preds = %test_and_clear_page_young.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @deactivate_page(ptr noundef nonnull %call22) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else125, %if.end.i.i240, %if.else.for.inc_crit_edge, %if.then122, %if.then116.for.inc_crit_edge, %page_mapcount.exit.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr127 = getelementptr i32, ptr %pte.0248, i32 1
  %add = add i32 %addr.addr.0251, 4096
  %cmp = icmp ult i32 %add, %end
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body131_crit_edge

for.inc.do.body131_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body131:                                       ; preds = %for.inc.do.body131_crit_edge, %if.end.do.body131_crit_edge
  call void @_raw_spin_unlock(ptr noundef %29) #10
  call void @kunmap_local_indexed(ptr noundef %add.ptr11) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %104 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i1.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 213
  %108 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %109, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %110 = call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i241 = add i32 %113, -1
  store volatile i32 %sub.i.i241, ptr %preempt_count.i.i.i, align 4
  br i1 %tobool.not, label %do.body131.if.end143_crit_edge, label %if.then141

do.body131.if.end143_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then141:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  %call142 = call i32 @reclaim_pages(ptr noundef nonnull %page_list) #10
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %do.body131.if.end143_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.14, i32 noundef 482, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %fatal_signal_pending.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end143 ], [ -4, %fatal_signal_pending.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %page_list) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_lru_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_lru_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reclaim_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_mm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zap_page_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmu_notifier_invalidate_range_start(ptr noundef %range) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 454) #10
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start, %__here) to i32)) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here4

if.then:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 4
  %call3 = tail call i32 @__mmu_notifier_invalidate_range_start(ptr noundef %range) #10
  br label %__here4

__here4:                                          ; preds = %if.then, %__here.__here4_crit_edge
  tail call void @lock_release(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start, %__here4) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_invalidate_range_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madvise_free_pte_range(ptr nocapture noundef readonly %pmd, i32 noundef %addr, i32 noundef %end, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %vma2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %4 = ptrtoint ptr %vma2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vma2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pmd, align 4
  %shr.i = lshr i32 %8, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %9
  %ptl.i.i = getelementptr %struct.page, ptr %6, i32 %sub.i, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %6, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %12, 512
  %13 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i310 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i310 to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %17 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i1.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 213
  %21 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %22, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #10
  %shr.i311 = lshr i32 %addr, 12
  %and.i = and i32 %shr.i311, 511
  %add.ptr13 = getelementptr i32, ptr %call.i.i, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 %end)
  %cmp.not364 = icmp eq i32 %addr, %end
  br i1 %cmp.not364, label %entry.do.body168_crit_edge, label %for.body.lr.ph

entry.do.body168_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body168

for.body.lr.ph:                                   ; preds = %entry
  %start.i.i = getelementptr inbounds %struct.mmu_gather, ptr %1, i32 0, i32 1
  %end.i.i = getelementptr inbounds %struct.mmu_gather, ptr %1, i32 0, i32 2
  %cleared_ptes.i = getelementptr inbounds %struct.mmu_gather, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.addr.0371 = phi i32 [ %addr, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %pte.0368 = phi ptr [ %add.ptr13, %for.body.lr.ph ], [ %incdec.ptr156, %for.inc.for.body_crit_edge ]
  %nr_swap.0365 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_swap.2, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %pte.0368 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pte.0368, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not = icmp eq i32 %24, 0
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %cond.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cond.true:                                        ; preds = %for.body
  %and17 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then22, label %if.end33

if.then22:                                        ; preds = %cond.true
  %shr3.i = lshr i32 %24, 7
  %25 = shl i32 %24, 24
  %shl.i.i = and i32 %25, 2080374784
  %or.i.i = or i32 %shl.i.i, %shr3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265920, i32 %or.i.i)
  %cmp.i = icmp ult i32 %or.i.i, 2013265920
  br i1 %cmp.i, label %if.end30, label %if.then22.for.inc_crit_edge

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end30:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %or.i.i, 0
  %dec = add i32 %nr_swap.0365, -1
  %call32 = tail call i32 @free_swap_and_cache([1 x i32] %.fca.0.insert) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %26 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i = getelementptr inbounds %struct.processor, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %set_pte_ext.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_pte_ext.i, align 4
  tail call void %28(ptr noundef %pte.0368, i32 noundef 0, i32 noundef 0) #10
  br label %for.inc

if.end33:                                         ; preds = %cond.true
  %call34 = tail call ptr @vm_normal_page(ptr noundef %5, i32 noundef %addr.addr.0371, i32 noundef %24) #10
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.for.inc_crit_edge, label %if.end37

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end37:                                         ; preds = %if.end33
  %29 = getelementptr inbounds %struct.page, ptr %call34, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !94

if.then.i.i:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %31, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %call34 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %32, %if.end.i.i ]
  %33 = inttoptr i32 %retval.0.i.i to ptr
  %34 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !94

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !115
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %33, align 4
  %40 = and i32 %39, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.lor.lhs.false_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.lor.lhs.false_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !94

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !115
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %33, align 4
  %46 = and i32 %45, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.i.not = icmp eq i32 %46, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.lor.lhs.false_crit_edge, label %PageSwapCache.exit.if.then105_crit_edge

PageSwapCache.exit.if.then105_crit_edge:          ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then105

PageSwapCache.exit.lor.lhs.false_crit_edge:       ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %PageSwapCache.exit.lor.lhs.false_crit_edge, %folio_test_swapbacked.exit.i.i.lor.lhs.false_crit_edge
  %47 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %29, align 4
  %and.i.i274 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i274)
  %tobool.not.i.i275 = icmp eq i32 %and.i.i274, 0
  br i1 %tobool.not.i.i275, label %if.end.i.i278, label %if.then.i.i277, !prof !94

if.then.i.i277:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i276 = add i32 %48, -1
  br label %_compound_head.exit.i280

if.end.i.i278:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %call34 to i32
  br label %_compound_head.exit.i280

_compound_head.exit.i280:                         ; preds = %if.end.i.i278, %if.then.i.i277
  %retval.0.i.i279 = phi i32 [ %sub.i.i276, %if.then.i.i277 ], [ %49, %if.end.i.i278 ]
  %50 = inttoptr i32 %retval.0.i.i279 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp.i.not.i = icmp eq i32 %52, -1
  %53 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %29, align 4
  %and.i13.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !87

if.then.i:                                        ; preds = %_compound_head.exit.i280
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !94

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i15.i = add i32 %54, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %call34 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %55, %if.end.i17.i ]
  %56 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #10, !srcloc !116
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i280
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !94

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i22.i = add i32 %54, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %call34 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %57, %if.end.i24.i ]
  %58 = inttoptr i32 %retval.0.i25.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  %61 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool104.not = icmp eq i32 %61, 0
  br i1 %tobool104.not, label %PageDirty.exit.cond.true120_crit_edge, label %PageDirty.exit.if.then105_crit_edge

PageDirty.exit.if.then105_crit_edge:              ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then105

PageDirty.exit.cond.true120_crit_edge:            ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true120

if.then105:                                       ; preds = %PageDirty.exit.if.then105_crit_edge, %PageSwapCache.exit.if.then105_crit_edge
  %62 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %29, align 4
  %and.i.i312 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i312)
  %tobool.not.i.i313 = icmp eq i32 %and.i.i312, 0
  br i1 %tobool.not.i.i313, label %if.end.i.i316, label %if.then.i.i315, !prof !94

if.then.i.i315:                                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i314 = add i32 %63, -1
  br label %_compound_head.exit.i320

if.end.i.i316:                                    ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %call34 to i32
  br label %_compound_head.exit.i320

_compound_head.exit.i320:                         ; preds = %if.end.i.i316, %if.then.i.i315
  %retval.0.i.i317 = phi i32 [ %sub.i.i314, %if.then.i.i315 ], [ %64, %if.end.i.i316 ]
  %65 = inttoptr i32 %retval.0.i.i317 to ptr
  %66 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %and.i.i.i.i318 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i318)
  %tobool.not.i.i.i319 = icmp eq i32 %and.i.i.i.i318, 0
  br i1 %tobool.not.i.i.i319, label %folio_flags.exit.i.i323, label %if.then.i.i.i321, !prof !94

if.then.i.i.i321:                                 ; preds = %_compound_head.exit.i320
  call void @__sanitizer_cov_trace_pc() #12
  %69 = inttoptr i32 %retval.0.i.i317 to ptr
  tail call void @dump_page(ptr noundef %69, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !115
  unreachable

folio_flags.exit.i.i323:                          ; preds = %_compound_head.exit.i320
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %65, i32 noundef 4) #10
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %65, align 4
  %and.i.i4.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i322 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i322, label %trylock_page.exit, label %folio_flags.exit.i.i323.for.inc_crit_edge

folio_flags.exit.i.i323.for.inc_crit_edge:        ; preds = %folio_flags.exit.i.i323
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i323
  tail call void @llvm.prefetch.p0(ptr %65, i32 1, i32 3, i32 1) #10
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #10, !srcloc !117
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %72, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool107.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool107.not.not, label %if.end109, label %trylock_page.exit.for.inc_crit_edge

trylock_page.exit.for.inc_crit_edge:              ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end109:                                        ; preds = %trylock_page.exit
  %73 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %call34, align 4
  %75 = and i32 %74, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i.i324 = icmp eq i32 %75, 0
  br i1 %tobool.not.i.i324, label %PageCompound.exit.i, label %if.end109.if.then.i325_crit_edge

if.end109.if.then.i325_crit_edge:                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i325

PageCompound.exit.i:                              ; preds = %if.end109
  %76 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %29, align 4
  %and.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %PageCompound.exit.i.if.then.i325_crit_edge, !prof !94

PageCompound.exit.i.if.then.i325_crit_edge:       ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i325

if.then.i325:                                     ; preds = %PageCompound.exit.i.if.then.i325_crit_edge, %if.end109.if.then.i325_crit_edge
  %call3.i = tail call i32 @__page_mapcount(ptr noundef nonnull %call34) #10
  br label %page_mapcount.exit

if.end.i:                                         ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = getelementptr inbounds %struct.page, ptr %call34, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %78, i32 noundef 4) #10
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %add.i = add i32 %80, 1
  br label %page_mapcount.exit

page_mapcount.exit:                               ; preds = %if.end.i, %if.then.i325
  %retval.0.i = phi i32 [ %call3.i, %if.then.i325 ], [ %add.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp111.not = icmp eq i32 %retval.0.i, 1
  br i1 %cmp111.not, label %if.end113, label %if.then112

if.then112:                                       ; preds = %page_mapcount.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_page(ptr noundef nonnull %call34) #10
  br label %for.inc

if.end113:                                        ; preds = %page_mapcount.exit
  %81 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %29, align 4
  %and.i.i281 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i281)
  %tobool.not.i.i282 = icmp eq i32 %and.i.i281, 0
  br i1 %tobool.not.i.i282, label %if.end.i.i285, label %if.then.i.i284, !prof !94

if.then.i.i284:                                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i283 = add i32 %82, -1
  br label %_compound_head.exit.i289

if.end.i.i285:                                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %call34 to i32
  br label %_compound_head.exit.i289

_compound_head.exit.i289:                         ; preds = %if.end.i.i285, %if.then.i.i284
  %retval.0.i.i286 = phi i32 [ %sub.i.i283, %if.then.i.i284 ], [ %83, %if.end.i.i285 ]
  %84 = inttoptr i32 %retval.0.i.i286 to ptr
  %85 = getelementptr inbounds %struct.page, ptr %84, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %85, align 4
  %and.i.i.i.i.i287 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i287)
  %tobool.not.i.i.i.i288 = icmp eq i32 %and.i.i.i.i.i287, 0
  br i1 %tobool.not.i.i.i.i288, label %folio_test_swapbacked.exit.i.i292, label %if.then.i.i.i.i290, !prof !94

if.then.i.i.i.i290:                               ; preds = %_compound_head.exit.i289
  call void @__sanitizer_cov_trace_pc() #12
  %88 = inttoptr i32 %retval.0.i.i286 to ptr
  tail call void @dump_page(ptr noundef %88, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !115
  unreachable

folio_test_swapbacked.exit.i.i292:                ; preds = %_compound_head.exit.i289
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %84, align 4
  %91 = and i32 %90, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.i.not.i.i291 = icmp eq i32 %91, 0
  br i1 %tobool.i.not.i.i291, label %folio_test_swapbacked.exit.i.i292.if.end118_crit_edge, label %land.rhs.i.i295

folio_test_swapbacked.exit.i.i292.if.end118_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

land.rhs.i.i295:                                  ; preds = %folio_test_swapbacked.exit.i.i292
  %92 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %85, align 4
  %and.i.i.i.i293 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i293)
  %tobool.not.i.i.i294 = icmp eq i32 %and.i.i.i.i293, 0
  br i1 %tobool.not.i.i.i294, label %PageSwapCache.exit299, label %if.then.i.i.i296, !prof !94

if.then.i.i.i296:                                 ; preds = %land.rhs.i.i295
  call void @__sanitizer_cov_trace_pc() #12
  %94 = inttoptr i32 %retval.0.i.i286 to ptr
  tail call void @dump_page(ptr noundef %94, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !115
  unreachable

PageSwapCache.exit299:                            ; preds = %land.rhs.i.i295
  %95 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %84, align 4
  %97 = and i32 %96, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.i.i297.not = icmp eq i32 %97, 0
  br i1 %tobool.i.i297.not, label %PageSwapCache.exit299.if.end118_crit_edge, label %land.lhs.true

PageSwapCache.exit299.if.end118_crit_edge:        ; preds = %PageSwapCache.exit299
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

land.lhs.true:                                    ; preds = %PageSwapCache.exit299
  %call115 = tail call i32 @try_to_free_swap(ptr noundef nonnull %call34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then117, label %land.lhs.true.if.end118_crit_edge

land.lhs.true.if.end118_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then117:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_page(ptr noundef nonnull %call34) #10
  br label %for.inc

if.end118:                                        ; preds = %land.lhs.true.if.end118_crit_edge, %PageSwapCache.exit299.if.end118_crit_edge, %folio_test_swapbacked.exit.i.i292.if.end118_crit_edge
  %98 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %29, align 4
  %and.i.i300 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i300)
  %tobool.not.i.i301 = icmp eq i32 %and.i.i300, 0
  br i1 %tobool.not.i.i301, label %if.end.i.i304, label %if.then.i.i303, !prof !94

if.then.i.i303:                                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i302 = add i32 %99, -1
  br label %_compound_head.exit.i307

if.end.i.i304:                                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %call34 to i32
  br label %_compound_head.exit.i307

_compound_head.exit.i307:                         ; preds = %if.end.i.i304, %if.then.i.i303
  %retval.0.i.i305 = phi i32 [ %sub.i.i302, %if.then.i.i303 ], [ %100, %if.end.i.i304 ]
  %101 = inttoptr i32 %retval.0.i.i305 to ptr
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %cmp.i.not.i306 = icmp eq i32 %103, -1
  %104 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %29, align 4
  %and.i12.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i306, label %if.then.i308, label %do.end8.i309, !prof !87

if.then.i308:                                     ; preds = %_compound_head.exit.i307
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !94

if.then.i15.i:                                    ; preds = %if.then.i308
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i14.i = add i32 %105, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i308
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %call34 to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %106, %if.end.i16.i ]
  %107 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %107, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #10, !srcloc !119
  unreachable

do.end8.i309:                                     ; preds = %_compound_head.exit.i307
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !94

if.then.i22.i:                                    ; preds = %do.end8.i309
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i21.i = add i32 %105, -1
  br label %ClearPageDirty.exit

if.end.i23.i:                                     ; preds = %do.end8.i309
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %call34 to i32
  br label %ClearPageDirty.exit

ClearPageDirty.exit:                              ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %108, %if.end.i23.i ]
  %109 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %109) #10
  tail call void @unlock_page(ptr noundef nonnull %call34) #10
  br label %cond.true120

cond.true120:                                     ; preds = %ClearPageDirty.exit, %PageDirty.exit.cond.true120_crit_edge
  %110 = and i32 %24, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %cond.true120.if.end155_crit_edge, label %if.then141

cond.true120.if.end155_crit_edge:                 ; preds = %cond.true120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end155

if.then141:                                       ; preds = %cond.true120
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %pte.0368 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pte.0368, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %114 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i = getelementptr inbounds %struct.processor, ptr %114, i32 0, i32 9
  %115 = ptrtoint ptr %set_pte_ext.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %set_pte_ext.i.i, align 4
  tail call void %116(ptr noundef %pte.0368, i32 noundef 0, i32 noundef 0) #10
  %and.i.i327 = and i32 %113, -67
  tail call void @set_pte_at(ptr noundef %3, i32 noundef %addr.addr.0371, ptr noundef %pte.0368, i32 noundef %and.i.i327) #10
  %117 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %start.i.i, align 4
  %119 = tail call i32 @llvm.umin.i32(i32 %118, i32 %addr.addr.0371) #10
  %120 = ptrtoint ptr %start.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %start.i.i, align 4
  %121 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %end.i.i, align 4
  %add.i.i = add i32 %addr.addr.0371, 4096
  %123 = tail call i32 @llvm.umax.i32(i32 %122, i32 %add.i.i) #10
  %124 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %end.i.i, align 4
  %125 = ptrtoint ptr %cleared_ptes.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load.i = load i16, ptr %cleared_ptes.i, align 4
  %bf.set.i = or i16 %bf.load.i, 4096
  store i16 %bf.set.i, ptr %cleared_ptes.i, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then141, %cond.true120.if.end155_crit_edge
  tail call void @mark_page_lazyfree(ptr noundef nonnull %call34) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end155, %if.then117, %if.then112, %trylock_page.exit.for.inc_crit_edge, %folio_flags.exit.i.i323.for.inc_crit_edge, %if.end33.for.inc_crit_edge, %if.end30, %if.then22.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %nr_swap.2 = phi i32 [ %nr_swap.0365, %if.then112 ], [ %nr_swap.0365, %if.end155 ], [ %nr_swap.0365, %if.then117 ], [ %nr_swap.0365, %trylock_page.exit.for.inc_crit_edge ], [ %nr_swap.0365, %if.end33.for.inc_crit_edge ], [ %nr_swap.0365, %for.body.for.inc_crit_edge ], [ %dec, %if.end30 ], [ %nr_swap.0365, %if.then22.for.inc_crit_edge ], [ %nr_swap.0365, %folio_flags.exit.i.i323.for.inc_crit_edge ]
  %incdec.ptr156 = getelementptr i32, ptr %pte.0368, i32 1
  %add = add i32 %addr.addr.0371, 4096
  %cmp.not = icmp eq i32 %add, %end
  br i1 %cmp.not, label %out, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

out:                                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_swap.2)
  %tobool157.not = icmp eq i32 %nr_swap.2, 0
  br i1 %tobool157.not, label %out.do.body168_crit_edge, label %if.then158

out.do.body168_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body168

if.then158:                                       ; preds = %out
  %126 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i328 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i328 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %task, align 8
  %mm160 = getelementptr inbounds %struct.task_struct, ptr %129, i32 0, i32 53
  %130 = ptrtoint ptr %mm160 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mm160, align 8
  %cmp161 = icmp eq ptr %131, %3
  br i1 %cmp161, label %if.then162, label %if.then158.if.end163_crit_edge

if.then158.if.end163_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then162:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sync_mm_rss(ptr noundef %3) #10
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %if.then158.if.end163_crit_edge
  %arrayidx.i = getelementptr %struct.anon, ptr %3, i32 0, i32 40, i32 0, i32 2
  %call.i.i.i329 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #10
  %132 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 %nr_swap.2, ptr elementtype(i32) %arrayidx.i) #10, !srcloc !121
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %132, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @mm_trace_rss_stat(ptr noundef %3, i32 noundef 2, i32 noundef %asmresult.i.i.i.i.i) #10
  br label %do.body168

do.body168:                                       ; preds = %if.end163, %out.do.body168_crit_edge, %entry.do.body168_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %11) #10
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr13) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %133 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i1.i = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 213
  %137 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %138, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %139 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i330 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i330 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i331 = add i32 %142, -1
  store volatile i32 %sub.i.i331, ptr %preempt_count.i.i.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.14, i32 noundef 705, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_swap_and_cache([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_lazyfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range_end(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @faultin_vma_page_range(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_get_task(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mm_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/madvise.c", i32 1372, i32 1}
!2 = !{ptr @event_enter__madvise, !1, !"event_enter__madvise", i1 false, i1 false}
!3 = !{ptr @__event_enter__madvise, !1, !"__event_enter__madvise", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__madvise, !1, !"event_exit__madvise", i1 false, i1 false}
!6 = !{ptr @__event_exit__madvise, !1, !"__event_exit__madvise", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__madvise, !1, !"__syscall_meta__madvise", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__madvise, !1, !"__p_syscall_meta__madvise", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/madvise.c", i32 1377, i32 1}
!12 = !{ptr @event_enter__process_madvise, !11, !"event_enter__process_madvise", i1 false, i1 false}
!13 = !{ptr @__event_enter__process_madvise, !11, !"__event_enter__process_madvise", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__process_madvise, !11, !"event_exit__process_madvise", i1 false, i1 false}
!16 = !{ptr @__event_exit__process_madvise, !11, !"__event_exit__process_madvise", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__process_madvise, !11, !"__syscall_meta__process_madvise", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__process_madvise, !11, !"__p_syscall_meta__process_madvise", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/mmap_lock.h", i32 155, i32 2}
!22 = !{ptr @swapin_walk_ops, !23, !"swapin_walk_ops", i1 false, i1 false}
!23 = !{!"../mm/madvise.c", i32 228, i32 33}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/mm.h", i32 717, i32 2}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cold_walk_ops, !38, !"cold_walk_ops", i1 false, i1 false}
!38 = !{!"../mm/madvise.c", i32 487, i32 33}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../mm/madvise.c", i32 449, i32 3}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../mm/madvise.c", i32 482, i32 2}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/page-flags.h", i32 417, i32 1}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/mmu_notifier.h", i32 454, i32 2}
!53 = !{ptr @madvise_free_walk_ops, !54, !"madvise_free_walk_ops", i1 false, i1 false}
!54 = !{!"../mm/madvise.c", i32 710, i32 33}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../mm/madvise.c", i32 878, i32 5}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @madvise_populate._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @madvise_populate._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @types__madvise, !1, !"types__madvise", i1 false, i1 false}
!65 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @args__madvise, !1, !"args__madvise", i1 false, i1 false}
!69 = !{ptr @.str.28, !11, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.29, !11, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @types__process_madvise, !11, !"types__process_madvise", i1 false, i1 false}
!72 = !{ptr @.str.30, !11, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.31, !11, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.32, !11, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.33, !11, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @args__process_madvise, !11, !"args__process_madvise", i1 false, i1 false}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2151261345, i64 2151261835, i64 2151261382, i64 2151261438, i64 2151261472, i64 2151261496, i64 2151261537, i64 2151261558, i64 2151261586, i64 2151261620}
!89 = !{!"auto-init"}
!90 = !{i64 2148304992, i64 2148304997, i64 2148305010, i64 2148305054, i64 2148305088, i64 2148305109}
!91 = !{i64 2153003526}
!92 = !{i64 2153146026, i64 2153146514, i64 2153146063, i64 2153146119, i64 2153146153, i64 2153146177, i64 2153146218, i64 2153146239, i64 2153146267, i64 2153146301}
!93 = !{i64 2148705845, i64 2148705877, i64 2148705906, i64 2148705940, i64 2148705971, i64 2148705994}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2148793870}
!96 = !{i64 2148708310, i64 2148708342, i64 2148708371, i64 2148708405, i64 2148708436, i64 2148708459}
!97 = !{i64 2149990105}
!98 = !{!99}
!99 = distinct !{!99, !100, !"iov_iter_iovec: %agg.result"}
!100 = distinct !{!100, !"iov_iter_iovec"}
!101 = !{i64 2148704315, i64 2148704341, i64 2148704370, i64 2148704404, i64 2148704435, i64 2148704458}
!102 = !{i64 2150039648}
!103 = !{i64 2150039914}
!104 = !{i64 2153150311, i64 2153150794, i64 2153150348, i64 2153150404, i64 2153150438, i64 2153150462, i64 2153150503, i64 2153150524, i64 2153150552, i64 2153150586}
!105 = !{i64 2148792791}
!106 = !{i64 2148707500, i64 2148707532, i64 2148707561, i64 2148707595, i64 2148707626, i64 2148707649}
!107 = !{i64 2148793020}
!108 = !{i64 2153721645}
!109 = !{i64 2152767362}
!110 = !{i64 2152767569}
!111 = !{i64 2153724416}
!112 = !{i8 0, i8 2}
!113 = !{i64 2150357718, i64 2150357891, i64 2150357906, i64 2150357958, i64 2150358017, i64 2150358041, i64 2150358082, i64 2150358103, i64 2150358131, i64 2150358163}
!114 = !{i64 2150911952, i64 2150912443, i64 2150911989, i64 2150912045, i64 2150912079, i64 2150912103, i64 2150912144, i64 2150912165, i64 2150912193, i64 2150912227}
!115 = !{i64 2150259313, i64 2150259804, i64 2150259350, i64 2150259406, i64 2150259440, i64 2150259464, i64 2150259505, i64 2150259526, i64 2150259554, i64 2150259588}
!116 = !{i64 2150373283, i64 2150373774, i64 2150373320, i64 2150373376, i64 2150373410, i64 2150373434, i64 2150373475, i64 2150373496, i64 2150373524, i64 2150373558}
!117 = !{i64 2148713173, i64 2148713205, i64 2148713234, i64 2148713268, i64 2148713299, i64 2148713322}
!118 = !{i64 2148802278}
!119 = !{i64 2150384503, i64 2150384676, i64 2150384691, i64 2150384743, i64 2150384802, i64 2150384826, i64 2150384867, i64 2150384888, i64 2150384916, i64 2150384948}
!120 = !{i64 2148789750}
!121 = !{i64 2148705035, i64 2148705067, i64 2148705096, i64 2148705130, i64 2148705161, i64 2148705184}
!122 = !{i64 2148789979}
