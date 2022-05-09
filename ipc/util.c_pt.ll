; ModuleID = '/llk/IR_all_yes/ipc/util.c_pt.bc'
source_filename = "../ipc/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ipc_proc_iface = type { ptr, ptr, i32, ptr }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [28 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rhash_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.50 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.33 = type { %struct.callback_head }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipc64_perm = type { i32, i32, i32, i32, i32, i16, [2 x i8], i16, i16, i32, i32 }
%struct.ipc_perm = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.ipc_params = type { i32, i32, %union.anon.71 }
%union.anon.71 = type { i32 }
%struct.ipc_ops = type { ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ipc_proc_iter = type { ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.66 = type { ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_util__283_99_ipc_init6 = internal global ptr @ipc_init, section ".initcall6.init", align 4
@ipc_init_ids.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ids->rwsem\00", [20 x i8] zeroinitializer }, align 32
@ipc_kht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 52, i16 84, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sysvipc_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 1, ptr @sysvipc_proc_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @sysvipc_proc_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipc_mni = external dso_local local_unnamed_addr global i32, align 4
@ipc_addid.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&new->lock\00", [21 x i8] zeroinitializer }, align 32
@ipc_mni_shift = external dso_local local_unnamed_addr global i32, align 4
@ipc_rmid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipc/util.c\00", [21 x i8] zeroinitializer }, align 32
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sysvipc\00", [24 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@ipc_min_cycle = external dso_local local_unnamed_addr global i32, align 4
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ipc_kht_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sysvipc_proc_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @sysvipc_proc_start, ptr @sysvipc_proc_stop, ptr @sysvipc_proc_next, ptr @sysvipc_proc_show }, [16 x i8] zeroinitializer }, align 32
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 119, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"ipc_kht_params\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 101, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"sysvipc_proc_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 913, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 295, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 501, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 92, i32 13 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 378, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 695, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 36, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 715, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 755, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 723, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"sysvipc_proc_seqops\00", align 1
@___asan_gen_.84 = private constant [14 x i8] c"../ipc/util.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 882, i32 36 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__initcall__kmod_util__283_99_ipc_init6, ptr @ipc_init_ids.__key, ptr @.str, ptr @ipc_kht_params, ptr @sysvipc_proc_ops, ptr @ipc_addid.__key, ptr @.str.1, ptr @.str.2, ptr @.str.7, ptr @xa_init_flags.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @sysvipc_proc_seqops], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_init_ids.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_kht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysvipc_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_addid.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysvipc_proc_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.7, ptr noundef null) #13
  tail call void @sem_init() #13
  tail call void @msg_init() #13
  tail call void @shm_init() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipc_init_ids(ptr noundef %ids) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ids to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ids, align 4
  %seq = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 1
  %1 = ptrtoint ptr %seq to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %seq, align 4
  %rwsem = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %rwsem, ptr noundef nonnull @.str, ptr noundef nonnull @ipc_init_ids.__key) #13
  %key_ht = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7
  %call = tail call i32 @rhashtable_init(ptr noundef %key_ht, ptr noundef nonnull @ipc_kht_params) #13
  %ipcs_idr = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %ipcs_idr, ptr noundef nonnull @.str.8, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3, i32 0, i32 2
  %3 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %idr_next.i.i, align 4
  %max_idx = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 4
  %6 = ptrtoint ptr %max_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %max_idx, align 4
  %last_idx = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 5
  %7 = ptrtoint ptr %last_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %last_idx, align 4
  %next_id = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 6
  %8 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %next_id, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ipc_init_proc_interface(ptr noundef %path, ptr noundef %header, i32 noundef %ids, ptr noundef %show) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %path, ptr %call7.i, align 8
  %header2 = getelementptr inbounds %struct.ipc_proc_iface, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %header2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %header, ptr %header2, align 4
  %ids3 = getelementptr inbounds %struct.ipc_proc_iface, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %ids3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %ids, ptr %ids3, align 8
  %show4 = getelementptr inbounds %struct.ipc_proc_iface, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %show4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %show, ptr %show4, align 4
  %call5 = tail call ptr @proc_create_data(ptr noundef %path, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @sysvipc_proc_ops, ptr noundef nonnull %call7.i) #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipc_addid(ptr noundef %ids, ptr noundef %new, i32 noundef %limit) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %refcount, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni to i32))
  %1 = load i32, ptr @ipc_mni, align 4
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 %limit)
  %3 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp1.not = icmp slt i32 %4, %2
  br i1 %cmp1.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %entry
  tail call void @idr_preload(i32 noundef 3264) #13
  tail call void @__raw_spin_lock_init(ptr noundef %new, ptr noundef nonnull @.str.1, ptr noundef nonnull @ipc_addid.__key, i16 noundef signext 3) #13
  %5 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end3.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end3.rcu_read_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end3
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end3.rcu_read_lock.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %new) #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred, align 16
  %euid10 = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %euid10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %euid.sroa.0.0.copyload = load i32, ptr %euid10, align 4
  %egid11 = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 9
  %16 = ptrtoint ptr %egid11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %egid.sroa.0.0.copyload = load i32, ptr %egid11, align 4
  %cuid = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 6
  %uid = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 4
  %17 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %euid.sroa.0.0.copyload, ptr %uid, align 8
  %18 = ptrtoint ptr %cuid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %euid.sroa.0.0.copyload, ptr %cuid, align 64
  %gid = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 5
  %cgid = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 7
  %19 = ptrtoint ptr %cgid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %egid.sroa.0.0.copyload, ptr %cgid, align 4
  %20 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %egid.sroa.0.0.copyload, ptr %gid, align 4
  %deleted = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 1
  %21 = ptrtoint ptr %deleted to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %deleted, align 4
  %next_id1.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 6
  %22 = ptrtoint ptr %next_id1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %next_id1.i, align 4
  store i32 -1, ptr %next_id1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp slt i32 %23, 0
  br i1 %cmp.i, label %if.then.i73, label %if.end31.i

if.then.i73:                                      ; preds = %rcu_read_lock.exit
  %24 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ids, align 4
  %mul.i = mul i32 %25, 3
  %div.i = sdiv i32 %mul.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_min_cycle to i32))
  %26 = load i32, ptr @ipc_min_cycle, align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 %26) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni to i32))
  %28 = load i32, ptr @ipc_mni, align 4
  %29 = tail call i32 @llvm.smin.i32(i32 %27, i32 %28) #13
  %ipcs_idr.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  %call.i72 = tail call i32 @idr_alloc_cyclic(ptr noundef %ipcs_idr.i, ptr noundef null, i32 noundef 0, i32 noundef %29, i32 noundef 2048) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72)
  %cmp10.i = icmp sgt i32 %call.i72, -1
  br i1 %cmp10.i, label %if.then11.i, label %if.then.i73.ipc_idr_alloc.exit_crit_edge

if.then.i73.ipc_idr_alloc.exit_crit_edge:         ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_idr_alloc.exit

if.then11.i:                                      ; preds = %if.then.i73
  %last_idx.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 5
  %30 = ptrtoint ptr %last_idx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i72, i32 %31)
  %cmp12.not.i = icmp sgt i32 %call.i72, %31
  br i1 %cmp12.not.i, label %if.then11.i.if.end31.thread.i_crit_edge, label %if.then13.i

if.then11.i.if.end31.thread.i_crit_edge:          ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.thread.i

if.then13.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  %seq.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 1
  %32 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %seq.i, align 4
  %inc.i = add i16 %33, 1
  %conv.i = zext i16 %inc.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni_shift to i32))
  %34 = load i32, ptr @ipc_mni_shift, align 4
  %shr.i = lshr i32 2147483647, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv.i)
  %cmp15.not.i = icmp ugt i32 %shr.i, %conv.i
  %spec.store.select.i = select i1 %cmp15.not.i, i16 %inc.i, i16 0
  %35 = ptrtoint ptr %seq.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %spec.store.select.i, ptr %seq.i, align 4
  br label %if.end31.thread.i

if.end31.thread.i:                                ; preds = %if.then13.i, %if.then11.i.if.end31.thread.i_crit_edge
  %36 = ptrtoint ptr %last_idx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i72, ptr %last_idx.i, align 4
  %seq21.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 1
  %37 = ptrtoint ptr %seq21.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %seq21.i, align 4
  %conv22.i = zext i16 %38 to i32
  %seq23.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 9
  %39 = ptrtoint ptr %seq23.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv22.i, ptr %seq23.i, align 4
  %call25.i = tail call ptr @idr_replace(ptr noundef %ipcs_idr.i, ptr noundef %new, i32 noundef %call.i72) #13
  br label %if.then34.i

if.end31.i:                                       ; preds = %rcu_read_lock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni_shift to i32))
  %40 = load i32, ptr @ipc_mni_shift, align 4
  %shr2776.i = lshr i32 %23, %40
  %seq28.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 9
  %41 = ptrtoint ptr %seq28.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr2776.i, ptr %seq28.i, align 4
  %ipcs_idr29.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  %notmask.i = shl nsw i32 -1, %40
  %sub.i = xor i32 %notmask.i, -1
  %and.i74 = and i32 %23, %sub.i
  %call30.i = tail call i32 @idr_alloc(ptr noundef %ipcs_idr29.i, ptr noundef %new, i32 noundef %and.i74, i32 noundef 0, i32 noundef 2048) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call30.i)
  %cmp32.i = icmp sgt i32 %call30.i, -1
  br i1 %cmp32.i, label %if.end31.i.if.then34.i_crit_edge, label %if.end31.i.ipc_idr_alloc.exit_crit_edge

if.end31.i.ipc_idr_alloc.exit_crit_edge:          ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_idr_alloc.exit

if.end31.i.if.then34.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34.i

if.then34.i:                                      ; preds = %if.end31.i.if.then34.i_crit_edge, %if.end31.thread.i
  %idx.072.i = phi i32 [ %call.i72, %if.end31.thread.i ], [ %call30.i, %if.end31.i.if.then34.i_crit_edge ]
  %seq35.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 9
  %42 = ptrtoint ptr %seq35.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %seq35.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni_shift to i32))
  %44 = load i32, ptr @ipc_mni_shift, align 4
  %shl36.i = shl i32 %43, %44
  %add.i = add i32 %shl36.i, %idx.072.i
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 2
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i, ptr %id.i, align 16
  br label %ipc_idr_alloc.exit

ipc_idr_alloc.exit:                               ; preds = %if.then34.i, %if.end31.i.ipc_idr_alloc.exit_crit_edge, %if.then.i73.ipc_idr_alloc.exit_crit_edge
  %idx.071.i = phi i32 [ %idx.072.i, %if.then34.i ], [ %call30.i, %if.end31.i.ipc_idr_alloc.exit_crit_edge ], [ %call.i72, %if.then.i73.ipc_idr_alloc.exit_crit_edge ]
  %46 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %add.i75 = add i32 %51, ptrtoint (ptr @radix_tree_preloads to i32)
  %52 = inttoptr i32 %add.i75 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %52) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !95
  %53 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.071.i)
  %cmp15 = icmp sgt i32 %idx.071.i, -1
  br i1 %cmp15, label %land.lhs.true, label %ipc_idr_alloc.exit.if.then25_crit_edge

ipc_idr_alloc.exit.if.then25_crit_edge:           ; preds = %ipc_idr_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

land.lhs.true:                                    ; preds = %ipc_idr_alloc.exit
  %key = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 3
  %57 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp16.not = icmp eq i32 %58, 0
  br i1 %cmp16.not, label %land.lhs.true.if.end28_crit_edge, label %if.then17

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then17:                                        ; preds = %land.lhs.true
  %key_ht = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7
  %khtnode = getelementptr inbounds %struct.kern_ipc_perm, ptr %new, i32 0, i32 11
  %59 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %62, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i76 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i76, label %if.then17.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then17.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then17
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then17.rcu_read_lock.exit.i.i_crit_edge
  %63 = ptrtoint ptr %key_ht to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %key_ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %key_ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 715, ptr noundef nonnull @.str.15) #13
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 3, i32 3
  %65 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %66 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %khtnode, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 52
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %64, i32 0, i32 2
  %67 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %68, -559038733
  %69 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i.i, align 4
  %add36.i.i.i.i.i.i = add i32 %70, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i, i32 14) #13
  %sub39.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #13
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #13
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #13
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #13
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #13
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #13
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %64, align 128
  %sub.i.i.i.i.i = add i32 %72, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %64, i32 0, i32 1
  %73 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i4.i.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i4.i.i, label %cond.false.i7.i.i, label %cond.true.i6.i.i, !prof !96

cond.true.i6.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i5.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %key_ht, ptr noundef %64, i32 noundef %and.i3.i.i.i.i) #13
  br label %rht_bucket_insert.exit.i.i

cond.false.i7.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %64, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i7.i.i, %cond.true.i6.i.i
  %cond.i8.i.i = phi ptr [ %call.i5.i.i, %cond.true.i6.i.i ], [ %arrayidx.i.i.i, %cond.false.i7.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i8.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %64, ptr noundef nonnull %cond.i8.i.i) #13
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %64, i32 0, i32 5
  %75 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %76, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !96

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %64, ptr noundef nonnull %cond.i8.i.i) #13
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i13.i.i:                            ; preds = %slow_path.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #13
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %77 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i17.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i19.i.i = add i32 %80, -1
  store volatile i32 %sub.i.i.i19.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call29.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef %key_ht, ptr noundef null, ptr noundef %khtnode) #13
  br label %rhashtable_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i20.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %64, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i23.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.end30.i.i
  %call1.i22.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i23.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 377, ptr noundef nonnull @.str.17) #13
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i24.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %81 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cond.i8.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  %and.i.i.i.i77 = and i32 %83, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i77)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i77, 0
  %84 = ptrtoint ptr %cond.i8.i.i to i32
  %or.i.i.i.i = or i32 %84, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i77
  %and.i63.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i)
  %tobool.i.not64.i.i = icmp eq i32 %and.i63.i.i, 0
  br i1 %tobool.i.not64.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %85 = inttoptr i32 %cond.i.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %head.066.i.i = phi ptr [ %87, %do.end147.i.i.for.body.i.i_crit_edge ], [ %85, %for.body.preheader.i.i ]
  %elasticity.065.i.i = phi i32 [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ], [ 16, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %elasticity.065.i.i, -1
  %call137.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %64, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %for.body.i.i.do.end147.i.i_crit_edge

for.body.i.i.do.end147.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %for.body.i.i
  %call140.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.18, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 732, ptr noundef nonnull @.str.17) #13
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %for.body.i.i.do.end147.i.i_crit_edge
  %86 = ptrtoint ptr %head.066.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %head.066.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  %and.i.i.i = and i32 %88, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 8
  %call.i.i.i25.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %89 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 2
  %91 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp.i.not.i.i = icmp ult i32 %90, %92
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !96

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i27.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %93 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %nelems.i.i.i, align 4
  %95 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %64, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp.i28.i.i = icmp ugt i32 %94, %96
  br i1 %cmp.i28.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 3, i32 4
  %97 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i29.i.i = icmp eq i32 %98, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp4.i.i.i = icmp ult i32 %96, %98
  %spec.select.i.i.i = select i1 %tobool.not.i29.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !98

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i30.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %64, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool.not.i31.i.i = icmp eq i32 %call.i30.i.i, 0
  br i1 %tobool.not.i31.i.i, label %land.lhs.true.i34.i.i, label %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge

if.end171.i.i.rht_ptr.exit42.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i.i

land.lhs.true.i34.i.i:                            ; preds = %if.end171.i.i
  %call1.i32.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i)
  %tobool2.not.i33.i.i = icmp eq i32 %call1.i32.i.i, 0
  br i1 %tobool2.not.i33.i.i, label %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, label %land.lhs.true3.i36.i.i

land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i.i

land.lhs.true3.i36.i.i:                           ; preds = %land.lhs.true.i34.i.i
  %.b7.i35.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i, label %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, label %if.then.i37.i.i

land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit42.i.i

if.then.i37.i.i:                                  ; preds = %land.lhs.true3.i36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 377, ptr noundef nonnull @.str.17) #13
  br label %rht_ptr.exit42.i.i

rht_ptr.exit42.i.i:                               ; preds = %if.then.i37.i.i, %land.lhs.true3.i36.i.i.rht_ptr.exit42.i.i_crit_edge, %land.lhs.true.i34.i.i.rht_ptr.exit42.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit42.i.i_crit_edge
  %99 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cond.i8.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  %and.i.i38.i.i = and i32 %101, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i)
  %tobool.not.i.i39.i.i = icmp eq i32 %and.i.i38.i.i, 0
  %cond.i.i41.i.i = select i1 %tobool.not.i.i39.i.i, i32 %or.i.i.i.i, i32 %and.i.i38.i.i
  %102 = inttoptr i32 %cond.i.i41.i.i to ptr
  %103 = ptrtoint ptr %khtnode to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %102, ptr %khtnode, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #13
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #13, !srcloc !99
  tail call fastcc void @rht_assign_unlock(ptr noundef %64, ptr noundef nonnull %cond.i8.i.i, ptr noundef %khtnode) #13
  %call.i.i.i44.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %105 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %nelems.i.i.i, align 4
  %107 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %64, align 128
  %div8.i.i.i = lshr i32 %108, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %mul.i.i.i)
  %cmp.i45.i.i = icmp ugt i32 %106, %mul.i.i.i
  br i1 %cmp.i45.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit42.i.i.out.i.i_crit_edge

rht_ptr.exit42.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit42.i.i
  %max_size.i46.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 3, i32 4
  %109 = ptrtoint ptr %max_size.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max_size.i46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i47.i.i = icmp eq i32 %110, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp4.i48.i.i = icmp ult i32 %108, %110
  %spec.select.i49.i.i = select i1 %tobool.not.i47.i.i, i1 true, i1 %cmp4.i48.i.i
  br i1 %spec.select.i49.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %111 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %111, ptr noundef %run_work.i.i) #13
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit42.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit42.i.i.out.i.i_crit_edge ]
  %call.i52.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i52.i.i, label %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true.i55.i.i

out.i.i.rcu_read_unlock.exit62.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true.i55.i.i:                            ; preds = %out.i.i
  %call1.i53.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i)
  %tobool.not.i54.i.i = icmp eq i32 %call1.i53.i.i, 0
  br i1 %tobool.not.i54.i.i, label %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %land.lhs.true2.i57.i.i

land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i.i

land.lhs.true2.i57.i.i:                           ; preds = %land.lhs.true.i55.i.i
  %.b4.i56.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i, label %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, label %if.then.i58.i.i

land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit62.i.i

if.then.i58.i.i:                                  ; preds = %land.lhs.true2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #13
  br label %rcu_read_unlock.exit62.i.i

rcu_read_unlock.exit62.i.i:                       ; preds = %if.then.i58.i.i, %land.lhs.true2.i57.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %land.lhs.true.i55.i.i.rcu_read_unlock.exit62.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit62.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %112 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i59.i.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i.i59.i.i to ptr
  %preempt_count.i.i.i.i60.i.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i, align 4
  %sub.i.i.i61.i.i = add i32 %115, -1
  store volatile i32 %sub.i.i.i61.i.i, ptr %preempt_count.i.i.i.i60.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %rhashtable_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_unlock(ptr noundef %64, ptr noundef nonnull %cond.i8.i.i) #13
  br label %out.i.i

rhashtable_insert_fast.exit:                      ; preds = %rcu_read_unlock.exit62.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit62.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  %116 = ptrtoint ptr %retval.0.i.i to i32
  %cmp.i78 = icmp eq ptr %retval.0.i.i, null
  %cond.i = select i1 %cmp.i78, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %116, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp19 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ipcs_idr = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  %call21 = tail call ptr @idr_remove(ptr noundef %ipcs_idr, i32 noundef %idx.071.i) #13
  br label %if.then25

if.end23:                                         ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.071.i)
  %cmp24 = icmp slt i32 %idx.071.i, 0
  br i1 %cmp24, label %if.end23.if.then25_crit_edge, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.then20, %ipc_idr_alloc.exit.if.then25_crit_edge
  %idx.090 = phi i32 [ %idx.071.i, %if.end23.if.then25_crit_edge ], [ %idx.071.i, %ipc_idr_alloc.exit.if.then25_crit_edge ], [ %retval.0.i, %if.then20 ]
  %117 = ptrtoint ptr %deleted to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %deleted, align 4
  tail call void @_raw_spin_unlock(ptr noundef %new) #13
  %call.i79 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i79, label %if.then25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i82

if.then25.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i82:                                ; preds = %if.then25
  %call1.i80 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i82.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i84

land.lhs.true.i82.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i84:                               ; preds = %land.lhs.true.i82
  %.b4.i83 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i83, label %land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge, label %if.then.i85

land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i85:                                      ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i85, %land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i82.rcu_read_unlock.exit_crit_edge, %if.then25.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %118 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i86 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i.i86 to ptr
  %preempt_count.i.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %preempt_count.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %preempt_count.i.i.i.i87, align 4
  %sub.i.i.i = add i32 %121, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i87, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end23.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge
  %122 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ids, align 4
  %inc = add i32 %123, 1
  store i32 %inc, ptr %ids, align 4
  %max_idx = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 4
  %124 = ptrtoint ptr %max_idx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %max_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.071.i, i32 %125)
  %cmp30 = icmp sgt i32 %idx.071.i, %125
  br i1 %cmp30, label %if.then31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %max_idx to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %idx.071.i, ptr %max_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end28.cleanup_crit_edge, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %idx.090, %rcu_read_unlock.exit ], [ -28, %entry.cleanup_crit_edge ], [ %idx.071.i, %if.then31 ], [ %idx.071.i, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipc_rmid(ptr noundef %ids, ptr noundef %ipcp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni_shift to i32))
  %2 = load i32, ptr @ipc_mni_shift, align 4
  %notmask = shl nsw i32 -1, %2
  %sub = xor i32 %notmask, -1
  %and = and i32 %1, %sub
  %ipcs_idr = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  %call = tail call ptr @idr_remove(ptr noundef %ipcs_idr, i32 noundef %and) #13
  %cmp.not = icmp eq ptr %call, %ipcp
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %land.rhs

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b66 = load i1, ptr @ipc_rmid.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !96

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ipc_rmid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 501, i32 noundef 9, ptr noundef null) #13
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  tail call fastcc void @ipc_kht_remove(ptr noundef %ids, ptr noundef %ipcp)
  %3 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ids, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %ids, align 4
  %deleted = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 1
  %5 = ptrtoint ptr %deleted to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %deleted, align 4
  %max_idx = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 4
  %6 = ptrtoint ptr %max_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp35 = icmp eq i32 %and, %7
  br i1 %cmp35, label %if.then42, label %if.end27.if.end50_crit_edge, !prof !98

if.end27.if.end50_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then42:                                        ; preds = %if.end27
  %sub44 = add i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub44)
  %cmp45 = icmp sgt i32 %sub44, -1
  br i1 %cmp45, label %if.then46, label %if.then42.if.end48_crit_edge

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %call47 = tail call fastcc i32 @ipc_search_maxidx(ptr noundef %ids, i32 noundef %sub44)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then42.if.end48_crit_edge
  %idx.0 = phi i32 [ %call47, %if.then46 ], [ %sub44, %if.then42.if.end48_crit_edge ]
  %8 = ptrtoint ptr %max_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %idx.0, ptr %max_idx, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end27.if.end50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipc_kht_remove(ptr noundef %ids, ptr noundef readonly %ipcp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 3
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then:                                          ; preds = %entry
  %key_ht = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7
  %khtnode = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 11
  %2 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i, label %if.then.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.rcu_read_lock.exit.i.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.rcu_read_lock.exit.i.i_crit_edge
  %6 = ptrtoint ptr %key_ht to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %key_ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %key_ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 1076, ptr noundef nonnull @.str.15) #13
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 3, i32 3
  %add.ptr.i.i.i.i.i = getelementptr %struct.kern_ipc_perm, ptr %ipcp, i32 1, i32 0, i32 0, i32 0, i32 2
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %7, %do.end10.i.i ], [ %40, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %8 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %9 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %11, -559038733
  %12 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %13, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i.i, i32 14) #13
  %sub39.i.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #13
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #13
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #13
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #13
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #13
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #13
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %14 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %15, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i3.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !96

cond.true.i4.i.i.i:                               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #13
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #13
  %call.i8.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 377, ptr noundef nonnull @.str.17) #13
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %18 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cond.i6.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %and.i.i.i.i.i = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %21 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %21, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %22 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i21.i.i = icmp eq ptr %khtnode, %22
  br i1 %cmp.not.i21.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %27, %khtnode
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i22.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 1032, ptr noundef nonnull @.str.17) #13
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %23 = ptrtoint ptr %khtnode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %khtnode, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !100
  %25 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %pprev.023.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #13
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %24) #13
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i22.i.i = phi ptr [ %27, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %22, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.24, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 1004, ptr noundef nonnull @.str.17) #13
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %26 = ptrtoint ptr %he.022.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %he.022.i22.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %and.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #13
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %nelems.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #13
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #13, !srcloc !101
  %automatic_shrinking.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 3, i32 6
  %30 = ptrtoint ptr %automatic_shrinking.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %automatic_shrinking.i.i.i, align 2, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool161.not.i.i.i = icmp eq i8 %31, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #13
  %32 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %nelems.i.i.i, align 4
  %34 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %35, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %33, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %min_size.i.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 3, i32 5
  %36 = ptrtoint ptr %min_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %min_size.i.i.i.i, align 4
  %conv.i11.i.i.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %35, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !98

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %run_work.i.i.i) #13
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %key_ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.20, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 1085, ptr noundef nonnull @.str.15) #13
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %40, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %tobool.not = phi i1 [ true, %if.then168.i.i.i ], [ true, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge ], [ true, %land.rhs162.i.i.i.while.end.i.i_crit_edge ], [ true, %if.then160.i.i.i.while.end.i.i_crit_edge ], [ false, %do.end33.i.i.while.end.i.i_crit_edge ]
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #13
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %41 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i11.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br i1 %tobool.not, label %rhashtable_remove_fast.exit.if.end37_crit_edge, label %land.rhs

rhashtable_remove_fast.exit.if.end37_crit_edge:   ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

land.rhs:                                         ; preds = %rhashtable_remove_fast.exit
  %.b47 = load i1, ptr @ipc_kht_remove.__already_done, align 1
  br i1 %.b47, label %land.rhs.if.end37_crit_edge, label %if.then8, !prof !96

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ipc_kht_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 451, i32 noundef 9, ptr noundef null) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then8, %land.rhs.if.end37_crit_edge, %rhashtable_remove_fast.exit.if.end37_crit_edge, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipc_search_maxidx(ptr noundef %ids, i32 noundef %limit) unnamed_addr #1 align 64 {
entry:
  %tmpidx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpidx) #13
  %add = add i32 %limit, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp925.not = icmp eq i32 %add, 0
  br i1 %cmp925.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = tail call i32 @llvm.ctlz.i32(i32 %add, i1 true) #13, !range !103
  %sub.i = xor i32 %0, 31
  %ipcs_idr = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %retval1.027 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %i.026 = phi i32 [ %sub.i, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.026
  %or = or i32 %retval1.027, %shl
  %sub11 = add i32 %or, -1
  %1 = ptrtoint ptr %tmpidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub11, ptr %tmpidx, align 4
  %call12 = call ptr @idr_get_next(ptr noundef %ipcs_idr, ptr noundef nonnull %tmpidx) #13
  %tobool.not = icmp eq ptr %call12, null
  %spec.select = select i1 %tobool.not, i32 %retval1.027, i32 %or
  %dec = add nsw i32 %i.026, -1
  %cmp9.not = icmp eq i32 %i.026, 0
  br i1 %cmp9.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo = add i32 %spec.select, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %retval1.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpidx) #13
  ret i32 %retval1.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipc_set_key_private(ptr noundef %ids, ptr noundef %ipcp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ipc_kht_remove(ptr noundef %ids, ptr noundef %ipcp)
  %key = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 3
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %key, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipc_rcu_getref(ptr noundef %ptr) local_unnamed_addr #1 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.kern_ipc_perm, ptr %ptr, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #13
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %refcount) #13, !srcloc !104
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !96

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !96

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #13
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #13
  ret i1 %tobool12.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipc_rcu_putref(ptr noundef %ptr, ptr noundef %func) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.kern_ipc_perm, ptr %ptr, i32 0, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !106
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !96

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !107
  %rcu = getelementptr inbounds %struct.kern_ipc_perm, ptr %ptr, i32 0, i32 12
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef %func) #13
  br label %return

return:                                           ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipcperms(ptr nocapture noundef readonly %ns, ptr noundef %ipcp, i16 noundef signext %flag) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %euid1 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %euid1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %euid.sroa.0.0.copyload = load i32, ptr %euid1, align 4
  %conv51 = zext i16 %flag to i32
  %7 = lshr i32 %conv51, 6
  %8 = lshr i32 %conv51, 3
  %or = or i32 %8, %conv51
  %or5 = or i32 %or, %7
  %mode = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 8
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mode, align 8
  %conv6 = zext i16 %10 to i32
  %cuid = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 6
  %11 = ptrtoint ptr %cuid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %cuid, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %euid.sroa.0.0.copyload, i32 %.unpack)
  %cmp.i = icmp eq i32 %euid.sroa.0.0.copyload, %.unpack
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %uid = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 4
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack47 = load i32, ptr %uid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %euid.sroa.0.0.copyload, i32 %.unpack47)
  %cmp.i50 = icmp eq i32 %euid.sroa.0.0.copyload, %.unpack47
  br i1 %cmp.i50, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %13 = lshr i32 %conv6, 6
  br label %if.end23

if.else:                                          ; preds = %lor.lhs.false
  %cgid = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 7
  %14 = ptrtoint ptr %cgid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack48 = load i32, ptr %cgid, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack48, 0
  %call16 = tail call i32 @in_group_p([1 x i32] %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %lor.lhs.false17, label %if.else.if.then21_crit_edge

if.else.if.then21_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false17:                                  ; preds = %if.else
  %gid = getelementptr inbounds %struct.kern_ipc_perm, ptr %ipcp, i32 0, i32 5
  %16 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack49 = load i32, ptr %gid, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack49, 0
  %call19 = tail call i32 @in_group_p([1 x i32] %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false17.if.end23_crit_edge, label %lor.lhs.false17.if.then21_crit_edge

lor.lhs.false17.if.then21_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

lor.lhs.false17.if.end23_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then21:                                        ; preds = %lor.lhs.false17.if.then21_crit_edge, %if.else.if.then21_crit_edge
  %18 = lshr i32 %conv6, 3
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %lor.lhs.false17.if.end23_crit_edge, %if.then
  %granted_mode.0 = phi i32 [ %13, %if.then ], [ %18, %if.then21 ], [ %conv6, %lor.lhs.false17.if.end23_crit_edge ]
  %neg = xor i32 %granted_mode.0, -1
  %and = and i32 %or5, 7
  %and24 = and i32 %and, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end28_crit_edge, label %land.lhs.true

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end23
  %user_ns = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 21
  %19 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_ns, align 4
  %call26 = tail call zeroext i1 @ns_capable(ptr noundef %20, i32 noundef 15) #13
  br i1 %call26, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %call29 = tail call i32 @security_ipc_permission(ptr noundef %ipcp, i16 noundef signext %flag) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end28 ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_ipc_permission(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernel_to_ipc64_perm(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.kern_ipc_perm, ptr %in, i32 0, i32 3
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %out, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.kern_ipc_perm, ptr %in, i32 0, i32 4
  %11 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %uid, align 8
  %12 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call3 = tail call i32 @from_kuid_munged(ptr noundef %10, [1 x i32] %12) #13
  %uid4 = getelementptr inbounds %struct.ipc64_perm, ptr %out, i32 0, i32 1
  %13 = ptrtoint ptr %uid4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3, ptr %uid4, align 4
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %cred11 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred11, align 16
  %user_ns12 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns12, align 4
  %gid = getelementptr inbounds %struct.kern_ipc_perm, ptr %in, i32 0, i32 5
  %20 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack52 = load i32, ptr %gid, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack52, 0
  %call14 = tail call i32 @from_kgid_munged(ptr noundef %19, [1 x i32] %21) #13
  %gid15 = getelementptr inbounds %struct.ipc64_perm, ptr %out, i32 0, i32 2
  %22 = ptrtoint ptr %gid15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call14, ptr %gid15, align 4
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %cred22 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 99
  %25 = ptrtoint ptr %cred22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cred22, align 16
  %user_ns23 = getelementptr inbounds %struct.cred, ptr %26, i32 0, i32 25
  %27 = ptrtoint ptr %user_ns23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %user_ns23, align 4
  %cuid = getelementptr inbounds %struct.kern_ipc_perm, ptr %in, i32 0, i32 6
  %29 = ptrtoint ptr %cuid to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack53 = load i32, ptr %cuid, align 64
  %30 = insertvalue [1 x i32] undef, i32 %.unpack53, 0
  %call25 = tail call i32 @from_kuid_munged(ptr noundef %28, [1 x i32] %30) #13
  %cuid26 = getelementptr inbounds %struct.ipc64_perm, ptr %out, i32 0, i32 3
  %31 = ptrtoint ptr %cuid26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call25, ptr %cuid26, align 4
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %cred33 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 99
  %34 = ptrtoint ptr %cred33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cred33, align 16
  %user_ns34 = getelementptr inbounds %struct.cred, ptr %35, i32 0, i32 25
  %36 = ptrtoint ptr %user_ns34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %user_ns34, align 4
  %cgid = getelementptr inbounds %struct.kern_ipc_perm, ptr %in, i32 0, i32 7
  %38 = ptrtoint ptr %cgid to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack54 = load i32, ptr %cgid, align 4
  %39 = insertvalue [1 x i32] undef, i32 %.unpack54, 0
  %call36 = tail call i32 @from_kgid_munged(ptr noundef %37, [1 x i32] %39) #13
  %cgid37 = getelementptr inbounds %struct.ipc64_perm, ptr %out, i32 0, i32 4
  %40 = ptrtoint ptr %cgid37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call36, ptr %cgid37, align 4
  %mode = getelementptr inbounds %struct.kern_ipc_perm, ptr %in, i32 0, i32 8
  %41 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mode, align 8
  %mode38 = getelementptr inbounds %struct.ipc64_perm, ptr %out, i32 0, i32 5
  %43 = ptrtoint ptr %mode38 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %mode38, align 4
  %seq = getelementptr inbounds %struct.kern_ipc_perm, ptr %in, i32 0, i32 9
  %44 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %seq, align 4
  %conv = trunc i32 %45 to i16
  %seq39 = getelementptr inbounds %struct.ipc64_perm, ptr %out, i32 0, i32 7
  %46 = ptrtoint ptr %seq39 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv, ptr %seq39, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ipc64_perm_to_ipc_perm(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %out, align 4
  %uid = getelementptr inbounds %struct.ipc64_perm, ptr %in, i32 0, i32 1
  %3 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %4)
  %tobool.not = icmp ult i32 %4, 65536
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %5 = load i32, ptr @overflowuid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond.in = phi i32 [ %5, %cond.true ], [ %4, %entry.cond.end_crit_edge ]
  %conv6 = trunc i32 %cond.in to i16
  %uid7 = getelementptr inbounds %struct.ipc_perm, ptr %out, i32 0, i32 1
  %6 = ptrtoint ptr %uid7 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv6, ptr %uid7, align 4
  %gid = getelementptr inbounds %struct.ipc64_perm, ptr %in, i32 0, i32 2
  %7 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %8)
  %tobool10.not = icmp ult i32 %8, 65536
  br i1 %tobool10.not, label %cond.end.cond.end18_crit_edge, label %cond.true11

cond.end.cond.end18_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end18

cond.true11:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %9 = load i32, ptr @overflowgid, align 4
  br label %cond.end18

cond.end18:                                       ; preds = %cond.true11, %cond.end.cond.end18_crit_edge
  %cond19.in = phi i32 [ %9, %cond.true11 ], [ %8, %cond.end.cond.end18_crit_edge ]
  %conv20 = trunc i32 %cond19.in to i16
  %gid21 = getelementptr inbounds %struct.ipc_perm, ptr %out, i32 0, i32 2
  %10 = ptrtoint ptr %gid21 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv20, ptr %gid21, align 2
  %cuid = getelementptr inbounds %struct.ipc64_perm, ptr %in, i32 0, i32 3
  %11 = ptrtoint ptr %cuid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cuid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %12)
  %tobool25.not = icmp ult i32 %12, 65536
  br i1 %tobool25.not, label %cond.end18.cond.end33_crit_edge, label %cond.true26

cond.end18.cond.end33_crit_edge:                  ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end33

cond.true26:                                      ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %13 = load i32, ptr @overflowuid, align 4
  br label %cond.end33

cond.end33:                                       ; preds = %cond.true26, %cond.end18.cond.end33_crit_edge
  %cond34.in = phi i32 [ %13, %cond.true26 ], [ %12, %cond.end18.cond.end33_crit_edge ]
  %conv35 = trunc i32 %cond34.in to i16
  %cuid36 = getelementptr inbounds %struct.ipc_perm, ptr %out, i32 0, i32 3
  %14 = ptrtoint ptr %cuid36 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv35, ptr %cuid36, align 4
  %cgid = getelementptr inbounds %struct.ipc64_perm, ptr %in, i32 0, i32 4
  %15 = ptrtoint ptr %cgid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cgid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %16)
  %tobool40.not = icmp ult i32 %16, 65536
  br i1 %tobool40.not, label %cond.end33.cond.end48_crit_edge, label %cond.true41

cond.end33.cond.end48_crit_edge:                  ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end48

cond.true41:                                      ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %17 = load i32, ptr @overflowgid, align 4
  br label %cond.end48

cond.end48:                                       ; preds = %cond.true41, %cond.end33.cond.end48_crit_edge
  %cond49.in = phi i32 [ %17, %cond.true41 ], [ %16, %cond.end33.cond.end48_crit_edge ]
  %conv50 = trunc i32 %cond49.in to i16
  %cgid51 = getelementptr inbounds %struct.ipc_perm, ptr %out, i32 0, i32 4
  %18 = ptrtoint ptr %cgid51 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv50, ptr %cgid51, align 2
  %mode = getelementptr inbounds %struct.ipc64_perm, ptr %in, i32 0, i32 5
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mode, align 4
  %mode53 = getelementptr inbounds %struct.ipc_perm, ptr %out, i32 0, i32 5
  %21 = ptrtoint ptr %mode53 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %mode53, align 4
  %seq = getelementptr inbounds %struct.ipc64_perm, ptr %in, i32 0, i32 7
  %22 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %seq, align 4
  %seq54 = getelementptr inbounds %struct.ipc_perm, ptr %out, i32 0, i32 6
  %24 = ptrtoint ptr %seq54 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %seq54, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipc_obtain_object_idr(ptr noundef %ids, i32 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni_shift to i32))
  %0 = load i32, ptr @ipc_mni_shift, align 4
  %notmask = shl nsw i32 -1, %0
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %id
  %ipcs_idr = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  %call = tail call ptr @idr_find(ptr noundef %ipcs_idr, i32 noundef %and) #13
  %tobool.not = icmp eq ptr %call, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -22 to ptr), ptr %call
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipc_obtain_object_check(ptr noundef %ids, i32 noundef %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni_shift to i32))
  %0 = load i32, ptr @ipc_mni_shift, align 4
  %notmask.i = shl nsw i32 -1, %0
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %sub.i, %id
  %ipcs_idr.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  %call.i = tail call ptr @idr_find(ptr noundef %ipcs_idr.i, i32 noundef %and.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool.not.i, ptr inttoptr (i32 -22 to ptr), ptr %call.i
  %cmp.i = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni_shift to i32))
  %1 = load i32, ptr @ipc_mni_shift, align 4
  %shr.i = ashr i32 %id, %1
  %seq.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %spec.select.i, i32 0, i32 9
  %2 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %3)
  %cmp.i10.not = icmp eq i32 %shr.i, %3
  %spec.select = select i1 %cmp.i10.not, ptr %spec.select.i, ptr inttoptr (i32 -22 to ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select.i, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipcget(ptr noundef %ns, ptr noundef %ids, ptr nocapture noundef readonly %ops, ptr noundef %params) local_unnamed_addr #1 align 64 {
entry:
  %key.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rwsem.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 2
  tail call void @down_write(ptr noundef %rwsem.i) #13
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %call.i = tail call i32 %3(ptr noundef %ns, ptr noundef %params) #13
  br label %return

if.else:                                          ; preds = %entry
  %flg1.i = getelementptr inbounds %struct.ipc_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %flg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flg1.i, align 4
  %rwsem.i7 = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 2
  tail call void @down_write(ptr noundef %rwsem.i7) #13
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.addr.i.i) #13
  %8 = ptrtoint ptr %key.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %key.addr.i.i, align 4
  %key_ht.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7
  %9 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i.i, label %if.else.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.else.rcu_read_lock.exit.i.i.i_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.else
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.else.rcu_read_lock.exit.i.i.i_crit_edge
  %13 = ptrtoint ptr %key_ht.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %key_ht.i.i, align 4
  %call.i.i.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %key_ht.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end12.i.i.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end12.i.i.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %rcu_read_lock.exit.i.i.i
  %call5.i.i.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i.i.i)
  %tobool6.not.i.i.i.i.i = icmp eq i32 %call5.i.i.i.i.i, 0
  br i1 %tobool6.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.do.end12.i.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.i.do.end12.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %lor.lhs.false.i.i.i.i.i
  %call7.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i.i.i)
  %tobool8.not.i.i.i.i.i = icmp eq i32 %call7.i.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.do.end12.i.i.i.i.i_crit_edge, label %land.lhs.true9.i.i.i.i.i

land.lhs.true.i.i.i.i.i.do.end12.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i.i.i

land.lhs.true9.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b92.i.i.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i.i.i, label %land.lhs.true9.i.i.i.i.i.do.end12.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true9.i.i.i.i.i.do.end12.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true9.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true9.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 594, ptr noundef nonnull @.str.15) #13
  br label %do.end12.i.i.i.i.i

do.end12.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i, %land.lhs.true9.i.i.i.i.i.do.end12.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.do.end12.i.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.do.end12.i.i.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end12.i.i.i.i.i_crit_edge
  %head_offset.i.i.i.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 3, i32 3
  %key_offset.i.i.i.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 3, i32 2
  %key_len.i.i.i.i.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 7, i32 3, i32 1
  br label %restart.i.i.i.i.i

restart.i.i.i.i.i:                                ; preds = %do.end60.i.i.i.i.i.restart.i.i.i.i.i_crit_edge, %do.end12.i.i.i.i.i
  %tbl.0.i.i.i.i.i = phi ptr [ %14, %do.end12.i.i.i.i.i ], [ %37, %do.end60.i.i.i.i.i.restart.i.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %hash_rnd.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_rnd.i.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i.i = add i32 %16, -559038733
  %add36.i.i.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i.i.i, %7
  %or.i140.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i.i.i, i32 14) #13
  %sub39.i.i.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i.i, i32 11) #13
  %sub42.i.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i.i, i32 25) #13
  %sub45.i.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i.i, i32 16) #13
  %sub48.i.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i.i, i32 4) #13
  %sub51.i.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i.i, i32 14) #13
  %sub54.i.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i.i, i32 24) #13
  %sub57.i.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i.i
  %17 = ptrtoint ptr %tbl.0.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tbl.0.i.i.i.i.i, align 128
  %sub.i.i.i.i.i.i.i = add i32 %18, -1
  %and.i3.i.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i.i
  %nest.i.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %nest.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nest.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %cond.false.i.i.i.i.i.i, label %cond.true.i.i.i.i.i.i, !prof !96

cond.true.i.i.i.i.i.i:                            ; preds = %restart.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #13
  br label %rht_bucket.exit.i.i.i.i.i

cond.false.i.i.i.i.i.i:                           ; preds = %restart.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i.i
  br label %rht_bucket.exit.i.i.i.i.i

rht_bucket.exit.i.i.i.i.i:                        ; preds = %cond.false.i.i.i.i.i.i, %cond.true.i.i.i.i.i.i
  %cond.i.i.i.i.i.i = phi ptr [ %call.i.i.i.i.i.i, %cond.true.i.i.i.i.i.i ], [ %arrayidx.i.i.i.i.i.i, %cond.false.i.i.i.i.i.i ]
  %21 = ptrtoint ptr %cond.i.i.i.i.i.i to i32
  %or.i.i.i.i.i.i.i = or i32 %21, 1
  %22 = inttoptr i32 %or.i.i.i.i.i.i.i to ptr
  br label %do.body16.i.i.i.i.i

do.body16.i.i.i.i.i:                              ; preds = %do.cond34.i.i.i.i.i.do.body16.i.i.i.i.i_crit_edge, %rht_bucket.exit.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !108
  %23 = ptrtoint ptr %cond.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %cond.i.i.i.i.i.i, align 4
  %call.i93.i.i.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i.i.i)
  %tobool.not.i94.i.i.i.i.i = icmp eq i32 %call.i93.i.i.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i, label %do.body16.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i.i_crit_edge

do.body16.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i.i_crit_edge: ; preds = %do.body16.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i:                        ; preds = %do.body16.i.i.i.i.i
  %call2.i.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i.i = icmp eq i32 %call2.i.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i.i.i

land.lhs.true.i.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i.i.i

land.lhs.true4.i.i.i.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i.i.i
  %.b11.i.i.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i.i.i, label %land.lhs.true4.i.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

land.lhs.true4.i.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.lhs.true4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 369, ptr noundef nonnull @.str.15) #13
  br label %rht_ptr_rcu.exit.i.i.i.i.i

rht_ptr_rcu.exit.i.i.i.i.i:                       ; preds = %if.then.i.i.i.i.i.i, %land.lhs.true4.i.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i.i_crit_edge, %do.body16.i.i.i.i.i.rht_ptr_rcu.exit.i.i.i.i.i_crit_edge
  %25 = ptrtoint ptr %24 to i32
  %and.i.i95.i.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i.i.i)
  %tobool.not.i.i96.i.i.i.i.i = icmp eq i32 %and.i.i95.i.i.i.i.i, 0
  %cond.i.i.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i.i.i, i32 %or.i.i.i.i.i.i.i, i32 %and.i.i95.i.i.i.i.i
  %26 = inttoptr i32 %cond.i.i.i.i.i.i.i to ptr
  %and.i106.i.i.i.i.i = and i32 %cond.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i.i.i)
  %tobool.i.not107.i.i.i.i.i = icmp eq i32 %and.i106.i.i.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i.i.i, label %for.body.i.i.i.preheader.i.i, label %rht_ptr_rcu.exit.i.i.i.i.i.do.cond34.i.i.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.i.i.do.cond34.i.i.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i.i.i.i

for.body.i.i.i.preheader.i.i:                     ; preds = %rht_ptr_rcu.exit.i.i.i.i.i
  %27 = ptrtoint ptr %head_offset.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %head_offset.i.i.i.i.i.i, align 2
  %conv.i98.i.i.i.i.i = zext i16 %28 to i32
  %idx.neg.i99.i.i.i.i.i = sub nsw i32 0, %conv.i98.i.i.i.i.i
  %29 = ptrtoint ptr %key_offset.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %key_offset.i.i.i.i.i.i, align 4
  %conv.i101.i.i.i.i.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %key_len.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %key_len.i.i.i.i.i.i, align 2
  %conv3.i.i.i.i.i.i = zext i16 %32 to i32
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body.i.i.i.preheader.i.i
  %he.0108.i.i.i.i.i = phi ptr [ %34, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ %26, %for.body.i.i.i.preheader.i.i ]
  %add.ptr.i100.i.i.i.i.i = getelementptr i8, ptr %he.0108.i.i.i.i.i, i32 %idx.neg.i99.i.i.i.i.i
  %add.ptr.i102.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i100.i.i.i.i.i, i32 %conv.i101.i.i.i.i.i
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i.i.i.i, ptr nonnull %key.addr.i.i, i32 %conv3.i.i.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i.i)
  %tobool26.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %tobool26.not.i.i.i.i.i, label %__rhashtable_lookup.exit.i.i.i.i, label %for.inc.i.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i.i
  %33 = ptrtoint ptr %he.0108.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %he.0108.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i.i.i.i.i.i = and i32 %35, 1
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.do.cond34.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.do.cond34.i.i.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i.i.i.i

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i.i.i

do.cond34.i.i.i.i.i:                              ; preds = %for.inc.i.i.i.i.i.do.cond34.i.i.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.i.i.do.cond34.i.i.i.i.i_crit_edge
  %he.0.lcssa.i.i.i.i.i = phi ptr [ %26, %rht_ptr_rcu.exit.i.i.i.i.i.do.cond34.i.i.i.i.i_crit_edge ], [ %34, %for.inc.i.i.i.i.i.do.cond34.i.i.i.i.i_crit_edge ]
  %cmp.not.i.i.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i.i.i, %22
  br i1 %cmp.not.i.i.i.i.i, label %do.end39.i.i.i.i.i, label %do.cond34.i.i.i.i.i.do.body16.i.i.i.i.i_crit_edge

do.cond34.i.i.i.i.i.do.body16.i.i.i.i.i_crit_edge: ; preds = %do.cond34.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i.i.i.i.i

do.end39.i.i.i.i.i:                               ; preds = %do.cond34.i.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !109
  %future_tbl.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %future_tbl.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %future_tbl.i.i.i.i.i, align 4
  %call47.i.i.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %key_ht.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i.i.i)
  %tobool48.not.i.i.i.i.i = icmp eq i32 %call47.i.i.i.i.i, 0
  br i1 %tobool48.not.i.i.i.i.i, label %lor.lhs.false49.i.i.i.i.i, label %do.end39.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge

do.end39.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge:  ; preds = %do.end39.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i.i.i

lor.lhs.false49.i.i.i.i.i:                        ; preds = %do.end39.i.i.i.i.i
  %call50.i.i.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i.i.i)
  %tobool51.not.i.i.i.i.i = icmp eq i32 %call50.i.i.i.i.i, 0
  br i1 %tobool51.not.i.i.i.i.i, label %land.lhs.true52.i.i.i.i.i, label %lor.lhs.false49.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge

lor.lhs.false49.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false49.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i.i.i

land.lhs.true52.i.i.i.i.i:                        ; preds = %lor.lhs.false49.i.i.i.i.i
  %call53.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i.i.i)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %call53.i.i.i.i.i, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.lhs.true52.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge, label %land.lhs.true55.i.i.i.i.i

land.lhs.true52.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true52.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i.i.i

land.lhs.true55.i.i.i.i.i:                        ; preds = %land.lhs.true52.i.i.i.i.i
  %.b9091.i.i.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.25, align 1
  br i1 %.b9091.i.i.i.i.i, label %land.lhs.true55.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge, label %if.then57.i.i.i.i.i

land.lhs.true55.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true55.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i.i.i

if.then57.i.i.i.i.i:                              ; preds = %land.lhs.true55.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 614, ptr noundef nonnull @.str.15) #13
  br label %do.end60.i.i.i.i.i

do.end60.i.i.i.i.i:                               ; preds = %if.then57.i.i.i.i.i, %land.lhs.true55.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge, %land.lhs.true52.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge, %do.end39.i.i.i.i.i.do.end60.i.i.i.i.i_crit_edge
  %tobool62.not.i.i.i.i.i = icmp eq ptr %37, null
  br i1 %tobool62.not.i.i.i.i.i, label %do.end60.i.i.i.i.i.rhashtable_lookup.exit.i.i.i_crit_edge, label %do.end60.i.i.i.i.i.restart.i.i.i.i.i_crit_edge, !prof !96

do.end60.i.i.i.i.i.restart.i.i.i.i.i_crit_edge:   ; preds = %do.end60.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart.i.i.i.i.i

do.end60.i.i.i.i.i.rhashtable_lookup.exit.i.i.i_crit_edge: ; preds = %do.end60.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup.exit.i.i.i

__rhashtable_lookup.exit.i.i.i.i:                 ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not.i1.i.i.i = icmp eq ptr %he.0108.i.i.i.i.i, null
  %spec.select.i.i = select i1 %tobool.not.i1.i.i.i, ptr null, ptr %add.ptr.i100.i.i.i.i.i
  br label %rhashtable_lookup.exit.i.i.i

rhashtable_lookup.exit.i.i.i:                     ; preds = %__rhashtable_lookup.exit.i.i.i.i, %do.end60.i.i.i.i.i.rhashtable_lookup.exit.i.i.i_crit_edge
  %cond.i.i.i.i = phi ptr [ %spec.select.i.i, %__rhashtable_lookup.exit.i.i.i.i ], [ null, %do.end60.i.i.i.i.i.rhashtable_lookup.exit.i.i.i_crit_edge ]
  %call.i2.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2.i.i.i, label %rhashtable_lookup.exit.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge, label %land.lhs.true.i5.i.i.i

rhashtable_lookup.exit.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge: ; preds = %rhashtable_lookup.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit.i.i

land.lhs.true.i5.i.i.i:                           ; preds = %rhashtable_lookup.exit.i.i.i
  %call1.i3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i.i)
  %tobool.not.i4.i.i.i = icmp eq i32 %call1.i3.i.i.i, 0
  br i1 %tobool.not.i4.i.i.i, label %land.lhs.true.i5.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge, label %land.lhs.true2.i7.i.i.i

land.lhs.true.i5.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge: ; preds = %land.lhs.true.i5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit.i.i

land.lhs.true2.i7.i.i.i:                          ; preds = %land.lhs.true.i5.i.i.i
  %.b4.i6.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i.i.i, label %land.lhs.true2.i7.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge, label %if.then.i8.i.i.i

land.lhs.true2.i7.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit.i.i

if.then.i8.i.i.i:                                 ; preds = %land.lhs.true2.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #13
  br label %rhashtable_lookup_fast.exit.i.i

rhashtable_lookup_fast.exit.i.i:                  ; preds = %if.then.i8.i.i.i, %land.lhs.true2.i7.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge, %land.lhs.true.i5.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge, %rhashtable_lookup.exit.i.i.i.rhashtable_lookup_fast.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %38 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i9.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i9.i.i.i to ptr
  %preempt_count.i.i.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i10.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i10.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %tobool.not.i.i = icmp eq ptr %cond.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %rhashtable_lookup_fast.exit.i.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i, label %if.end.i.i.if.else4.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.if.else4.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else4.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.if.else4.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.if.else4.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else4.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.if.else4.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.if.else4.i_crit_edge:        ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else4.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %if.else4.i

if.then.i:                                        ; preds = %rhashtable_lookup_fast.exit.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i.i) #13
  %and.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.return_crit_edge, label %if.else.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %call3.i = tail call i32 %47(ptr noundef %ns, ptr noundef %params) #13
  br label %return

if.else4.i:                                       ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.if.else4.i_crit_edge, %land.lhs.true.i.i.i.if.else4.i_crit_edge, %if.end.i.i.if.else4.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull %cond.i.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.addr.i.i) #13
  %48 = and i32 %5, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %48)
  %.not.i = icmp eq i32 %48, 1536
  br i1 %.not.i, label %if.else4.i.if.end20.i_crit_edge, label %if.else10.i

if.else4.i.if.end20.i_crit_edge:                  ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.else10.i:                                      ; preds = %if.else4.i
  %more_checks.i = getelementptr inbounds %struct.ipc_ops, ptr %ops, i32 0, i32 2
  %49 = ptrtoint ptr %more_checks.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %more_checks.i, align 4
  %tobool11.not.i = icmp eq ptr %50, null
  br i1 %tobool11.not.i, label %if.else10.i.if.then17.i_crit_edge, label %if.end15.i

if.else10.i.if.then17.i_crit_edge:                ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i

if.end15.i:                                       ; preds = %if.else10.i
  %call14.i = tail call i32 %50(ptr noundef nonnull %cond.i.i.i.i, ptr noundef %params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool16.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.then17.i_crit_edge, label %if.end15.i.if.end20.i_crit_edge

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.end15.i.if.then17.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i.if.then17.i_crit_edge, %if.else10.i.if.then17.i_crit_edge
  %51 = ptrtoint ptr %flg1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flg1.i, align 4
  %conv.i.i = trunc i32 %52 to i16
  %call.i.i = tail call i32 @ipcperms(ptr noundef %ns, ptr noundef nonnull %cond.i.i.i.i, i16 noundef signext %conv.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i39.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i39.i, label %if.else.i.i, label %if.then17.i.if.end20.i_crit_edge

if.then17.i.if.end20.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.else.i.i:                                      ; preds = %if.then17.i
  %associate.i.i = getelementptr inbounds %struct.ipc_ops, ptr %ops, i32 0, i32 1
  %53 = ptrtoint ptr %associate.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %associate.i.i, align 4
  %55 = ptrtoint ptr %flg1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flg1.i, align 4
  %call2.i.i = tail call i32 %54(ptr noundef nonnull %cond.i.i.i.i, i32 noundef %56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.else.i.i.if.end20.i_crit_edge

if.else.i.i.if.end20.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %id.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %cond.i.i.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id.i.i, align 16
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then4.i.i, %if.else.i.i.if.end20.i_crit_edge, %if.then17.i.if.end20.i_crit_edge, %if.end15.i.if.end20.i_crit_edge, %if.else4.i.if.end20.i_crit_edge
  %err.1.i = phi i32 [ %call14.i, %if.end15.i.if.end20.i_crit_edge ], [ -17, %if.else4.i.if.end20.i_crit_edge ], [ %call2.i.i, %if.else.i.i.if.end20.i_crit_edge ], [ %58, %if.then4.i.i ], [ -13, %if.then17.i.if.end20.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull %cond.i.i.i.i) #13
  %call.i.i40.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i40.i, label %if.end20.i.ipc_unlock.exit.i_crit_edge, label %land.lhs.true.i.i43.i

if.end20.i.ipc_unlock.exit.i_crit_edge:           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit.i

land.lhs.true.i.i43.i:                            ; preds = %if.end20.i
  %call1.i.i41.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i41.i)
  %tobool.not.i.i42.i = icmp eq i32 %call1.i.i41.i, 0
  br i1 %tobool.not.i.i42.i, label %land.lhs.true.i.i43.i.ipc_unlock.exit.i_crit_edge, label %land.lhs.true2.i.i45.i

land.lhs.true.i.i43.i.ipc_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit.i

land.lhs.true2.i.i45.i:                           ; preds = %land.lhs.true.i.i43.i
  %.b4.i.i44.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i44.i, label %land.lhs.true2.i.i45.i.ipc_unlock.exit.i_crit_edge, label %if.then.i.i46.i

land.lhs.true2.i.i45.i.ipc_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit.i

if.then.i.i46.i:                                  ; preds = %land.lhs.true2.i.i45.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #13
  br label %ipc_unlock.exit.i

ipc_unlock.exit.i:                                ; preds = %if.then.i.i46.i, %land.lhs.true2.i.i45.i.ipc_unlock.exit.i_crit_edge, %land.lhs.true.i.i43.i.ipc_unlock.exit.i_crit_edge, %if.end20.i.ipc_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %59 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i.i47.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i47.i to ptr
  %preempt_count.i.i.i.i.i48.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.i48.i, align 4
  %sub.i.i.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i48.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %return

return:                                           ; preds = %ipc_unlock.exit.i, %if.else.i, %if.then.i.return_crit_edge, %if.then
  %rwsem.i7.sink = phi ptr [ %rwsem.i, %if.then ], [ %rwsem.i7, %if.then.i.return_crit_edge ], [ %rwsem.i7, %if.else.i ], [ %rwsem.i7, %ipc_unlock.exit.i ]
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -2, %if.then.i.return_crit_edge ], [ %call3.i, %if.else.i ], [ %err.1.i, %ipc_unlock.exit.i ]
  tail call void @up_write(ptr noundef %rwsem.i7.sink) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipc_update_perm(ptr nocapture noundef readonly %in, ptr nocapture noundef %out) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %uid2 = getelementptr inbounds %struct.ipc64_perm, ptr %in, i32 0, i32 1
  %8 = ptrtoint ptr %uid2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uid2, align 4
  %call3 = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %9) #13
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cred11 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred11, align 16
  %user_ns12 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns12, align 4
  %gid13 = getelementptr inbounds %struct.ipc64_perm, ptr %in, i32 0, i32 2
  %16 = ptrtoint ptr %gid13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gid13, align 4
  %call14 = tail call i32 @make_kgid(ptr noundef %15, i32 noundef %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp.i = icmp ne i32 %call3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp.i35 = icmp ne i32 %call14, -1
  %or.cond = select i1 %cmp.i, i1 %cmp.i35, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %uid20 = getelementptr inbounds %struct.kern_ipc_perm, ptr %out, i32 0, i32 4
  %18 = ptrtoint ptr %uid20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3, ptr %uid20, align 8
  %gid21 = getelementptr inbounds %struct.kern_ipc_perm, ptr %out, i32 0, i32 5
  %19 = ptrtoint ptr %gid21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call14, ptr %gid21, align 4
  %mode = getelementptr inbounds %struct.kern_ipc_perm, ptr %out, i32 0, i32 8
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mode, align 8
  %22 = and i16 %21, -512
  %mode22 = getelementptr inbounds %struct.ipc64_perm, ptr %in, i32 0, i32 5
  %23 = ptrtoint ptr %mode22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mode22, align 4
  %25 = and i16 %24, 511
  %or34 = or i16 %25, %22
  store i16 %or34, ptr %mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipcctl_obtain_check(ptr nocapture noundef readonly %ns, ptr noundef %ids, i32 noundef %id, i32 noundef %cmd, ptr nocapture noundef readnone %perm, i32 noundef %extra_perm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni_shift to i32))
  %0 = load i32, ptr @ipc_mni_shift, align 4
  %notmask.i.i = shl nsw i32 -1, %0
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = and i32 %sub.i.i, %id
  %ipcs_idr.i.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  %call.i.i = tail call ptr @idr_find(ptr noundef %ipcs_idr.i.i, i32 noundef %and.i.i) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr inttoptr (i32 -22 to ptr), ptr %call.i.i
  %cmp.i.i = icmp ugt ptr %spec.select.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.err17_crit_edge, label %if.end.i

entry.err17_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err17

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni_shift to i32))
  %1 = load i32, ptr @ipc_mni_shift, align 4
  %shr.i.i = ashr i32 %id, %1
  %seq.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %spec.select.i.i, i32 0, i32 9
  %2 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %3)
  %cmp.i10.not.i = icmp eq i32 %shr.i.i, %3
  br i1 %cmp.i10.not.i, label %do.end, label %if.end.i.err17_crit_edge

if.end.i.err17_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err17

do.end:                                           ; preds = %if.end.i
  %4 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred, align 16
  %euid6 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %euid6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %euid.sroa.0.0.copyload = load i32, ptr %euid6, align 4
  %cuid = getelementptr inbounds %struct.kern_ipc_perm, ptr %spec.select.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %cuid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %cuid, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %euid.sroa.0.0.copyload, i32 %.unpack)
  %cmp.i33 = icmp eq i32 %euid.sroa.0.0.copyload, %.unpack
  br i1 %cmp.i33, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %uid9 = getelementptr inbounds %struct.kern_ipc_perm, ptr %spec.select.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %uid9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack32 = load i32, ptr %uid9, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %euid.sroa.0.0.copyload, i32 %.unpack32)
  %cmp.i34 = icmp eq i32 %euid.sroa.0.0.copyload, %.unpack32
  br i1 %cmp.i34, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %user_ns = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 21
  %13 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_ns, align 4
  %call14 = tail call zeroext i1 @ns_capable(ptr noundef %14, i32 noundef 21) #13
  br i1 %call14, label %lor.lhs.false13.cleanup_crit_edge, label %lor.lhs.false13.err17_crit_edge

lor.lhs.false13.err17_crit_edge:                  ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #15
  br label %err17

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err17:                                            ; preds = %lor.lhs.false13.err17_crit_edge, %if.end.i.err17_crit_edge, %entry.err17_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -1 to ptr), %lor.lhs.false13.err17_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.err17_crit_edge ], [ %spec.select.i.i, %entry.err17_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %err17, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %err17 ], [ %spec.select.i.i, %lor.lhs.false13.cleanup_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.cleanup_crit_edge ], [ %spec.select.i.i, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ipc_parse_version(ptr nocapture noundef %cmd) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %xor = xor i32 %1, 256
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %xor, ptr %cmd, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 256, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ipc_seq_pid_ns(ptr nocapture noundef readonly %s) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pid_ns = getelementptr inbounds %struct.ipc_proc_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pid_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pid_ns, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sem_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shm_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !96

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !110
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !111

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !112
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !113
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !96

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !114
  %7 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !115
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !116
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !117
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #13
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !98

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #13, !srcloc !118
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !119
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !120
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !121
  %3 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !122
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %2 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysvipc_proc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef nonnull @sysvipc_proc_seqops, i32 noundef 12) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %iface = getelementptr inbounds %struct.ipc_proc_iter, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %iface, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 110
  %7 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipc_ns, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.get_ipc_ns.exit_crit_edge, label %if.then.i

if.end.get_ipc_ns.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ipc_ns.exit

if.then.i:                                        ; preds = %if.end
  %count.i = getelementptr inbounds %struct.ipc_namespace, ptr %10, i32 0, i32 24, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !98

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_ipc_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !96

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_ipc_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ipc_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #13
  br label %get_ipc_ns.exit

get_ipc_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_ipc_ns.exit_crit_edge, %if.end.get_ipc_ns.exit_crit_edge
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %call, align 4
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %call6 = tail call ptr @task_active_pid_ns(ptr noundef %15) #13
  %cmp.not.i = icmp eq ptr %call6, @init_pid_ns
  br i1 %cmp.not.i, label %get_ipc_ns.exit.get_pid_ns.exit_crit_edge, label %if.then.i15

get_ipc_ns.exit.get_pid_ns.exit_crit_edge:        ; preds = %get_ipc_ns.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid_ns.exit

if.then.i15:                                      ; preds = %get_ipc_ns.exit
  %count.i11 = getelementptr inbounds %struct.pid_namespace, ptr %call6, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i11, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i11, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i11, ptr %count.i11, i32 1, ptr elementtype(i32) %count.i11) #13, !srcloc !124
  %asmresult.i.i.i.i.i.i13 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i13)
  %tobool1.not.i.i.i.i14 = icmp eq i32 %asmresult.i.i.i.i.i.i13, 0
  br i1 %tobool1.not.i.i.i.i14, label %if.then.i15.if.end15.sink.split.i.i.i.i20_crit_edge, label %if.else.i.i.i.i18, !prof !98

if.then.i15.if.end15.sink.split.i.i.i.i20_crit_edge: ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i20

if.else.i.i.i.i18:                                ; preds = %if.then.i15
  %add.i.i.i.i16 = add i32 %asmresult.i.i.i.i.i.i13, 1
  %17 = or i32 %add.i.i.i.i16, %asmresult.i.i.i.i.i.i13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i17 = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i17, label %if.else.i.i.i.i18.get_pid_ns.exit_crit_edge, label %if.else.i.i.i.i18.if.end15.sink.split.i.i.i.i20_crit_edge, !prof !96

if.else.i.i.i.i18.if.end15.sink.split.i.i.i.i20_crit_edge: ; preds = %if.else.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i20

if.else.i.i.i.i18.get_pid_ns.exit_crit_edge:      ; preds = %if.else.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid_ns.exit

if.end15.sink.split.i.i.i.i20:                    ; preds = %if.else.i.i.i.i18.if.end15.sink.split.i.i.i.i20_crit_edge, %if.then.i15.if.end15.sink.split.i.i.i.i20_crit_edge
  %.sink.i.i.i.i19 = phi i32 [ 2, %if.then.i15.if.end15.sink.split.i.i.i.i20_crit_edge ], [ 1, %if.else.i.i.i.i18.if.end15.sink.split.i.i.i.i20_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i11, i32 noundef %.sink.i.i.i.i19) #13
  br label %get_pid_ns.exit

get_pid_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i20, %if.else.i.i.i.i18.get_pid_ns.exit_crit_edge, %get_ipc_ns.exit.get_pid_ns.exit_crit_edge
  %pid_ns = getelementptr inbounds %struct.ipc_proc_iter, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %pid_ns to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call6, ptr %pid_ns, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_pid_ns.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_pid_ns.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysvipc_proc_release(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @put_ipc_ns(ptr noundef %5) #13
  %pid_ns = getelementptr inbounds %struct.ipc_proc_iter, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pid_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pid_ns, align 4
  tail call void @put_pid_ns(ptr noundef %7) #13
  %call = tail call i32 @seq_release_private(ptr noundef %inode, ptr noundef %file) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sysvipc_proc_start(ptr nocapture noundef readonly %s, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %iface1 = getelementptr inbounds %struct.ipc_proc_iter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iface1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %ids3 = getelementptr inbounds %struct.ipc_proc_iface, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ids3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ids3, align 4
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %5, i32 0, i32 %7
  %rwsem = getelementptr [3 x %struct.ipc_ids], ptr %5, i32 0, i32 %7, i32 2
  tail call void @down_read(ptr noundef %rwsem) #13
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp slt i64 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp4 = icmp eq i64 %9, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add nsw i64 %9, -1
  %call = tail call fastcc ptr @sysvipc_find_ipc(ptr noundef %arrayidx, i64 noundef %sub, ptr noundef %pos)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end6 ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 1 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysvipc_proc_stop(ptr nocapture noundef readonly %s, ptr noundef %it) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %iface1 = getelementptr inbounds %struct.ipc_proc_iter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iface1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface1, align 4
  %switch = icmp ult ptr %it, inttoptr (i32 2 to ptr)
  br i1 %switch, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %it) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then.ipc_unlock.exit_crit_edge, label %land.lhs.true.i.i

if.then.ipc_unlock.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true.i.i:                                ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #13
  br label %ipc_unlock.exit

ipc_unlock.exit:                                  ; preds = %if.then.i.i, %land.lhs.true2.i.i.ipc_unlock.exit_crit_edge, %land.lhs.true.i.i.ipc_unlock.exit_crit_edge, %if.then.ipc_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %4 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end

if.end:                                           ; preds = %ipc_unlock.exit, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %ids3 = getelementptr inbounds %struct.ipc_proc_iface, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %ids3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ids3, align 4
  %rwsem = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 %11, i32 2
  tail call void @up_read(ptr noundef %rwsem) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sysvipc_proc_next(ptr nocapture noundef readonly %s, ptr noundef %it, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %iface1 = getelementptr inbounds %struct.ipc_proc_iter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iface1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface1, align 4
  %switch = icmp ult ptr %it, inttoptr (i32 2 to ptr)
  br i1 %switch, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %it) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then.ipc_unlock.exit_crit_edge, label %land.lhs.true.i.i

if.then.ipc_unlock.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_unlock.exit

land.lhs.true.i.i:                                ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #13
  br label %ipc_unlock.exit

ipc_unlock.exit:                                  ; preds = %if.then.i.i, %land.lhs.true2.i.i.ipc_unlock.exit_crit_edge, %land.lhs.true.i.i.ipc_unlock.exit_crit_edge, %if.then.ipc_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %4 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %if.end

if.end:                                           ; preds = %ipc_unlock.exit, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %ids2 = getelementptr inbounds %struct.ipc_proc_iface, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %ids2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ids2, align 4
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 %11
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %call = tail call fastcc ptr @sysvipc_find_ipc(ptr noundef %arrayidx, i64 noundef %13, ptr noundef %pos)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysvipc_proc_show(ptr noundef %s, ptr noundef %it) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %iface1 = getelementptr inbounds %struct.ipc_proc_iter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iface1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iface1, align 4
  %cmp = icmp eq ptr %it, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %header = getelementptr inbounds %struct.ipc_proc_iface, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %header, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef %5) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %show = getelementptr inbounds %struct.ipc_proc_iface, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %show, align 4
  %call = tail call i32 %7(ptr noundef %s, ptr noundef %it) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sysvipc_find_ipc(ptr noundef %ids, i64 noundef %pos, ptr nocapture noundef writeonly %new_pos) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni to i32))
  %2 = load i32, ptr @ipc_mni, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp2.i = icmp eq i32 %1, %2
  br i1 %cmp2.i, label %ipc_get_maxidx.exit.thread23, label %ipc_get_maxidx.exit

ipc_get_maxidx.exit.thread23:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %1, -1
  br label %lor.lhs.false

ipc_get_maxidx.exit:                              ; preds = %if.end.i
  %max_idx.i = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 4
  %3 = ptrtoint ptr %max_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %ipc_get_maxidx.exit.out_crit_edge, label %ipc_get_maxidx.exit.lor.lhs.false_crit_edge

ipc_get_maxidx.exit.lor.lhs.false_crit_edge:      ; preds = %ipc_get_maxidx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

ipc_get_maxidx.exit.out_crit_edge:                ; preds = %ipc_get_maxidx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %ipc_get_maxidx.exit.lor.lhs.false_crit_edge, %ipc_get_maxidx.exit.thread23
  %retval.0.i26 = phi i32 [ %sub.i, %ipc_get_maxidx.exit.thread23 ], [ %4, %ipc_get_maxidx.exit.lor.lhs.false_crit_edge ]
  %conv = sext i32 %retval.0.i26 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %pos)
  %cmp1 = icmp slt i64 %conv, %pos
  br i1 %cmp1, label %lor.lhs.false.out_crit_edge, label %for.body.lr.ph

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %ipcs_idr = getelementptr inbounds %struct.ipc_ids, ptr %ids, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.addr.029 = phi i64 [ %pos, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv6 = trunc i64 %pos.addr.029 to i32
  %call7 = tail call ptr @idr_find(ptr noundef %ipcs_idr, i32 noundef %conv6) #13
  %cmp8.not = icmp eq ptr %call7, null
  br i1 %cmp8.not, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.body
  %5 = tail call i32 @llvm.read_register.i32(metadata !84) #13
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.then10.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then10.rcu_read_lock.exit_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then10
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then10.rcu_read_lock.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull %call7) #13
  br label %out

for.inc:                                          ; preds = %for.body
  %inc = add nsw i64 %pos.addr.029, 1
  %cmp4.not.not = icmp slt i64 %pos.addr.029, %conv
  br i1 %cmp4.not.not, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %rcu_read_lock.exit, %lor.lhs.false.out_crit_edge, %ipc_get_maxidx.exit.out_crit_edge, %entry.out_crit_edge
  %pos.addr.1 = phi i64 [ %pos, %ipc_get_maxidx.exit.out_crit_edge ], [ %pos, %lor.lhs.false.out_crit_edge ], [ %pos.addr.029, %rcu_read_lock.exit ], [ %pos, %entry.out_crit_edge ], [ %inc, %for.inc.out_crit_edge ]
  %ipc.1 = phi ptr [ null, %ipc_get_maxidx.exit.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ %call7, %rcu_read_lock.exit ], [ null, %entry.out_crit_edge ], [ null, %for.inc.out_crit_edge ]
  %add = add i64 %pos.addr.1, 1
  %9 = ptrtoint ptr %new_pos to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %new_pos, align 8
  ret ptr %ipc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ipc_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_util__283_99_ipc_init6, !1, !"__initcall__kmod_util__283_99_ipc_init6", i1 false, i1 false}
!1 = !{!"../ipc/util.c", i32 99, i32 1}
!2 = !{ptr @ipc_init_ids.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../ipc/util.c", i32 119, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ipc_addid.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../ipc/util.c", i32 295, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../ipc/util.c", i32 299, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../ipc/util.c", i32 501, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../ipc/util.c", i32 555, i32 16}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../ipc/util.c", i32 590, i32 30}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../ipc/util.c", i32 591, i32 30}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../ipc/util.c", i32 592, i32 31}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../ipc/util.c", i32 593, i32 31}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../ipc/util.c", i32 689, i32 25}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../ipc/util.c", i32 690, i32 25}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../ipc/util.c", i32 741, i32 9}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../ipc/util.c", i32 92, i32 13}
!31 = !{ptr @ipc_kht_params, !32, !"ipc_kht_params", i1 false, i1 false}
!32 = !{!"../ipc/util.c", i32 101, i32 39}
!33 = !{ptr @xa_init_flags.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../ipc/util.c", i32 450, i32 3}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!80 = !{ptr @sysvipc_proc_ops, !81, !"sysvipc_proc_ops", i1 false, i1 false}
!81 = !{!"../ipc/util.c", i32 913, i32 30}
!82 = !{ptr @sysvipc_proc_seqops, !83, !"sysvipc_proc_seqops", i1 false, i1 false}
!83 = !{!"../ipc/util.c", i32 882, i32 36}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2150022784}
!95 = !{i64 2153489997}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2150023050}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 2148687451, i64 2148687477, i64 2148687506, i64 2148687540, i64 2148687571, i64 2148687594}
!100 = !{i64 2154175205}
!101 = !{i64 2148689916, i64 2148689942, i64 2148689971, i64 2148690005, i64 2148690036, i64 2148690059}
!102 = !{i8 0, i8 2}
!103 = !{i32 0, i32 33}
!104 = !{i64 1172964, i64 1172988, i64 1173009, i64 1173026, i64 1173043}
!105 = !{i64 2148777006}
!106 = !{i64 2148691446, i64 2148691478, i64 2148691507, i64 2148691541, i64 2148691572, i64 2148691595}
!107 = !{i64 2149973241}
!108 = !{i64 2154107829}
!109 = !{i64 2154111263}
!110 = !{i64 2151308782}
!111 = !{!"branch_weights", i32 2146410443, i32 1073205}
!112 = !{i64 2148696309, i64 2148696341, i64 2148696370, i64 2148696404, i64 2148696435, i64 2148696458}
!113 = !{i64 2148785414}
!114 = !{i64 2151308942}
!115 = !{i64 2151309219}
!116 = !{i64 2151309061}
!117 = !{i64 2151309424}
!118 = !{i64 2151310487, i64 2151310979, i64 2151310524, i64 2151310580, i64 2151310614, i64 2151310638, i64 2151310679, i64 2151310700, i64 2151310728, i64 2151310762}
!119 = !{i64 2148784301}
!120 = !{i64 2148694696, i64 2148694728, i64 2148694757, i64 2148694791, i64 2148694822, i64 2148694845}
!121 = !{i64 2151311882}
!122 = !{i64 2154100902}
!123 = !{i64 2154103201}
!124 = !{i64 2148688981, i64 2148689013, i64 2148689042, i64 2148689076, i64 2148689107, i64 2148689130}
