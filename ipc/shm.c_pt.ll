; ModuleID = '/llk/IR_all_yes/ipc/shm.c_pt.bc'
source_filename = "../ipc/shm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_ops = type { ptr, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.76, %struct.trace_event, ptr, ptr, %union.anon.78, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.shmid_kernel = type { %struct.kern_ipc_perm, ptr, i32, i32, i64, i64, i64, ptr, ptr, ptr, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [28 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.102, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.103, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.104, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.102 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.103 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.104 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.105 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.82, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.82 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ipc_params = type { i32, i32, %union.anon.110 }
%union.anon.110 = type { i32 }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.shmid_ds = type { %struct.ipc_perm, i32, i32, i32, i32, i16, i16, i16, i16, ptr, ptr }
%struct.ipc_perm = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.shminfo = type { i32, i32, i32, i32, i32 }
%struct.shmid64_ds = type { %struct.ipc64_perm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipc64_perm = type { i32, i32, i32, i32, i32, i16, [2 x i8], i16, i16, i32, i32 }
%struct.shminfo64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.shm_info = type { i32, i32, i32, i32, i32, i32 }
%struct.shm_file_data = type { i32, ptr, ptr, ptr }
%struct.anon.25 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.26, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__initcall__kmod_shm__352_153_ipc_ns_init0 = internal global ptr @ipc_ns_init, section ".initcall0.init", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sysvipc/shm\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"       key      shmid perms       size  cpid  lpid nattch   uid   gid  cuid  cgid      atime      dtime      ctime        rss       swap\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipc/shm.c\00", [22 x i8] zeroinitializer }, align 32
@shm_file_operations_huge = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shm_mmap, i32 0, ptr null, ptr null, ptr @shm_release, ptr @shm_fsync, ptr null, ptr null, ptr null, ptr @shm_get_unmapped_area, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shm_fallocate, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ksys_shmget.shm_ops = internal constant { %struct.ipc_ops, [20 x i8] } { %struct.ipc_ops { ptr @newseg, ptr @security_shm_associate, ptr @shm_more_checks }, [20 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_shmget\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__shmget = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 3, ptr @types__shmget, ptr @args__shmget, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__shmget, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__shmget, i64 20) }, ptr @event_enter__shmget, ptr @event_exit__shmget }, align 4
@event_enter__shmget = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__shmget, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__shmget = internal global ptr @event_enter__shmget, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_shmget\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__shmget = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__shmget, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__shmget = internal global ptr @event_exit__shmget, section "_ftrace_events", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_shmget\00", [21 x i8] zeroinitializer }, align 32
@types__shmget = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], [20 x i8] zeroinitializer }, align 32
@args__shmget = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__shmget = internal global ptr @__syscall_meta__shmget, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_shmctl\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__shmctl = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 3, ptr @types__shmctl, ptr @args__shmctl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__shmctl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__shmctl, i64 20) }, ptr @event_enter__shmctl, ptr @event_exit__shmctl }, align 4
@event_enter__shmctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__shmctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__shmctl = internal global ptr @event_enter__shmctl, section "_ftrace_events", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_shmctl\00", [16 x i8] zeroinitializer }, align 32
@event_exit__shmctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__shmctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__shmctl = internal global ptr @event_exit__shmctl, section "_ftrace_events", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_shmctl\00", [21 x i8] zeroinitializer }, align 32
@types__shmctl = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.21, ptr @.str.21, ptr @.str.25], [20 x i8] zeroinitializer }, align 32
@args__shmctl = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__shmctl = internal global ptr @__syscall_meta__shmctl, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_old_shmctl\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__old_shmctl = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 3, ptr @types__old_shmctl, ptr @args__old_shmctl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__old_shmctl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__old_shmctl, i64 20) }, ptr @event_enter__old_shmctl, ptr @event_exit__old_shmctl }, align 4
@event_enter__old_shmctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__old_shmctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__old_shmctl = internal global ptr @event_enter__old_shmctl, section "_ftrace_events", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_old_shmctl\00", [44 x i8] zeroinitializer }, align 32
@event_exit__old_shmctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__old_shmctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__old_shmctl = internal global ptr @event_exit__old_shmctl, section "_ftrace_events", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_old_shmctl\00", [17 x i8] zeroinitializer }, align 32
@types__old_shmctl = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.21, ptr @.str.21, ptr @.str.25], [20 x i8] zeroinitializer }, align 32
@args__old_shmctl = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__old_shmctl = internal global ptr @__syscall_meta__old_shmctl, section "__syscalls_metadata", align 4
@shm_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shm_mmap, i32 0, ptr null, ptr null, ptr @shm_release, ptr @shm_fsync, ptr null, ptr null, ptr null, ptr @shm_get_unmapped_area, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shm_fallocate, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_shmat\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__shmat = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 3, ptr @types__shmat, ptr @args__shmat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__shmat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__shmat, i64 20) }, ptr @event_enter__shmat, ptr @event_exit__shmat }, align 4
@event_enter__shmat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__shmat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__shmat = internal global ptr @event_enter__shmat, section "_ftrace_events", align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_shmat\00", [17 x i8] zeroinitializer }, align 32
@event_exit__shmat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__shmat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__shmat = internal global ptr @event_exit__shmat, section "_ftrace_events", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_shmat\00", [22 x i8] zeroinitializer }, align 32
@types__shmat = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.21, ptr @.str.36, ptr @.str.21], [20 x i8] zeroinitializer }, align 32
@args__shmat = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.26, ptr @.str.37, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__shmat = internal global ptr @__syscall_meta__shmat, section "__syscalls_metadata", align 4
@shm_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @shm_open, ptr @shm_close, ptr @shm_may_split, ptr null, ptr null, ptr @shm_fault, ptr null, ptr null, ptr @shm_pagesize, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_shmdt\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__shmdt = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 1, ptr @types__shmdt, ptr @args__shmdt, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__shmdt, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__shmdt, i64 20) }, ptr @event_enter__shmdt, ptr @event_exit__shmdt }, align 4
@event_enter__shmdt = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__shmdt, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__shmdt = internal global ptr @event_enter__shmdt, section "_ftrace_events", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_shmdt\00", [17 x i8] zeroinitializer }, align 32
@event_exit__shmdt = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__shmdt, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__shmdt = internal global ptr @event_exit__shmdt, section "_ftrace_events", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_shmdt\00", [22 x i8] zeroinitializer }, align 32
@types__shmdt = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@args__shmdt = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.37], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__shmdt = internal global ptr @__syscall_meta__shmdt, section "__syscalls_metadata", align 4
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@shm_close.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYSV%08x\00", [23 x i8] zeroinitializer }, align 32
@sysctl_overcommit_memory = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"key_t\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shmflg\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct shmid_ds *\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shmid\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@ipc_mni = external dso_local local_unnamed_addr global i32, align 4
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char *\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"shmaddr\00", [24 x i8] zeroinitializer }, align 32
@shm_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%10d %10d  %4o %10lu %5u %5u  %5lu %5u %5u %5u %5u %10llu %10llu %10llu %10lu %10lu\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 15]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 157, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 159, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 474, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"shm_file_operations_huge\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 656, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant [8 x i8] c"shm_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 818, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"event_enter__shmget\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"event_exit__shmget\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"types__shmget\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"args__shmget\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"event_enter__shmctl\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"event_exit__shmctl\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"types__shmctl\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [13 x i8] c"args__shmctl\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [24 x i8] c"event_enter__old_shmctl\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"event_exit__old_shmctl\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"types__old_shmctl\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"args__old_shmctl\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1296, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"shm_file_operations\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 643, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"event_enter__shmat\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"event_exit__shmat\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"types__shmat\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"args__shmat\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [11 x i8] c"shm_vm_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 670, i32 42 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"event_enter__shmdt\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [18 x i8] c"event_exit__shmdt\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [13 x i8] c"types__shmdt\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"args__shmdt\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1822, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 726, i32 16 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 834, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1283, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 174, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 695, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 723, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1680, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [13 x i8] c"../ipc/shm.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1846, i32 6 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__event_enter__old_shmctl, ptr @__event_enter__shmat, ptr @__event_enter__shmctl, ptr @__event_enter__shmdt, ptr @__event_enter__shmget, ptr @__event_exit__old_shmctl, ptr @__event_exit__shmat, ptr @__event_exit__shmctl, ptr @__event_exit__shmdt, ptr @__event_exit__shmget, ptr @__initcall__kmod_shm__352_153_ipc_ns_init0, ptr @__p_syscall_meta__old_shmctl, ptr @__p_syscall_meta__shmat, ptr @__p_syscall_meta__shmctl, ptr @__p_syscall_meta__shmdt, ptr @__p_syscall_meta__shmget, ptr @__syscall_meta__old_shmctl, ptr @__syscall_meta__shmat, ptr @__syscall_meta__shmctl, ptr @__syscall_meta__shmdt, ptr @__syscall_meta__shmget, ptr @event_enter__old_shmctl, ptr @event_enter__shmat, ptr @event_enter__shmctl, ptr @event_enter__shmdt, ptr @event_enter__shmget, ptr @event_exit__old_shmctl, ptr @event_exit__shmat, ptr @event_exit__shmctl, ptr @event_exit__shmdt, ptr @event_exit__shmget, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @shm_file_operations_huge, ptr @ksys_shmget.shm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__shmget, ptr @args__shmget, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__shmctl, ptr @args__shmctl, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__old_shmctl, ptr @args__old_shmctl, ptr @shm_file_operations, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__shmat, ptr @args__shmat, ptr @shm_vm_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__shmdt, ptr @args__shmdt, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shm_file_operations_huge to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksys_shmget.shm_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__shmget to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__shmget to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__shmget to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__shmget to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__shmctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__shmctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__shmctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__shmctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__old_shmctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__old_shmctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__old_shmctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__old_shmctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shm_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__shmat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__shmat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__shmat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__shmat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shm_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__shmdt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__shmdt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__shmdt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__shmdt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_shmget = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_shmget
@sys_shmctl = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_shmctl
@sys_old_shmctl = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_old_shmctl
@sys_shmat = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_shmat
@sys_shmdt = dso_local alias i32 (ptr), ptr @__se_sys_shmdt

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shm_init_ns(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shm_ctlmax = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 8
  %0 = ptrtoint ptr %shm_ctlmax to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -16777217, ptr %shm_ctlmax, align 4
  %shm_ctlall = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 9
  %1 = ptrtoint ptr %shm_ctlall to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -16777217, ptr %shm_ctlall, align 4
  %shm_ctlmni = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 11
  %2 = ptrtoint ptr %shm_ctlmni to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %shm_ctlmni, align 4
  %shm_rmid_forced = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 12
  %3 = ptrtoint ptr %shm_rmid_forced to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %shm_rmid_forced, align 4
  %shm_tot = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 10
  %4 = ptrtoint ptr %shm_tot to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %shm_tot, align 4
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 2
  tail call void @ipc_init_ids(ptr noundef %arrayidx) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_init_ids(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shm_exit_ns(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 2
  tail call void @free_ipcs(ptr noundef %ns, ptr noundef %arrayidx, ptr noundef nonnull @do_shm_rmid) #13
  %ipcs_idr = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 2, i32 3
  tail call void @idr_destroy(ptr noundef %ipcs_idr) #13
  %key_ht = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 2, i32 7
  tail call void @rhashtable_destroy(ptr noundef %key_ht) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_ipcs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_shm_rmid(ptr noundef %ns, ptr noundef %ipcp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ns1 = getelementptr inbounds %struct.shmid_kernel, ptr %ipcp, i32 0, i32 12
  %0 = ptrtoint ptr %ns1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns1, align 64
  %cmp.not = icmp eq ptr %1, %ns
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !124

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 127, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %shm_nattch = getelementptr inbounds %struct.shmid_kernel, ptr %ipcp, i32 0, i32 2
  %2 = ptrtoint ptr %shm_nattch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shm_nattch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool21.not = icmp eq i32 %3, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  %mode = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 8
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 8
  %6 = or i16 %5, 512
  store i16 %6, ptr %mode, align 8
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 2
  tail call void @ipc_set_key_private(ptr noundef %arrayidx, ptr noundef %ipcp) #13
  tail call void @_raw_spin_unlock(ptr noundef %ipcp) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then22.ipc_unlock.exit_crit_edge, label %land.lhs.true.i.i

if.then22.ipc_unlock.exit_crit_edge:              ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true.i.i:                                ; preds = %if.then22
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.ipc_unlock.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.ipc_unlock.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.ipc_unlock.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.ipc_unlock.exit_crit_edge:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %ipc_unlock.exit

ipc_unlock.exit:                                  ; preds = %if.then.i.i, %land.lhs.true2.i.i.ipc_unlock.exit_crit_edge, %land.lhs.true.i.i.ipc_unlock.exit_crit_edge, %if.then22.ipc_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %7 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @shm_destroy(ptr noundef %ns, ptr noundef %ipcp)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %ipc_unlock.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipc_ns_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 8) to i32))
  store i32 -16777217, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 8), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 9) to i32))
  store i32 -16777217, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 9), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 11) to i32))
  store i32 4096, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 11), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 12) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 12), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 10) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 10), align 4
  tail call void @ipc_init_ids(ptr noundef getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 0, i32 2)) #13
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @shm_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipc_init_proc_interface(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef nonnull @sysvipc_shm_proc_show) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ipc_init_proc_interface(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysvipc_shm_proc_show(ptr noundef %s, ptr nocapture noundef readonly %it) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ipc_seq_pid_ns(ptr noundef %s) #13
  %file.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns.i, align 4
  %shm_file.i = getelementptr inbounds %struct.shmid_kernel, ptr %it, i32 0, i32 1
  %6 = ptrtoint ptr %shm_file.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shm_file.i, align 128
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -136
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i.i) #13
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_mapping.i, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nrpages.i, align 4
  %swapped.i = getelementptr i8, ptr %9, i32 -80
  %14 = ptrtoint ptr %swapped.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %swapped.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i.i) #13
  %key = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 3
  %16 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key, align 4
  %id = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 2
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 16
  %mode = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 8
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mode, align 8
  %conv = zext i16 %21 to i32
  %shm_segsz = getelementptr inbounds %struct.shmid_kernel, ptr %it, i32 0, i32 3
  %22 = ptrtoint ptr %shm_segsz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shm_segsz, align 8
  %shm_cprid = getelementptr inbounds %struct.shmid_kernel, ptr %it, i32 0, i32 7
  %24 = ptrtoint ptr %shm_cprid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %shm_cprid, align 8
  %call4 = tail call i32 @pid_nr_ns(ptr noundef %25, ptr noundef %call) #13
  %shm_lprid = getelementptr inbounds %struct.shmid_kernel, ptr %it, i32 0, i32 8
  %26 = ptrtoint ptr %shm_lprid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shm_lprid, align 4
  %call5 = tail call i32 @pid_nr_ns(ptr noundef %27, ptr noundef %call) #13
  %shm_nattch = getelementptr inbounds %struct.shmid_kernel, ptr %it, i32 0, i32 2
  %28 = ptrtoint ptr %shm_nattch to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %shm_nattch, align 4
  %uid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 4
  %30 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack = load i32, ptr %uid, align 8
  %31 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %31) #13
  %gid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 5
  %32 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack38 = load i32, ptr %gid, align 4
  %33 = insertvalue [1 x i32] undef, i32 %.unpack38, 0
  %call10 = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %33) #13
  %cuid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 6
  %34 = ptrtoint ptr %cuid to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack39 = load i32, ptr %cuid, align 64
  %35 = insertvalue [1 x i32] undef, i32 %.unpack39, 0
  %call13 = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %35) #13
  %cgid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 7
  %36 = ptrtoint ptr %cgid to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack40 = load i32, ptr %cgid, align 4
  %37 = insertvalue [1 x i32] undef, i32 %.unpack40, 0
  %call16 = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %37) #13
  %shm_atim = getelementptr inbounds %struct.shmid_kernel, ptr %it, i32 0, i32 4
  %38 = ptrtoint ptr %shm_atim to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %shm_atim, align 16
  %shm_dtim = getelementptr inbounds %struct.shmid_kernel, ptr %it, i32 0, i32 5
  %40 = ptrtoint ptr %shm_dtim to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %shm_dtim, align 8
  %shm_ctim = getelementptr inbounds %struct.shmid_kernel, ptr %it, i32 0, i32 6
  %42 = ptrtoint ptr %shm_ctim to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %shm_ctim, align 32
  %mul = shl i32 %13, 12
  %mul17 = shl i32 %15, 12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %17, i32 noundef %19, i32 noundef %conv, i32 noundef %23, i32 noundef %call4, i32 noundef %call5, i32 noundef %29, i32 noundef %call7, i32 noundef %call10, i32 noundef %call13, i32 noundef %call16, i64 noundef %39, i64 noundef %41, i64 noundef %43, i32 noundef %mul, i32 noundef %mul17) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shm_destroy_orphaned(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 2
  %rwsem = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 2, i32 2
  tail call void @down_write(ptr noundef %rwsem) #13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ipcs_idr = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 2, i32 3
  %call = tail call i32 @idr_for_each(ptr noundef %ipcs_idr, ptr noundef nonnull @shm_try_destroy_orphaned, ptr noundef %ns) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %rwsem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm_try_destroy_orphaned(i32 noundef %id, ptr noundef %p, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shm_clist = getelementptr inbounds %struct.shmid_kernel, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %shm_clist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %shm_clist, align 4
  %cmp.i.not = icmp eq ptr %1, %shm_clist
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %shm_nattch.i = getelementptr inbounds %struct.shmid_kernel, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %shm_nattch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shm_nattch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i9 = icmp eq i32 %3, 0
  br i1 %cmp.i9, label %land.rhs.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs.i:                                       ; preds = %if.end
  %ns.i = getelementptr inbounds %struct.shmid_kernel, ptr %p, i32 0, i32 12
  %4 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns.i, align 64
  %shm_rmid_forced.i = getelementptr inbounds %struct.ipc_namespace, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %shm_rmid_forced.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shm_rmid_forced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %shm_may_destroy.exit, label %land.rhs.i.if.then2_crit_edge

land.rhs.i.if.then2_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2

shm_may_destroy.exit:                             ; preds = %land.rhs.i
  %mode.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %p, i32 0, i32 8
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode.i, align 8
  %10 = and i16 %9, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool1.i.not = icmp eq i16 %10, 0
  br i1 %tobool1.i.not, label %shm_may_destroy.exit.cleanup_crit_edge, label %shm_may_destroy.exit.if.then2_crit_edge

shm_may_destroy.exit.if.then2_crit_edge:          ; preds = %shm_may_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2

shm_may_destroy.exit.cleanup_crit_edge:           ; preds = %shm_may_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2:                                         ; preds = %shm_may_destroy.exit.if.then2_crit_edge, %land.rhs.i.if.then2_crit_edge
  %11 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then2.shm_lock_by_ptr.exit_crit_edge, label %land.lhs.true.i.i

if.then2.shm_lock_by_ptr.exit_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_lock_by_ptr.exit

land.lhs.true.i.i:                                ; preds = %if.then2
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.shm_lock_by_ptr.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.shm_lock_by_ptr.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_lock_by_ptr.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.shm_lock_by_ptr.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.shm_lock_by_ptr.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_lock_by_ptr.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #13
  br label %shm_lock_by_ptr.exit

shm_lock_by_ptr.exit:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.shm_lock_by_ptr.exit_crit_edge, %land.lhs.true.i.i.shm_lock_by_ptr.exit_crit_edge, %if.then2.shm_lock_by_ptr.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %p) #13
  tail call fastcc void @shm_destroy(ptr noundef %data, ptr noundef %p)
  br label %cleanup

cleanup:                                          ; preds = %shm_lock_by_ptr.exit, %shm_may_destroy.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_shm(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #13
  %sysvshm = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 104
  %0 = ptrtoint ptr %sysvshm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sysvshm, align 4
  %cmp.i.not116 = icmp eq ptr %1, %sysvshm
  br i1 %cmp.i.not116, label %entry.for.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = phi ptr [ %59, %cleanup.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -184
  %ns3 = getelementptr i8, ptr %2, i32 8
  %3 = ptrtoint ptr %ns3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns3, align 64
  %shm_rmid_forced = getelementptr inbounds %struct.ipc_namespace, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %shm_rmid_forced to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shm_rmid_forced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  %tobool.not.i = icmp eq ptr %4, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %if.end.unlink_continue_crit_edge, label %if.then.i

if.end.unlink_continue_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlink_continue

if.then.i:                                        ; preds = %if.end
  %count.i = getelementptr inbounds %struct.ipc_namespace, ptr %4, i32 0, i32 24, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #13
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %count.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then.i
  %9 = phi i32 [ %8, %if.then.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %9, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %13 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %12, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #13, !srcloc !127
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %12
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !124

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %15, 1
  %16 = or i32 %add5.i.i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !124

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #13
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %18 = phi i32 [ %15, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.i.i.i.not.i = icmp eq i32 %18, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.unlink_continue_crit_edge, label %if.end11

refcount_inc_not_zero.exit.i.unlink_continue_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlink_continue

unlink_continue:                                  ; preds = %refcount_inc_not_zero.exit.i.unlink_continue_crit_edge, %if.end.unlink_continue_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i, label %if.end.i.i, label %unlink_continue.list_del_init.exit_crit_edge

unlink_continue.list_del_init.exit_crit_edge:     ; preds = %unlink_continue
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %unlink_continue
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %unlink_continue.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %2, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #13
  br label %cleanup

if.end11:                                         ; preds = %refcount_inc_not_zero.exit.i
  %call12 = call zeroext i1 @ipc_rcu_getref(ptr noundef %add.ptr) #13
  br i1 %call12, label %if.end11.if.end28_crit_edge, label %do.end, !prof !124

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 474, i32 noundef 9, ptr noundef null) #13
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end11.if.end28_crit_edge
  %call.i.i76 = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i76, label %if.end.i.i79, label %if.end28.list_del_init.exit81_crit_edge

if.end28.list_del_init.exit81_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit81

if.end.i.i79:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i77 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i77 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i77, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %prev1.i.i.i78 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i78, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit81

list_del_init.exit81:                             ; preds = %if.end.i.i79, %if.end28.list_del_init.exit81_crit_edge
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i80 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i3.i80 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %2, ptr %prev.i3.i80, align 4
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #13
  %rwsem = getelementptr [3 x %struct.ipc_ids], ptr %4, i32 0, i32 2, i32 2
  call void @down_write(ptr noundef %rwsem) #13
  %35 = call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i83 = add i32 %38, 1
  store volatile i32 %add.i.i.i.i83, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i84 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i84, label %list_del_init.exit81.shm_lock_by_ptr.exit_crit_edge, label %land.lhs.true.i.i

list_del_init.exit81.shm_lock_by_ptr.exit_crit_edge: ; preds = %list_del_init.exit81
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_lock_by_ptr.exit

land.lhs.true.i.i:                                ; preds = %list_del_init.exit81
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.shm_lock_by_ptr.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.shm_lock_by_ptr.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_lock_by_ptr.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.shm_lock_by_ptr.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.shm_lock_by_ptr.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_lock_by_ptr.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #13
  br label %shm_lock_by_ptr.exit

shm_lock_by_ptr.exit:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.shm_lock_by_ptr.exit_crit_edge, %land.lhs.true.i.i.shm_lock_by_ptr.exit_crit_edge, %list_del_init.exit81.shm_lock_by_ptr.exit_crit_edge
  call void @_raw_spin_lock(ptr noundef %add.ptr) #13
  call void @ipc_rcu_putref(ptr noundef %add.ptr, ptr noundef nonnull @shm_rcu_free) #13
  %deleted.i = getelementptr i8, ptr %2, i32 -140
  %39 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %deleted.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i85 = icmp eq i8 %40, 0
  br i1 %tobool.not.i85, label %if.then40, label %if.else45

if.then40:                                        ; preds = %shm_lock_by_ptr.exit
  %shm_nattch.i = getelementptr i8, ptr %2, i32 -52
  %41 = ptrtoint ptr %shm_nattch.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %shm_nattch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i86 = icmp eq i32 %42, 0
  br i1 %cmp.i86, label %land.rhs.i, label %if.then40.if.else_crit_edge

if.then40.if.else_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.rhs.i:                                       ; preds = %if.then40
  %43 = ptrtoint ptr %ns3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ns3, align 64
  %shm_rmid_forced.i = getelementptr inbounds %struct.ipc_namespace, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %shm_rmid_forced.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %shm_rmid_forced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i87 = icmp eq i32 %46, 0
  br i1 %tobool.not.i87, label %shm_may_destroy.exit, label %land.rhs.i.if.then42_crit_edge

land.rhs.i.if.then42_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

shm_may_destroy.exit:                             ; preds = %land.rhs.i
  %mode.i = getelementptr i8, ptr %2, i32 -112
  %47 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mode.i, align 8
  %49 = and i16 %48, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool1.i.not = icmp eq i16 %49, 0
  br i1 %tobool1.i.not, label %shm_may_destroy.exit.if.else_crit_edge, label %shm_may_destroy.exit.if.then42_crit_edge

shm_may_destroy.exit.if.then42_crit_edge:         ; preds = %shm_may_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

shm_may_destroy.exit.if.else_crit_edge:           ; preds = %shm_may_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then42:                                        ; preds = %shm_may_destroy.exit.if.then42_crit_edge, %land.rhs.i.if.then42_crit_edge
  call fastcc void @shm_destroy(ptr noundef nonnull %4, ptr noundef %add.ptr)
  br label %if.end47

if.else:                                          ; preds = %shm_may_destroy.exit.if.else_crit_edge, %if.then40.if.else_crit_edge
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  %call.i.i88 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i88, label %if.else.ipc_unlock.exit_crit_edge, label %land.lhs.true.i.i91

if.else.ipc_unlock.exit_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true.i.i91:                              ; preds = %if.else
  %call1.i.i89 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i89)
  %tobool.not.i.i90 = icmp eq i32 %call1.i.i89, 0
  br i1 %tobool.not.i.i90, label %land.lhs.true.i.i91.ipc_unlock.exit_crit_edge, label %land.lhs.true2.i.i93

land.lhs.true.i.i91.ipc_unlock.exit_crit_edge:    ; preds = %land.lhs.true.i.i91
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true2.i.i93:                             ; preds = %land.lhs.true.i.i91
  %.b4.i.i92 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i92, label %land.lhs.true2.i.i93.ipc_unlock.exit_crit_edge, label %if.then.i.i94

land.lhs.true2.i.i93.ipc_unlock.exit_crit_edge:   ; preds = %land.lhs.true2.i.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

if.then.i.i94:                                    ; preds = %land.lhs.true2.i.i93
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %ipc_unlock.exit

ipc_unlock.exit:                                  ; preds = %if.then.i.i94, %land.lhs.true2.i.i93.ipc_unlock.exit_crit_edge, %land.lhs.true.i.i91.ipc_unlock.exit_crit_edge, %if.else.ipc_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %50 = call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i95 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i95 to ptr
  %preempt_count.i.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i.i96, align 4
  %sub.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i96, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end47

if.else45:                                        ; preds = %shm_lock_by_ptr.exit
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  %call.i.i97 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i97, label %if.else45.ipc_unlock.exit107_crit_edge, label %land.lhs.true.i.i100

if.else45.ipc_unlock.exit107_crit_edge:           ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit107

land.lhs.true.i.i100:                             ; preds = %if.else45
  %call1.i.i98 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %call1.i.i98, 0
  br i1 %tobool.not.i.i99, label %land.lhs.true.i.i100.ipc_unlock.exit107_crit_edge, label %land.lhs.true2.i.i102

land.lhs.true.i.i100.ipc_unlock.exit107_crit_edge: ; preds = %land.lhs.true.i.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit107

land.lhs.true2.i.i102:                            ; preds = %land.lhs.true.i.i100
  %.b4.i.i101 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i101, label %land.lhs.true2.i.i102.ipc_unlock.exit107_crit_edge, label %if.then.i.i103

land.lhs.true2.i.i102.ipc_unlock.exit107_crit_edge: ; preds = %land.lhs.true2.i.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit107

if.then.i.i103:                                   ; preds = %land.lhs.true2.i.i102
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %ipc_unlock.exit107

ipc_unlock.exit107:                               ; preds = %if.then.i.i103, %land.lhs.true2.i.i102.ipc_unlock.exit107_crit_edge, %land.lhs.true.i.i100.ipc_unlock.exit107_crit_edge, %if.else45.ipc_unlock.exit107_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %54 = call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i104 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i104 to ptr
  %preempt_count.i.i.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i.i105, align 4
  %sub.i.i.i.i106 = add i32 %57, -1
  store volatile i32 %sub.i.i.i.i106, ptr %preempt_count.i.i.i.i.i105, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end47

if.end47:                                         ; preds = %ipc_unlock.exit107, %ipc_unlock.exit, %if.then42
  call void @up_write(ptr noundef %rwsem) #13
  call void @put_ipc_ns(ptr noundef nonnull %4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %list_del_init.exit
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #13
  %58 = ptrtoint ptr %sysvshm to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %sysvshm, align 4
  %cmp.i.not = icmp eq ptr %59, %sysvshm
  br i1 %cmp.i.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipc_rcu_getref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rcu_putref(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shm_rcu_free(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -88
  tail call void @security_shm_free(ptr noundef %add.ptr) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @shm_destroy(ptr nocapture noundef %ns, ptr noundef %shp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shm_file1 = getelementptr inbounds %struct.shmid_kernel, ptr %shp, i32 0, i32 1
  %0 = ptrtoint ptr %shm_file1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shm_file1, align 128
  store ptr null, ptr %shm_file1, align 128
  %shm_segsz = getelementptr inbounds %struct.shmid_kernel, ptr %shp, i32 0, i32 3
  %2 = ptrtoint ptr %shm_segsz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shm_segsz, align 8
  %sub = add i32 %3, 4095
  %shr = lshr i32 %sub, 12
  %shm_tot = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 10
  %4 = ptrtoint ptr %shm_tot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shm_tot, align 4
  %sub3 = sub i32 %5, %shr
  store i32 %sub3, ptr %shm_tot, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #13
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %shm_clist.i.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp, i32 0, i32 11
  %10 = ptrtoint ptr %shm_clist.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %shm_clist.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %11, %shm_clist.i.i
  br i1 %cmp.i.not.i.i, label %rcu_read_lock.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

rcu_read_lock.exit.i.i.if.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %shm_creator.i.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp, i32 0, i32 10
  %12 = ptrtoint ptr %shm_creator.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shm_creator.i.i, align 4
  %alloc_lock.i.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i.i) #13
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %shm_clist.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i.i, align 4
  %16 = ptrtoint ptr %shm_clist.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shm_clist.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %20 = ptrtoint ptr %shm_clist.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %shm_clist.i.i, ptr %shm_clist.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp, i32 0, i32 11, i32 1
  %21 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %shm_clist.i.i, ptr %prev.i3.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i.i) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %list_del_init.exit.i.i, %rcu_read_lock.exit.i.i.if.end.i.i_crit_edge
  %call.i6.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i6.i.i, label %if.end.i.i.shm_rmid.exit_crit_edge, label %land.lhs.true.i9.i.i

if.end.i.i.shm_rmid.exit_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_rmid.exit

land.lhs.true.i9.i.i:                             ; preds = %if.end.i.i
  %call1.i7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7.i.i)
  %tobool.not.i8.i.i = icmp eq i32 %call1.i7.i.i, 0
  br i1 %tobool.not.i8.i.i, label %land.lhs.true.i9.i.i.shm_rmid.exit_crit_edge, label %land.lhs.true2.i11.i.i

land.lhs.true.i9.i.i.shm_rmid.exit_crit_edge:     ; preds = %land.lhs.true.i9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_rmid.exit

land.lhs.true2.i11.i.i:                           ; preds = %land.lhs.true.i9.i.i
  %.b4.i10.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10.i.i, label %land.lhs.true2.i11.i.i.shm_rmid.exit_crit_edge, label %if.then.i12.i.i

land.lhs.true2.i11.i.i.shm_rmid.exit_crit_edge:   ; preds = %land.lhs.true2.i11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_rmid.exit

if.then.i12.i.i:                                  ; preds = %land.lhs.true2.i11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %shm_rmid.exit

shm_rmid.exit:                                    ; preds = %if.then.i12.i.i, %land.lhs.true2.i11.i.i.shm_rmid.exit_crit_edge, %land.lhs.true.i9.i.i.shm_rmid.exit_crit_edge, %if.end.i.i.shm_rmid.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %22 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i13.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i13.i.i to ptr
  %preempt_count.i.i.i.i14.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i14.i.i, align 4
  %sub.i.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i14.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %ns.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp, i32 0, i32 12
  %26 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ns.i, align 64
  %arrayidx.i = getelementptr [3 x %struct.ipc_ids], ptr %27, i32 0, i32 2
  tail call void @ipc_rmid(ptr noundef %arrayidx.i, ptr noundef %shp) #13
  tail call void @_raw_spin_unlock(ptr noundef %shp) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %shm_rmid.exit.ipc_unlock.exit_crit_edge, label %land.lhs.true.i.i

shm_rmid.exit.ipc_unlock.exit_crit_edge:          ; preds = %shm_rmid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true.i.i:                                ; preds = %shm_rmid.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.ipc_unlock.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.ipc_unlock.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.ipc_unlock.exit_crit_edge, label %if.then.i.i14

land.lhs.true2.i.i.ipc_unlock.exit_crit_edge:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

if.then.i.i14:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %ipc_unlock.exit

ipc_unlock.exit:                                  ; preds = %if.then.i.i14, %land.lhs.true2.i.i.ipc_unlock.exit_crit_edge, %land.lhs.true.i.i.ipc_unlock.exit_crit_edge, %shm_rmid.exit.ipc_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %28 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %mlock_ucounts = getelementptr inbounds %struct.shmid_kernel, ptr %shp, i32 0, i32 9
  %32 = ptrtoint ptr %mlock_ucounts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mlock_ucounts, align 16
  %call = tail call i32 @shmem_lock(ptr noundef %1, i32 noundef 0, ptr noundef %33) #13
  tail call void @fput(ptr noundef %1) #13
  %shm_cprid = getelementptr inbounds %struct.shmid_kernel, ptr %shp, i32 0, i32 7
  %34 = ptrtoint ptr %shm_cprid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shm_cprid, align 4
  %cmp.not.i = icmp eq ptr %35, null
  br i1 %cmp.not.i, label %ipc_unlock.exit.ipc_update_pid.exit_crit_edge, label %if.then.i

ipc_unlock.exit.ipc_update_pid.exit_crit_edge:    ; preds = %ipc_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_update_pid.exit

if.then.i:                                        ; preds = %ipc_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %shm_cprid to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %shm_cprid, align 4
  tail call void @put_pid(ptr noundef nonnull %35) #13
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %if.then.i, %ipc_unlock.exit.ipc_update_pid.exit_crit_edge
  %shm_lprid = getelementptr inbounds %struct.shmid_kernel, ptr %shp, i32 0, i32 8
  %37 = ptrtoint ptr %shm_lprid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %shm_lprid, align 4
  %cmp.not.i15 = icmp eq ptr %38, null
  br i1 %cmp.not.i15, label %ipc_update_pid.exit.ipc_update_pid.exit17_crit_edge, label %if.then.i16

ipc_update_pid.exit.ipc_update_pid.exit17_crit_edge: ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_update_pid.exit17

if.then.i16:                                      ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %shm_lprid to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %shm_lprid, align 4
  tail call void @put_pid(ptr noundef nonnull %38) #13
  br label %ipc_update_pid.exit17

ipc_update_pid.exit17:                            ; preds = %if.then.i16, %ipc_update_pid.exit.ipc_update_pid.exit17_crit_edge
  tail call void @ipc_rcu_putref(ptr noundef %shp, ptr noundef nonnull @shm_rcu_free) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipc_unlock(ptr noundef %perm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %perm) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %0 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ipc_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_file_shm_hugepages(ptr nocapture noundef readonly %file) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %cmp = icmp eq ptr %1, @shm_file_operations_huge
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_shmget(i32 noundef %key, i32 noundef %size, i32 noundef %shmflg) local_unnamed_addr #0 align 64 {
entry:
  %shm_params = alloca %struct.ipc_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %shm_params) #13
  %0 = getelementptr inbounds %struct.ipc_params, ptr %shm_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ipc_params, ptr %shm_params, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 110
  %6 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipc_ns, align 4
  %10 = ptrtoint ptr %shm_params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %key, ptr %shm_params, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shmflg, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %size, ptr %1, align 4
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2
  %call2 = call i32 @ipcget(ptr noundef %9, ptr noundef %arrayidx, ptr noundef nonnull @ksys_shmget.shm_ops, ptr noundef nonnull %shm_params) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %shm_params) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @newseg(ptr noundef %ns, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %name = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  %flg = getelementptr inbounds %struct.ipc_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %flg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flg, align 4
  %u = getelementptr inbounds %struct.ipc_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 4
  %sub = add i32 %5, 4095
  %shr = lshr i32 %sub, 12
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %6 = call ptr @memset(ptr %name, i32 255, i32 13)
  br i1 %cmp, label %entry.cleanup98_crit_edge, label %lor.lhs.false

entry.cleanup98_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

lor.lhs.false:                                    ; preds = %entry
  %shm_ctlmax = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 8
  %7 = ptrtoint ptr %shm_ctlmax to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shm_ctlmax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %8)
  %cmp2 = icmp ugt i32 %5, %8
  br i1 %cmp2, label %lor.lhs.false.cleanup98_crit_edge, label %if.end

lor.lhs.false.cleanup98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

if.end:                                           ; preds = %lor.lhs.false
  %shl = and i32 %sub, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %5)
  %cmp3 = icmp ult i32 %shl, %5
  br i1 %cmp3, label %if.end.cleanup98_crit_edge, label %if.end5

if.end.cleanup98_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

if.end5:                                          ; preds = %if.end
  %shm_tot = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 10
  %9 = ptrtoint ptr %shm_tot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shm_tot, align 4
  %add6 = add i32 %10, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %10)
  %cmp8 = icmp ult i32 %add6, %10
  br i1 %cmp8, label %if.end5.cleanup98_crit_edge, label %lor.lhs.false9

if.end5.cleanup98_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

lor.lhs.false9:                                   ; preds = %if.end5
  %shm_ctlall = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 9
  %11 = ptrtoint ptr %shm_ctlall to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shm_ctlall, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %12)
  %cmp12 = icmp ugt i32 %add6, %12
  br i1 %cmp12, label %lor.lhs.false9.cleanup98_crit_edge, label %if.end14

lor.lhs.false9.cleanup98_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

if.end14:                                         ; preds = %lor.lhs.false9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 4197568, i32 noundef 256) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end14.cleanup98_crit_edge, label %if.end19, !prof !129

if.end14.cleanup98_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup98

if.end19:                                         ; preds = %if.end14
  %key20 = getelementptr inbounds %struct.kern_ipc_perm, ptr %call7.i, i32 0, i32 3
  %14 = ptrtoint ptr %key20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %1, ptr %key20, align 4
  %15 = trunc i32 %3 to i16
  %conv = and i16 %15, 511
  %mode = getelementptr inbounds %struct.kern_ipc_perm, ptr %call7.i, i32 0, i32 8
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %mode, align 8
  %mlock_ucounts = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 9
  %17 = ptrtoint ptr %mlock_ucounts to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %mlock_ucounts, align 16
  %security = getelementptr inbounds %struct.kern_ipc_perm, ptr %call7.i, i32 0, i32 10
  %18 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %security, align 16
  %call24 = tail call i32 @security_shm_alloc(ptr noundef nonnull %call7.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup98

if.end27:                                         ; preds = %if.end19
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.18, i32 noundef %1)
  %and29 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else, label %if.end27.no_file_crit_edge

if.end27.no_file_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_file

if.else:                                          ; preds = %if.end27
  %and53 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else.if.end58_crit_edge, label %land.lhs.true

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

land.lhs.true:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_overcommit_memory to i32))
  %19 = load i32, ptr @sysctl_overcommit_memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp55.not = icmp eq i32 %19, 2
  %spec.select = select i1 %cmp55.not, i32 0, i32 2097152
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true, %if.else.if.end58_crit_edge
  %acctflag.1 = phi i32 [ 0, %if.else.if.end58_crit_edge ], [ %spec.select, %land.lhs.true ]
  %conv60 = zext i32 %5 to i64
  %call61 = call ptr @shmem_kernel_file_setup(ptr noundef nonnull %name, i64 noundef %conv60, i32 noundef %acctflag.1) #13
  %20 = ptrtoint ptr %call61 to i32
  %cmp.i = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end58.no_file_crit_edge, label %if.end66

if.end58.no_file_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_file

if.end66:                                         ; preds = %if.end58
  %21 = call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 111
  %25 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %26, i32 0, i32 22, i32 1
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %call69 = call fastcc ptr @get_pid(ptr noundef %28)
  %shm_cprid = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 7
  %29 = ptrtoint ptr %shm_cprid to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %shm_cprid, align 8
  %shm_lprid = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 8
  %30 = ptrtoint ptr %shm_lprid to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %shm_lprid, align 4
  %shm_atim = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 4
  %31 = call ptr @memset(ptr %shm_atim, i32 0, i32 16)
  %call70 = call i64 @ktime_get_real_seconds() #13
  %shm_ctim = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 6
  %32 = ptrtoint ptr %shm_ctim to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %call70, ptr %shm_ctim, align 32
  %shm_segsz = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 3
  %33 = ptrtoint ptr %shm_segsz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %5, ptr %shm_segsz, align 8
  %shm_nattch = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 2
  %34 = ptrtoint ptr %shm_nattch to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %shm_nattch, align 4
  %shm_file = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 1
  %35 = ptrtoint ptr %shm_file to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call61, ptr %shm_file, align 128
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %shm_creator = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 10
  %38 = ptrtoint ptr %shm_creator to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %shm_creator, align 4
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 2
  %shm_ctlmni = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 11
  %39 = ptrtoint ptr %shm_ctlmni to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %shm_ctlmni, align 4
  %call74 = call i32 @ipc_addid(ptr noundef %arrayidx, ptr noundef nonnull %call7.i, i32 noundef %40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %no_id, label %if.end78

if.end78:                                         ; preds = %if.end66
  %ns79 = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 12
  %41 = ptrtoint ptr %ns79 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ns, ptr %ns79, align 64
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 127
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #13
  %shm_clist = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 11
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %sysvshm = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 104
  %46 = ptrtoint ptr %sysvshm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sysvshm, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %shm_clist, ptr noundef %sysvshm, ptr noundef %47) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end78.list_add.exit_crit_edge

if.end78.list_add.exit_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %shm_clist, ptr %prev1.i.i, align 4
  %49 = ptrtoint ptr %shm_clist to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %shm_clist, align 8
  %prev3.i.i = getelementptr inbounds %struct.shmid_kernel, ptr %call7.i, i32 0, i32 11, i32 1
  %50 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %sysvshm, ptr %prev3.i.i, align 4
  %51 = ptrtoint ptr %sysvshm to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %shm_clist, ptr %sysvshm, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end78.list_add.exit_crit_edge
  %52 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task, align 8
  %alloc_lock.i169 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 127
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i169) #13
  %id = getelementptr inbounds %struct.kern_ipc_perm, ptr %call7.i, i32 0, i32 2
  %54 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id, align 16
  %f_inode.i = getelementptr inbounds %struct.file, ptr %call61, i32 0, i32 2
  %56 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %55, ptr %i_ino, align 8
  %59 = ptrtoint ptr %shm_tot to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %shm_tot, align 4
  %add90 = add i32 %60, %shr
  store i32 %add90, ptr %shm_tot, align 4
  %61 = load i32, ptr %id, align 16
  call void @_raw_spin_unlock(ptr noundef nonnull %call7.i) #13
  call fastcc void @rcu_read_unlock()
  br label %cleanup98

no_id:                                            ; preds = %if.end66
  %62 = ptrtoint ptr %shm_cprid to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shm_cprid, align 8
  %cmp.not.i = icmp eq ptr %63, null
  br i1 %cmp.not.i, label %no_id.ipc_update_pid.exit_crit_edge, label %if.then.i

no_id.ipc_update_pid.exit_crit_edge:              ; preds = %no_id
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_update_pid.exit

if.then.i:                                        ; preds = %no_id
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %shm_cprid to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %shm_cprid, align 8
  call void @put_pid(ptr noundef nonnull %63) #13
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %if.then.i, %no_id.ipc_update_pid.exit_crit_edge
  %65 = ptrtoint ptr %shm_lprid to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %shm_lprid, align 4
  %cmp.not.i170 = icmp eq ptr %66, null
  br i1 %cmp.not.i170, label %ipc_update_pid.exit.ipc_update_pid.exit172_crit_edge, label %if.then.i171

ipc_update_pid.exit.ipc_update_pid.exit172_crit_edge: ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_update_pid.exit172

if.then.i171:                                     ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %shm_lprid to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %shm_lprid, align 4
  call void @put_pid(ptr noundef nonnull %66) #13
  br label %ipc_update_pid.exit172

ipc_update_pid.exit172:                           ; preds = %if.then.i171, %ipc_update_pid.exit.ipc_update_pid.exit172_crit_edge
  call void @fput(ptr noundef %call61) #13
  call void @ipc_rcu_putref(ptr noundef nonnull %call7.i, ptr noundef nonnull @shm_rcu_free) #13
  br label %cleanup98

no_file:                                          ; preds = %if.end58.no_file_crit_edge, %if.end27.no_file_crit_edge
  %error.1 = phi i32 [ %20, %if.end58.no_file_crit_edge ], [ -22, %if.end27.no_file_crit_edge ]
  %rcu = getelementptr inbounds %struct.kern_ipc_perm, ptr %call7.i, i32 0, i32 12
  call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @shm_rcu_free) #13
  br label %cleanup98

cleanup98:                                        ; preds = %no_file, %ipc_update_pid.exit172, %list_add.exit, %if.then26, %if.end14.cleanup98_crit_edge, %lor.lhs.false9.cleanup98_crit_edge, %if.end5.cleanup98_crit_edge, %if.end.cleanup98_crit_edge, %lor.lhs.false.cleanup98_crit_edge, %entry.cleanup98_crit_edge
  %retval.0 = phi i32 [ %call24, %if.then26 ], [ %error.1, %no_file ], [ %call74, %ipc_update_pid.exit172 ], [ %61, %list_add.exit ], [ -22, %lor.lhs.false.cleanup98_crit_edge ], [ -22, %entry.cleanup98_crit_edge ], [ -28, %if.end.cleanup98_crit_edge ], [ -28, %lor.lhs.false9.cleanup98_crit_edge ], [ -28, %if.end5.cleanup98_crit_edge ], [ -12, %if.end14.cleanup98_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %name) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_shm_associate(ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @shm_more_checks(ptr nocapture noundef readonly %ipcp, ptr nocapture noundef readonly %params) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shm_segsz = getelementptr inbounds %struct.shmid_kernel, ptr %ipcp, i32 0, i32 3
  %0 = ptrtoint ptr %shm_segsz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shm_segsz, align 8
  %u = getelementptr inbounds %struct.ipc_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  %. = select i1 %cmp, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_shmget(i32 noundef %key, i32 noundef %size, i32 noundef %shmflg) #0 align 64 {
entry:
  %shm_params.i.i = alloca %struct.ipc_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %shm_params.i.i) #13
  %0 = getelementptr inbounds %struct.ipc_params, ptr %shm_params.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ipc_params, ptr %shm_params.i.i, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 110
  %6 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsproxy.i.i, align 4
  %ipc_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ipc_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipc_ns.i.i, align 4
  %10 = ptrtoint ptr %shm_params.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %key, ptr %shm_params.i.i, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shmflg, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %size, ptr %1, align 4
  %arrayidx.i.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2
  %call2.i.i = call i32 @ipcget(ptr noundef %9, ptr noundef %arrayidx.i.i, ptr noundef nonnull @ksys_shmget.shm_ops, ptr noundef nonnull %shm_params.i.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %shm_params.i.i) #13
  ret i32 %call2.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_shmctl(i32 noundef %shmid, i32 noundef %cmd, i32 noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  %call.i = tail call fastcc i32 @ksys_shmctl(i32 noundef %shmid, i32 noundef %cmd, ptr noundef %0, i32 noundef 256) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_old_shmctl(i32 noundef %shmid, i32 noundef %cmd, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %cmd.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cmd, ptr %cmd.addr, align 4
  %call = call i32 @ipc_parse_version(ptr noundef nonnull %cmd.addr) #13
  %1 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd.addr, align 4
  %call1 = call fastcc i32 @ksys_shmctl(i32 noundef %shmid, i32 noundef %2, ptr noundef %buf, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_parse_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksys_shmctl(i32 noundef %shmid, i32 noundef %cmd, ptr noundef %buf, i32 noundef %version) unnamed_addr #0 align 64 {
entry:
  %tbuf_old.i = alloca %struct.shmid_ds, align 4
  %out.i95 = alloca %struct.shmid_ds, align 4
  %out.i = alloca %struct.shminfo, align 4
  %sem64 = alloca %struct.shmid64_ds, align 4
  %shminfo = alloca %struct.shminfo64, align 4
  %shm_info = alloca %struct.shm_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %sem64) #13
  %0 = call ptr @memset(ptr %sem64, i32 255, i32 84)
  %1 = or i32 %cmd, %shmid
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end, label %entry.cleanup37_crit_edge

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 110
  %6 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipc_ns, align 4
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup37_crit_edge [
    i32 3, label %sw.bb
    i32 14, label %sw.bb9
    i32 13, label %if.end.sw.bb19_crit_edge
    i32 15, label %if.end.sw.bb19_crit_edge199
    i32 2, label %if.end.sw.bb19_crit_edge200
    i32 1, label %sw.bb28
    i32 0, label %if.end.sw.bb33_crit_edge
    i32 11, label %if.end.sw.bb35_crit_edge
    i32 12, label %if.end.sw.bb35_crit_edge201
  ]

if.end.sw.bb35_crit_edge201:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb35

if.end.sw.bb35_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb35

if.end.sw.bb33_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33

if.end.sw.bb19_crit_edge200:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

if.end.sw.bb19_crit_edge199:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

if.end.sw.bb19_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

if.end.cleanup37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %shminfo) #13
  %11 = call ptr @memset(ptr %shminfo, i32 255, i32 36)
  %call.i = tail call i32 @security_shm_shmctl(ptr noundef null, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %shmctl_ipc_info.exit

if.then.i:                                        ; preds = %sw.bb
  %12 = getelementptr inbounds i8, ptr %shminfo, i32 20
  %13 = call ptr @memset(ptr %12, i32 0, i32 16)
  %shm_ctlmni.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 11
  %14 = ptrtoint ptr %shm_ctlmni.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shm_ctlmni.i, align 4
  %shmseg.i = getelementptr inbounds %struct.shminfo64, ptr %shminfo, i32 0, i32 3
  %16 = ptrtoint ptr %shmseg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %shmseg.i, align 4
  %shmmni.i = getelementptr inbounds %struct.shminfo64, ptr %shminfo, i32 0, i32 2
  %17 = ptrtoint ptr %shmmni.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %shmmni.i, align 4
  %shm_ctlmax.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 8
  %18 = ptrtoint ptr %shm_ctlmax.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shm_ctlmax.i, align 4
  %20 = ptrtoint ptr %shminfo to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %shminfo, align 4
  %shm_ctlall.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 9
  %21 = ptrtoint ptr %shm_ctlall.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %shm_ctlall.i, align 4
  %shmall.i = getelementptr inbounds %struct.shminfo64, ptr %shminfo, i32 0, i32 4
  %23 = ptrtoint ptr %shmall.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %shmall.i, align 4
  %shmmin.i = getelementptr inbounds %struct.shminfo64, ptr %shminfo, i32 0, i32 1
  %24 = ptrtoint ptr %shmmin.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %shmmin.i, align 4
  %arrayidx.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2
  %rwsem.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2, i32 2
  tail call void @down_read(ptr noundef %rwsem.i) #13
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i66 = icmp eq i32 %26, 0
  br i1 %cmp.i.i66, label %if.then.i.shmctl_ipc_info.exit.thread_crit_edge, label %if.end.i.i67

if.then.i.shmctl_ipc_info.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shmctl_ipc_info.exit.thread

if.end.i.i67:                                     ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni to i32))
  %27 = load i32, ptr @ipc_mni, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %27)
  %cmp2.i.i = icmp eq i32 %26, %27
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i67
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %26, -1
  br label %shmctl_ipc_info.exit.thread

if.end4.i.i:                                      ; preds = %if.end.i.i67
  call void @__sanitizer_cov_trace_pc() #15
  %max_idx.i.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %max_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_idx.i.i, align 4
  br label %shmctl_ipc_info.exit.thread

shmctl_ipc_info.exit.thread:                      ; preds = %if.end4.i.i, %if.then3.i.i, %if.then.i.shmctl_ipc_info.exit.thread_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then3.i.i ], [ %29, %if.end4.i.i ], [ -1, %if.then.i.shmctl_ipc_info.exit.thread_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i) #13
  %30 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i, i32 0) #13
  br label %if.end5

shmctl_ipc_info.exit:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %shmctl_ipc_info.exit.cleanup_crit_edge, label %shmctl_ipc_info.exit.if.end5_crit_edge

shmctl_ipc_info.exit.if.end5_crit_edge:           ; preds = %shmctl_ipc_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

shmctl_ipc_info.exit.cleanup_crit_edge:           ; preds = %shmctl_ipc_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %shmctl_ipc_info.exit.if.end5_crit_edge, %shmctl_ipc_info.exit.thread
  %err.0.i179 = phi i32 [ %30, %shmctl_ipc_info.exit.thread ], [ %call.i, %shmctl_ipc_info.exit.if.end5_crit_edge ]
  %31 = zext i32 %version to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %version, label %if.end5.cleanup_crit_edge [
    i32 256, label %if.end59.i.i.i
    i32 0, label %sw.bb1.i
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end59.i.i.i:                                   ; preds = %if.end5
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i.i68 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i68, label %if.end59.i.i.i.cleanup_crit_edge, label %if.end.i.i.i

if.end59.i.i.i.cleanup_crit_edge:                 ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end59.i.i.i
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 36, i32 -1226833920) #18, !srcloc !130
  %asmresult.i.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.cleanup_crit_edge

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %shminfo, i32 noundef 36) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %shminfo, i32 noundef 36) #13
  br label %copy_shminfo_to_user.exit

sw.bb1.i:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %out.i) #13
  %33 = getelementptr inbounds %struct.shminfo, ptr %out.i, i32 0, i32 1
  %34 = getelementptr inbounds %struct.shminfo, ptr %out.i, i32 0, i32 2
  %35 = getelementptr inbounds %struct.shminfo, ptr %out.i, i32 0, i32 3
  %36 = getelementptr inbounds %struct.shminfo, ptr %out.i, i32 0, i32 4
  %37 = ptrtoint ptr %shminfo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %shminfo, align 4
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 2147483647) #13
  %40 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %out.i, align 4
  %shmmin.i69 = getelementptr inbounds %struct.shminfo64, ptr %shminfo, i32 0, i32 1
  %41 = ptrtoint ptr %shmmin.i69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %shmmin.i69, align 4
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %33, align 4
  %shmmni.i70 = getelementptr inbounds %struct.shminfo64, ptr %shminfo, i32 0, i32 2
  %44 = ptrtoint ptr %shmmni.i70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %shmmni.i70, align 4
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %34, align 4
  %shmseg.i71 = getelementptr inbounds %struct.shminfo64, ptr %shminfo, i32 0, i32 3
  %47 = ptrtoint ptr %shmseg.i71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %shmseg.i71, align 4
  %49 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %35, align 4
  %shmall.i72 = getelementptr inbounds %struct.shminfo64, ptr %shminfo, i32 0, i32 4
  %50 = ptrtoint ptr %shmall.i72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %shmall.i72, align 4
  %52 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %36, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i21.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i21.i, label %sw.bb1.i.copy_to_user.exit29.i_crit_edge, label %if.end.i.i24.i

sw.bb1.i.copy_to_user.exit29.i_crit_edge:         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit29.i

if.end.i.i24.i:                                   ; preds = %sw.bb1.i
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 20, i32 -1226833920) #18, !srcloc !130
  %asmresult.i.i22.i = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i22.i)
  %cmp.i6.i23.i = icmp eq i32 %asmresult.i.i22.i, 0
  br i1 %cmp.i6.i23.i, label %if.then2.i.i27.i, label %if.end.i.i24.i.copy_to_user.exit29.i_crit_edge

if.end.i.i24.i.copy_to_user.exit29.i_crit_edge:   ; preds = %if.end.i.i24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit29.i

if.then2.i.i27.i:                                 ; preds = %if.end.i.i24.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i25.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %out.i, i32 noundef 20) #13
  %call.i12.i.i26.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %out.i, i32 noundef 20) #13
  br label %copy_to_user.exit29.i

copy_to_user.exit29.i:                            ; preds = %if.then2.i.i27.i, %if.end.i.i24.i.copy_to_user.exit29.i_crit_edge, %sw.bb1.i.copy_to_user.exit29.i_crit_edge
  %n.addr.0.i28.i = phi i32 [ 20, %sw.bb1.i.copy_to_user.exit29.i_crit_edge ], [ %call.i12.i.i26.i, %if.then2.i.i27.i ], [ 20, %if.end.i.i24.i.copy_to_user.exit29.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %out.i) #13
  br label %copy_shminfo_to_user.exit

copy_shminfo_to_user.exit:                        ; preds = %copy_to_user.exit29.i, %if.then2.i.i.i
  %retval.0.i = phi i32 [ %n.addr.0.i28.i, %copy_to_user.exit29.i ], [ %call.i12.i.i.i, %if.then2.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %tobool.not, i32 %err.0.i179, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_shminfo_to_user.exit, %if.end.i.i.i.cleanup_crit_edge, %if.end59.i.i.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %shmctl_ipc_info.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %shmctl_ipc_info.exit.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ -14, %if.end59.i.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.i.cleanup_crit_edge ], [ %spec.select, %copy_shminfo_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %shminfo) #13
  br label %cleanup37

sw.bb9:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %shm_info) #13
  %54 = getelementptr inbounds %struct.shm_info, ptr %shm_info, i32 0, i32 1
  %55 = getelementptr inbounds %struct.shm_info, ptr %shm_info, i32 0, i32 2
  %56 = getelementptr inbounds %struct.shm_info, ptr %shm_info, i32 0, i32 3
  %57 = getelementptr inbounds %struct.shm_info, ptr %shm_info, i32 0, i32 4
  %58 = getelementptr inbounds %struct.shm_info, ptr %shm_info, i32 0, i32 5
  %59 = call ptr @memset(ptr %shm_info, i32 255, i32 24)
  %call.i73 = tail call i32 @security_shm_shmctl(ptr noundef null, i32 noundef 14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i74 = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i74, label %if.then.i77, label %shmctl_shm_info.exit

if.then.i77:                                      ; preds = %sw.bb9
  %60 = getelementptr inbounds i8, ptr %shm_info, i32 4
  %61 = call ptr @memset(ptr %60, i32 0, i32 20)
  %arrayidx.i75 = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2
  %rwsem.i76 = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2, i32 2
  tail call void @down_read(ptr noundef %rwsem.i76) #13
  %62 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i75, align 4
  %64 = ptrtoint ptr %shm_info to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %shm_info, align 4
  %65 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %55, align 4
  %66 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %56, align 4
  %67 = load i32, ptr %arrayidx.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp13.i.i = icmp sgt i32 %67, 0
  br i1 %cmp13.i.i, label %for.body.lr.ph.i.i, label %if.then.i77.shm_get_stat.exit.i_crit_edge

if.then.i77.shm_get_stat.exit.i_crit_edge:        ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_get_stat.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i77
  %ipcs_idr.i.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %next_id.015.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc6.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %total.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %total.1.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %call.i.i78 = tail call ptr @idr_find(ptr noundef %ipcs_idr.i.i, i32 noundef %next_id.015.i.i) #13
  %cmp4.i.i = icmp eq ptr %call.i.i78, null
  br i1 %cmp4.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i79

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end.i.i79:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %shm_file.i.i.i = getelementptr inbounds %struct.shmid_kernel, ptr %call.i.i78, i32 0, i32 1
  %68 = ptrtoint ptr %shm_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %shm_file.i.i.i, align 128
  %f_inode.i.i.i.i = getelementptr inbounds %struct.file, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %f_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %f_inode.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %71, i32 -136
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr.i.i.i.i) #13
  %i_mapping.i.i.i = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %i_mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_mapping.i.i.i, align 8
  %nrpages.i.i.i = getelementptr inbounds %struct.address_space, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %nrpages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nrpages.i.i.i, align 4
  %76 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %55, align 4
  %add.i.i.i = add i32 %77, %75
  store i32 %add.i.i.i, ptr %55, align 4
  %swapped.i.i.i = getelementptr i8, ptr %71, i32 -80
  %78 = ptrtoint ptr %swapped.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %swapped.i.i.i, align 8
  %80 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %56, align 4
  %add2.i.i.i = add i32 %81, %79
  store i32 %add2.i.i.i, ptr %56, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr.i.i.i.i) #13
  %inc.i.i = add nsw i32 %total.014.i.i, 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i79, %for.body.i.i.cleanup.i.i_crit_edge
  %total.1.i.i = phi i32 [ %inc.i.i, %if.end.i.i79 ], [ %total.014.i.i, %for.body.i.i.cleanup.i.i_crit_edge ]
  %inc6.i.i = add i32 %next_id.015.i.i, 1
  %cmp.i.i80 = icmp slt i32 %total.1.i.i, %67
  br i1 %cmp.i.i80, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.shm_get_stat.exit.i_crit_edge

cleanup.i.i.shm_get_stat.exit.i_crit_edge:        ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shm_get_stat.exit.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

shm_get_stat.exit.i:                              ; preds = %cleanup.i.i.shm_get_stat.exit.i_crit_edge, %if.then.i77.shm_get_stat.exit.i_crit_edge
  %shm_tot.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 10
  %82 = ptrtoint ptr %shm_tot.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %shm_tot.i, align 4
  %84 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %54, align 4
  %85 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %57, align 4
  %86 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %58, align 4
  %87 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i25.i = icmp eq i32 %88, 0
  br i1 %cmp.i25.i, label %shm_get_stat.exit.i.shmctl_shm_info.exit.thread_crit_edge, label %if.end.i26.i

shm_get_stat.exit.i.shmctl_shm_info.exit.thread_crit_edge: ; preds = %shm_get_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shmctl_shm_info.exit.thread

if.end.i26.i:                                     ; preds = %shm_get_stat.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni to i32))
  %89 = load i32, ptr @ipc_mni, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %89)
  %cmp2.i.i81 = icmp eq i32 %88, %89
  br i1 %cmp2.i.i81, label %if.then3.i.i83, label %if.end4.i.i85

if.then3.i.i83:                                   ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i82 = add i32 %88, -1
  br label %shmctl_shm_info.exit.thread

if.end4.i.i85:                                    ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #15
  %max_idx.i.i84 = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2, i32 4
  %90 = ptrtoint ptr %max_idx.i.i84 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_idx.i.i84, align 4
  br label %shmctl_shm_info.exit.thread

shmctl_shm_info.exit.thread:                      ; preds = %if.end4.i.i85, %if.then3.i.i83, %shm_get_stat.exit.i.shmctl_shm_info.exit.thread_crit_edge
  %retval.0.i.i86 = phi i32 [ %sub.i.i82, %if.then3.i.i83 ], [ %91, %if.end4.i.i85 ], [ -1, %shm_get_stat.exit.i.shmctl_shm_info.exit.thread_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i76) #13
  %92 = tail call i32 @llvm.smax.i32(i32 %retval.0.i.i86, i32 0) #13
  br label %if.end59.i.i

shmctl_shm_info.exit:                             ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp11 = icmp slt i32 %call.i73, 0
  br i1 %cmp11, label %shmctl_shm_info.exit.cleanup18_crit_edge, label %shmctl_shm_info.exit.if.end59.i.i_crit_edge

shmctl_shm_info.exit.if.end59.i.i_crit_edge:      ; preds = %shmctl_shm_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i.i

shmctl_shm_info.exit.cleanup18_crit_edge:         ; preds = %shmctl_shm_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

if.end59.i.i:                                     ; preds = %shmctl_shm_info.exit.if.end59.i.i_crit_edge, %shmctl_shm_info.exit.thread
  %err.0.i88184 = phi i32 [ %92, %shmctl_shm_info.exit.thread ], [ %call.i73, %shmctl_shm_info.exit.if.end59.i.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end59.i.i.cleanup18_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup18_crit_edge:                 ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

if.end.i.i:                                       ; preds = %if.end59.i.i
  %93 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 24, i32 -1226833920) #18, !srcloc !130
  %asmresult.i.i = extractvalue { i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup18_crit_edge

if.end.i.i.cleanup18_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %shm_info, i32 noundef 24) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %shm_info, i32 noundef 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool15.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select197 = select i1 %tobool15.not, i32 %err.0.i88184, i32 -14
  br label %cleanup18

cleanup18:                                        ; preds = %copy_to_user.exit, %if.end.i.i.cleanup18_crit_edge, %if.end59.i.i.cleanup18_crit_edge, %shmctl_shm_info.exit.cleanup18_crit_edge
  %retval.1 = phi i32 [ %call.i73, %shmctl_shm_info.exit.cleanup18_crit_edge ], [ -14, %if.end59.i.i.cleanup18_crit_edge ], [ -14, %if.end.i.i.cleanup18_crit_edge ], [ %spec.select197, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %shm_info) #13
  br label %cleanup37

sw.bb19:                                          ; preds = %if.end.sw.bb19_crit_edge, %if.end.sw.bb19_crit_edge199, %if.end.sw.bb19_crit_edge200
  %94 = call ptr @memset(ptr %sem64, i32 0, i32 84)
  %95 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %98, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i89 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i89, label %sw.bb19.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb19.rcu_read_lock.exit.i_crit_edge:           ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb19
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i90

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i90:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i90, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.bb19.rcu_read_lock.exit.i_crit_edge
  %99 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %cmd, label %if.else.i [
    i32 13, label %rcu_read_lock.exit.i.if.then.i92_crit_edge
    i32 15, label %rcu_read_lock.exit.i.if.then.i92_crit_edge202
  ]

rcu_read_lock.exit.i.if.then.i92_crit_edge202:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i92

rcu_read_lock.exit.i.if.then.i92_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i92

if.then.i92:                                      ; preds = %rcu_read_lock.exit.i.if.then.i92_crit_edge, %rcu_read_lock.exit.i.if.then.i92_crit_edge202
  %arrayidx.i.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2
  %call.i94.i = tail call ptr @ipc_obtain_object_idr(ptr noundef %arrayidx.i.i, i32 noundef %shmid) #13
  %cmp.i.i91 = icmp ugt ptr %call.i94.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i91, label %if.then3.i, label %if.end10.i

if.then3.i:                                       ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %call.i94.i to i32
  br label %out_unlock.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %arrayidx.i95.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2
  %call.i96.i = tail call ptr @ipc_obtain_object_check(ptr noundef %arrayidx.i95.i, i32 noundef %shmid) #13
  %cmp.i97.i = icmp ugt ptr %call.i96.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97.i, label %if.then7.i, label %if.else.i.if.else13.i_crit_edge

if.else.i.if.else13.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else13.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %call.i96.i to i32
  br label %out_unlock.i

if.end10.i:                                       ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %cmd)
  %cmp11.i = icmp eq i32 %cmd, 15
  br i1 %cmp11.i, label %if.end10.i.if.end18.i_crit_edge, label %if.end10.i.if.else13.i_crit_edge

if.end10.i.if.else13.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else13.i

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.else13.i:                                      ; preds = %if.end10.i.if.else13.i_crit_edge, %if.else.i.if.else13.i_crit_edge
  %shp.0111.i = phi ptr [ %call.i94.i, %if.end10.i.if.else13.i_crit_edge ], [ %call.i96.i, %if.else.i.if.else13.i_crit_edge ]
  %call15.i = tail call i32 @ipcperms(ptr noundef %9, ptr noundef %shp.0111.i, i16 noundef signext 292) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i93 = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i93, label %if.else13.i.if.end18.i_crit_edge, label %if.else13.i.out_unlock.i_crit_edge

if.else13.i.out_unlock.i_crit_edge:               ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i

if.else13.i.if.end18.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else13.i.if.end18.i_crit_edge, %if.end10.i.if.end18.i_crit_edge
  %shp.0110.i = phi ptr [ %shp.0111.i, %if.else13.i.if.end18.i_crit_edge ], [ %call.i94.i, %if.end10.i.if.end18.i_crit_edge ]
  %call20.i = tail call i32 @security_shm_shmctl(ptr noundef %shp.0110.i, i32 noundef %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end18.i.out_unlock.i_crit_edge

if.end18.i.out_unlock.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i

if.end23.i:                                       ; preds = %if.end18.i
  tail call void @_raw_spin_lock(ptr noundef %shp.0110.i) #13
  %deleted.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %shp.0110.i, i32 0, i32 1
  %102 = ptrtoint ptr %deleted.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %deleted.i.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i98.i = icmp eq i8 %103, 0
  br i1 %tobool.not.i98.i, label %if.end29.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %shp.0110.i) #13
  br label %out_unlock.i

if.end29.i:                                       ; preds = %if.end23.i
  call void @kernel_to_ipc64_perm(ptr noundef %shp.0110.i, ptr noundef nonnull %sem64) #13
  %shm_segsz.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp.0110.i, i32 0, i32 3
  %104 = ptrtoint ptr %shm_segsz.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %shm_segsz.i, align 8
  %shm_segsz32.i = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 1
  %106 = ptrtoint ptr %shm_segsz32.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %shm_segsz32.i, align 4
  %shm_atim.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp.0110.i, i32 0, i32 4
  %107 = ptrtoint ptr %shm_atim.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %shm_atim.i, align 16
  %conv.i = trunc i64 %108 to i32
  %shm_atime.i = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 2
  %109 = ptrtoint ptr %shm_atime.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv.i, ptr %shm_atime.i, align 4
  %shm_dtim.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp.0110.i, i32 0, i32 5
  %110 = ptrtoint ptr %shm_dtim.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %shm_dtim.i, align 8
  %conv33.i = trunc i64 %111 to i32
  %shm_dtime.i = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 4
  %112 = ptrtoint ptr %shm_dtime.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv33.i, ptr %shm_dtime.i, align 4
  %shm_ctim.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp.0110.i, i32 0, i32 6
  %113 = ptrtoint ptr %shm_ctim.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %shm_ctim.i, align 32
  %conv34.i = trunc i64 %114 to i32
  %shm_ctime.i = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 6
  %115 = ptrtoint ptr %shm_ctime.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv34.i, ptr %shm_ctime.i, align 4
  %116 = lshr i64 %108, 32
  %conv36.i = trunc i64 %116 to i32
  %shm_atime_high.i = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 3
  %117 = ptrtoint ptr %shm_atime_high.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv36.i, ptr %shm_atime_high.i, align 4
  %118 = lshr i64 %111, 32
  %conv39.i = trunc i64 %118 to i32
  %shm_dtime_high.i = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 5
  %119 = ptrtoint ptr %shm_dtime_high.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv39.i, ptr %shm_dtime_high.i, align 4
  %120 = lshr i64 %114, 32
  %conv42.i = trunc i64 %120 to i32
  %shm_ctime_high.i = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 7
  %121 = ptrtoint ptr %shm_ctime_high.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv42.i, ptr %shm_ctime_high.i, align 4
  %shm_cprid.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp.0110.i, i32 0, i32 7
  %122 = ptrtoint ptr %shm_cprid.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %shm_cprid.i, align 8
  %call43.i = call i32 @pid_vnr(ptr noundef %123) #13
  %shm_cpid.i = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 8
  %124 = ptrtoint ptr %shm_cpid.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call43.i, ptr %shm_cpid.i, align 4
  %shm_lprid.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp.0110.i, i32 0, i32 8
  %125 = ptrtoint ptr %shm_lprid.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %shm_lprid.i, align 4
  %call44.i = call i32 @pid_vnr(ptr noundef %126) #13
  %shm_lpid.i = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 9
  %127 = ptrtoint ptr %shm_lpid.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call44.i, ptr %shm_lpid.i, align 4
  %shm_nattch.i = getelementptr inbounds %struct.shmid_kernel, ptr %shp.0110.i, i32 0, i32 2
  %128 = ptrtoint ptr %shm_nattch.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %shm_nattch.i, align 4
  %shm_nattch45.i = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 10
  %130 = ptrtoint ptr %shm_nattch45.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %shm_nattch45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp46.i = icmp eq i32 %cmd, 2
  br i1 %cmp46.i, label %if.end29.i.if.end51.i_crit_edge, label %if.else49.i

if.end29.i.if.end51.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

if.else49.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %shp.0110.i, i32 0, i32 2
  %131 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %id.i, align 16
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else49.i, %if.end29.i.if.end51.i_crit_edge
  %err.0.i94 = phi i32 [ %132, %if.else49.i ], [ 0, %if.end29.i.if.end51.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %shp.0110.i) #13
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end51.i, %if.then27.i, %if.end18.i.out_unlock.i_crit_edge, %if.else13.i.out_unlock.i_crit_edge, %if.then7.i, %if.then3.i
  %err.1.i = phi i32 [ %100, %if.then3.i ], [ %call20.i, %if.end18.i.out_unlock.i_crit_edge ], [ %err.0.i94, %if.end51.i ], [ -43, %if.then27.i ], [ -13, %if.else13.i.out_unlock.i_crit_edge ], [ %101, %if.then7.i ]
  %call.i99.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i99.i, label %out_unlock.i.shmctl_stat.exit_crit_edge, label %land.lhs.true.i102.i

out_unlock.i.shmctl_stat.exit_crit_edge:          ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shmctl_stat.exit

land.lhs.true.i102.i:                             ; preds = %out_unlock.i
  %call1.i100.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100.i)
  %tobool.not.i101.i = icmp eq i32 %call1.i100.i, 0
  br i1 %tobool.not.i101.i, label %land.lhs.true.i102.i.shmctl_stat.exit_crit_edge, label %land.lhs.true2.i104.i

land.lhs.true.i102.i.shmctl_stat.exit_crit_edge:  ; preds = %land.lhs.true.i102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shmctl_stat.exit

land.lhs.true2.i104.i:                            ; preds = %land.lhs.true.i102.i
  %.b4.i103.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i103.i, label %land.lhs.true2.i104.i.shmctl_stat.exit_crit_edge, label %if.then.i105.i

land.lhs.true2.i104.i.shmctl_stat.exit_crit_edge: ; preds = %land.lhs.true2.i104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shmctl_stat.exit

if.then.i105.i:                                   ; preds = %land.lhs.true2.i104.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %shmctl_stat.exit

shmctl_stat.exit:                                 ; preds = %if.then.i105.i, %land.lhs.true2.i104.i.shmctl_stat.exit_crit_edge, %land.lhs.true.i102.i.shmctl_stat.exit_crit_edge, %out_unlock.i.shmctl_stat.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %133 = call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i106.i = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i.i.i.i106.i to ptr
  %preempt_count.i.i.i.i107.i = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %preempt_count.i.i.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %preempt_count.i.i.i.i107.i, align 4
  %sub.i.i.i.i = add i32 %136, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i107.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp21 = icmp slt i32 %err.1.i, 0
  br i1 %cmp21, label %shmctl_stat.exit.cleanup37_crit_edge, label %if.end23

shmctl_stat.exit.cleanup37_crit_edge:             ; preds = %shmctl_stat.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

if.end23:                                         ; preds = %shmctl_stat.exit
  %137 = zext i32 %version to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %version, label %if.end23.cleanup37_crit_edge [
    i32 256, label %if.end59.i.i.i100
    i32 0, label %sw.bb1.i115
  ]

if.end23.cleanup37_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

if.end59.i.i.i100:                                ; preds = %if.end23
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i.i99 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i99, label %if.end59.i.i.i100.cleanup37_crit_edge, label %if.end.i.i.i103

if.end59.i.i.i100.cleanup37_crit_edge:            ; preds = %if.end59.i.i.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

if.end.i.i.i103:                                  ; preds = %if.end59.i.i.i100
  %138 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 84, i32 -1226833920) #18, !srcloc !130
  %asmresult.i.i.i101 = extractvalue { i32, i32 } %138, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i101)
  %cmp.i6.i.i102 = icmp eq i32 %asmresult.i.i.i101, 0
  br i1 %cmp.i6.i.i102, label %if.then2.i.i.i106, label %if.end.i.i.i103.cleanup37_crit_edge

if.end.i.i.i103.cleanup37_crit_edge:              ; preds = %if.end.i.i.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

if.then2.i.i.i106:                                ; preds = %if.end.i.i.i103
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i104 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sem64, i32 noundef 84) #13
  %call.i12.i.i.i105 = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %sem64, i32 noundef 84) #13
  br label %copy_shmid_to_user.exit

sw.bb1.i115:                                      ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %out.i95) #13
  %139 = call ptr @memset(ptr %out.i95, i32 0, i32 48)
  call void @ipc64_perm_to_ipc_perm(ptr noundef nonnull %sem64, ptr noundef nonnull %out.i95) #13
  %shm_segsz.i107 = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 1
  %140 = ptrtoint ptr %shm_segsz.i107 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %shm_segsz.i107, align 4
  %shm_segsz3.i = getelementptr inbounds %struct.shmid_ds, ptr %out.i95, i32 0, i32 1
  %142 = ptrtoint ptr %shm_segsz3.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %shm_segsz3.i, align 4
  %shm_atime.i108 = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 2
  %143 = ptrtoint ptr %shm_atime.i108 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %shm_atime.i108, align 4
  %shm_atime4.i = getelementptr inbounds %struct.shmid_ds, ptr %out.i95, i32 0, i32 2
  %145 = ptrtoint ptr %shm_atime4.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %shm_atime4.i, align 4
  %shm_dtime.i109 = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 4
  %146 = ptrtoint ptr %shm_dtime.i109 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %shm_dtime.i109, align 4
  %shm_dtime5.i = getelementptr inbounds %struct.shmid_ds, ptr %out.i95, i32 0, i32 3
  %148 = ptrtoint ptr %shm_dtime5.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %shm_dtime5.i, align 4
  %shm_ctime.i110 = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 6
  %149 = ptrtoint ptr %shm_ctime.i110 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %shm_ctime.i110, align 4
  %shm_ctime6.i = getelementptr inbounds %struct.shmid_ds, ptr %out.i95, i32 0, i32 4
  %151 = ptrtoint ptr %shm_ctime6.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %shm_ctime6.i, align 4
  %shm_cpid.i111 = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 8
  %152 = ptrtoint ptr %shm_cpid.i111 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %shm_cpid.i111, align 4
  %conv.i112 = trunc i32 %153 to i16
  %shm_cpid7.i = getelementptr inbounds %struct.shmid_ds, ptr %out.i95, i32 0, i32 5
  %154 = ptrtoint ptr %shm_cpid7.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv.i112, ptr %shm_cpid7.i, align 4
  %shm_lpid.i113 = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 9
  %155 = ptrtoint ptr %shm_lpid.i113 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %shm_lpid.i113, align 4
  %conv8.i = trunc i32 %156 to i16
  %shm_lpid9.i = getelementptr inbounds %struct.shmid_ds, ptr %out.i95, i32 0, i32 6
  %157 = ptrtoint ptr %shm_lpid9.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv8.i, ptr %shm_lpid9.i, align 2
  %shm_nattch.i114 = getelementptr inbounds %struct.shmid64_ds, ptr %sem64, i32 0, i32 10
  %158 = ptrtoint ptr %shm_nattch.i114 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %shm_nattch.i114, align 4
  %conv10.i = trunc i32 %159 to i16
  %shm_nattch11.i = getelementptr inbounds %struct.shmid_ds, ptr %out.i95, i32 0, i32 7
  %160 = ptrtoint ptr %shm_nattch11.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv10.i, ptr %shm_nattch11.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i26.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i26.i, label %sw.bb1.i115.copy_to_user.exit34.i_crit_edge, label %if.end.i.i29.i

sw.bb1.i115.copy_to_user.exit34.i_crit_edge:      ; preds = %sw.bb1.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit34.i

if.end.i.i29.i:                                   ; preds = %sw.bb1.i115
  %161 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 48, i32 -1226833920) #18, !srcloc !130
  %asmresult.i.i27.i = extractvalue { i32, i32 } %161, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i27.i)
  %cmp.i6.i28.i = icmp eq i32 %asmresult.i.i27.i, 0
  br i1 %cmp.i6.i28.i, label %if.then2.i.i32.i, label %if.end.i.i29.i.copy_to_user.exit34.i_crit_edge

if.end.i.i29.i.copy_to_user.exit34.i_crit_edge:   ; preds = %if.end.i.i29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit34.i

if.then2.i.i32.i:                                 ; preds = %if.end.i.i29.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i30.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %out.i95, i32 noundef 48) #13
  %call.i12.i.i31.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %out.i95, i32 noundef 48) #13
  br label %copy_to_user.exit34.i

copy_to_user.exit34.i:                            ; preds = %if.then2.i.i32.i, %if.end.i.i29.i.copy_to_user.exit34.i_crit_edge, %sw.bb1.i115.copy_to_user.exit34.i_crit_edge
  %n.addr.0.i33.i = phi i32 [ 48, %sw.bb1.i115.copy_to_user.exit34.i_crit_edge ], [ %call.i12.i.i31.i, %if.then2.i.i32.i ], [ 48, %if.end.i.i29.i.copy_to_user.exit34.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %out.i95) #13
  br label %copy_shmid_to_user.exit

copy_shmid_to_user.exit:                          ; preds = %copy_to_user.exit34.i, %if.then2.i.i.i106
  %retval.0.i116 = phi i32 [ %n.addr.0.i33.i, %copy_to_user.exit34.i ], [ %call.i12.i.i.i105, %if.then2.i.i.i106 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i116)
  %tobool25.not = icmp eq i32 %retval.0.i116, 0
  %spec.select198 = select i1 %tobool25.not, i32 %err.1.i, i32 -14
  br label %cleanup37

sw.bb28:                                          ; preds = %if.end
  %162 = zext i32 %version to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %version, label %sw.bb28.cleanup37_crit_edge [
    i32 256, label %if.end59.i.i.i121
    i32 0, label %sw.bb1.i126
  ]

sw.bb28.cleanup37_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

if.end59.i.i.i121:                                ; preds = %sw.bb28
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #13
  %call.i.i.i120 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i120, label %if.end59.i.i.i121.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i121.if.then11.i.i.i_crit_edge:      ; preds = %if.end59.i.i.i121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i121
  %163 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 84, i32 -1226833920) #18, !srcloc !131
  %asmresult.i.i.i122 = extractvalue { i32, i32 } %163, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i122)
  %cmp.i6.i.i123 = icmp eq i32 %asmresult.i.i.i122, 0
  br i1 %cmp.i6.i.i123, label %if.end.i.i.i125, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !124

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i125:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i124 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sem64, i32 noundef 84) #13
  %164 = call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i.i = and i32 %164, -16384
  %165 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 4
  %166 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !132
  %and.i.i.i.i.i = and i32 %166, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sem64, ptr noundef %buf, i32 noundef 84) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %166) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i125.sw.bb33_crit_edge, label %if.end.i.i.i125.if.then11.i.i.i_crit_edge, !prof !124

if.end.i.i.i125.if.then11.i.i.i_crit_edge:        ; preds = %if.end.i.i.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i125.sw.bb33_crit_edge:                ; preds = %if.end.i.i.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i125.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i121.if.then11.i.i.i_crit_edge
  %res.0.i.i44.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i125.if.then11.i.i.i_crit_edge ], [ 84, %if.end59.i.i.i121.if.then11.i.i.i_crit_edge ], [ 84, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 84, %res.0.i.i44.i
  %add.ptr.i.i.i = getelementptr i8, ptr %sem64, i32 %sub.i.i.i
  %167 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i44.i)
  br label %cleanup37

sw.bb1.i126:                                      ; preds = %sw.bb28
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tbuf_old.i) #13
  %168 = call ptr @memset(ptr %tbuf_old.i, i32 255, i32 48)
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #13
  %call.i.i23.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i23.i, label %sw.bb1.i126.copy_shmid_from_user.exit_crit_edge, label %land.lhs.true.i.i26.i

sw.bb1.i126.copy_shmid_from_user.exit_crit_edge:  ; preds = %sw.bb1.i126
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_shmid_from_user.exit

land.lhs.true.i.i26.i:                            ; preds = %sw.bb1.i126
  %169 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 48, i32 -1226833920) #18, !srcloc !131
  %asmresult.i.i24.i = extractvalue { i32, i32 } %169, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i24.i)
  %cmp.i6.i25.i = icmp eq i32 %asmresult.i.i24.i, 0
  br i1 %cmp.i6.i25.i, label %if.end.i.i36.i, label %land.lhs.true.i.i26.i.copy_shmid_from_user.exit_crit_edge, !prof !124

land.lhs.true.i.i26.i.copy_shmid_from_user.exit_crit_edge: ; preds = %land.lhs.true.i.i26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_shmid_from_user.exit

if.end.i.i36.i:                                   ; preds = %land.lhs.true.i.i26.i
  %call.i.i.i27.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tbuf_old.i, i32 noundef 48) #13
  %170 = call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i28.i = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i.i.i.i.i28.i to ptr
  %cpu_domain.i.i.i.i.i29.i = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 4
  %172 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i29.i) #10, !srcloc !132
  %and.i.i.i.i30.i = and i32 %172, -13
  %or.i.i.i.i31.i = or i32 %and.i.i.i.i30.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i31.i) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  %call1.i.i.i32.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tbuf_old.i, ptr noundef %buf, i32 noundef 48) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %172) #13, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i32.i)
  %tobool4.not.i.i35.i = icmp eq i32 %call1.i.i.i32.i, 0
  br i1 %tobool4.not.i.i35.i, label %copy_shmid_from_user.exit.thread194, label %if.end.i.i36.i.copy_shmid_from_user.exit_crit_edge, !prof !124

if.end.i.i36.i.copy_shmid_from_user.exit_crit_edge: ; preds = %if.end.i.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_shmid_from_user.exit

copy_shmid_from_user.exit.thread194:              ; preds = %if.end.i.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  %uid.i = getelementptr inbounds %struct.ipc_perm, ptr %tbuf_old.i, i32 0, i32 1
  %173 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %uid.i, align 4
  %conv.i127 = zext i16 %174 to i32
  %uid7.i = getelementptr inbounds %struct.ipc64_perm, ptr %sem64, i32 0, i32 1
  %175 = ptrtoint ptr %uid7.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %conv.i127, ptr %uid7.i, align 4
  %gid.i = getelementptr inbounds %struct.ipc_perm, ptr %tbuf_old.i, i32 0, i32 2
  %176 = ptrtoint ptr %gid.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %gid.i, align 2
  %conv9.i = zext i16 %177 to i32
  %gid11.i = getelementptr inbounds %struct.ipc64_perm, ptr %sem64, i32 0, i32 2
  %178 = ptrtoint ptr %gid11.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv9.i, ptr %gid11.i, align 4
  %mode.i = getelementptr inbounds %struct.ipc_perm, ptr %tbuf_old.i, i32 0, i32 5
  %179 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %mode.i, align 4
  %mode14.i = getelementptr inbounds %struct.ipc64_perm, ptr %sem64, i32 0, i32 5
  %181 = ptrtoint ptr %mode14.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %mode14.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tbuf_old.i) #13
  br label %sw.bb33

copy_shmid_from_user.exit:                        ; preds = %if.end.i.i36.i.copy_shmid_from_user.exit_crit_edge, %land.lhs.true.i.i26.i.copy_shmid_from_user.exit_crit_edge, %sw.bb1.i126.copy_shmid_from_user.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tbuf_old.i) #13
  br label %cleanup37

sw.bb33:                                          ; preds = %copy_shmid_from_user.exit.thread194, %if.end.i.i.i125.sw.bb33_crit_edge, %if.end.sw.bb33_crit_edge
  %arrayidx.i129 = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2
  %rwsem.i130 = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2, i32 2
  call void @down_write(ptr noundef %rwsem.i130) #13
  %182 = call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i131 = and i32 %182, -16384
  %183 = inttoptr i32 %and.i.i.i.i.i.i131 to ptr
  %preempt_count.i.i.i.i.i132 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %preempt_count.i.i.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %preempt_count.i.i.i.i.i132, align 4
  %add.i.i.i.i133 = add i32 %185, 1
  store volatile i32 %add.i.i.i.i133, ptr %preempt_count.i.i.i.i.i132, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i134 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i134, label %sw.bb33.rcu_read_lock.exit.i143_crit_edge, label %land.lhs.true.i.i137

sw.bb33.rcu_read_lock.exit.i143_crit_edge:        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i143

land.lhs.true.i.i137:                             ; preds = %sw.bb33
  %call1.i.i135 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i135)
  %tobool.not.i.i136 = icmp eq i32 %call1.i.i135, 0
  br i1 %tobool.not.i.i136, label %land.lhs.true.i.i137.rcu_read_lock.exit.i143_crit_edge, label %land.lhs.true2.i.i139

land.lhs.true.i.i137.rcu_read_lock.exit.i143_crit_edge: ; preds = %land.lhs.true.i.i137
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i143

land.lhs.true2.i.i139:                            ; preds = %land.lhs.true.i.i137
  %.b4.i.i138 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i138, label %land.lhs.true2.i.i139.rcu_read_lock.exit.i143_crit_edge, label %if.then.i.i140

land.lhs.true2.i.i139.rcu_read_lock.exit.i143_crit_edge: ; preds = %land.lhs.true2.i.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i143

if.then.i.i140:                                   ; preds = %land.lhs.true2.i.i139
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #13
  br label %rcu_read_lock.exit.i143

rcu_read_lock.exit.i143:                          ; preds = %if.then.i.i140, %land.lhs.true2.i.i139.rcu_read_lock.exit.i143_crit_edge, %land.lhs.true.i.i137.rcu_read_lock.exit.i143_crit_edge, %sw.bb33.rcu_read_lock.exit.i143_crit_edge
  %call.i141 = call ptr @ipcctl_obtain_check(ptr noundef %9, ptr noundef %arrayidx.i129, i32 noundef %shmid, i32 noundef %cmd, ptr noundef nonnull %sem64, i32 noundef 0) #13
  %cmp.i.i142 = icmp ugt ptr %call.i141, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i142, label %if.then.i144, label %if.end.i

if.then.i144:                                     ; preds = %rcu_read_lock.exit.i143
  call void @__sanitizer_cov_trace_pc() #15
  %186 = ptrtoint ptr %call.i141 to i32
  br label %out_unlock1.i

if.end.i:                                         ; preds = %rcu_read_lock.exit.i143
  %call6.i = call i32 @security_shm_shmctl(ptr noundef %call.i141, i32 noundef %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i145 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i145, label %if.end8.i, label %if.end.i.out_unlock1.i_crit_edge

if.end.i.out_unlock1.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock1.i

if.end8.i:                                        ; preds = %if.end.i
  %187 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %cmd, label %if.end8.i.out_unlock1.i_crit_edge [
    i32 0, label %sw.bb.i146
    i32 1, label %sw.bb10.i
  ]

if.end8.i.out_unlock1.i_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock1.i

sw.bb.i146:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_lock(ptr noundef %call.i141) #13
  call void @do_shm_rmid(ptr noundef %9, ptr noundef %call.i141) #13
  br label %shmctl_down.exit

sw.bb10.i:                                        ; preds = %if.end8.i
  call void @_raw_spin_lock(ptr noundef %call.i141) #13
  %call13.i = call i32 @ipc_update_perm(ptr noundef nonnull %sem64, ptr noundef %call.i141) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %sw.bb10.i.out_unlock0.i_crit_edge

sw.bb10.i.out_unlock0.i_crit_edge:                ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock0.i

if.end16.i:                                       ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #15
  %call17.i = call i64 @ktime_get_real_seconds() #13
  %shm_ctim.i147 = getelementptr inbounds %struct.shmid_kernel, ptr %call.i141, i32 0, i32 6
  %188 = ptrtoint ptr %shm_ctim.i147 to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %call17.i, ptr %shm_ctim.i147, align 32
  br label %out_unlock0.i

out_unlock0.i:                                    ; preds = %if.end16.i, %sw.bb10.i.out_unlock0.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %call.i141) #13
  br label %out_unlock1.i

out_unlock1.i:                                    ; preds = %out_unlock0.i, %if.end8.i.out_unlock1.i_crit_edge, %if.end.i.out_unlock1.i_crit_edge, %if.then.i144
  %err.0.i148 = phi i32 [ %186, %if.then.i144 ], [ %call6.i, %if.end.i.out_unlock1.i_crit_edge ], [ %call13.i, %out_unlock0.i ], [ -22, %if.end8.i.out_unlock1.i_crit_edge ]
  %call.i39.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i39.i, label %out_unlock1.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i42.i

out_unlock1.i.rcu_read_unlock.exit.i_crit_edge:   ; preds = %out_unlock1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i42.i:                              ; preds = %out_unlock1.i
  %call1.i40.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40.i)
  %tobool.not.i41.i = icmp eq i32 %call1.i40.i, 0
  br i1 %tobool.not.i41.i, label %land.lhs.true.i42.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i44.i

land.lhs.true.i42.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i44.i:                             ; preds = %land.lhs.true.i42.i
  %.b4.i43.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43.i, label %land.lhs.true2.i44.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i45.i

land.lhs.true2.i44.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i45.i:                                    ; preds = %land.lhs.true2.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i45.i, %land.lhs.true2.i44.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i42.i.rcu_read_unlock.exit.i_crit_edge, %out_unlock1.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %189 = call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i46.i = and i32 %189, -16384
  %190 = inttoptr i32 %and.i.i.i.i.i46.i to ptr
  %preempt_count.i.i.i.i47.i = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %preempt_count.i.i.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %preempt_count.i.i.i.i47.i, align 4
  %sub.i.i.i.i149 = add i32 %192, -1
  store volatile i32 %sub.i.i.i.i149, ptr %preempt_count.i.i.i.i47.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %shmctl_down.exit

shmctl_down.exit:                                 ; preds = %rcu_read_unlock.exit.i, %sw.bb.i146
  %err.1.i150 = phi i32 [ %err.0.i148, %rcu_read_unlock.exit.i ], [ 0, %sw.bb.i146 ]
  call void @up_write(ptr noundef %rwsem.i130) #13
  br label %cleanup37

sw.bb35:                                          ; preds = %if.end.sw.bb35_crit_edge, %if.end.sw.bb35_crit_edge201
  %preempt_count.i.i.i.i.i152 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %193 = ptrtoint ptr %preempt_count.i.i.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %preempt_count.i.i.i.i.i152, align 4
  %add.i.i.i.i153 = add i32 %194, 1
  store volatile i32 %add.i.i.i.i153, ptr %preempt_count.i.i.i.i.i152, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i154 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i154, label %sw.bb35.rcu_read_lock.exit.i163_crit_edge, label %land.lhs.true.i.i157

sw.bb35.rcu_read_lock.exit.i163_crit_edge:        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i163

land.lhs.true.i.i157:                             ; preds = %sw.bb35
  %call1.i.i155 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i155)
  %tobool.not.i.i156 = icmp eq i32 %call1.i.i155, 0
  br i1 %tobool.not.i.i156, label %land.lhs.true.i.i157.rcu_read_lock.exit.i163_crit_edge, label %land.lhs.true2.i.i159

land.lhs.true.i.i157.rcu_read_lock.exit.i163_crit_edge: ; preds = %land.lhs.true.i.i157
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i163

land.lhs.true2.i.i159:                            ; preds = %land.lhs.true.i.i157
  %.b4.i.i158 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i158, label %land.lhs.true2.i.i159.rcu_read_lock.exit.i163_crit_edge, label %if.then.i.i160

land.lhs.true2.i.i159.rcu_read_lock.exit.i163_crit_edge: ; preds = %land.lhs.true2.i.i159
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i163

if.then.i.i160:                                   ; preds = %land.lhs.true2.i.i159
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #13
  br label %rcu_read_lock.exit.i163

rcu_read_lock.exit.i163:                          ; preds = %if.then.i.i160, %land.lhs.true2.i.i159.rcu_read_lock.exit.i163_crit_edge, %land.lhs.true.i.i157.rcu_read_lock.exit.i163_crit_edge, %sw.bb35.rcu_read_lock.exit.i163_crit_edge
  %arrayidx.i.i161 = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2
  %call.i112.i = tail call ptr @ipc_obtain_object_check(ptr noundef %arrayidx.i.i161, i32 noundef %shmid) #13
  %cmp.i.i162 = icmp ugt ptr %call.i112.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i162, label %if.then.i164, label %if.end.i166

if.then.i164:                                     ; preds = %rcu_read_lock.exit.i163
  call void @__sanitizer_cov_trace_pc() #15
  %195 = ptrtoint ptr %call.i112.i to i32
  br label %out_unlock1.i173

if.end.i166:                                      ; preds = %rcu_read_lock.exit.i163
  %call4.i = tail call i32 @security_shm_shmctl(ptr noundef %call.i112.i, i32 noundef %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i165 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i165, label %if.end6.i, label %if.end.i166.out_unlock1.i173_crit_edge

if.end.i166.out_unlock1.i173_crit_edge:           ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock1.i173

if.end6.i:                                        ; preds = %if.end.i166
  tail call void @_raw_spin_lock(ptr noundef %call.i112.i) #13
  %deleted.i.i167 = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i112.i, i32 0, i32 1
  %196 = ptrtoint ptr %deleted.i.i167 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %deleted.i.i167, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i113.i = icmp eq i8 %197, 0
  br i1 %tobool.not.i113.i, label %if.end11.i, label %if.end6.i.out_unlock0.i172_crit_edge

if.end6.i.out_unlock0.i172_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock0.i172

if.end11.i:                                       ; preds = %if.end6.i
  %user_ns.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 21
  %198 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %user_ns.i, align 4
  %call12.i = tail call zeroext i1 @ns_capable(ptr noundef %199, i32 noundef 14) #13
  br i1 %call12.i, label %if.end30.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  %200 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %203, i32 0, i32 99
  %204 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cred.i, align 16
  %euid15.i = getelementptr inbounds %struct.cred, ptr %205, i32 0, i32 8
  %206 = ptrtoint ptr %euid15.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %euid.sroa.0.0.copyload.i = load i32, ptr %euid15.i, align 4
  %uid.i168 = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i112.i, i32 0, i32 4
  %207 = ptrtoint ptr %uid.i168 to i32
  call void @__asan_load4_noabort(i32 %207)
  %.unpack.i = load i32, ptr %uid.i168, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %euid.sroa.0.0.copyload.i, i32 %.unpack.i)
  %cmp.i114.i = icmp eq i32 %euid.sroa.0.0.copyload.i, %.unpack.i
  br i1 %cmp.i114.i, label %if.then13.i.if.end24.i_crit_edge, label %land.lhs.true.i

if.then13.i.if.end24.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.then13.i
  %cuid.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i112.i, i32 0, i32 6
  %208 = ptrtoint ptr %cuid.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %.unpack111.i = load i32, ptr %cuid.i, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %euid.sroa.0.0.copyload.i, i32 %.unpack111.i)
  %cmp.i115.i = icmp eq i32 %euid.sroa.0.0.copyload.i, %.unpack111.i
  br i1 %cmp.i115.i, label %land.lhs.true.i.if.end24.i_crit_edge, label %land.lhs.true.i.out_unlock0.i172_crit_edge

land.lhs.true.i.out_unlock0.i172_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock0.i172

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

if.end24.i:                                       ; preds = %land.lhs.true.i.if.end24.i_crit_edge, %if.then13.i.if.end24.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %cmd)
  %cmp.i = icmp eq i32 %cmd, 11
  br i1 %cmp.i, label %land.lhs.true25.i, label %if.end30.thread131.i

if.end30.thread131.i:                             ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %shm_file31133.i = getelementptr inbounds %struct.shmid_kernel, ptr %call.i112.i, i32 0, i32 1
  %209 = ptrtoint ptr %shm_file31133.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %shm_file31133.i, align 128
  br label %if.end55.i

land.lhs.true25.i:                                ; preds = %if.end24.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %203, i32 0, i32 111
  %211 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %212, i32 0, i32 51, i32 8
  %213 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool27.not.i = icmp eq i32 %214, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.out_unlock0.i172_crit_edge, label %if.end30.thread.i

land.lhs.true25.i.out_unlock0.i172_crit_edge:     ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock0.i172

if.end30.thread.i:                                ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  %shm_file31129.i = getelementptr inbounds %struct.shmid_kernel, ptr %call.i112.i, i32 0, i32 1
  %215 = ptrtoint ptr %shm_file31129.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %shm_file31129.i, align 128
  br label %if.then33.i

if.end30.i:                                       ; preds = %if.end11.i
  %shm_file31.i = getelementptr inbounds %struct.shmid_kernel, ptr %call.i112.i, i32 0, i32 1
  %217 = ptrtoint ptr %shm_file31.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %shm_file31.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %cmd)
  %cmp32.i = icmp eq i32 %cmd, 11
  br i1 %cmp32.i, label %if.end30.i.if.then33.i_crit_edge, label %if.end30.i.if.end55.i_crit_edge

if.end30.i.if.end55.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i

if.end30.i.if.then33.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.end30.i.if.then33.i_crit_edge, %if.end30.thread.i
  %219 = phi ptr [ %216, %if.end30.thread.i ], [ %218, %if.end30.i.if.then33.i_crit_edge ]
  %220 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i116.i = and i32 %220, -16384
  %221 = inttoptr i32 %and.i116.i to ptr
  %task40.i = getelementptr inbounds %struct.thread_info, ptr %221, i32 0, i32 2
  %222 = ptrtoint ptr %task40.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %task40.i, align 8
  %cred41.i = getelementptr inbounds %struct.task_struct, ptr %223, i32 0, i32 99
  %224 = ptrtoint ptr %cred41.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %cred41.i, align 16
  %ucounts42.i = getelementptr inbounds %struct.cred, ptr %225, i32 0, i32 26
  %226 = ptrtoint ptr %ucounts42.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ucounts42.i, align 4
  %call43.i169 = tail call i32 @shmem_lock(ptr noundef %219, i32 noundef 1, ptr noundef %227) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i169)
  %tobool44.not.i = icmp eq i32 %call43.i169, 0
  br i1 %tobool44.not.i, label %land.lhs.true45.i, label %if.then33.i.out_unlock0.i172_crit_edge

if.then33.i.out_unlock0.i172_crit_edge:           ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock0.i172

land.lhs.true45.i:                                ; preds = %if.then33.i
  %mode.i170 = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i112.i, i32 0, i32 8
  %228 = ptrtoint ptr %mode.i170 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %mode.i170, align 8
  %230 = and i16 %229, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %230)
  %tobool47.not.i = icmp eq i16 %230, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %land.lhs.true45.i.out_unlock0.i172_crit_edge

land.lhs.true45.i.out_unlock0.i172_crit_edge:     ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock0.i172

if.then48.i:                                      ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i16 %229, 1024
  %231 = ptrtoint ptr %mode.i170 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %or.i, ptr %mode.i170, align 8
  %mlock_ucounts.i = getelementptr inbounds %struct.shmid_kernel, ptr %call.i112.i, i32 0, i32 9
  %232 = ptrtoint ptr %mlock_ucounts.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %227, ptr %mlock_ucounts.i, align 16
  br label %out_unlock0.i172

if.end55.i:                                       ; preds = %if.end30.i.if.end55.i_crit_edge, %if.end30.thread131.i
  %233 = phi ptr [ %210, %if.end30.thread131.i ], [ %218, %if.end30.i.if.end55.i_crit_edge ]
  %mode57.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i112.i, i32 0, i32 8
  %234 = ptrtoint ptr %mode57.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %mode57.i, align 8
  %236 = and i16 %235, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %236)
  %tobool60.not.i = icmp eq i16 %236, 0
  br i1 %tobool60.not.i, label %if.end55.i.out_unlock0.i172_crit_edge, label %if.end62.i

if.end55.i.out_unlock0.i172_crit_edge:            ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock0.i172

if.end62.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  %mlock_ucounts63.i = getelementptr inbounds %struct.shmid_kernel, ptr %call.i112.i, i32 0, i32 9
  %237 = ptrtoint ptr %mlock_ucounts63.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mlock_ucounts63.i, align 16
  %call64.i = tail call i32 @shmem_lock(ptr noundef %233, i32 noundef 0, ptr noundef %238) #13
  %239 = ptrtoint ptr %mode57.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %mode57.i, align 8
  %241 = and i16 %240, -1025
  store i16 %241, ptr %mode57.i, align 8
  %242 = ptrtoint ptr %mlock_ucounts63.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %mlock_ucounts63.i, align 16
  %f_count.i.i = getelementptr inbounds %struct.file, ptr %233, i32 0, i32 6
  %call.i.i.i.i171 = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %f_count.i.i, i32 1, i32 3, i32 1) #13
  %243 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i.i, ptr %f_count.i.i, i32 1, ptr elementtype(i32) %f_count.i.i) #13, !srcloc !135
  tail call void @_raw_spin_unlock(ptr noundef %call.i112.i) #13
  tail call fastcc void @rcu_read_unlock() #13
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %233, i32 0, i32 18
  %244 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %f_mapping.i, align 4
  tail call void @shmem_unlock_mapping(ptr noundef %245) #13
  tail call void @fput(ptr noundef %233) #13
  br label %cleanup37

out_unlock0.i172:                                 ; preds = %if.end55.i.out_unlock0.i172_crit_edge, %if.then48.i, %land.lhs.true45.i.out_unlock0.i172_crit_edge, %if.then33.i.out_unlock0.i172_crit_edge, %land.lhs.true25.i.out_unlock0.i172_crit_edge, %land.lhs.true.i.out_unlock0.i172_crit_edge, %if.end6.i.out_unlock0.i172_crit_edge
  %err.2.i = phi i32 [ 0, %if.end55.i.out_unlock0.i172_crit_edge ], [ -43, %if.end6.i.out_unlock0.i172_crit_edge ], [ 0, %if.then48.i ], [ 0, %land.lhs.true45.i.out_unlock0.i172_crit_edge ], [ %call43.i169, %if.then33.i.out_unlock0.i172_crit_edge ], [ -1, %land.lhs.true.i.out_unlock0.i172_crit_edge ], [ -1, %land.lhs.true25.i.out_unlock0.i172_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %call.i112.i) #13
  br label %out_unlock1.i173

out_unlock1.i173:                                 ; preds = %out_unlock0.i172, %if.end.i166.out_unlock1.i173_crit_edge, %if.then.i164
  %err.3.i = phi i32 [ %195, %if.then.i164 ], [ %call4.i, %if.end.i166.out_unlock1.i173_crit_edge ], [ %err.2.i, %out_unlock0.i172 ]
  %call.i117.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i117.i, label %out_unlock1.i173.rcu_read_unlock.exit.i175_crit_edge, label %land.lhs.true.i120.i

out_unlock1.i173.rcu_read_unlock.exit.i175_crit_edge: ; preds = %out_unlock1.i173
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i175

land.lhs.true.i120.i:                             ; preds = %out_unlock1.i173
  %call1.i118.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118.i)
  %tobool.not.i119.i = icmp eq i32 %call1.i118.i, 0
  br i1 %tobool.not.i119.i, label %land.lhs.true.i120.i.rcu_read_unlock.exit.i175_crit_edge, label %land.lhs.true2.i122.i

land.lhs.true.i120.i.rcu_read_unlock.exit.i175_crit_edge: ; preds = %land.lhs.true.i120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i175

land.lhs.true2.i122.i:                            ; preds = %land.lhs.true.i120.i
  %.b4.i121.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i121.i, label %land.lhs.true2.i122.i.rcu_read_unlock.exit.i175_crit_edge, label %if.then.i123.i

land.lhs.true2.i122.i.rcu_read_unlock.exit.i175_crit_edge: ; preds = %land.lhs.true2.i122.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i175

if.then.i123.i:                                   ; preds = %land.lhs.true2.i122.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %rcu_read_unlock.exit.i175

rcu_read_unlock.exit.i175:                        ; preds = %if.then.i123.i, %land.lhs.true2.i122.i.rcu_read_unlock.exit.i175_crit_edge, %land.lhs.true.i120.i.rcu_read_unlock.exit.i175_crit_edge, %out_unlock1.i173.rcu_read_unlock.exit.i175_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %246 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i124.i = and i32 %246, -16384
  %247 = inttoptr i32 %and.i.i.i.i.i124.i to ptr
  %preempt_count.i.i.i.i125.i = getelementptr inbounds %struct.thread_info, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %preempt_count.i.i.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %preempt_count.i.i.i.i125.i, align 4
  %sub.i.i.i.i174 = add i32 %249, -1
  store volatile i32 %sub.i.i.i.i174, ptr %preempt_count.i.i.i.i125.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup37

cleanup37:                                        ; preds = %rcu_read_unlock.exit.i175, %if.end62.i, %shmctl_down.exit, %copy_shmid_from_user.exit, %if.then11.i.i.i, %sw.bb28.cleanup37_crit_edge, %copy_shmid_to_user.exit, %if.end.i.i.i103.cleanup37_crit_edge, %if.end59.i.i.i100.cleanup37_crit_edge, %if.end23.cleanup37_crit_edge, %shmctl_stat.exit.cleanup37_crit_edge, %cleanup18, %cleanup, %if.end.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.2 = phi i32 [ %err.1.i150, %shmctl_down.exit ], [ %retval.1, %cleanup18 ], [ %retval.0, %cleanup ], [ -22, %entry.cleanup37_crit_edge ], [ %err.1.i, %shmctl_stat.exit.cleanup37_crit_edge ], [ -14, %copy_shmid_from_user.exit ], [ -22, %if.end.cleanup37_crit_edge ], [ %err.3.i, %rcu_read_unlock.exit.i175 ], [ 0, %if.end62.i ], [ -14, %if.end23.cleanup37_crit_edge ], [ -14, %if.end59.i.i.i100.cleanup37_crit_edge ], [ -14, %if.end.i.i.i103.cleanup37_crit_edge ], [ -14, %sw.bb28.cleanup37_crit_edge ], [ -14, %if.then11.i.i.i ], [ %spec.select198, %copy_shmid_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %sem64) #13
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_shmctl(i32 noundef %shmid, i32 noundef %cmd, i32 noundef %buf) #0 align 64 {
entry:
  %cmd.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.addr.i.i) #13
  %1 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cmd, ptr %cmd.addr.i.i, align 4
  %call.i.i = call i32 @ipc_parse_version(ptr noundef nonnull %cmd.addr.i.i) #13
  %2 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd.addr.i.i, align 4
  %call1.i.i = call fastcc i32 @ksys_shmctl(i32 noundef %shmid, i32 noundef %3, ptr noundef %0, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.addr.i.i) #13
  ret i32 %call1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_shmat(i32 noundef %shmid, ptr noundef %shmaddr, i32 noundef %shmflg, ptr nocapture noundef writeonly %raddr, i32 noundef %shmlba) local_unnamed_addr #0 align 64 {
entry:
  %populate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %shmaddr to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %populate) #13
  %1 = ptrtoint ptr %populate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %populate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shmid)
  %cmp = icmp slt i32 %shmid, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %shmaddr, null
  br i1 %tobool.not, label %if.else16, label %if.then1

if.then1:                                         ; preds = %if.end
  %sub = add i32 %shmlba, -1
  %and = and i32 %sub, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then1.if.end21_crit_edge, label %if.then3

if.then1.if.end21_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then3:                                         ; preds = %if.then1
  %and4 = and i32 %shmflg, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.then6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.then3
  %neg = sub i32 0, %shmlba
  %and8 = and i32 %neg, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.then6.if.end21_crit_edge

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then6
  %and10 = and i32 %shmflg, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.else16:                                        ; preds = %if.end
  %and17 = and i32 %shmflg, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else16.if.end21_crit_edge, label %if.else16.cleanup_crit_edge

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else16.if.end21_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %if.else16.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.then6.if.end21_crit_edge, %if.then1.if.end21_crit_edge
  %addr.1 = phi i32 [ 0, %if.else16.if.end21_crit_edge ], [ %and8, %if.then6.if.end21_crit_edge ], [ 0, %land.lhs.true.if.end21_crit_edge ], [ %0, %if.then1.if.end21_crit_edge ]
  %flags.0 = phi i32 [ 1, %if.else16.if.end21_crit_edge ], [ 17, %if.then6.if.end21_crit_edge ], [ 17, %land.lhs.true.if.end21_crit_edge ], [ 17, %if.then1.if.end21_crit_edge ]
  %and22 = and i32 %shmflg, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %. = select i1 %tobool23.not, i32 3, i32 1
  %.204 = select i1 %tobool23.not, i32 438, i32 292
  %2 = lshr exact i32 %and22, 11
  %3 = xor i32 %2, 2
  %and27 = and i32 %shmflg, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or31 = or i32 %.204, 73
  %4 = lshr exact i32 %and27, 13
  %5 = or i32 %., %4
  %acc_mode.1 = select i1 %tobool28.not, i32 %.204, i32 %or31
  %6 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 110
  %10 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipc_ns, align 4
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end21.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end21.rcu_read_lock.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end21
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end21.rcu_read_lock.exit_crit_edge
  %arrayidx.i = getelementptr [3 x %struct.ipc_ids], ptr %13, i32 0, i32 2
  %call.i206 = tail call ptr @ipc_obtain_object_check(ptr noundef %arrayidx.i, i32 noundef %shmid) #13
  %cmp.i = icmp ugt ptr %call.i206, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end37

if.then35:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call.i206 to i32
  br label %out_unlock

if.end37:                                         ; preds = %rcu_read_lock.exit
  %conv = trunc i32 %acc_mode.1 to i16
  %call38 = tail call i32 @ipcperms(ptr noundef %13, ptr noundef %call.i206, i16 noundef signext %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.out_unlock_crit_edge

if.end37.out_unlock_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end41:                                         ; preds = %if.end37
  %call43 = tail call i32 @security_shm_shmat(ptr noundef %call.i206, ptr noundef %shmaddr, i32 noundef %shmflg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.out_unlock_crit_edge

if.end41.out_unlock_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end46:                                         ; preds = %if.end41
  tail call void @_raw_spin_lock(ptr noundef %call.i206) #13
  %deleted.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i206, i32 0, i32 1
  %17 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %deleted.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i207 = icmp eq i8 %18, 0
  br i1 %tobool.not.i207, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %call.i206) #13
  br label %out_unlock

if.end52:                                         ; preds = %if.end46
  %shm_file = getelementptr inbounds %struct.shmid_kernel, ptr %call.i206, i32 0, i32 1
  %19 = ptrtoint ptr %shm_file to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shm_file, align 128
  %f_count.i = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #13, !srcloc !135
  %shm_nattch = getelementptr inbounds %struct.shmid_kernel, ptr %call.i206, i32 0, i32 2
  %22 = ptrtoint ptr %shm_nattch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shm_nattch, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %shm_nattch, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f_inode.i, align 8
  %call55 = tail call fastcc i64 @i_size_read(ptr noundef %25)
  %conv56 = trunc i64 %call55 to i32
  tail call void @_raw_spin_unlock(ptr noundef %call.i206) #13
  tail call fastcc void @rcu_read_unlock()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 16) #17
  %tobool59.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fput(ptr noundef %20) #13
  br label %out_nattch

if.end61:                                         ; preds = %if.end52
  %call62 = tail call ptr @alloc_file_clone(ptr noundef %20, i32 noundef %3, ptr noundef nonnull @shm_file_operations) #13
  %cmp.i208 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %call62 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  tail call void @fput(ptr noundef %20) #13
  br label %out_nattch

if.end66:                                         ; preds = %if.end61
  %id = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i206, i32 0, i32 2
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 16
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %call7.i.i, align 8
  %call69 = tail call fastcc ptr @get_ipc_ns(ptr noundef %13)
  %ns70 = getelementptr inbounds %struct.shm_file_data, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %ns70 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %13, ptr %ns70, align 4
  %file71 = getelementptr inbounds %struct.shm_file_data, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %file71 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %20, ptr %file71, align 8
  %vm_ops = getelementptr inbounds %struct.shm_file_data, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %vm_ops, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %call62, i32 0, i32 16
  %34 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call72 = tail call i32 @security_mmap_file(ptr noundef %call62, i32 noundef %5, i32 noundef %flags.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end66.out_fput_crit_edge

if.end66.out_fput_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.end75:                                         ; preds = %if.end66
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 53
  %37 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mm, align 8
  %call78 = tail call fastcc i32 @mmap_write_lock_killable(ptr noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end75.out_fput_crit_edge

if.end75.out_fput_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr.1)
  %tobool82.not = icmp ne i32 %addr.1, 0
  %and84 = and i32 %shmflg, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %or.cond = and i1 %tobool85.not, %tobool82.not
  br i1 %or.cond, label %if.then86, label %if.end81.if.end99_crit_edge

if.end81.if.end99_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then86:                                        ; preds = %if.end81
  %add = add i32 %addr.1, %conv56
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %addr.1)
  %cmp87 = icmp ult i32 %add, %addr.1
  br i1 %cmp87, label %if.then86.invalid_crit_edge, label %if.end90

if.then86.invalid_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalid

if.end90:                                         ; preds = %if.then86
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %mm93 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 53
  %41 = ptrtoint ptr %mm93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mm93, align 8
  %call.i209 = tail call ptr @find_vma(ptr noundef %42, i32 noundef %addr.1) #13
  %tobool.not.i210 = icmp eq ptr %call.i209, null
  br i1 %tobool.not.i210, label %if.end90.if.end99_crit_edge, label %land.lhs.true.i211

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

land.lhs.true.i211:                               ; preds = %if.end90
  %43 = ptrtoint ptr %call.i209 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call.i209, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add)
  %cmp.not.i = icmp ult i32 %44, %add
  br i1 %cmp.not.i, label %land.lhs.true.i211.invalid_crit_edge, label %land.lhs.true.i211.if.end99_crit_edge

land.lhs.true.i211.if.end99_crit_edge:            ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

land.lhs.true.i211.invalid_crit_edge:             ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalid

if.end99:                                         ; preds = %land.lhs.true.i211.if.end99_crit_edge, %if.end90.if.end99_crit_edge, %if.end81.if.end99_crit_edge
  %call100 = call i32 @do_mmap(ptr noundef %call62, i32 noundef %addr.1, i32 noundef %conv56, i32 noundef %5, i32 noundef %flags.0, i32 noundef 0, ptr noundef nonnull %populate, ptr noundef null) #13
  %45 = ptrtoint ptr %raddr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call100, ptr %raddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call100)
  %cmp101 = icmp ugt i32 %call100, -4096
  br i1 %cmp101, label %if.then105, label %if.end99.invalid_crit_edge, !prof !129

if.end99.invalid_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalid

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %invalid

invalid:                                          ; preds = %if.then105, %if.end99.invalid_crit_edge, %land.lhs.true.i211.invalid_crit_edge, %if.then86.invalid_crit_edge
  %addr.2 = phi i32 [ %call100, %if.then105 ], [ %call100, %if.end99.invalid_crit_edge ], [ %addr.1, %if.then86.invalid_crit_edge ], [ %addr.1, %land.lhs.true.i211.invalid_crit_edge ]
  %err.0 = phi i32 [ %call100, %if.then105 ], [ 0, %if.end99.invalid_crit_edge ], [ -22, %if.then86.invalid_crit_edge ], [ -22, %land.lhs.true.i211.invalid_crit_edge ]
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 8
  %mm109 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 53
  %48 = ptrtoint ptr %mm109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mm109, align 8
  call fastcc void @mmap_write_unlock(ptr noundef %49)
  %50 = ptrtoint ptr %populate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %populate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool110.not = icmp eq i32 %51, 0
  br i1 %tobool110.not, label %invalid.out_fput_crit_edge, label %if.then111

invalid.out_fput_crit_edge:                       ; preds = %invalid
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fput

if.then111:                                       ; preds = %invalid
  call void @__sanitizer_cov_trace_pc() #15
  %call.i212 = call i32 @__mm_populate(i32 noundef %addr.2, i32 noundef %51, i32 noundef 1) #13
  br label %out_fput

out_fput:                                         ; preds = %if.then111, %invalid.out_fput_crit_edge, %if.end75.out_fput_crit_edge, %if.end66.out_fput_crit_edge
  %err.1 = phi i32 [ %call72, %if.end66.out_fput_crit_edge ], [ %err.0, %if.then111 ], [ %err.0, %invalid.out_fput_crit_edge ], [ -4, %if.end75.out_fput_crit_edge ]
  call void @fput(ptr noundef %call62) #13
  br label %out_nattch

out_nattch:                                       ; preds = %out_fput, %if.then65, %if.then60
  %err.2 = phi i32 [ %27, %if.then65 ], [ %err.1, %out_fput ], [ -12, %if.then60 ]
  %rwsem = getelementptr [3 x %struct.ipc_ids], ptr %13, i32 0, i32 2, i32 2
  call void @down_write(ptr noundef %rwsem) #13
  %call113 = call fastcc ptr @shm_lock(ptr noundef %13, i32 noundef %shmid)
  %shm_nattch114 = getelementptr inbounds %struct.shmid_kernel, ptr %call113, i32 0, i32 2
  %52 = ptrtoint ptr %shm_nattch114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %shm_nattch114, align 4
  %dec = add i32 %53, -1
  store i32 %dec, ptr %shm_nattch114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.i213 = icmp eq i32 %dec, 0
  br i1 %cmp.i213, label %land.rhs.i, label %out_nattch.if.else117_crit_edge

out_nattch.if.else117_crit_edge:                  ; preds = %out_nattch
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else117

land.rhs.i:                                       ; preds = %out_nattch
  %ns.i = getelementptr inbounds %struct.shmid_kernel, ptr %call113, i32 0, i32 12
  %54 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ns.i, align 64
  %shm_rmid_forced.i = getelementptr inbounds %struct.ipc_namespace, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %shm_rmid_forced.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %shm_rmid_forced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i214 = icmp eq i32 %57, 0
  br i1 %tobool.not.i214, label %shm_may_destroy.exit, label %land.rhs.i.if.then116_crit_edge

land.rhs.i.if.then116_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

shm_may_destroy.exit:                             ; preds = %land.rhs.i
  %mode.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call113, i32 0, i32 8
  %58 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mode.i, align 8
  %60 = and i16 %59, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool1.i.not = icmp eq i16 %60, 0
  br i1 %tobool1.i.not, label %shm_may_destroy.exit.if.else117_crit_edge, label %shm_may_destroy.exit.if.then116_crit_edge

shm_may_destroy.exit.if.then116_crit_edge:        ; preds = %shm_may_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then116

shm_may_destroy.exit.if.else117_crit_edge:        ; preds = %shm_may_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else117

if.then116:                                       ; preds = %shm_may_destroy.exit.if.then116_crit_edge, %land.rhs.i.if.then116_crit_edge
  call fastcc void @shm_destroy(ptr noundef %13, ptr noundef %call113)
  br label %if.end119

if.else117:                                       ; preds = %shm_may_destroy.exit.if.else117_crit_edge, %out_nattch.if.else117_crit_edge
  call fastcc void @ipc_unlock(ptr noundef %call113)
  br label %if.end119

if.end119:                                        ; preds = %if.else117, %if.then116
  call void @up_write(ptr noundef %rwsem) #13
  br label %cleanup

out_unlock:                                       ; preds = %if.then50, %if.end41.out_unlock_crit_edge, %if.end37.out_unlock_crit_edge, %if.then35
  %err.3 = phi i32 [ %16, %if.then35 ], [ -13, %if.end37.out_unlock_crit_edge ], [ %call43, %if.end41.out_unlock_crit_edge ], [ -43, %if.then50 ]
  %call.i215 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i215, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i218

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i218:                               ; preds = %out_unlock
  %call1.i216 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i216)
  %tobool.not.i217 = icmp eq i32 %call1.i216, 0
  br i1 %tobool.not.i217, label %land.lhs.true.i218.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i220

land.lhs.true.i218.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i218
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i220:                              ; preds = %land.lhs.true.i218
  %.b4.i219 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i219, label %land.lhs.true2.i220.rcu_read_unlock.exit_crit_edge, label %if.then.i221

land.lhs.true2.i220.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i220
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i221:                                     ; preds = %land.lhs.true2.i220
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i221, %land.lhs.true2.i220.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i218.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %61 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i222 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i222 to ptr
  %preempt_count.i.i.i.i223 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i223, align 4
  %sub.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i223, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end119, %if.else16.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %if.end119 ], [ -22, %entry.cleanup_crit_edge ], [ %err.3, %rcu_read_unlock.exit ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ -22, %if.else16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %populate) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcperms(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_shm_shmat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !136
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %1 = tail call ptr @llvm.returnaddress(i32 0) #13
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #13
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !137
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !129

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !138
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !139
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !140
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !141
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !142
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  ret i64 %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %0 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_clone(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_ipc_ns(ptr noundef returned %ns) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 24, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #13, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !129

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !124

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #13
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %ns
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_mmap_file(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmap_write_lock_killable(ptr noundef %mm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@mmap_write_lock_killable, %if.then.i)) #13
          to label %__mmap_lock_trace_start_locking.exit [label %if.then.i], !srcloc !144

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext true) #13
  br label %__mmap_lock_trace_start_locking.exit

__mmap_lock_trace_start_locking.exit:             ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon.25, ptr %mm, i32 0, i32 15
  %call = tail call i32 @down_write_killable(ptr noundef %mmap_lock) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@mmap_write_lock_killable, %if.then.i4)) #13
          to label %__mmap_lock_trace_acquire_returned.exit [label %if.then.i4], !srcloc !144

if.then.i4:                                       ; preds = %__mmap_lock_trace_start_locking.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext true, i1 noundef zeroext %cmp) #13
  br label %__mmap_lock_trace_acquire_returned.exit

__mmap_lock_trace_acquire_returned.exit:          ; preds = %if.then.i4, %__mmap_lock_trace_start_locking.exit
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_write_unlock(ptr noundef %mm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mmap_write_unlock, %if.then.i)) #13
          to label %__mmap_lock_trace_released.exit [label %if.then.i], !srcloc !144

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext true) #13
  br label %__mmap_lock_trace_released.exit

__mmap_lock_trace_released.exit:                  ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon.25, ptr %mm, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @shm_lock(ptr noundef %ns, i32 noundef %id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 2
  %call = tail call ptr @ipc_obtain_object_idr(ptr noundef %arrayidx, i32 noundef %id) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rcu_read_lock.exit.err_crit_edge, label %if.end

rcu_read_lock.exit.err_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end:                                           ; preds = %rcu_read_lock.exit
  tail call void @_raw_spin_lock(ptr noundef %call) #13
  %deleted.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %deleted.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i12 = icmp eq i8 %5, 0
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %call) #13
  br label %err

err:                                              ; preds = %if.end4, %rcu_read_lock.exit.err_crit_edge
  %ipcp.0 = phi ptr [ %call, %rcu_read_lock.exit.err_crit_edge ], [ inttoptr (i32 -43 to ptr), %if.end4 ]
  %call.i13 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i13, label %err.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

err.rcu_read_unlock.exit_crit_edge:               ; preds = %err
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %err
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %err.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %6 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i20 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %ipcp.0, %rcu_read_unlock.exit ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_shmat(i32 noundef %shmid, i32 noundef %shmaddr, i32 noundef %shmflg) #0 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %shmaddr to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ret.i, align 4, !annotation !145
  %call.i = call i32 @do_shmat(i32 noundef %shmid, ptr noundef %0, i32 noundef %shmflg, ptr noundef nonnull %ret.i, i32 noundef 16384) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.__do_sys_shmat.exit_crit_edge

entry.__do_sys_shmat.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_shmat.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ret.i, align 4
  br label %__do_sys_shmat.exit

__do_sys_shmat.exit:                              ; preds = %do.end.i, %entry.__do_sys_shmat.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %do.end.i ], [ %call.i, %entry.__do_sys_shmat.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_shmdt(ptr noundef %shmaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !114) #13
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
  %6 = ptrtoint ptr %shmaddr to i32
  %and = and i32 %6, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@ksys_shmdt, %if.then.i.i)) #13
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !144

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #13
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.25, ptr %5, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@ksys_shmdt, %if.then.i4.i)) #13
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !144

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #13
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %mmap_write_lock_killable.exit
  %call7 = tail call ptr @find_vma(ptr noundef %5, i32 noundef %6) #13
  %tobool8.not93 = icmp eq ptr %call7, null
  br i1 %tobool8.not93, label %if.end6.while.end49_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  br label %while.body

if.end6.while.end49_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end49

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %if.end6.while.body_crit_edge
  %vma.094 = phi ptr [ %8, %if.end18.while.body_crit_edge ], [ %call7, %if.end6.while.body_crit_edge ]
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.094, i32 0, i32 2
  %7 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vm_next, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma.094, i32 0, i32 12
  %9 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_ops, align 4
  %cmp = icmp eq ptr %10, @shm_vm_ops
  br i1 %cmp, label %land.lhs.true, label %while.body.if.end18_crit_edge

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true:                                    ; preds = %while.body
  %11 = ptrtoint ptr %vma.094 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vma.094, align 4
  %sub = sub i32 %12, %6
  %div89 = lshr i32 %sub, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma.094, i32 0, i32 13
  %13 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div89, i32 %14)
  %cmp9 = icmp eq i32 %div89, %14
  br i1 %cmp9, label %while.end, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %while.body.if.end18_crit_edge
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end18.while.end49_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end18.while.end49_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end49

while.end:                                        ; preds = %land.lhs.true
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma.094, i32 0, i32 14
  %15 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f_inode.i, align 8
  %call13 = tail call fastcc i64 @i_size_read(ptr noundef %18)
  %19 = ptrtoint ptr %vma.094 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vma.094, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.094, i32 0, i32 1
  %21 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_end, align 4
  %sub16 = sub i32 %22, %20
  %call17 = tail call i32 @do_munmap(ptr noundef %5, i32 noundef %20, i32 noundef %sub16, ptr noundef null) #13
  %phi.bo = add i64 %call13, 4095
  %phi.bo87 = and i64 %phi.bo, -4096
  %tobool21.not95 = icmp eq ptr %8, null
  br i1 %tobool21.not95, label %while.end.while.end49_crit_edge, label %while.end.land.rhs_crit_edge

while.end.land.rhs_crit_edge:                     ; preds = %while.end
  br label %land.rhs

while.end.while.end49_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end49

land.rhs:                                         ; preds = %if.end48.land.rhs_crit_edge, %while.end.land.rhs_crit_edge
  %vma.296 = phi ptr [ %26, %if.end48.land.rhs_crit_edge ], [ %8, %while.end.land.rhs_crit_edge ]
  %vm_end22 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.296, i32 0, i32 1
  %23 = ptrtoint ptr %vm_end22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_end22, align 4
  %sub23 = sub i32 %24, %6
  %conv = zext i32 %sub23 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %phi.bo87, i64 %conv)
  %cmp24.not = icmp slt i64 %phi.bo87, %conv
  br i1 %cmp24.not, label %land.rhs.while.end49_crit_edge, label %while.body26

land.rhs.while.end49_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end49

while.body26:                                     ; preds = %land.rhs
  %vm_next27 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.296, i32 0, i32 2
  %25 = ptrtoint ptr %vm_next27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vm_next27, align 4
  %vm_ops28 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.296, i32 0, i32 12
  %27 = ptrtoint ptr %vm_ops28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vm_ops28, align 4
  %cmp29 = icmp eq ptr %28, @shm_vm_ops
  br i1 %cmp29, label %land.lhs.true31, label %while.body26.if.end48_crit_edge

while.body26.if.end48_crit_edge:                  ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

land.lhs.true31:                                  ; preds = %while.body26
  %29 = ptrtoint ptr %vma.296 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vma.296, align 4
  %sub33 = sub i32 %30, %6
  %div3488 = lshr i32 %sub33, 12
  %vm_pgoff35 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.296, i32 0, i32 13
  %31 = ptrtoint ptr %vm_pgoff35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_pgoff35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div3488, i32 %32)
  %cmp36 = icmp eq i32 %div3488, %32
  br i1 %cmp36, label %land.lhs.true38, label %land.lhs.true31.if.end48_crit_edge

land.lhs.true31.if.end48_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

land.lhs.true38:                                  ; preds = %land.lhs.true31
  %vm_file39 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.296, i32 0, i32 14
  %33 = ptrtoint ptr %vm_file39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vm_file39, align 4
  %cmp40 = icmp eq ptr %34, %16
  br i1 %cmp40, label %if.then42, label %land.lhs.true38.if.end48_crit_edge

land.lhs.true38.if.end48_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then42:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  %sub46 = sub i32 %24, %30
  %call47 = tail call i32 @do_munmap(ptr noundef %5, i32 noundef %30, i32 noundef %sub46, ptr noundef null) #13
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %land.lhs.true38.if.end48_crit_edge, %land.lhs.true31.if.end48_crit_edge, %while.body26.if.end48_crit_edge
  %tobool21.not = icmp eq ptr %26, null
  br i1 %tobool21.not, label %if.end48.while.end49_crit_edge, label %if.end48.land.rhs_crit_edge

if.end48.land.rhs_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.end48.while.end49_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end49

while.end49:                                      ; preds = %if.end48.while.end49_crit_edge, %land.rhs.while.end49_crit_edge, %while.end.while.end49_crit_edge, %if.end18.while.end49_crit_edge, %if.end6.while.end49_crit_edge
  %retval2.0104 = phi i32 [ 0, %while.end.while.end49_crit_edge ], [ -22, %if.end6.while.end49_crit_edge ], [ 0, %if.end48.while.end49_crit_edge ], [ 0, %land.rhs.while.end49_crit_edge ], [ -22, %if.end18.while.end49_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@ksys_shmdt, %if.then.i.i90)) #13
          to label %mmap_write_unlock.exit [label %if.then.i.i90], !srcloc !144

if.then.i.i90:                                    ; preds = %while.end49
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #13
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i90, %while.end49
  tail call void @up_write(ptr noundef %mmap_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mmap_write_unlock.exit, %mmap_write_lock_killable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.0104, %mmap_write_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_munmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_shmdt(i32 noundef %shmaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %shmaddr to ptr
  %call.i = tail call i32 @ksys_shmdt(ptr noundef %0) #13
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_set_key_private(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_shm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_lock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rmid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_pid(ptr noundef returned %pid) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %pid, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #13, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !129

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !124

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef %.sink.i.i.i) #13
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %pid
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @__shm_open(ptr noundef %vma)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %file1 = getelementptr inbounds %struct.shm_file_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file1, align 4
  %f_op.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_op.i, align 4
  %mmap.i = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmap.i, align 4
  %call.i = tail call i32 %7(ptr noundef %3, ptr noundef %vma) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @shm_close(ptr noundef %vma)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %8 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_ops, align 4
  %vm_ops6 = getelementptr inbounds %struct.shm_file_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %vm_ops6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %vm_ops6, align 4
  %fault = getelementptr inbounds %struct.vm_operations_struct, ptr %9, i32 0, i32 5
  %11 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fault, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %do.end, label %if.end5.if.end24_crit_edge, !prof !129

if.end5.if.end24_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 597, i32 noundef 9, ptr noundef null) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.end5.if.end24_crit_edge
  %13 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @shm_vm_ops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then4 ], [ 0, %if.end24 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm_release(ptr nocapture noundef readnone %ino, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ns = getelementptr inbounds %struct.shm_file_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 4
  tail call void @put_ipc_ns(ptr noundef %3) #13
  %file1 = getelementptr inbounds %struct.shm_file_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file1, align 4
  tail call void @fput(ptr noundef %5) #13
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm_fsync(ptr nocapture noundef readonly %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %file1 = getelementptr inbounds %struct.shm_file_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file1, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_op, align 4
  %fsync = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %fsync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsync, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %7(ptr noundef %3, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm_get_unmapped_area(ptr nocapture noundef readonly %file, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %file1 = getelementptr inbounds %struct.shm_file_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file1, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_op, align 4
  %get_unmapped_area = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %get_unmapped_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_unmapped_area, align 4
  %call = tail call i32 %7(ptr noundef %3, i32 noundef %addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm_fallocate(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %file1 = getelementptr inbounds %struct.shm_file_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %file1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file1, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_op, align 4
  %fallocate = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %fallocate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fallocate, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %7(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__shm_open(ptr nocapture noundef readonly %vma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %ns = getelementptr inbounds %struct.shm_file_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call = tail call fastcc ptr @shm_lock(ptr noundef %5, i32 noundef %7)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %shm_file = getelementptr inbounds %struct.shmid_kernel, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %shm_file to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shm_file, align 128
  %file3 = getelementptr inbounds %struct.shm_file_data, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %file3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file3, align 4
  %cmp.not = icmp eq ptr %10, %12
  br i1 %cmp.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %call) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then4.ipc_unlock.exit_crit_edge, label %land.lhs.true.i.i

if.then4.ipc_unlock.exit_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true.i.i:                                ; preds = %if.then4
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.ipc_unlock.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.ipc_unlock.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.ipc_unlock.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.ipc_unlock.exit_crit_edge:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %ipc_unlock.exit

ipc_unlock.exit:                                  ; preds = %if.then.i.i, %land.lhs.true2.i.i.ipc_unlock.exit_crit_edge, %land.lhs.true.i.i.ipc_unlock.exit_crit_edge, %if.then4.ipc_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %13 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i64 @ktime_get_real_seconds() #13
  %shm_atim = getelementptr inbounds %struct.shmid_kernel, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %shm_atim to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call6, ptr %shm_atim, align 16
  %shm_lprid = getelementptr inbounds %struct.shmid_kernel, ptr %call, i32 0, i32 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 111
  %22 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %23, i32 0, i32 22, i32 1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %shm_lprid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shm_lprid, align 4
  %cmp.not.i = icmp eq ptr %27, %25
  br i1 %cmp.not.i, label %if.end5.ipc_update_pid.exit_crit_edge, label %if.then.i

if.end5.ipc_update_pid.exit_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_update_pid.exit

if.then.i:                                        ; preds = %if.end5
  %tobool.not.i.i21 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i21, label %if.then.i.get_pid.exit.i_crit_edge, label %if.then.i.i22

if.then.i.get_pid.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i

if.then.i.i22:                                    ; preds = %if.then.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %25, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %25, i32 1, i32 3, i32 1) #13
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i22.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !129

if.then.i.i22.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i22
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i22.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i22.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %25, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, %if.then.i.get_pid.exit.i_crit_edge
  %30 = ptrtoint ptr %shm_lprid to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %25, ptr %shm_lprid, align 4
  tail call void @put_pid(ptr noundef %27) #13
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %get_pid.exit.i, %if.end5.ipc_update_pid.exit_crit_edge
  %shm_nattch = getelementptr inbounds %struct.shmid_kernel, ptr %call, i32 0, i32 2
  %31 = ptrtoint ptr %shm_nattch to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %shm_nattch, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %shm_nattch, align 4
  tail call void @_raw_spin_unlock(ptr noundef %call) #13
  %call.i.i23 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i23, label %ipc_update_pid.exit.ipc_unlock.exit33_crit_edge, label %land.lhs.true.i.i26

ipc_update_pid.exit.ipc_unlock.exit33_crit_edge:  ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit33

land.lhs.true.i.i26:                              ; preds = %ipc_update_pid.exit
  %call1.i.i24 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %call1.i.i24, 0
  br i1 %tobool.not.i.i25, label %land.lhs.true.i.i26.ipc_unlock.exit33_crit_edge, label %land.lhs.true2.i.i28

land.lhs.true.i.i26.ipc_unlock.exit33_crit_edge:  ; preds = %land.lhs.true.i.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit33

land.lhs.true2.i.i28:                             ; preds = %land.lhs.true.i.i26
  %.b4.i.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i27, label %land.lhs.true2.i.i28.ipc_unlock.exit33_crit_edge, label %if.then.i.i29

land.lhs.true2.i.i28.ipc_unlock.exit33_crit_edge: ; preds = %land.lhs.true2.i.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit33

if.then.i.i29:                                    ; preds = %land.lhs.true2.i.i28
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %ipc_unlock.exit33

ipc_unlock.exit33:                                ; preds = %if.then.i.i29, %land.lhs.true2.i.i28.ipc_unlock.exit33_crit_edge, %land.lhs.true.i.i26.ipc_unlock.exit33_crit_edge, %ipc_update_pid.exit.ipc_unlock.exit33_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %33 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i30 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i31, align 4
  %sub.i.i.i.i32 = add i32 %36, -1
  store volatile i32 %sub.i.i.i.i32, ptr %preempt_count.i.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %ipc_unlock.exit33, %ipc_unlock.exit, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ -22, %ipc_unlock.exit ], [ 0, %ipc_unlock.exit33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shm_close(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %ns1 = getelementptr inbounds %struct.shm_file_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ns1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns1, align 4
  %rwsem = getelementptr [3 x %struct.ipc_ids], ptr %5, i32 0, i32 2, i32 2
  tail call void @down_write(ptr noundef %rwsem) #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call = tail call fastcc ptr @shm_lock(ptr noundef %5, i32 noundef %7)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.rhs, label %if.end39.critedge

land.rhs:                                         ; preds = %entry
  %.b61 = load i1, ptr @shm_close.__already_done, align 1
  br i1 %.b61, label %land.rhs.done_crit_edge, label %if.then, !prof !124

land.rhs.done_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @shm_close.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 377, i32 noundef 9, ptr noundef null) #13
  br label %done

if.end39.critedge:                                ; preds = %entry
  %shm_lprid = getelementptr inbounds %struct.shmid_kernel, ptr %call, i32 0, i32 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %shm_lprid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shm_lprid, align 4
  %cmp.not.i = icmp eq ptr %17, %15
  br i1 %cmp.not.i, label %if.end39.critedge.ipc_update_pid.exit_crit_edge, label %if.then.i

if.end39.critedge.ipc_update_pid.exit_crit_edge:  ; preds = %if.end39.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_update_pid.exit

if.then.i:                                        ; preds = %if.end39.critedge
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then.i.get_pid.exit.i_crit_edge, label %if.then.i.i

if.then.i.get_pid.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !129

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, %if.then.i.get_pid.exit.i_crit_edge
  %20 = ptrtoint ptr %shm_lprid to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %15, ptr %shm_lprid, align 4
  tail call void @put_pid(ptr noundef %17) #13
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %get_pid.exit.i, %if.end39.critedge.ipc_update_pid.exit_crit_edge
  %call42 = tail call i64 @ktime_get_real_seconds() #13
  %shm_dtim = getelementptr inbounds %struct.shmid_kernel, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %shm_dtim to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call42, ptr %shm_dtim, align 8
  %shm_nattch = getelementptr inbounds %struct.shmid_kernel, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %shm_nattch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shm_nattch, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %shm_nattch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.i63 = icmp eq i32 %dec, 0
  br i1 %cmp.i63, label %land.rhs.i, label %ipc_update_pid.exit.if.else_crit_edge

ipc_update_pid.exit.if.else_crit_edge:            ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.rhs.i:                                       ; preds = %ipc_update_pid.exit
  %ns.i = getelementptr inbounds %struct.shmid_kernel, ptr %call, i32 0, i32 12
  %24 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ns.i, align 64
  %shm_rmid_forced.i = getelementptr inbounds %struct.ipc_namespace, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %shm_rmid_forced.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %shm_rmid_forced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %shm_may_destroy.exit, label %land.rhs.i.if.then44_crit_edge

land.rhs.i.if.then44_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

shm_may_destroy.exit:                             ; preds = %land.rhs.i
  %mode.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call, i32 0, i32 8
  %28 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mode.i, align 8
  %30 = and i16 %29, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool1.i.not = icmp eq i16 %30, 0
  br i1 %tobool1.i.not, label %shm_may_destroy.exit.if.else_crit_edge, label %shm_may_destroy.exit.if.then44_crit_edge

shm_may_destroy.exit.if.then44_crit_edge:         ; preds = %shm_may_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44

shm_may_destroy.exit.if.else_crit_edge:           ; preds = %shm_may_destroy.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then44:                                        ; preds = %shm_may_destroy.exit.if.then44_crit_edge, %land.rhs.i.if.then44_crit_edge
  tail call fastcc void @shm_destroy(ptr noundef %5, ptr noundef %call)
  br label %done

if.else:                                          ; preds = %shm_may_destroy.exit.if.else_crit_edge, %ipc_update_pid.exit.if.else_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %call) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.else.ipc_unlock.exit_crit_edge, label %land.lhs.true.i.i

if.else.ipc_unlock.exit_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true.i.i:                                ; preds = %if.else
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i64 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i64, label %land.lhs.true.i.i.ipc_unlock.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.ipc_unlock.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.ipc_unlock.exit_crit_edge, label %if.then.i.i65

land.lhs.true2.i.i.ipc_unlock.exit_crit_edge:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

if.then.i.i65:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.35) #13
  br label %ipc_unlock.exit

ipc_unlock.exit:                                  ; preds = %if.then.i.i65, %land.lhs.true2.i.i.ipc_unlock.exit_crit_edge, %land.lhs.true.i.i.ipc_unlock.exit_crit_edge, %if.else.ipc_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %31 = tail call i32 @llvm.read_register.i32(metadata !114) #13
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %done

done:                                             ; preds = %ipc_unlock.exit, %if.then44, %if.then, %land.rhs.done_crit_edge
  tail call void @up_write(ptr noundef %rwsem) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_shm_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_kernel_file_setup(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_addid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_shm_shmctl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_to_ipc64_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_idr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc64_perm_to_ipc_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipcctl_obtain_check(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_update_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_unlock_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shm_open(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__shm_open(ptr noundef %vma)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b38 = load i1, ptr @shm_open.__already_done, align 1
  br i1 %.b38, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !124

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @shm_open.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 310, i32 noundef 9, ptr noundef null) #13
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm_may_split(ptr noundef %vma, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %vm_ops = getelementptr inbounds %struct.shm_file_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_ops, align 4
  %may_split = getelementptr inbounds %struct.vm_operations_struct, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %may_split to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %may_split, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %7(ptr noundef %vma, i32 noundef %addr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm_fault(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %vm_ops = getelementptr inbounds %struct.shm_file_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_ops, align 4
  %fault = getelementptr inbounds %struct.vm_operations_struct, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fault, align 4
  %call = tail call i32 %9(ptr noundef %vmf) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shm_pagesize(ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %vm_ops = getelementptr inbounds %struct.shm_file_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_ops, align 4
  %pagesize = getelementptr inbounds %struct.vm_operations_struct, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %pagesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pagesize, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 %7(ptr noundef %vma) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 4096, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_seq_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !82, !83, !85, !87, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !105, !106, !108, !110, !111, !112}
!llvm.named.register.sp = !{!114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_shm__352_153_ipc_ns_init0, !1, !"__initcall__kmod_shm__352_153_ipc_ns_init0", i1 false, i1 false}
!1 = !{!"../ipc/shm.c", i32 153, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../ipc/shm.c", i32 157, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../ipc/shm.c", i32 159, i32 5}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../ipc/shm.c", i32 474, i32 3}
!8 = !{ptr @ksys_shmget.shm_ops, !9, !"shm_ops", i1 false, i1 false}
!9 = !{!"../ipc/shm.c", i32 818, i32 30}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../ipc/shm.c", i32 834, i32 1}
!12 = !{ptr @event_enter__shmget, !11, !"event_enter__shmget", i1 false, i1 false}
!13 = !{ptr @__event_enter__shmget, !11, !"__event_enter__shmget", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__shmget, !11, !"event_exit__shmget", i1 false, i1 false}
!16 = !{ptr @__event_exit__shmget, !11, !"__event_exit__shmget", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__shmget, !11, !"__syscall_meta__shmget", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__shmget, !11, !"__p_syscall_meta__shmget", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../ipc/shm.c", i32 1283, i32 1}
!22 = !{ptr @event_enter__shmctl, !21, !"event_enter__shmctl", i1 false, i1 false}
!23 = !{ptr @__event_enter__shmctl, !21, !"__event_enter__shmctl", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_exit__shmctl, !21, !"event_exit__shmctl", i1 false, i1 false}
!26 = !{ptr @__event_exit__shmctl, !21, !"__event_exit__shmctl", i1 false, i1 false}
!27 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__syscall_meta__shmctl, !21, !"__syscall_meta__shmctl", i1 false, i1 false}
!29 = !{ptr @__p_syscall_meta__shmctl, !21, !"__p_syscall_meta__shmctl", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../ipc/shm.c", i32 1296, i32 1}
!32 = !{ptr @event_enter__old_shmctl, !31, !"event_enter__old_shmctl", i1 false, i1 false}
!33 = !{ptr @__event_enter__old_shmctl, !31, !"__event_enter__old_shmctl", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @event_exit__old_shmctl, !31, !"event_exit__old_shmctl", i1 false, i1 false}
!36 = !{ptr @__event_exit__old_shmctl, !31, !"__event_exit__old_shmctl", i1 false, i1 false}
!37 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__syscall_meta__old_shmctl, !31, !"__syscall_meta__old_shmctl", i1 false, i1 false}
!39 = !{ptr @__p_syscall_meta__old_shmctl, !31, !"__p_syscall_meta__old_shmctl", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../ipc/shm.c", i32 1680, i32 1}
!42 = !{ptr @event_enter__shmat, !41, !"event_enter__shmat", i1 false, i1 false}
!43 = !{ptr @__event_enter__shmat, !41, !"__event_enter__shmat", i1 false, i1 false}
!44 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @event_exit__shmat, !41, !"event_exit__shmat", i1 false, i1 false}
!46 = !{ptr @__event_exit__shmat, !41, !"__event_exit__shmat", i1 false, i1 false}
!47 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__syscall_meta__shmat, !41, !"__syscall_meta__shmat", i1 false, i1 false}
!49 = !{ptr @__p_syscall_meta__shmat, !41, !"__p_syscall_meta__shmat", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../ipc/shm.c", i32 1822, i32 1}
!52 = !{ptr @event_enter__shmdt, !51, !"event_enter__shmdt", i1 false, i1 false}
!53 = !{ptr @__event_enter__shmdt, !51, !"__event_enter__shmdt", i1 false, i1 false}
!54 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @event_exit__shmdt, !51, !"event_exit__shmdt", i1 false, i1 false}
!56 = !{ptr @__event_exit__shmdt, !51, !"__event_exit__shmdt", i1 false, i1 false}
!57 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__syscall_meta__shmdt, !51, !"__syscall_meta__shmdt", i1 false, i1 false}
!59 = !{ptr @__p_syscall_meta__shmdt, !51, !"__p_syscall_meta__shmdt", i1 false, i1 false}
!60 = !{ptr @shm_file_operations_huge, !61, !"shm_file_operations_huge", i1 false, i1 false}
!61 = !{!"../ipc/shm.c", i32 656, i32 37}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../ipc/shm.c", i32 377, i32 6}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../ipc/shm.c", i32 726, i32 16}
!66 = !{ptr @.str.19, !11, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.20, !11, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.21, !11, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @types__shmget, !11, !"types__shmget", i1 false, i1 false}
!70 = !{ptr @.str.22, !11, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.23, !11, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.24, !11, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @args__shmget, !11, !"args__shmget", i1 false, i1 false}
!74 = !{ptr @.str.25, !21, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @types__shmctl, !21, !"types__shmctl", i1 false, i1 false}
!76 = !{ptr @.str.26, !21, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.27, !21, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.28, !21, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @args__shmctl, !21, !"args__shmctl", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!82 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../ipc/shm.c", i32 1180, i32 17}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../ipc/shm.c", i32 1198, i32 29}
!91 = !{ptr @types__old_shmctl, !31, !"types__old_shmctl", i1 false, i1 false}
!92 = !{ptr @args__old_shmctl, !31, !"args__old_shmctl", i1 false, i1 false}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!99 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @shm_file_operations, !101, !"shm_file_operations", i1 false, i1 false}
!101 = !{!"../ipc/shm.c", i32 643, i32 37}
!102 = !{ptr @.str.36, !41, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @types__shmat, !41, !"types__shmat", i1 false, i1 false}
!104 = !{ptr @.str.37, !41, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @args__shmat, !41, !"args__shmat", i1 false, i1 false}
!106 = !{ptr @shm_vm_ops, !107, !"shm_vm_ops", i1 false, i1 false}
!107 = !{!"../ipc/shm.c", i32 670, i32 42}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../ipc/shm.c", i32 310, i32 2}
!110 = !{ptr @types__shmdt, !51, !"types__shmdt", i1 false, i1 false}
!111 = !{ptr @args__shmdt, !51, !"args__shmdt", i1 false, i1 false}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../ipc/shm.c", i32 1846, i32 6}
!114 = !{!"sp"}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{i64 2149961520}
!126 = !{i64 2149961254}
!127 = !{i64 1109896, i64 1109920, i64 1109941, i64 1109958, i64 1109975}
!128 = !{i8 0, i8 2}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2152811511, i64 2152811536}
!131 = !{i64 2152810830, i64 2152810855}
!132 = !{i64 5306385}
!133 = !{i64 5306582}
!134 = !{i64 2152791815}
!135 = !{i64 2148624383, i64 2148624409, i64 2148624438, i64 2148624472, i64 2148624503, i64 2148624526}
!136 = !{i64 1029063, i64 1029124}
!137 = !{i64 1031795}
!138 = !{i64 1032080}
!139 = !{i64 2153145243}
!140 = !{i64 2153145085}
!141 = !{i64 2153145413}
!142 = !{i64 2149803782}
!143 = !{i64 2148625913, i64 2148625945, i64 2148625974, i64 2148626008, i64 2148626039, i64 2148626062}
!144 = !{i64 2148245109, i64 2148245114, i64 2148245127, i64 2148245171, i64 2148245205, i64 2148245226}
!145 = !{!"auto-init"}
