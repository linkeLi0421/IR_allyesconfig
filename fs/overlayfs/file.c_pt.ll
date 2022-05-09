; ModuleID = '/llk/IR_all_yes/fs/overlayfs/file.c_pt.bc'
source_filename = "../fs/overlayfs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.fd = type { ptr, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.70 = type { ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.27, %union.anon.28 }
%union.anon.27 = type { ptr }
%union.anon.28 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ovl_aio_req = type { %struct.kiocb, %struct.refcount_struct, ptr, %struct.fd }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ovl_fs = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.ovl_config, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32 }
%struct.ovl_config = type { ptr, ptr, ptr, i8, i8, i8, ptr, i8, i8, i8, i32, i8, i8, i8 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.21, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.73, %struct.list_head, %struct.list_head, %union.anon.74 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { %struct.spinlock, i32 }
%union.anon.73 = type { %struct.list_head }
%union.anon.74 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ovl_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @ovl_llseek, ptr null, ptr null, ptr @ovl_read_iter, ptr @ovl_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ovl_mmap, i32 0, ptr @ovl_open, ptr @ovl_flush, ptr @ovl_release, ptr @ovl_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ovl_splice_write, ptr @generic_file_splice_read, ptr null, ptr @ovl_fallocate, ptr null, ptr @ovl_copy_file_range, ptr @ovl_remap_file_range, ptr @ovl_fadvise }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ovl_aio_req\00", [20 x i8] zeroinitializer }, align 32
@ovl_aio_request_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\02\06\06\00", [27 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ovl_open_realfile.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ovl_open_realfile\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/overlayfs/file.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"open(%p[%pD2/%c], 0%o) -> (%p, 0%o)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"overlayfs: open(%p[%pD2/%c], 0%o) -> (%p, 0%o)\0A\00", [48 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"ovl_file_operations\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 664, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 684, i32 45 }
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"ovl_aio_request_cachep\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 25, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 47, i32 17 }
@___asan_gen_.37 = private constant [23 x i8] c"../fs/overlayfs/file.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 66, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 34, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 271, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 49, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @ovl_file_operations, ptr @.str, ptr @ovl_aio_request_cachep, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_aio_request_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ovl_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  %real = alloca %struct.fd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %real) #8
  %2 = ptrtoint ptr %real to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %real, align 4, !annotation !36
  %3 = getelementptr inbounds %struct.fd, ptr %real, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !36
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %cmp = icmp eq i64 %offset, 0
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %5 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %whence, label %if.then.if.end7_crit_edge [
    i32 1, label %if.then2
    i32 0, label %if.then4
  ]

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %6 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %f_pos, align 8
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i64 @vfs_setpos(ptr noundef %file, i64 noundef 0, i64 noundef 0) #8
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = call fastcc i32 @ovl_real_fdget(ptr noundef %file, ptr noundef nonnull %real)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %conv = sext i32 %call8 to i64
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %lock.i = getelementptr i8, ptr %1, i32 792
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %f_pos11 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %8 = ptrtoint ptr %f_pos11 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %f_pos11, align 8
  %10 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %real, align 4
  %f_pos13 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %f_pos13 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %f_pos13, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %call14 = tail call ptr @ovl_override_creds(ptr noundef %14) #8
  %call16 = tail call i64 @vfs_llseek(ptr noundef %11, i64 noundef %offset, i32 noundef %whence) #8
  tail call void @revert_creds(ptr noundef %call14) #8
  %15 = ptrtoint ptr %f_pos13 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %f_pos13, align 8
  %17 = ptrtoint ptr %f_pos11 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %f_pos11, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.1.load = load i32, ptr %3, align 4
  %and.i = and i32 %.fca.1.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end10.cleanup_crit_edge, label %if.then.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.0.load = load i32, ptr %real, align 4
  %20 = inttoptr i32 %.fca.0.load to ptr
  tail call void @fput(ptr noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end10.cleanup_crit_edge, %if.then9, %if.then4, %if.then2
  %retval.0 = phi i64 [ %7, %if.then2 ], [ %call5, %if.then4 ], [ %conv, %if.then9 ], [ %call16, %if.end10.cleanup_crit_edge ], [ %call16, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %real) #8
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_read_iter(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  %real = alloca %struct.fd, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %real) #8
  %2 = ptrtoint ptr %real to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %real, align 8, !annotation !36
  %3 = getelementptr inbounds %struct.fd, ptr %real, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !36
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup35_crit_edge, label %if.end

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @ovl_real_fdget(ptr noundef %1, ptr noundef nonnull %real)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup35_crit_edge

if.end.cleanup35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

if.end4:                                          ; preds = %if.end
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %7 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ki_flags, align 8
  %and = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end13_crit_edge, label %land.lhs.true

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end4
  %9 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %real, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_mapping, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %a_ops, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %land.lhs.true.out_fdput_crit_edge, label %lor.lhs.false

land.lhs.true.out_fdput_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_fdput

lor.lhs.false:                                    ; preds = %land.lhs.true
  %direct_IO = getelementptr inbounds %struct.address_space_operations, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %direct_IO to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %direct_IO, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %lor.lhs.false.out_fdput_crit_edge, label %lor.lhs.false.if.end13_crit_edge

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

lor.lhs.false.out_fdput_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_fdput

if.end13:                                         ; preds = %lor.lhs.false.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %call15 = tail call ptr @ovl_override_creds(ptr noundef %20) #8
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %21 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i = icmp eq ptr %22, null
  br i1 %cmp.i, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %real, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %25 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ki_flags, align 8
  %27 = and i32 %26, 15
  %call21 = tail call i32 @vfs_iter_read(ptr noundef %24, ptr noundef %iter, ptr noundef %ki_pos, i32 noundef %27) #8
  br label %out

if.else:                                          ; preds = %if.end13
  %28 = load ptr, ptr @ovl_aio_request_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %28, i32 noundef 3520) #8
  %tobool23.not = icmp eq ptr %call.i, null
  br i1 %tobool23.not, label %if.else.out_crit_edge, label %if.end25

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end25:                                         ; preds = %if.else
  %fd = getelementptr inbounds %struct.ovl_aio_req, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %real to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %real, align 8
  %31 = ptrtoint ptr %fd to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %fd, align 8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %3, align 4
  %orig_iocb = getelementptr inbounds %struct.ovl_aio_req, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %orig_iocb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %iocb, ptr %orig_iocb, align 4
  %34 = lshr i64 %30, 32
  %35 = trunc i64 %34 to i32
  %36 = inttoptr i32 %35 to ptr
  %ki_pos1.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %37 = ptrtoint ptr %ki_pos1.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ki_pos1.i, align 8
  %39 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ki_flags, align 8
  %ki_hint3.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 5
  %41 = ptrtoint ptr %ki_hint3.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ki_hint3.i, align 4
  %ki_ioprio4.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 6
  %43 = ptrtoint ptr %ki_ioprio4.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ki_ioprio4.i, align 2
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %36, ptr %call.i, align 8
  %.compoundliteral.sroa.25.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 8
  %46 = ptrtoint ptr %.compoundliteral.sroa.25.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %38, ptr %.compoundliteral.sroa.25.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 16
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 20
  %47 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 24
  %48 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %40, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 28
  %49 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %42, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 30
  %50 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %44, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 32
  %51 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %.compoundliteral.sroa.8.0..sroa_idx.i, align 8
  %52 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @ovl_aio_rw_complete, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 8
  %ref = getelementptr inbounds %struct.ovl_aio_req, ptr %call.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  %53 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 2, ptr %ref, align 8
  %call31 = tail call i32 @vfs_iocb_iter_read(ptr noundef %36, ptr noundef nonnull %call.i, ptr noundef %iter) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ovl_aio_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !39

if.end5.i.i.i.i.ovl_aio_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ovl_aio_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #8
  br label %ovl_aio_put.exit

if.then.i:                                        ; preds = %if.end25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  %.elt3.i = getelementptr inbounds %struct.ovl_aio_req, ptr %call.i, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %.elt3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.unpack4.i = load i32, ptr %.elt3.i, align 4
  %and.i.i = and i32 %.unpack4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.fdput.exit.i_crit_edge, label %if.then.i.i

if.then.i.fdput.exit.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdput.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack.i = load i32, ptr %fd, align 8
  %57 = inttoptr i32 %.unpack.i to ptr
  tail call void @fput(ptr noundef %57) #8
  br label %fdput.exit.i

fdput.exit.i:                                     ; preds = %if.then.i.i, %if.then.i.fdput.exit.i_crit_edge
  %58 = load ptr, ptr @ovl_aio_request_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %58, ptr noundef nonnull %call.i) #8
  br label %ovl_aio_put.exit

ovl_aio_put.exit:                                 ; preds = %fdput.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ovl_aio_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call31)
  %cmp.not = icmp eq i32 %call31, -529
  br i1 %cmp.not, label %ovl_aio_put.exit.out_crit_edge, label %if.then32

ovl_aio_put.exit.out_crit_edge:                   ; preds = %ovl_aio_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then32:                                        ; preds = %ovl_aio_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ovl_aio_cleanup_handler(ptr noundef nonnull %call.i)
  br label %out

out:                                              ; preds = %if.then32, %ovl_aio_put.exit.out_crit_edge, %if.else.out_crit_edge, %if.then17
  %ret.1 = phi i32 [ %call21, %if.then17 ], [ -12, %if.else.out_crit_edge ], [ %call31, %if.then32 ], [ -529, %ovl_aio_put.exit.out_crit_edge ]
  tail call void @revert_creds(ptr noundef %call15) #8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %59 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %60, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %out.out_fdput_crit_edge

out.out_fdput_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_fdput

if.end.i:                                         ; preds = %out
  %61 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %f_inode.i, align 8
  %call1.i = tail call ptr @ovl_inode_upper(ptr noundef %62) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.out_fdput_crit_edge, label %if.end4.i

if.end.i.out_fdput_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_fdput

if.end4.i:                                        ; preds = %if.end.i
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 16
  %i_mtime5.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 16
  %63 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_mtime.i, align 8
  %65 = ptrtoint ptr %i_mtime5.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %i_mtime5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %66)
  %cmp.i.i = icmp eq i64 %64, %66
  br i1 %cmp.i.i, label %timespec64_equal.exit.i, label %if.end4.i.if.then11.i_crit_edge

if.end4.i.if.then11.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

timespec64_equal.exit.i:                          ; preds = %if.end4.i
  %tv_nsec.i.i = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 16, i32 1
  %67 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tv_nsec.i.i, align 8
  %tv_nsec2.i.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 16, i32 1
  %69 = ptrtoint ptr %tv_nsec2.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tv_nsec2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp3.i.not.i = icmp eq i32 %68, %70
  br i1 %cmp3.i.not.i, label %lor.lhs.false.i, label %timespec64_equal.exit.i.if.then11.i_crit_edge

timespec64_equal.exit.i.if.then11.i_crit_edge:    ; preds = %timespec64_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %timespec64_equal.exit.i
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 17
  %i_ctime8.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 17
  %71 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %i_ctime.i, align 8
  %73 = ptrtoint ptr %i_ctime8.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %i_ctime8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %74)
  %cmp.i28.i = icmp eq i64 %72, %74
  br i1 %cmp.i28.i, label %timespec64_equal.exit34.i, label %lor.lhs.false.i.if.then11.i_crit_edge

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

timespec64_equal.exit34.i:                        ; preds = %lor.lhs.false.i
  %tv_nsec.i29.i = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 17, i32 1
  %75 = ptrtoint ptr %tv_nsec.i29.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tv_nsec.i29.i, align 8
  %tv_nsec2.i30.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 17, i32 1
  %77 = ptrtoint ptr %tv_nsec2.i30.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tv_nsec2.i30.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp3.i31.not.i = icmp eq i32 %76, %78
  br i1 %cmp3.i31.not.i, label %timespec64_equal.exit34.i.if.end16.i_crit_edge, label %timespec64_equal.exit34.i.if.then11.i_crit_edge

timespec64_equal.exit34.i.if.then11.i_crit_edge:  ; preds = %timespec64_equal.exit34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

timespec64_equal.exit34.i.if.end16.i_crit_edge:   ; preds = %timespec64_equal.exit34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then11.i:                                      ; preds = %timespec64_equal.exit34.i.if.then11.i_crit_edge, %lor.lhs.false.i.if.then11.i_crit_edge, %timespec64_equal.exit.i.if.then11.i_crit_edge, %if.end4.i.if.then11.i_crit_edge
  %79 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime5.i, i32 16)
  %i_ctime14.i = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 17
  %i_ctime15.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 17
  %80 = call ptr @memcpy(ptr %i_ctime14.i, ptr %i_ctime15.i, i32 16)
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i, %timespec64_equal.exit34.i.if.end16.i_crit_edge
  %f_path.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #8
  br label %out_fdput

out_fdput:                                        ; preds = %if.end16.i, %if.end.i.out_fdput_crit_edge, %out.out_fdput_crit_edge, %lor.lhs.false.out_fdput_crit_edge, %land.lhs.true.out_fdput_crit_edge
  %ret.2 = phi i32 [ -22, %lor.lhs.false.out_fdput_crit_edge ], [ -22, %land.lhs.true.out_fdput_crit_edge ], [ %ret.1, %out.out_fdput_crit_edge ], [ %ret.1, %if.end.i.out_fdput_crit_edge ], [ %ret.1, %if.end16.i ]
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.fca.1.load = load i32, ptr %3, align 4
  %and.i60 = and i32 %.fca.1.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61 = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i61, label %out_fdput.cleanup35_crit_edge, label %if.then.i62

out_fdput.cleanup35_crit_edge:                    ; preds = %out_fdput
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

if.then.i62:                                      ; preds = %out_fdput
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %82)
  %.fca.0.load = load i32, ptr %real, align 8
  %83 = inttoptr i32 %.fca.0.load to ptr
  tail call void @fput(ptr noundef %83) #8
  br label %cleanup35

cleanup35:                                        ; preds = %if.then.i62, %out_fdput.cleanup35_crit_edge, %if.end.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup35_crit_edge ], [ %call1, %if.end.cleanup35_crit_edge ], [ %ret.2, %out_fdput.cleanup35_crit_edge ], [ %ret.2, %if.then.i62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %real) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_write_iter(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  %real = alloca %struct.fd, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %real) #8
  %4 = ptrtoint ptr %real to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %real, align 8, !annotation !36
  %5 = getelementptr inbounds %struct.fd, ptr %real, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !36
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %7 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ki_flags, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup56

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  %call2 = tail call ptr @ovl_inode_real(ptr noundef %3) #8
  tail call fastcc void @ovl_copyattr(ptr noundef %call2, ptr noundef %3)
  %call3 = tail call i32 @file_remove_privs(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @ovl_real_fdget(ptr noundef %1, ptr noundef nonnull %real)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_unlock_crit_edge

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end10:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ki_flags, align 8
  %and = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end10.if.end20_crit_edge, label %land.lhs.true

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end10
  %13 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %real, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_mapping, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %a_ops, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %land.lhs.true.out_fdput_crit_edge, label %lor.lhs.false

land.lhs.true.out_fdput_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_fdput

lor.lhs.false:                                    ; preds = %land.lhs.true
  %direct_IO = getelementptr inbounds %struct.address_space_operations, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %direct_IO to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %direct_IO, align 4
  %tobool18.not = icmp eq ptr %20, null
  br i1 %tobool18.not, label %lor.lhs.false.out_fdput_crit_edge, label %lor.lhs.false.if.end20_crit_edge

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

lor.lhs.false.out_fdput_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_fdput

if.end20:                                         ; preds = %lor.lhs.false.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %ovl_volatile.i = getelementptr inbounds %struct.ovl_fs, ptr %24, i32 0, i32 8, i32 13
  %25 = ptrtoint ptr %ovl_volatile.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ovl_volatile.i, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  %and24 = and i32 %8, -7
  %spec.select = select i1 %tobool.not.i, i32 %8, i32 %and24
  %27 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_inode.i, align 8
  %i_sb27 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb27, align 4
  %call28 = tail call ptr @ovl_override_creds(ptr noundef %30) #8
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %31 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i = icmp eq ptr %32, null
  br i1 %cmp.i, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %real, align 8
  tail call fastcc void @file_start_write(ptr noundef %34)
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %35 = and i32 %spec.select, 15
  %call34 = tail call i32 @vfs_iter_write(ptr noundef %34, ptr noundef %iter, ptr noundef %ki_pos, i32 noundef %35) #8
  tail call fastcc void @file_end_write(ptr noundef %34)
  %call36 = tail call ptr @ovl_inode_real(ptr noundef %3) #8
  tail call fastcc void @ovl_copyattr(ptr noundef %call36, ptr noundef %3)
  br label %out

if.else:                                          ; preds = %if.end20
  %36 = load ptr, ptr @ovl_aio_request_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %36, i32 noundef 3520) #8
  %tobool38.not = icmp eq ptr %call.i, null
  br i1 %tobool38.not, label %if.else.out_crit_edge, label %if.end40

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end40:                                         ; preds = %if.else
  %37 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %real, align 8
  tail call fastcc void @file_start_write(ptr noundef %38)
  br label %__here

__here:                                           ; preds = %if.end40
  %f_inode.i94 = getelementptr inbounds %struct.file, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %f_inode.i94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %f_inode.i94, align 8
  %i_sb44 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %i_sb44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb44, align 4
  %dep_map.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 32, i32 2, i32 0, i32 5
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef ptrtoint (ptr blockaddress(@ovl_write_iter, %__here) to i32)) #8
  %fd = getelementptr inbounds %struct.ovl_aio_req, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %real to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %real, align 8
  %45 = ptrtoint ptr %fd to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %fd, align 8
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %5, align 4
  %orig_iocb = getelementptr inbounds %struct.ovl_aio_req, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %orig_iocb to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %iocb, ptr %orig_iocb, align 4
  %48 = lshr i64 %44, 32
  %49 = trunc i64 %48 to i32
  %50 = inttoptr i32 %49 to ptr
  %ki_pos1.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %51 = ptrtoint ptr %ki_pos1.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ki_pos1.i, align 8
  %ki_hint3.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 5
  %53 = ptrtoint ptr %ki_hint3.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ki_hint3.i, align 4
  %ki_ioprio4.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 6
  %55 = ptrtoint ptr %ki_ioprio4.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %ki_ioprio4.i, align 2
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %50, ptr %call.i, align 8
  %.compoundliteral.sroa.25.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 8
  %58 = ptrtoint ptr %.compoundliteral.sroa.25.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %52, ptr %.compoundliteral.sroa.25.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 16
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 20
  %59 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 24
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 28
  %60 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %54, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 30
  %61 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %56, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 32
  %62 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %.compoundliteral.sroa.8.0..sroa_idx.i, align 8
  %63 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.select, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 8
  %64 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ovl_aio_rw_complete, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 8
  %ref = getelementptr inbounds %struct.ovl_aio_req, ptr %call.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  %65 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 2, ptr %ref, align 8
  %call52 = tail call i32 @vfs_iocb_iter_write(ptr noundef %50, ptr noundef nonnull %call.i, ptr noundef %iter) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %__here
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ovl_aio_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !39

if.end5.i.i.i.i.ovl_aio_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ovl_aio_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #8
  br label %ovl_aio_put.exit

if.then.i:                                        ; preds = %__here
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  %.elt3.i = getelementptr inbounds %struct.ovl_aio_req, ptr %call.i, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %.elt3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack4.i = load i32, ptr %.elt3.i, align 4
  %and.i.i = and i32 %.unpack4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.fdput.exit.i_crit_edge, label %if.then.i.i

if.then.i.fdput.exit.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdput.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack.i = load i32, ptr %fd, align 8
  %69 = inttoptr i32 %.unpack.i to ptr
  tail call void @fput(ptr noundef %69) #8
  br label %fdput.exit.i

fdput.exit.i:                                     ; preds = %if.then.i.i, %if.then.i.fdput.exit.i_crit_edge
  %70 = load ptr, ptr @ovl_aio_request_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %70, ptr noundef nonnull %call.i) #8
  br label %ovl_aio_put.exit

ovl_aio_put.exit:                                 ; preds = %fdput.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ovl_aio_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %call52)
  %cmp.not = icmp eq i32 %call52, -529
  br i1 %cmp.not, label %ovl_aio_put.exit.out_crit_edge, label %if.then53

ovl_aio_put.exit.out_crit_edge:                   ; preds = %ovl_aio_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then53:                                        ; preds = %ovl_aio_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ovl_aio_cleanup_handler(ptr noundef nonnull %call.i)
  br label %out

out:                                              ; preds = %if.then53, %ovl_aio_put.exit.out_crit_edge, %if.else.out_crit_edge, %if.then30
  %ret.1 = phi i32 [ %call34, %if.then30 ], [ -12, %if.else.out_crit_edge ], [ %call52, %if.then53 ], [ -529, %ovl_aio_put.exit.out_crit_edge ]
  tail call void @revert_creds(ptr noundef %call28) #8
  br label %out_fdput

out_fdput:                                        ; preds = %out, %lor.lhs.false.out_fdput_crit_edge, %land.lhs.true.out_fdput_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out ], [ -22, %lor.lhs.false.out_fdput_crit_edge ], [ -22, %land.lhs.true.out_fdput_crit_edge ]
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.fca.1.load = load i32, ptr %5, align 4
  %and.i = and i32 %.fca.1.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i95 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i95, label %out_fdput.out_unlock_crit_edge, label %if.then.i96

out_fdput.out_unlock_crit_edge:                   ; preds = %out_fdput
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then.i96:                                      ; preds = %out_fdput
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %72)
  %.fca.0.load = load i32, ptr %real, align 8
  %73 = inttoptr i32 %.fca.0.load to ptr
  tail call void @fput(ptr noundef %73) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then.i96, %out_fdput.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %ret.3 = phi i32 [ %call3, %if.end.out_unlock_crit_edge ], [ %call7, %if.end6.out_unlock_crit_edge ], [ %ret.2, %out_fdput.out_unlock_crit_edge ], [ %ret.2, %if.then.i96 ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  br label %cleanup56

cleanup56:                                        ; preds = %out_unlock, %entry.cleanup56_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_unlock ], [ 0, %entry.cleanup56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %real) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_mmap(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_op, align 4
  %mmap = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %mmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmap, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %6 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_file, align 4
  %cmp.not = icmp eq ptr %7, %file
  br i1 %cmp.not, label %if.end24, label %do.end, !prof !39

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 500, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end
  tail call void @vma_set_file(ptr noundef %vma, ptr noundef %1) #8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call25 = tail call ptr @ovl_override_creds(ptr noundef %11) #8
  %12 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_file, align 4
  %f_op.i = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_op.i, align 4
  %mmap.i = getelementptr inbounds %struct.file_operations, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %mmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmap.i, align 4
  %call.i = tail call i32 %17(ptr noundef %13, ptr noundef %vma) #8
  tail call void @revert_creds(ptr noundef %call25) #8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %18 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  %20 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_inode.i, align 8
  %call1.i = tail call ptr @ovl_inode_upper(ptr noundef %21) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 16
  %i_mtime5.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 16
  %22 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_mtime.i, align 8
  %24 = ptrtoint ptr %i_mtime5.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_mtime5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp.i.i = icmp eq i64 %23, %25
  br i1 %cmp.i.i, label %timespec64_equal.exit.i, label %if.end4.i.if.then11.i_crit_edge

if.end4.i.if.then11.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

timespec64_equal.exit.i:                          ; preds = %if.end4.i
  %tv_nsec.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 16, i32 1
  %26 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tv_nsec.i.i, align 8
  %tv_nsec2.i.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 16, i32 1
  %28 = ptrtoint ptr %tv_nsec2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tv_nsec2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp3.i.not.i = icmp eq i32 %27, %29
  br i1 %cmp3.i.not.i, label %lor.lhs.false.i, label %timespec64_equal.exit.i.if.then11.i_crit_edge

timespec64_equal.exit.i.if.then11.i_crit_edge:    ; preds = %timespec64_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %timespec64_equal.exit.i
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 17
  %i_ctime8.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 17
  %30 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_ctime.i, align 8
  %32 = ptrtoint ptr %i_ctime8.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_ctime8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp.i28.i = icmp eq i64 %31, %33
  br i1 %cmp.i28.i, label %timespec64_equal.exit34.i, label %lor.lhs.false.i.if.then11.i_crit_edge

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

timespec64_equal.exit34.i:                        ; preds = %lor.lhs.false.i
  %tv_nsec.i29.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %tv_nsec.i29.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tv_nsec.i29.i, align 8
  %tv_nsec2.i30.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 17, i32 1
  %36 = ptrtoint ptr %tv_nsec2.i30.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tv_nsec2.i30.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp3.i31.not.i = icmp eq i32 %35, %37
  br i1 %cmp3.i31.not.i, label %timespec64_equal.exit34.i.if.end16.i_crit_edge, label %timespec64_equal.exit34.i.if.then11.i_crit_edge

timespec64_equal.exit34.i.if.then11.i_crit_edge:  ; preds = %timespec64_equal.exit34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

timespec64_equal.exit34.i.if.end16.i_crit_edge:   ; preds = %timespec64_equal.exit34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then11.i:                                      ; preds = %timespec64_equal.exit34.i.if.then11.i_crit_edge, %lor.lhs.false.i.if.then11.i_crit_edge, %timespec64_equal.exit.i.if.then11.i_crit_edge, %if.end4.i.if.then11.i_crit_edge
  %38 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_mtime5.i, i32 16)
  %i_ctime14.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 17
  %i_ctime15.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 17
  %39 = call ptr @memcpy(ptr %i_ctime14.i, ptr %i_ctime15.i, i32 16)
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i, %timespec64_equal.exit34.i.if.end16.i_crit_edge
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16.i, %if.end.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %call.i, %if.end24.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end16.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !39

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %9(ptr noundef %1, ptr noundef %5) #8
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %call1 = tail call i32 @ovl_maybe_copy_up(ptr noundef %retval.0.i.i, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %file_dentry.exit.cleanup_crit_edge

file_dentry.exit.cleanup_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %file_dentry.exit
  %12 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_flags, align 4
  %and = and i32 %13, -961
  store i32 %and, ptr %f_flags, align 4
  %call3 = tail call ptr @ovl_inode_realdata(ptr noundef %inode) #8
  %call4 = tail call fastcc ptr @ovl_open_realfile(ptr noundef %file, ptr noundef %call3)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %file_dentry.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then6 ], [ 0, %if.end8 ], [ %call1, %file_dentry.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_flush(ptr noundef %file, ptr noundef %id) #0 align 64 {
entry:
  %real = alloca %struct.fd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %real) #8
  %0 = ptrtoint ptr %real to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %real, align 4, !annotation !36
  %1 = getelementptr inbounds %struct.fd, ptr %real, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !36
  %call = call fastcc i32 @ovl_real_fdget(ptr noundef %file, ptr noundef nonnull %real)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %real, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_op, align 4
  %flush = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %flush, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %call5 = tail call ptr @ovl_override_creds(ptr noundef %12) #8
  %13 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_op, align 4
  %flush8 = getelementptr inbounds %struct.file_operations, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %flush8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flush8, align 4
  %call10 = tail call i32 %16(ptr noundef %4, ptr noundef %id) #8
  tail call void @revert_creds(ptr noundef %call5) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.end.if.end11_crit_edge
  %err.0 = phi i32 [ %call10, %if.then3 ], [ 0, %if.end.if.end11_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.1.load = load i32, ptr %1, align 4
  %and.i = and i32 %.fca.1.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.cleanup_crit_edge, label %if.then.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.0.load = load i32, ptr %real, align 4
  %19 = inttoptr i32 %.fca.0.load to ptr
  tail call void @fput(ptr noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.0, %if.end11.cleanup_crit_edge ], [ %err.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %real) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @fput(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call i32 @ovl_sync_status(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool.not = icmp eq i32 %datasync, 0
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  br i1 %tobool.not, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call ptr @ovl_inode_real(ptr noundef %7) #8
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call ptr @ovl_inode_realdata(ptr noundef %7) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %realinode.0.i = phi ptr [ %call2.i, %if.then.i ], [ %call3.i, %if.else.i ]
  %f_inode.i43.i = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i43.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i43.i, align 8
  %cmp.not.i = icmp eq ptr %11, %realinode.0.i
  br i1 %cmp.not.i, label %if.end14.i, label %if.then8.i, !prof !39

if.then8.i:                                       ; preds = %if.end.i
  %call10.i = tail call fastcc ptr @ovl_open_realfile(ptr noundef %file, ptr noundef %realinode.0.i) #8
  %cmp.i.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call10.i to i32
  br i1 %cmp.i.i.i, label %if.then8.i.ovl_real_fdget_meta.exit_crit_edge, label %if.then8.i.if.end6_crit_edge

if.then8.i.if.end6_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then8.i.ovl_real_fdget_meta.exit_crit_edge:    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ovl_real_fdget_meta.exit

if.end14.i:                                       ; preds = %if.end.i
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %13 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_flags.i, align 4
  %f_flags16.i = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 7
  %15 = ptrtoint ptr %f_flags16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags16.i, align 4
  %xor.i = xor i32 %16, %14
  %and.i = and i32 %xor.i, -67371009
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end6_crit_edge, label %if.then24.i, !prof !39

if.end14.i.if.end6_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then24.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call fastcc i32 @ovl_change_flags(ptr noundef %9, i32 noundef %14) #8
  br label %ovl_real_fdget_meta.exit

ovl_real_fdget_meta.exit:                         ; preds = %if.then24.i, %if.then8.i.ovl_real_fdget_meta.exit_crit_edge
  %real.sroa.9.0 = phi i32 [ 0, %if.then24.i ], [ 1, %if.then8.i.ovl_real_fdget_meta.exit_crit_edge ]
  %real.sroa.0.0 = phi ptr [ %9, %if.then24.i ], [ %call10.i, %if.then8.i.ovl_real_fdget_meta.exit_crit_edge ]
  %retval.0.i = phi i32 [ %call27.i, %if.then24.i ], [ %12, %if.then8.i.ovl_real_fdget_meta.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %ovl_real_fdget_meta.exit.if.end6_crit_edge, label %ovl_real_fdget_meta.exit.cleanup_crit_edge

ovl_real_fdget_meta.exit.cleanup_crit_edge:       ; preds = %ovl_real_fdget_meta.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ovl_real_fdget_meta.exit.if.end6_crit_edge:       ; preds = %ovl_real_fdget_meta.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %ovl_real_fdget_meta.exit.if.end6_crit_edge, %if.end14.i.if.end6_crit_edge, %if.then8.i.if.end6_crit_edge
  %real.sroa.0.042 = phi ptr [ %real.sroa.0.0, %ovl_real_fdget_meta.exit.if.end6_crit_edge ], [ %call10.i, %if.then8.i.if.end6_crit_edge ], [ %9, %if.end14.i.if.end6_crit_edge ]
  %real.sroa.9.041 = phi i32 [ %real.sroa.9.0, %ovl_real_fdget_meta.exit.if.end6_crit_edge ], [ 1, %if.then8.i.if.end6_crit_edge ], [ 0, %if.end14.i.if.end6_crit_edge ]
  %f_inode.i29 = getelementptr inbounds %struct.file, ptr %real.sroa.0.042, i32 0, i32 2
  %17 = ptrtoint ptr %f_inode.i29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f_inode.i29, align 8
  %19 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_inode.i, align 8
  %call10 = tail call ptr @ovl_inode_upper(ptr noundef %20) #8
  %cmp11 = icmp eq ptr %18, %call10
  br i1 %cmp11, label %if.then12, label %if.end6.if.end18_crit_edge

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_inode.i, align 8
  %i_sb14 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb14, align 4
  %call15 = tail call ptr @ovl_override_creds(ptr noundef %24) #8
  %call17 = tail call i32 @vfs_fsync_range(ptr noundef %real.sroa.0.042, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #8
  tail call void @revert_creds(ptr noundef %call15) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end6.if.end18_crit_edge
  %ret.0 = phi i32 [ %call17, %if.then12 ], [ 0, %if.end6.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %real.sroa.9.041)
  %tobool.not.i = icmp eq i32 %real.sroa.9.041, 0
  br i1 %tobool.not.i, label %if.end18.cleanup_crit_edge, label %if.then.i33

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i33:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef %real.sroa.0.042) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i33, %if.end18.cleanup_crit_edge, %ovl_real_fdget_meta.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %retval.0.i, %ovl_real_fdget_meta.exit.cleanup_crit_edge ], [ %ret.0, %if.end18.cleanup_crit_edge ], [ %ret.0, %if.then.i33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_splice_write(ptr noundef %pipe, ptr noundef %out, ptr noundef %ppos, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %real = alloca %struct.fd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %real) #8
  %0 = ptrtoint ptr %real to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %real, align 4, !annotation !36
  %1 = getelementptr inbounds %struct.fd, ptr %real, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !36
  %f_inode.i = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call ptr @ovl_inode_real(ptr noundef %4) #8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  tail call fastcc void @ovl_copyattr(ptr noundef %call1, ptr noundef %4)
  %call2 = tail call i32 @file_remove_privs(ptr noundef %out) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @ovl_real_fdget(ptr noundef %out, ptr noundef nonnull %real)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %call7 = tail call ptr @ovl_override_creds(ptr noundef %6) #8
  %7 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %real, align 4
  tail call fastcc void @file_start_write(ptr noundef %8)
  %call9 = tail call i32 @iter_file_splice_write(ptr noundef %pipe, ptr noundef %8, ptr noundef %ppos, i32 noundef %len, i32 noundef %flags) #8
  tail call fastcc void @file_end_write(ptr noundef %8)
  tail call fastcc void @ovl_copyattr(ptr noundef %call1, ptr noundef %4)
  tail call void @revert_creds(ptr noundef %call7) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.1.load = load i32, ptr %1, align 4
  %and.i = and i32 %.fca.1.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.out_unlock_crit_edge, label %if.then.i

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.0.load = load i32, ptr %real, align 4
  %11 = inttoptr i32 %.fca.0.load to ptr
  tail call void @fput(ptr noundef %11) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then.i, %if.end6.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.out_unlock_crit_edge ], [ %call3, %if.end.out_unlock_crit_edge ], [ %call9, %if.end6.out_unlock_crit_edge ], [ %call9, %if.then.i ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %real) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_fallocate(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #0 align 64 {
entry:
  %real = alloca %struct.fd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %real) #8
  %2 = ptrtoint ptr %real to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %real, align 4, !annotation !36
  %3 = getelementptr inbounds %struct.fd, ptr %real, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !36
  %call1 = call fastcc i32 @ovl_real_fdget(ptr noundef %file, ptr noundef nonnull %real)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %call3 = tail call ptr @ovl_override_creds(ptr noundef %8) #8
  %9 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %real, align 4
  %call5 = tail call i32 @vfs_fallocate(ptr noundef %10, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #8
  tail call void @revert_creds(ptr noundef %call3) #8
  %call6 = tail call ptr @ovl_inode_real(ptr noundef %1) #8
  tail call fastcc void @ovl_copyattr(ptr noundef %call6, ptr noundef %1)
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.1.load = load i32, ptr %3, align 4
  %and.i = and i32 %.fca.1.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.0.load = load i32, ptr %real, align 4
  %13 = inttoptr i32 %.fca.0.load to ptr
  tail call void @fput(ptr noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call5, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %real) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_copy_file_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %len to i64
  %call = tail call fastcc i64 @ovl_copyfile(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %conv, i32 noundef %flags, i32 noundef 0)
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ovl_remap_file_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %remap_flags)
  %tobool.not = icmp ult i32 %remap_flags, 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %remap_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %. = select i1 %tobool2.not, i32 1, i32 2
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call5 = tail call ptr @ovl_inode_upper(ptr noundef %1) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %f_inode.i18 = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i18, align 8
  %call8 = tail call ptr @ovl_inode_upper(ptr noundef %3) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end11_crit_edge

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call fastcc i64 @ovl_copyfile(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags, i32 noundef %.)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call12, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_fadvise(ptr noundef %file, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) #0 align 64 {
entry:
  %real = alloca %struct.fd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %real) #8
  %0 = ptrtoint ptr %real to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %real, align 4, !annotation !36
  %1 = getelementptr inbounds %struct.fd, ptr %real, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !36
  %call = call fastcc i32 @ovl_real_fdget(ptr noundef %file, ptr noundef nonnull %real)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %call2 = tail call ptr @ovl_override_creds(ptr noundef %6) #8
  %7 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %real, align 4
  %call4 = tail call i32 @vfs_fadvise(ptr noundef %8, i64 noundef %offset, i64 noundef %len, i32 noundef %advice) #8
  tail call void @revert_creds(ptr noundef %call2) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.1.load = load i32, ptr %1, align 4
  %and.i = and i32 %.fca.1.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.0.load = load i32, ptr %real, align 4
  %11 = inttoptr i32 %.fca.0.load to ptr
  tail call void @fput(ptr noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call4, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %real) #8
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_aio_request_cache_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 0, i32 noundef 8192, ptr noundef null) #8
  store ptr %call, ptr @ovl_aio_request_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovl_aio_request_cache_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ovl_aio_request_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_real_fdget(ptr noundef %file, ptr nocapture noundef %real) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !39

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %9(ptr noundef %1, ptr noundef %5) #8
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retval.0.i.i, align 8
  %12 = and i32 %11, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %12)
  %13 = icmp eq i32 %12, 2097152
  br i1 %13, label %if.then, label %if.end

if.then:                                          ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.fd, ptr %real, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags, align 4
  %call2 = tail call ptr @ovl_dir_real_file(ptr noundef %file, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %real to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2, ptr %real, align 4
  %cmp.i.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call2 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %16, i32 0
  br label %return

if.end:                                           ; preds = %file_dentry.exit
  %f_inode.i.i12 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %17 = ptrtoint ptr %f_inode.i.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f_inode.i.i12, align 8
  %flags.i = getelementptr inbounds %struct.fd, ptr %real, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %20 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data.i, align 4
  %22 = ptrtoint ptr %real to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %real, align 4
  %call3.i = tail call ptr @ovl_inode_realdata(ptr noundef %18) #8
  %23 = ptrtoint ptr %real to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %real, align 4
  %f_inode.i43.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %f_inode.i43.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_inode.i43.i, align 8
  %cmp.not.i = icmp eq ptr %26, %call3.i
  br i1 %cmp.not.i, label %if.end14.i, label %if.then8.i, !prof !39

if.then8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %flags.i, align 4
  %call10.i = tail call fastcc ptr @ovl_open_realfile(ptr noundef %file, ptr noundef %call3.i) #8
  %28 = ptrtoint ptr %real to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call10.i, ptr %real, align 4
  %cmp.i.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  %29 = ptrtoint ptr %call10.i to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %29, i32 0
  br label %return

if.end14.i:                                       ; preds = %if.end
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %30 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_flags.i, align 4
  %f_flags16.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 7
  %32 = ptrtoint ptr %f_flags16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_flags16.i, align 4
  %xor.i = xor i32 %33, %31
  %and.i = and i32 %xor.i, -67371009
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.return_crit_edge, label %if.then24.i, !prof !39

if.end14.i.return_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then24.i:                                      ; preds = %if.end14.i
  %and.i13 = and i32 %31, 68608
  %and1.i = and i32 %xor.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.then24.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then24.i.if.end.i_crit_edge:                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then24.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %call3.i, i32 0, i32 4
  %34 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_flags.i, align 4
  %and2.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then24.i.if.end.i_crit_edge
  %and4.i = and i32 %31, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then6.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end.i
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 18
  %36 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %f_mapping.i, align 4
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %a_ops.i, align 4
  %tobool7.not.i = icmp eq ptr %39, null
  br i1 %tobool7.not.i, label %if.then6.i.return_crit_edge, label %lor.lhs.false.i

if.then6.i.return_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.i:                                  ; preds = %if.then6.i
  %direct_IO.i = getelementptr inbounds %struct.address_space_operations, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %direct_IO.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %direct_IO.i, align 4
  %tobool10.not.i = icmp eq ptr %41, null
  br i1 %tobool10.not.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false.i.if.end13.i_crit_edge

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end13.i:                                       ; preds = %lor.lhs.false.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %f_op.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 3
  %42 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %f_op.i, align 4
  %check_flags.i = getelementptr inbounds %struct.file_operations, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %check_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %check_flags.i, align 4
  %tobool14.not.i = icmp eq ptr %45, null
  br i1 %tobool14.not.i, label %if.end13.i.if.end22.i_crit_edge, label %if.then15.i

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end13.i
  %call18.i = tail call i32 %45(i32 noundef %and.i13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then15.i.if.end22.i_crit_edge, label %if.then15.i.return_crit_edge

if.then15.i.return_crit_edge:                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then15.i.if.end22.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i.if.end22.i_crit_edge, %if.end13.i.if.end22.i_crit_edge
  %f_lock.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock.i) #8
  %46 = ptrtoint ptr %f_flags16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %f_flags16.i, align 4
  %and24.i = and i32 %47, -68609
  %or.i = or i32 %and24.i, %and.i13
  store i32 %or.i, ptr %f_flags16.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %f_lock.i) #8
  br label %return

return:                                           ; preds = %if.end22.i, %if.then15.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %if.then6.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.end14.i.return_crit_edge, %if.then8.i, %if.then
  %retval.0 = phi i32 [ %spec.select.i, %if.then ], [ %spec.select.i.i, %if.then8.i ], [ 0, %if.end14.i.return_crit_edge ], [ 0, %if.end22.i ], [ -1, %land.lhs.true.i.return_crit_edge ], [ -22, %lor.lhs.false.i.return_crit_edge ], [ -22, %if.then6.i.return_crit_edge ], [ %call18.i, %if.then15.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_override_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dir_real_file(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_inode_real(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_inode_realdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_open_realfile(ptr noundef %file, ptr noundef %realinode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 3
  %arrayidx = getelementptr [5 x i8], ptr @.str.1, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %and1 = lshr i32 %3, 7
  %6 = and i32 %and1, 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %call3 = tail call ptr @ovl_override_creds(ptr noundef %8) #8
  %9 = or i8 %5, 32
  %10 = zext i8 %9 to i32
  %or4 = or i32 %6, %10
  %call5 = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %realinode, i32 noundef %or4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = inttoptr i32 %call5 to ptr
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %3, 67371008
  %call9 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef nonnull @init_user_ns, ptr noundef %realinode) #8
  %and11 = and i32 %or, -262145
  %spec.select49 = select i1 %call9, i32 %or, i32 %and11
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %12 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred, align 16
  %call14 = tail call ptr @open_with_fake_path(ptr noundef %f_path, i32 noundef %spec.select49, ptr noundef %realinode, ptr noundef %17) #8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %realfile.0 = phi ptr [ %11, %if.then7 ], [ %call14, %if.else ]
  tail call void @revert_creds(ptr noundef %call3) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_open_realfile.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_open_realfile, %if.then22)) #8
          to label %do.end31 [label %if.then22], !srcloc !42

if.then22:                                        ; preds = %if.end15
  %call.i = tail call ptr @ovl_inode_upper(ptr noundef %1) #8
  %cmp.not.i = icmp eq ptr %call.i, %realinode
  br i1 %cmp.not.i, label %if.end.i, label %if.then22.ovl_whatisit.exit_crit_edge

if.then22.ovl_whatisit.exit_crit_edge:            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %ovl_whatisit.exit

if.end.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call zeroext i1 @ovl_has_upperdata(ptr noundef %1) #8
  %phi.cast = select i1 %call1.i, i32 117, i32 109
  br label %ovl_whatisit.exit

ovl_whatisit.exit:                                ; preds = %if.end.i, %if.then22.ovl_whatisit.exit_crit_edge
  %retval.0.i50 = phi i32 [ 108, %if.then22.ovl_whatisit.exit_crit_edge ], [ %phi.cast, %if.end.i ]
  %18 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_flags, align 4
  %cmp.i = icmp ugt ptr %realfile.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ovl_whatisit.exit.cond.end_crit_edge, label %cond.false

ovl_whatisit.exit.cond.end_crit_edge:             ; preds = %ovl_whatisit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %ovl_whatisit.exit
  call void @__sanitizer_cov_trace_pc() #10
  %f_flags28 = getelementptr inbounds %struct.file, ptr %realfile.0, i32 0, i32 7
  %20 = ptrtoint ptr %f_flags28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_flags28, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %ovl_whatisit.exit.cond.end_crit_edge
  %cond = phi i32 [ %21, %cond.false ], [ 0, %ovl_whatisit.exit.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_open_realfile.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.6, ptr noundef %file, ptr noundef %file, i32 noundef %retval.0.i50, i32 noundef %19, ptr noundef %realfile.0, i32 noundef %cond) #8
  br label %do.end31

do.end31:                                         ; preds = %cond.end, %if.end15
  ret ptr %realfile.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_change_flags(ptr noundef %file, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 68608
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %xor = xor i32 %1, %flags
  %and1 = and i32 %xor, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and4 = and i32 %flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %6 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_mapping, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %a_ops, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.then6.cleanup_crit_edge, label %lor.lhs.false

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then6
  %direct_IO = getelementptr inbounds %struct.address_space_operations, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %direct_IO to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %direct_IO, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end13_crit_edge

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %12 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_op, align 4
  %check_flags = getelementptr inbounds %struct.file_operations, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %check_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %check_flags, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.end13.if.end22_crit_edge, label %if.then15

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then15:                                        ; preds = %if.end13
  %call18 = tail call i32 %15(i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.if.end22_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.then15.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %f_lock = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock) #8
  %16 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags, align 4
  %and24 = and i32 %17, -68609
  %or = or i32 %and24, %and
  store i32 %or, ptr %f_flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ %call18, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @open_with_fake_path(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_inode_upper(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_has_upperdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ovl_aio_rw_complete(ptr noundef %iocb, i32 noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_iocb1 = getelementptr inbounds %struct.ovl_aio_req, ptr %iocb, i32 0, i32 2
  %0 = ptrtoint ptr %orig_iocb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_iocb1, align 4
  tail call fastcc void @ovl_aio_cleanup_handler(ptr noundef %iocb)
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ki_complete, align 8
  tail call void %3(ptr noundef %1, i32 noundef %res) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iocb_iter_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_aio_cleanup_handler(ptr noundef %aio_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_iocb2 = getelementptr inbounds %struct.ovl_aio_req, ptr %aio_req, i32 0, i32 2
  %0 = ptrtoint ptr %orig_iocb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orig_iocb2, align 4
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %aio_req, i32 0, i32 4
  %2 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ki_flags, align 8
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %__here

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %aio_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aio_req, align 8
  %f_inode.i15 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i15, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %dep_map.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 32, i32 2, i32 0, i32 5
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@ovl_aio_cleanup_handler, %__here) to i32)) #8
  %14 = ptrtoint ptr %aio_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aio_req, align 8
  tail call fastcc void @file_end_write(ptr noundef %15)
  %call6 = tail call ptr @ovl_inode_real(ptr noundef %11) #8
  tail call fastcc void @ovl_copyattr(ptr noundef %call6, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %__here, %entry.if.end_crit_edge
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %aio_req, i32 0, i32 1
  %16 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ki_pos, align 8
  %ki_pos7 = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %ki_pos7 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %ki_pos7, align 8
  %ref.i = getelementptr inbounds %struct.ovl_aio_req, ptr %aio_req, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ovl_aio_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !39

if.end5.i.i.i.i.ovl_aio_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ovl_aio_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #8
  br label %ovl_aio_put.exit

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  %.elt3.i = getelementptr inbounds %struct.ovl_aio_req, ptr %aio_req, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %.elt3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack4.i = load i32, ptr %.elt3.i, align 4
  %and.i.i = and i32 %.unpack4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.fdput.exit.i_crit_edge, label %if.then.i.i

if.then.i.fdput.exit.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdput.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %fd.i = getelementptr inbounds %struct.ovl_aio_req, ptr %aio_req, i32 0, i32 3
  %21 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack.i = load i32, ptr %fd.i, align 8
  %22 = inttoptr i32 %.unpack.i to ptr
  tail call void @fput(ptr noundef %22) #8
  br label %fdput.exit.i

fdput.exit.i:                                     ; preds = %if.then.i.i, %if.then.i.fdput.exit.i_crit_edge
  %23 = load ptr, ptr @ovl_aio_request_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %23, ptr noundef %aio_req) #8
  br label %ovl_aio_put.exit

ovl_aio_put.exit:                                 ; preds = %fdput.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ovl_aio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @file_end_write(ptr nocapture noundef readonly %file) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2
  %dep_map.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 5
  %7 = tail call ptr @llvm.returnaddress(i32 0) #8
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %8) #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.rcu_sync_is_idle.exit.i.i_crit_edge

if.end.rcu_sync_is_idle.exit.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 35, ptr noundef nonnull @.str.8) #8
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %if.end.rcu_sync_is_idle.exit.i.i_crit_edge
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %do.end49.i.i, !prof !39

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %read_count.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_count.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add17.i.i = add i32 %27, -1
  store i32 %add17.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !45
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then37.i.i, label %do.body3.i.i.do.end39.i.i_crit_edge, !prof !46

do.body3.i.i.do.end39.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i

if.then37.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then37.i.i, %do.body3.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #8, !srcloc !47
  br label %__sb_end_write.exit

do.end49.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %read_count75.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %read_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_count75.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i122.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i122.i.i to ptr
  %cpu78.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu78.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu78.i.i, align 4
  %arrayidx79.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx79.i.i, align 4
  %add80.i.i = add i32 %38, %32
  %39 = inttoptr i32 %add80.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add81.i.i = add i32 %41, -1
  store i32 %add81.i.i, ptr %39, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !45
  %and.i.i123.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i)
  %tobool92.not.i.i = icmp eq i32 %and.i.i123.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then101.i.i, label %do.end49.i.i.do.end104.i.i_crit_edge, !prof !46

do.end49.i.i.do.end104.i.i_crit_edge:             ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.end49.i.i.do.end104.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #8, !srcloc !47
  %writer.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i) #8
  br label %__sb_end_write.exit

__sb_end_write.exit:                              ; preds = %do.end104.i.i, %do.end39.i.i
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  %43 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i120.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i120.i.i to ptr
  %preempt_count.i.i121.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i121.i.i, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i121.i.i, align 4
  br label %return

return:                                           ; preds = %__sb_end_write.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_copyattr(ptr noundef %from, ptr noundef %to) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_uid = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 2
  %i_uid1 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 2
  %0 = ptrtoint ptr %i_uid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_uid1, align 4
  %2 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 3
  %i_gid2 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 3
  %3 = ptrtoint ptr %i_gid2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_gid2, align 8
  %5 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %i_gid, align 8
  %6 = ptrtoint ptr %from to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %from, align 8
  %8 = ptrtoint ptr %to to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %to, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 15
  %i_atime4 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 15
  %9 = call ptr @memcpy(ptr %i_atime, ptr %i_atime4, i32 16)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 16
  %i_mtime5 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 16
  %10 = call ptr @memcpy(ptr %i_mtime, ptr %i_mtime5, i32 16)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 17
  %i_ctime6 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 17
  %11 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime6, i32 16)
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %and.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %13 = tail call ptr @llvm.returnaddress(i32 0) #8
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %14) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call ptr @llvm.returnaddress(i32 0) #8
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %16) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !45
  %and.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !46

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #8, !srcloc !47
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !51
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %21, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %19, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %21, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %22 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %24 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %25, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i.i19 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i19 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %30 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i20 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i20, label %i_size_read.exit.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

i_size_read.exit.i_size_write.exit_crit_edge:     ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %i_size_read.exit
  %31 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  %35 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i21 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i21 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %40, ptrtoint (ptr @lockdep_recursion to i32)
  %41 = inttoptr i32 %add.i28.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %44 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i7.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool20.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %48 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i29.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i = icmp eq i32 %51, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %52 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i9.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %55, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %56 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %59, ptrtoint (ptr @hardirqs_enabled to i32)
  %60 = inttoptr i32 %add47.i.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %63 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i12.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %66, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool54.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i22, !prof !39

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

if.then.i.i22:                                    ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i22, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %i_size_read.exit.i_size_write.exit_crit_edge
  %i_size_seqcount.i23 = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 23
  %67 = ptrtoint ptr %i_size_seqcount.i23 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_size_seqcount.i23, align 4
  %inc.i.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 23, i32 1
  %69 = tail call ptr @llvm.returnaddress(i32 0) #8
  %70 = ptrtoint ptr %69 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %70) #8
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 14
  %71 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %23, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %70) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  %72 = ptrtoint ptr %i_size_seqcount.i23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_size_seqcount.i23, align 4
  %inc.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i23, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %74 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i26.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_remove_privs(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @file_start_write(ptr nocapture noundef readonly %file) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp = icmp eq i16 %4, -32768
  br i1 %cmp, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 49) #8
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 5
  %7 = tail call ptr @llvm.returnaddress(i32 0) #8
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %8) #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 35, ptr noundef nonnull @.str.8) #8
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %13 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !39

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !44
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_count.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add21.i.i.i = add i32 %27, 1
  store i32 %add21.i.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !45
  %and.i.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !46

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #8, !srcloc !47
  br label %sb_start_write.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #8
  br label %sb_start_write.exit

sb_start_write.exit:                              ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !63
  %29 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i58.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  br label %return

return:                                           ; preds = %sb_start_write.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iocb_iter_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_set_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_maybe_copy_up(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_sync_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ovl_copyfile(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %flags, i32 noundef %op) unnamed_addr #0 align 64 {
entry:
  %real_in = alloca %struct.fd, align 4
  %real_out = alloca %struct.fd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %real_in) #8
  %2 = ptrtoint ptr %real_in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %real_in, align 4, !annotation !36
  %3 = getelementptr inbounds %struct.fd, ptr %real_in, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %real_out) #8
  %5 = ptrtoint ptr %real_out to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %real_out, align 4, !annotation !36
  %6 = getelementptr inbounds %struct.fd, ptr %real_out, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !36
  %call1 = call fastcc i32 @ovl_real_fdget(ptr noundef %file_out, ptr noundef nonnull %real_out)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = sext i32 %call1 to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @ovl_real_fdget(ptr noundef %file_in, ptr noundef nonnull %real_in)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %conv3 = sext i32 %call2 to i64
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.1.load = load i32, ptr %6, align 4
  %and.i = and i32 %.fca.1.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %if.then.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %real_out to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.0.load = load i32, ptr %real_out, align 4
  %10 = inttoptr i32 %.fca.0.load to ptr
  tail call void @fput(ptr noundef %10) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %call8 = tail call ptr @ovl_override_creds(ptr noundef %14) #8
  %15 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %op, label %if.end6.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
    i32 2, label %sw.bb17
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %real_in to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %real_in, align 4
  %18 = ptrtoint ptr %real_out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %real_out, align 4
  %conv10 = trunc i64 %len to i32
  %call11 = tail call i32 @vfs_copy_file_range(ptr noundef %17, i64 noundef %pos_in, ptr noundef %19, i64 noundef %pos_out, i32 noundef %conv10, i32 noundef %flags) #8
  %conv12 = sext i32 %call11 to i64
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %real_in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %real_in, align 4
  %22 = ptrtoint ptr %real_out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %real_out, align 4
  %call16 = tail call i64 @vfs_clone_file_range(ptr noundef %21, i64 noundef %pos_in, ptr noundef %23, i64 noundef %pos_out, i64 noundef %len, i32 noundef %flags) #8
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %real_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %real_in, align 4
  %26 = ptrtoint ptr %real_out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %real_out, align 4
  %call20 = tail call i64 @vfs_dedupe_file_range_one(ptr noundef %25, i64 noundef %pos_in, ptr noundef %27, i64 noundef %pos_out, i64 noundef %len, i32 noundef %flags) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb13, %sw.bb, %if.end6.sw.epilog_crit_edge
  %ret.0 = phi i64 [ 0, %if.end6.sw.epilog_crit_edge ], [ %call20, %sw.bb17 ], [ %call16, %sw.bb13 ], [ %conv12, %sw.bb ]
  tail call void @revert_creds(ptr noundef %call8) #8
  %call21 = tail call ptr @ovl_inode_real(ptr noundef %1) #8
  tail call fastcc void @ovl_copyattr(ptr noundef %call21, ptr noundef %1)
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.1.load40 = load i32, ptr %3, align 4
  %and.i54 = and i32 %.fca.1.load40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool.not.i55 = icmp eq i32 %and.i54, 0
  br i1 %tobool.not.i55, label %sw.epilog.fdput.exit57_crit_edge, label %if.then.i56

sw.epilog.fdput.exit57_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %fdput.exit57

if.then.i56:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %real_in to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.0.load37 = load i32, ptr %real_in, align 4
  %30 = inttoptr i32 %.fca.0.load37 to ptr
  tail call void @fput(ptr noundef %30) #8
  br label %fdput.exit57

fdput.exit57:                                     ; preds = %if.then.i56, %sw.epilog.fdput.exit57_crit_edge
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.1.load34 = load i32, ptr %6, align 4
  %and.i58 = and i32 %.fca.1.load34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i59 = icmp eq i32 %and.i58, 0
  br i1 %tobool.not.i59, label %fdput.exit57.cleanup_crit_edge, label %if.then.i60

fdput.exit57.cleanup_crit_edge:                   ; preds = %fdput.exit57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i60:                                      ; preds = %fdput.exit57
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %real_out to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.0.load31 = load i32, ptr %real_out, align 4
  %33 = inttoptr i32 %.fca.0.load31 to ptr
  tail call void @fput(ptr noundef %33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i60, %fdput.exit57.cleanup_crit_edge, %if.then.i, %if.then5.cleanup_crit_edge, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %conv3, %if.then5.cleanup_crit_edge ], [ %conv3, %if.then.i ], [ %ret.0, %fdput.exit57.cleanup_crit_edge ], [ %ret.0, %if.then.i60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %real_out) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %real_in) #8
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_copy_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_clone_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_dedupe_file_range_one(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fadvise(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @ovl_file_operations, !1, !"ovl_file_operations", i1 false, i1 false}
!1 = !{!"../fs/overlayfs/file.c", i32 664, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/overlayfs/file.c", i32 684, i32 45}
!4 = !{ptr @ovl_aio_request_cachep, !5, !"ovl_aio_request_cachep", i1 false, i1 false}
!5 = !{!"../fs/overlayfs/file.c", i32 25, i32 27}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/overlayfs/file.c", i32 47, i32 17}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../fs/overlayfs/file.c", i32 62, i32 13}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/overlayfs/file.c", i32 66, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ovl_open_realfile.__UNIQUE_ID_ddebug238, !11, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!16 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{i64 2148497109}
!38 = !{i64 2148411549, i64 2148411581, i64 2148411610, i64 2148411644, i64 2148411675, i64 2148411698}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2149454321}
!41 = !{i8 0, i8 2}
!42 = !{i64 2148876945, i64 2148876950, i64 2148876963, i64 2148877007, i64 2148877041, i64 2148877062}
!43 = !{i64 2152989004}
!44 = !{i64 810457, i64 810518}
!45 = !{i64 813189}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 813474}
!48 = !{i64 2152998499}
!49 = !{i64 2153007976}
!50 = !{i64 2153123859}
!51 = !{i64 2153123701}
!52 = !{i64 2153124029}
!53 = !{i64 2150300272}
!54 = !{i64 2153125790}
!55 = !{i64 2150192524}
!56 = !{i64 2150197458}
!57 = !{i64 2150219176}
!58 = !{i64 2150224070}
!59 = !{i64 2150300597}
!60 = !{i64 2150300922}
!61 = !{i64 2153137652}
!62 = !{i64 2152970200}
!63 = !{i64 2152979050}
