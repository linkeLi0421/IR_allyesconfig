; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_file.c_pt.bc'
source_filename = "../fs/xfs/xfs_file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iomap_ops = type { ptr, ptr }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%union.anon.74 = type { i32 }
%struct.iomap_dio_ops = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, ptr, %struct.address_space, %struct.list_head, %union.anon.84, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.82 = type { %struct.callback_head }
%union.anon.83 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.84 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.15, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.xfs_inode_log_item = type { %struct.xfs_log_item, ptr, i16, %struct.spinlock, i32, i32, i32, i64, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.xfs_icwalk = type { i32, %struct.kuid_t, %struct.kgid_t, i32, i64, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%union.anon.91 = type { i32 }

@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"xfs_isilocked(XFS_I(inode), XFS_IOLOCK_SHARED|XFS_IOLOCK_EXCL)\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/xfs/xfs_file.c\00", [46 x i8] zeroinitializer }, align 32
@xfs_break_layouts.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @xfs_file_llseek, ptr null, ptr null, ptr @xfs_file_read_iter, ptr @xfs_file_write_iter, ptr @iocb_bio_iopoll, ptr null, ptr null, ptr null, ptr @xfs_file_ioctl, ptr null, ptr @xfs_file_mmap, i32 524288, ptr @xfs_file_open, ptr null, ptr @xfs_file_release, ptr @xfs_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @xfs_file_fallocate, ptr null, ptr null, ptr @xfs_file_remap_range, ptr @xfs_file_fadvise }, [32 x i8] zeroinitializer }, align 32
@xfs_dir_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xfs_file_readdir, ptr null, ptr @xfs_file_ioctl, ptr null, ptr null, i32 0, ptr @xfs_dir_open, ptr null, ptr null, ptr @xfs_dir_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"xfs_isilocked(XFS_I(inode), XFS_MMAPLOCK_EXCL)\00", [49 x i8] zeroinitializer }, align 32
@xfs_seek_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@xfs_read_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_file_direct_read = external dso_local global %struct.tracepoint, align 4
@trace_xfs_file_direct_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_file_buffered_read = external dso_local global %struct.tracepoint, align 4
@trace_xfs_file_buffered_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfs_direct_write_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@__tracepoint_xfs_zero_eof = external dso_local global %struct.tracepoint, align 4
@trace_xfs_zero_eof.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@xfs_dio_write_ops = internal constant { %struct.iomap_dio_ops, [24 x i8] } { %struct.iomap_dio_ops { ptr @xfs_dio_write_end_io, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"flags & IOMAP_DIO_OVERWRITE_ONLY\00", [63 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_reflink_bounce_dio_write = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_bounce_dio_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_file_direct_write = external dso_local global %struct.tracepoint, align 4
@trace_xfs_file_direct_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_end_io_direct_write = external dso_local global %struct.tracepoint, align 4
@trace_xfs_end_io_direct_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfs_buffered_write_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@__tracepoint_xfs_file_buffered_write = external dso_local global %struct.tracepoint, align 4
@trace_xfs_file_buffered_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfs_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xfs_filemap_fault, ptr @xfs_filemap_huge_fault, ptr @xfs_filemap_map_pages, ptr null, ptr @xfs_filemap_page_mkwrite, ptr @xfs_filemap_pfn_mkwrite, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_filemap_fault = external dso_local global %struct.tracepoint, align 4
@trace_xfs_filemap_fault.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_file_fsync = external dso_local global %struct.tracepoint, align 4
@trace_xfs_file_fsync.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_zero_file_space = external dso_local global %struct.tracepoint, align 4
@trace_xfs_zero_file_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_remap_range = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_remap_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_reflink_remap_range_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_reflink_remap_range_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_dir_fsync = external dso_local global %struct.tracepoint, align 4
@trace_xfs_dir_fsync.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 842, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"xfs_file_operations\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1413, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"xfs_dir_file_operations\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1435, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 821, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1441, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 108, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 271, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"xfs_dio_write_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 503, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 623, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"xfs_file_vm_ops\00", align 1
@___asan_gen_.46 = private constant [21 x i8] c"../fs/xfs/xfs_file.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1383, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 49, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 34, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @xfs_file_operations, ptr @xfs_dir_file_operations, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @xfs_dio_write_ops, ptr @.str.7, ptr @xfs_file_vm_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dir_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dio_write_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_break_layouts(ptr noundef %inode, ptr noundef %iolock, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  %retry = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retry) #11
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %call1 = tail call zeroext i1 @xfs_isilocked(ptr noundef %add.ptr.i, i32 noundef 3) #11
  br i1 %call1, label %entry.do.body.preheader_crit_edge, label %cond.false, !prof !86

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.preheader

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 842) #11
  br label %do.body.preheader

do.body.preheader:                                ; preds = %cond.false, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %land.rhs50.do.body_crit_edge, %do.body.preheader
  %0 = ptrtoint ptr %retry to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %retry, align 1
  %1 = zext i32 %reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reason, label %land.end [
    i32 1, label %sw.bb
    i32 0, label %do.body.do.cond49_crit_edge
  ]

do.body.do.cond49_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond49

sw.bb:                                            ; preds = %do.body
  %call1.i = call zeroext i1 @xfs_isilocked(ptr noundef %add.ptr.i, i32 noundef 16) #11
  br i1 %call1.i, label %sw.bb.xfs_break_dax_layouts.exit_crit_edge, label %cond.false.i, !prof !86

sw.bb.xfs_break_dax_layouts.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_break_dax_layouts.exit

cond.false.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 821) #11
  br label %xfs_break_dax_layouts.exit

xfs_break_dax_layouts.exit:                       ; preds = %cond.false.i, %sw.bb.xfs_break_dax_layouts.exit_crit_edge
  %2 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %retry, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %xfs_break_dax_layouts.exit.do.cond49_crit_edge, label %xfs_break_dax_layouts.exit.land.rhs50_crit_edge

xfs_break_dax_layouts.exit.land.rhs50_crit_edge:  ; preds = %xfs_break_dax_layouts.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs50

xfs_break_dax_layouts.exit.do.cond49_crit_edge:   ; preds = %xfs_break_dax_layouts.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond49

land.end:                                         ; preds = %do.body
  %.b60 = load i1, ptr @xfs_break_layouts.__already_done, align 1
  br i1 %.b60, label %land.end.do.end53_crit_edge, label %if.then18, !prof !86

land.end.do.end53_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

if.then18:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xfs_break_layouts.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 856, i32 noundef 9, ptr noundef null) #11
  br label %do.end53

do.cond49:                                        ; preds = %xfs_break_dax_layouts.exit.do.cond49_crit_edge, %do.body.do.cond49_crit_edge
  %call7 = call i32 @xfs_break_leased_layouts(ptr noundef %inode, ptr noundef %iolock, ptr noundef nonnull %retry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %land.rhs50thread-pre-split, label %do.cond49.do.end53_crit_edge

do.cond49.do.end53_crit_edge:                     ; preds = %do.cond49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

land.rhs50thread-pre-split:                       ; preds = %do.cond49
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %4)
  %.pr = load i8, ptr %retry, align 1
  br label %land.rhs50

land.rhs50:                                       ; preds = %land.rhs50thread-pre-split, %xfs_break_dax_layouts.exit.land.rhs50_crit_edge
  %5 = phi i8 [ %.pr, %land.rhs50thread-pre-split ], [ 1, %xfs_break_dax_layouts.exit.land.rhs50_crit_edge ]
  %tobool51.not = icmp eq i8 %5, 0
  br i1 %tobool51.not, label %land.rhs50.do.end53_crit_edge, label %land.rhs50.do.body_crit_edge

land.rhs50.do.body_crit_edge:                     ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.rhs50.do.end53_crit_edge:                    ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

do.end53:                                         ; preds = %land.rhs50.do.end53_crit_edge, %do.cond49.do.end53_crit_edge, %if.then18, %land.end.do.end53_crit_edge
  %error.063 = phi i32 [ -22, %if.then18 ], [ -22, %land.end.do.end53_crit_edge ], [ 0, %land.rhs50.do.end53_crit_edge ], [ %call7, %do.cond49.do.end53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retry) #11
  ret i32 %error.063
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_break_leased_layouts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xfs_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %whence, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb4
  ]

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i64 @generic_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i64 @iomap_seek_hole(ptr noundef %3, i64 noundef %offset, ptr noundef nonnull @xfs_seek_iomap_ops) #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i64 @iomap_seek_data(ptr noundef %3, i64 noundef %offset, ptr noundef nonnull @xfs_seek_iomap_ops) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %offset.addr.0 = phi i64 [ %call5, %sw.bb4 ], [ %call3, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset.addr.0)
  %cmp = icmp slt i64 %offset.addr.0, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %s_maxbytes, align 8
  %call8 = tail call i64 @vfs_setpos(ptr noundef %file, i64 noundef %offset.addr.0, i64 noundef %13) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %sw.epilog.cleanup_crit_edge, %sw.default, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call2, %sw.default ], [ %call8, %if.end7 ], [ -5, %entry.cleanup_crit_edge ], [ %offset.addr.0, %sw.epilog.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_file_read_iter(ptr noundef %iocb, ptr noundef %to) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %6 = load ptr, ptr @xfsstats, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  %xs_read_calls = getelementptr inbounds %struct.__xfsstats, ptr %14, i32 0, i32 51
  %15 = ptrtoint ptr %xs_read_calls to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xs_read_calls, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %xs_read_calls, align 4
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 92
  %17 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_stats, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %22, %19
  %23 = inttoptr i32 %add15 to ptr
  %xs_read_calls16 = getelementptr inbounds %struct.__xfsstats, ptr %23, i32 0, i32 51
  %24 = ptrtoint ptr %xs_read_calls16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xs_read_calls16, align 4
  %inc17 = add i32 %25, 1
  store i32 %inc17, ptr %xs_read_calls16, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %26 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %m_opstate.i, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %29 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ki_flags, align 8
  %and23 = and i32 %30, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call fastcc i32 @xfs_file_dio_read(ptr noundef %iocb, ptr noundef %to)
  br label %if.end30

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call fastcc i32 @xfs_file_buffered_read(ptr noundef %iocb, ptr noundef %to)
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then25
  %ret.0 = phi i32 [ %call26, %if.then25 ], [ %call28, %if.else27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp sgt i32 %ret.0, 0
  br i1 %cmp, label %do.body32, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %conv78 = zext i32 %ret.0 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %31 = load ptr, ptr @xfsstats, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu, align 4
  %arrayidx42 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %36, %32
  %37 = inttoptr i32 %add43 to ptr
  %xs_read_bytes = getelementptr inbounds %struct.__xfsstats, ptr %37, i32 0, i32 93
  %38 = ptrtoint ptr %xs_read_bytes to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %xs_read_bytes, align 8
  %add44 = add i64 %39, %conv78
  store i64 %add44, ptr %xs_read_bytes, align 8
  %40 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %m_stats, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = load i32, ptr %cpu, align 4
  %arrayidx57 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx57, align 4
  %add58 = add i32 %45, %42
  %46 = inttoptr i32 %add58 to ptr
  %xs_read_bytes59 = getelementptr inbounds %struct.__xfsstats, ptr %46, i32 0, i32 93
  %47 = ptrtoint ptr %xs_read_bytes59 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %xs_read_bytes59, align 8
  %add60 = add i64 %48, %conv78
  store i64 %add60, ptr %xs_read_bytes59, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %ret.0, %do.body32 ], [ %ret.0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_file_write_iter(ptr noundef %iocb, ptr noundef %from) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -312
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %8 = load ptr, ptr @xfsstats, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add = add i32 %15, %9
  %16 = inttoptr i32 %add to ptr
  %xs_write_calls = getelementptr inbounds %struct.__xfsstats, ptr %16, i32 0, i32 50
  %17 = ptrtoint ptr %xs_write_calls to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xs_write_calls, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %xs_write_calls, align 8
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %20, i32 0, i32 92
  %21 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_stats, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %26, %23
  %27 = inttoptr i32 %add15 to ptr
  %xs_write_calls16 = getelementptr inbounds %struct.__xfsstats, ptr %27, i32 0, i32 50
  %28 = ptrtoint ptr %xs_write_calls16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xs_write_calls16, align 8
  %inc17 = add i32 %29, 1
  store i32 %inc17, ptr %xs_write_calls16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %31, i32 0, i32 66
  %32 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %m_opstate.i, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not = icmp eq i32 %34, 0
  br i1 %tobool.i.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %35 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ki_flags, align 8
  %and27 = and i32 %36, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end34_crit_edge, label %if.then29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then29:                                        ; preds = %if.end26
  %37 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %f_inode.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 -312
  %i_diflags.i = getelementptr i8, ptr %40, i32 -26
  %41 = ptrtoint ptr %i_diflags.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %i_diflags.i, align 2
  %43 = and i16 %42, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i = icmp eq i16 %43, 0
  br i1 %tobool.not.i, label %if.then29.cond.false.i_crit_edge, label %land.lhs.true.i

if.then29.cond.false.i_crit_edge:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then29
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i.i, align 8
  %m_rtdev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %m_rtdev_targp.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %m_rtdev_targp.i, align 64
  %tobool2.not.i = icmp eq ptr %47, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true.i.cond.end.i_crit_edge

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.then29.cond.false.i_crit_edge
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i.i, align 8
  %m_ddev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %m_ddev_targp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m_ddev_targp.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %51, %cond.false.i ], [ %47, %land.lhs.true.i.cond.end.i_crit_edge ]
  %52 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count.i, align 8
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %54 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ki_pos.i, align 8
  %conv7.i = zext i32 %53 to i64
  %or.i = or i64 %55, %conv7.i
  %bt_logical_sectormask.i = getelementptr inbounds %struct.xfs_buftarg, ptr %cond.i, i32 0, i32 8
  %56 = ptrtoint ptr %bt_logical_sectormask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bt_logical_sectormask.i, align 8
  %conv8.i = zext i32 %57 to i64
  %and9.i = and i64 %or.i, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i)
  %tobool10.not.i = icmp eq i64 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i, label %cond.end.i.cleanup_crit_edge

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %cond.end.i
  %58 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i.i, align 8
  %m_blockmask.i = getelementptr inbounds %struct.xfs_mount, ptr %59, i32 0, i32 31
  %60 = ptrtoint ptr %m_blockmask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %m_blockmask.i, align 8
  %conv15.i = zext i32 %61 to i64
  %and16.i = and i64 %or.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16.i)
  %tobool17.not.i = icmp eq i64 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end20.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call19.i = tail call fastcc i32 @xfs_file_dio_write_unaligned(ptr noundef %add.ptr.i.i, ptr noundef %iocb, ptr noundef %from) #11
  br label %xfs_file_dio_write.exit

if.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = tail call fastcc i32 @xfs_file_dio_write_aligned(ptr noundef %add.ptr.i.i, ptr noundef %iocb, ptr noundef %from) #11
  br label %xfs_file_dio_write.exit

xfs_file_dio_write.exit:                          ; preds = %if.end20.i, %if.then18.i
  %retval.0.i = phi i32 [ %call19.i, %if.then18.i ], [ %call21.i, %if.end20.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %retval.0.i)
  %cmp31.not = icmp eq i32 %retval.0.i, -15
  br i1 %cmp31.not, label %xfs_file_dio_write.exit.if.end34_crit_edge, label %xfs_file_dio_write.exit.cleanup_crit_edge

xfs_file_dio_write.exit.cleanup_crit_edge:        ; preds = %xfs_file_dio_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

xfs_file_dio_write.exit.if.end34_crit_edge:       ; preds = %xfs_file_dio_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end34:                                         ; preds = %xfs_file_dio_write.exit.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %call35 = tail call fastcc i32 @xfs_file_buffered_write(ptr noundef %iocb, ptr noundef %from)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %xfs_file_dio_write.exit.cleanup_crit_edge, %cond.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end34 ], [ 0, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %retval.0.i, %xfs_file_dio_write.exit.cleanup_crit_edge ], [ -22, %cond.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iocb_bio_iopoll(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_file_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_file_mmap(ptr noundef %file, ptr nocapture noundef %vma) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags.i, align 4
  %and.i25 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %if.then.i, label %if.end.file_accessed.exit_crit_edge

if.end.file_accessed.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_accessed.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #11
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %if.end.file_accessed.exit_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %4 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xfs_file_vm_ops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %file_accessed.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %file_accessed.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_file_open(ptr noundef %inode, ptr nocapture noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %call)
  %cmp = icmp sgt i64 %call, 2147483647
  br i1 %cmp, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %9 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_mode, align 8
  %or = or i32 %10, 1207959552
  store i32 %or, ptr %f_mode, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -27, %land.lhs.true.return_crit_edge ], [ -5, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_file_release(ptr noundef %inode, ptr nocapture noundef readnone %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %call1 = tail call i32 @xfs_release(ptr noundef %add.ptr.i) #11
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_file_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #3 align 64 {
entry:
  %log_flushed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %log_flushed) #11
  %6 = ptrtoint ptr %log_flushed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %log_flushed, align 4
  tail call fastcc void @trace_xfs_file_fsync(ptr noundef %add.ptr.i)
  %call1 = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %7 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %m_opstate.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %i_flags_lock.i = getelementptr i8, ptr %3, i32 -116
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #11
  %i_flags.i = getelementptr i8, ptr %3, i32 -72
  %10 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %11, -33
  store i32 %and.i, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #11
  %i_diflags = getelementptr i8, ptr %3, i32 -26
  %12 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %i_diflags, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool5.not = icmp eq i16 %14, 0
  br i1 %tobool5.not, label %if.end4.if.else_crit_edge, label %land.lhs.true

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %land.lhs.true.if.else_crit_edge, label %if.then8

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %m_rtdev_targp9 = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 15
  %19 = ptrtoint ptr %m_rtdev_targp9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m_rtdev_targp9, align 64
  br label %if.end17.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end4.if.else_crit_edge
  %m_logdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 14
  %21 = ptrtoint ptr %m_logdev_targp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_logdev_targp, align 4
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 13
  %23 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_ddev_targp, align 8
  %cmp.not = icmp eq ptr %22, %24
  br i1 %cmp.not, label %if.else.if.end17_crit_edge, label %if.else.if.end17.sink.split_crit_edge

if.else.if.end17.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.sink.split

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17.sink.split:                              ; preds = %if.else.if.end17.sink.split_crit_edge, %if.then8
  %.sink = phi ptr [ %20, %if.then8 ], [ %24, %if.else.if.end17.sink.split_crit_edge ]
  %bt_bdev14 = getelementptr inbounds %struct.xfs_buftarg, ptr %.sink, i32 0, i32 1
  %25 = ptrtoint ptr %bt_bdev14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bt_bdev14, align 4
  %call15 = tail call i32 @blkdev_issue_flush(ptr noundef %26) #11
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge
  %i_pincount = getelementptr i8, ptr %3, i32 -128
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #11
  %27 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool19.not = icmp eq i32 %28, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 8) #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_pincount, i32 noundef 4) #11
  %29 = ptrtoint ptr %i_pincount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %i_pincount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %if.then20.xfs_fsync_flush_log.exit_crit_edge, label %if.end.i.i

if.then20.xfs_fsync_flush_log.exit_crit_edge:     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_fsync_flush_log.exit

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool21.not = icmp eq i32 %datasync, 0
  br i1 %tobool21.not, label %if.end.i.i.xfs_fsync_seq.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.xfs_fsync_seq.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_fsync_seq.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %i_itemp.i.i = getelementptr i8, ptr %3, i32 -232
  %31 = ptrtoint ptr %i_itemp.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_itemp.i.i, align 8
  %ili_fsync_fields.i.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %ili_fsync_fields.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ili_fsync_fields.i.i, align 4
  %and.i.i = and i32 %34, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.xfs_fsync_flush_log.exit_crit_edge, label %land.lhs.true.i.i.xfs_fsync_seq.exit.i_crit_edge

land.lhs.true.i.i.xfs_fsync_seq.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_fsync_seq.exit.i

land.lhs.true.i.i.xfs_fsync_flush_log.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_fsync_flush_log.exit

xfs_fsync_seq.exit.i:                             ; preds = %land.lhs.true.i.i.xfs_fsync_seq.exit.i_crit_edge, %if.end.i.i.xfs_fsync_seq.exit.i_crit_edge
  %i_itemp5.i.i = getelementptr i8, ptr %3, i32 -232
  %35 = ptrtoint ptr %i_itemp5.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_itemp5.i.i, align 8
  %ili_commit_seq.i.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %ili_commit_seq.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ili_commit_seq.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool1.not.i = icmp eq i64 %38, 0
  br i1 %tobool1.not.i, label %xfs_fsync_seq.exit.i.xfs_fsync_flush_log.exit_crit_edge, label %if.then.i

xfs_fsync_seq.exit.i.xfs_fsync_flush_log.exit_crit_edge: ; preds = %xfs_fsync_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_fsync_flush_log.exit

if.then.i:                                        ; preds = %xfs_fsync_seq.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %call2.i = call i32 @xfs_log_force_seq(ptr noundef %40, i64 noundef %38, i32 noundef 1, ptr noundef nonnull %log_flushed) #11
  %41 = ptrtoint ptr %i_itemp5.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_itemp5.i.i, align 8
  %ili_lock.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %42, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %ili_lock.i) #11
  %43 = ptrtoint ptr %i_itemp5.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_itemp5.i.i, align 8
  %ili_fsync_fields.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %ili_fsync_fields.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ili_fsync_fields.i, align 4
  %46 = load ptr, ptr %i_itemp5.i.i, align 8
  %ili_lock5.i = getelementptr inbounds %struct.xfs_inode_log_item, ptr %46, i32 0, i32 3
  call void @_raw_spin_unlock(ptr noundef %ili_lock5.i) #11
  br label %xfs_fsync_flush_log.exit

xfs_fsync_flush_log.exit:                         ; preds = %if.then.i, %xfs_fsync_seq.exit.i.xfs_fsync_flush_log.exit_crit_edge, %land.lhs.true.i.i.xfs_fsync_flush_log.exit_crit_edge, %if.then20.xfs_fsync_flush_log.exit_crit_edge
  %error.0.i = phi i32 [ %call2.i, %if.then.i ], [ 0, %xfs_fsync_seq.exit.i.xfs_fsync_flush_log.exit_crit_edge ], [ 0, %if.then20.xfs_fsync_flush_log.exit_crit_edge ], [ 0, %land.lhs.true.i.i.xfs_fsync_flush_log.exit_crit_edge ]
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 8) #11
  br label %if.end23

if.end23:                                         ; preds = %xfs_fsync_flush_log.exit, %if.end17.if.end23_crit_edge
  %error.0 = phi i32 [ %error.0.i, %xfs_fsync_flush_log.exit ], [ 0, %if.end17.if.end23_crit_edge ]
  %47 = ptrtoint ptr %log_flushed to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %log_flushed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool24.not = icmp eq i32 %48, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true25:                                  ; preds = %if.end23
  %49 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %i_diflags, align 2
  %51 = and i16 %50, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool29.not = icmp eq i16 %51, 0
  br i1 %tobool29.not, label %land.lhs.true25.land.lhs.true34_crit_edge, label %land.lhs.true30

land.lhs.true25.land.lhs.true34_crit_edge:        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true34

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 8
  %m_rtdev_targp32 = getelementptr inbounds %struct.xfs_mount, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %m_rtdev_targp32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %m_rtdev_targp32, align 64
  %tobool33.not = icmp eq ptr %55, null
  br i1 %tobool33.not, label %land.lhs.true30.land.lhs.true34_crit_edge, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true30.land.lhs.true34_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true30.land.lhs.true34_crit_edge, %land.lhs.true25.land.lhs.true34_crit_edge
  %m_logdev_targp35 = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 14
  %56 = ptrtoint ptr %m_logdev_targp35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %m_logdev_targp35, align 4
  %m_ddev_targp36 = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 13
  %58 = ptrtoint ptr %m_ddev_targp36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %m_ddev_targp36, align 8
  %cmp37 = icmp eq ptr %57, %59
  br i1 %cmp37, label %if.then39, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  %bt_bdev41 = getelementptr inbounds %struct.xfs_buftarg, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %bt_bdev41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bt_bdev41, align 4
  %call42 = call i32 @blkdev_issue_flush(ptr noundef %61) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %land.lhs.true34.cleanup_crit_edge, %land.lhs.true30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %error.0, %if.then39 ], [ %error.0, %land.lhs.true34.cleanup_crit_edge ], [ %error.0, %land.lhs.true30.cleanup_crit_edge ], [ %error.0, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %log_flushed) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_file_fallocate(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #3 align 64 {
entry:
  %iolock = alloca i32, align 4
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iolock) #11
  %2 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 17, ptr %iolock, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup148_crit_edge

entry.cleanup148_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

if.end:                                           ; preds = %entry
  %and3 = and i32 %mode, -124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup148_crit_edge

if.end.cleanup148_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

if.end5:                                          ; preds = %if.end
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 17) #11
  %call6 = call i32 @xfs_break_layouts(ptr noundef %1, ptr noundef nonnull %iolock, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_unlock_crit_edge

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end9:                                          ; preds = %if.end5
  call void @inode_dio_wait(ptr noundef %1) #11
  %and10 = and i32 %mode, 26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end17_crit_edge, label %if.then12

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then12:                                        ; preds = %if.end9
  %call13 = call i32 @xfs_flush_unmap_range(ptr noundef %add.ptr.i, i64 noundef %offset, i64 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.out_unlock_crit_edge

if.then12.out_unlock_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %call18 = call i32 @file_modified(ptr noundef %file) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.out_unlock_crit_edge

if.end17.out_unlock_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end21:                                         ; preds = %if.end17
  %and22 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @xfs_free_file_space(ptr noundef %add.ptr.i, i64 noundef %offset, i64 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.if.end143_crit_edge, label %if.then24.out_unlock_crit_edge

if.then24.out_unlock_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then24.if.end143_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

if.else:                                          ; preds = %if.end21
  %and29 = and i32 %mode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else45, label %if.then31

if.then31:                                        ; preds = %if.else
  %call32 = call fastcc zeroext i1 @xfs_is_falloc_aligned(ptr noundef %add.ptr.i, i64 noundef %offset, i64 noundef %len)
  br i1 %call32, label %if.end34, label %if.then31.out_unlock_crit_edge

if.then31.out_unlock_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end34:                                         ; preds = %if.then31
  %add = add i64 %len, %offset
  %call35 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call35)
  %cmp36.not = icmp slt i64 %add, %call35
  br i1 %cmp36.not, label %if.end39, label %if.end34.out_unlock_crit_edge

if.end34.out_unlock_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end39:                                         ; preds = %if.end34
  %call40 = call fastcc i64 @i_size_read(ptr noundef %1)
  %sub = sub i64 %call40, %len
  %call41 = call i32 @xfs_collapse_file_space(ptr noundef %add.ptr.i, i64 noundef %offset, i64 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end39.if.end124_crit_edge, label %if.end39.out_unlock_crit_edge

if.end39.out_unlock_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end39.if.end124_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.else45:                                        ; preds = %if.else
  %and46 = and i32 %mode, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else63, label %if.then48

if.then48:                                        ; preds = %if.else45
  %call49 = call fastcc i64 @i_size_read(ptr noundef %1)
  %call50 = call fastcc zeroext i1 @xfs_is_falloc_aligned(ptr noundef %add.ptr.i, i64 noundef %offset, i64 noundef %len)
  br i1 %call50, label %if.end52, label %if.then48.out_unlock_crit_edge

if.then48.out_unlock_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end52:                                         ; preds = %if.then48
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %s_maxbytes, align 8
  %sub53 = sub i64 %9, %call49
  call void @__sanitizer_cov_trace_cmp8(i64 %sub53, i64 %len)
  %cmp54 = icmp slt i64 %sub53, %len
  br i1 %cmp54, label %if.end52.out_unlock_crit_edge, label %if.end57

if.end52.out_unlock_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end57:                                         ; preds = %if.end52
  %add58 = add i64 %call49, %len
  call void @__sanitizer_cov_trace_cmp8(i64 %call49, i64 %offset)
  %cmp59.not = icmp sgt i64 %call49, %offset
  br i1 %cmp59.not, label %if.end57.if.end124_crit_edge, label %if.end57.out_unlock_crit_edge

if.end57.out_unlock_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end57.if.end124_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.else63:                                        ; preds = %if.else45
  %and64 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %land.lhs.true, label %if.else63.if.end76_crit_edge

if.else63.if.end76_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

land.lhs.true:                                    ; preds = %if.else63
  %add66 = add i64 %len, %offset
  %call67 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %add66, i64 %call67)
  %cmp68 = icmp sgt i64 %add66, %call67
  br i1 %cmp68, label %if.then70, label %land.lhs.true.if.end76_crit_edge

land.lhs.true.if.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then70:                                        ; preds = %land.lhs.true
  %call72 = call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %add66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then70.if.end76_crit_edge, label %if.then70.out_unlock_crit_edge

if.then70.out_unlock_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then70.if.end76_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.end76:                                         ; preds = %if.then70.if.end76_crit_edge, %land.lhs.true.if.end76_crit_edge, %if.else63.if.end76_crit_edge
  %new_size.1 = phi i64 [ 0, %if.else63.if.end76_crit_edge ], [ %add66, %if.then70.if.end76_crit_edge ], [ 0, %land.lhs.true.if.end76_crit_edge ]
  %and77 = and i32 %mode, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.else101, label %if.then79

if.then79:                                        ; preds = %if.end76
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_blkbits.i, align 2
  call fastcc void @trace_xfs_zero_file_space(ptr noundef %add.ptr.i)
  %call81 = call i32 @xfs_free_file_space(ptr noundef %add.ptr.i, i64 noundef %offset, i64 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %cleanup98.thread, label %if.then79.out_unlock_crit_edge

if.then79.out_unlock_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

cleanup98.thread:                                 ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %11 to i32
  %add85 = add i64 %len, %offset
  %sub86 = add i64 %add85, -1
  %notmask = shl nsw i32 -1, %conv.i
  %sub87 = xor i32 %notmask, -1
  %conv88 = zext i32 %sub87 to i64
  %or = or i64 %sub86, %conv88
  %add89 = add i64 %or, 1
  %neg = xor i64 %conv88, -1
  %and92 = and i64 %neg, %offset
  %sub93 = sub i64 %add89, %and92
  br label %if.end114

if.else101:                                       ; preds = %if.end76
  %and102 = and i32 %mode, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.else109, label %if.then104

if.then104:                                       ; preds = %if.else101
  %call105 = call i32 @xfs_reflink_unshare(ptr noundef %add.ptr.i, i64 noundef %offset, i64 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then104.if.end114_crit_edge, label %if.then104.out_unlock_crit_edge

if.then104.out_unlock_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then104.if.end114_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.else109:                                       ; preds = %if.else101
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %m_always_cow.i = getelementptr inbounds %struct.xfs_mount, ptr %13, i32 0, i32 67
  %14 = ptrtoint ptr %m_always_cow.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_always_cow.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.else109.if.end114_crit_edge, label %xfs_is_always_cow_inode.exit

if.else109.if.end114_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

xfs_is_always_cow_inode.exit:                     ; preds = %if.else109
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %13, i32 0, i32 61
  %16 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %17, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.i.not, label %xfs_is_always_cow_inode.exit.if.end114_crit_edge, label %xfs_is_always_cow_inode.exit.out_unlock_crit_edge

xfs_is_always_cow_inode.exit.out_unlock_crit_edge: ; preds = %xfs_is_always_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

xfs_is_always_cow_inode.exit.if.end114_crit_edge: ; preds = %xfs_is_always_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.end114:                                        ; preds = %xfs_is_always_cow_inode.exit.if.end114_crit_edge, %if.else109.if.end114_crit_edge, %if.then104.if.end114_crit_edge, %cleanup98.thread
  %offset.addr.1 = phi i64 [ %offset, %if.then104.if.end114_crit_edge ], [ %offset, %xfs_is_always_cow_inode.exit.if.end114_crit_edge ], [ %and92, %cleanup98.thread ], [ %offset, %if.else109.if.end114_crit_edge ]
  %len.addr.1 = phi i64 [ %len, %if.then104.if.end114_crit_edge ], [ %len, %xfs_is_always_cow_inode.exit.if.end114_crit_edge ], [ %sub93, %cleanup98.thread ], [ %len, %if.else109.if.end114_crit_edge ]
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %m_always_cow.i244 = getelementptr inbounds %struct.xfs_mount, ptr %19, i32 0, i32 67
  %20 = ptrtoint ptr %m_always_cow.i244 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %m_always_cow.i244, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i245 = icmp eq i8 %21, 0
  br i1 %tobool.not.i245, label %if.end114.if.then116_crit_edge, label %xfs_is_always_cow_inode.exit250

if.end114.if.then116_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116

xfs_is_always_cow_inode.exit250:                  ; preds = %if.end114
  %m_features.i.i246 = getelementptr inbounds %struct.xfs_mount, ptr %19, i32 0, i32 61
  %22 = ptrtoint ptr %m_features.i.i246 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_features.i.i246, align 8
  %and.i.i247 = and i64 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i247)
  %tobool.i.i248.not = icmp eq i64 %and.i.i247, 0
  br i1 %tobool.i.i248.not, label %xfs_is_always_cow_inode.exit250.if.then116_crit_edge, label %xfs_is_always_cow_inode.exit250.if.end124_crit_edge

xfs_is_always_cow_inode.exit250.if.end124_crit_edge: ; preds = %xfs_is_always_cow_inode.exit250
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

xfs_is_always_cow_inode.exit250.if.then116_crit_edge: ; preds = %xfs_is_always_cow_inode.exit250
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116

if.then116:                                       ; preds = %xfs_is_always_cow_inode.exit250.if.then116_crit_edge, %if.end114.if.then116_crit_edge
  %call117 = call i32 @xfs_alloc_file_space(ptr noundef %add.ptr.i, i64 noundef %offset.addr.1, i64 noundef %len.addr.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then116.if.end124_crit_edge, label %if.then116.out_unlock_crit_edge

if.then116.out_unlock_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then116.if.end124_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.end124:                                        ; preds = %if.then116.if.end124_crit_edge, %xfs_is_always_cow_inode.exit250.if.end124_crit_edge, %if.end57.if.end124_crit_edge, %if.end39.if.end124_crit_edge
  %offset.addr.2 = phi i64 [ %offset, %if.end39.if.end124_crit_edge ], [ %offset.addr.1, %xfs_is_always_cow_inode.exit250.if.end124_crit_edge ], [ %offset.addr.1, %if.then116.if.end124_crit_edge ], [ %offset, %if.end57.if.end124_crit_edge ]
  %len.addr.2 = phi i64 [ %len, %if.end39.if.end124_crit_edge ], [ %len.addr.1, %xfs_is_always_cow_inode.exit250.if.end124_crit_edge ], [ %len.addr.1, %if.then116.if.end124_crit_edge ], [ %len, %if.end57.if.end124_crit_edge ]
  %new_size.2 = phi i64 [ %sub, %if.end39.if.end124_crit_edge ], [ %new_size.1, %xfs_is_always_cow_inode.exit250.if.end124_crit_edge ], [ %new_size.1, %if.then116.if.end124_crit_edge ], [ %add58, %if.end57.if.end124_crit_edge ]
  %do_file_insert.1.off0 = phi i1 [ false, %if.end39.if.end124_crit_edge ], [ false, %xfs_is_always_cow_inode.exit250.if.end124_crit_edge ], [ false, %if.then116.if.end124_crit_edge ], [ true, %if.end57.if.end124_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_size.2)
  %tobool125.not = icmp eq i64 %new_size.2, 0
  br i1 %tobool125.not, label %if.end124.if.end136_crit_edge, label %if.then126

if.end124.if.end136_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then126:                                       ; preds = %if.end124
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #11
  %24 = call ptr @memset(ptr %iattr, i32 255, i32 80)
  %25 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %iattr, align 8
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %26 = ptrtoint ptr %ia_size to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %new_size.2, ptr %ia_size, align 8
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %27 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !88
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dentry.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %and.i.i251 = and i32 %34, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i251)
  %tobool.not.i.i = icmp eq i32 %and.i.i251, 0
  br i1 %tobool.not.i.i, label %if.then126.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !86

if.then126.file_dentry.exit_crit_edge:            ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_inode.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 8
  %37 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = call ptr %40(ptr noundef %32, ptr noundef %36) #11
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %if.then126.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %32, %if.then126.file_dentry.exit_crit_edge ]
  %call129 = call i32 @xfs_vn_setattr_size(ptr noundef %30, ptr noundef %retval.0.i.i, ptr noundef nonnull %iattr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #11
  br i1 %tobool130.not, label %file_dentry.exit.if.end136_crit_edge, label %file_dentry.exit.out_unlock_crit_edge

file_dentry.exit.out_unlock_crit_edge:            ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

file_dentry.exit.if.end136_crit_edge:             ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.end136:                                        ; preds = %file_dentry.exit.if.end136_crit_edge, %if.end124.if.end136_crit_edge
  br i1 %do_file_insert.1.off0, label %if.then138, label %if.end136.if.end143_crit_edge

if.end136.if.end143_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

if.then138:                                       ; preds = %if.end136
  %call139 = call i32 @xfs_insert_file_space(ptr noundef %add.ptr.i, i64 noundef %offset.addr.2, i64 noundef %len.addr.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then138.if.end143_crit_edge, label %if.then138.out_unlock_crit_edge

if.then138.out_unlock_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then138.if.end143_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

if.end143:                                        ; preds = %if.then138.if.end143_crit_edge, %if.end136.if.end143_crit_edge, %if.then24.if.end143_crit_edge
  %call144 = call fastcc zeroext i1 @xfs_file_sync_writes(ptr noundef %file)
  br i1 %call144, label %if.then145, label %if.end143.out_unlock_crit_edge

if.end143.out_unlock_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then145:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  %call146 = call i32 @xfs_log_force_inode(ptr noundef %add.ptr.i) #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.then145, %if.end143.out_unlock_crit_edge, %if.then138.out_unlock_crit_edge, %file_dentry.exit.out_unlock_crit_edge, %if.then116.out_unlock_crit_edge, %xfs_is_always_cow_inode.exit.out_unlock_crit_edge, %if.then104.out_unlock_crit_edge, %if.then79.out_unlock_crit_edge, %if.then70.out_unlock_crit_edge, %if.end57.out_unlock_crit_edge, %if.end52.out_unlock_crit_edge, %if.then48.out_unlock_crit_edge, %if.end39.out_unlock_crit_edge, %if.end34.out_unlock_crit_edge, %if.then31.out_unlock_crit_edge, %if.then24.out_unlock_crit_edge, %if.end17.out_unlock_crit_edge, %if.then12.out_unlock_crit_edge, %if.end5.out_unlock_crit_edge
  %error.6 = phi i32 [ %call6, %if.end5.out_unlock_crit_edge ], [ %call13, %if.then12.out_unlock_crit_edge ], [ %call18, %if.end17.out_unlock_crit_edge ], [ %call25, %if.then24.out_unlock_crit_edge ], [ %call129, %file_dentry.exit.out_unlock_crit_edge ], [ %call139, %if.then138.out_unlock_crit_edge ], [ %call146, %if.then145 ], [ 0, %if.end143.out_unlock_crit_edge ], [ %call41, %if.end39.out_unlock_crit_edge ], [ %call117, %if.then116.out_unlock_crit_edge ], [ %call105, %if.then104.out_unlock_crit_edge ], [ %call72, %if.then70.out_unlock_crit_edge ], [ -22, %if.then31.out_unlock_crit_edge ], [ -22, %if.end34.out_unlock_crit_edge ], [ -95, %xfs_is_always_cow_inode.exit.out_unlock_crit_edge ], [ %call81, %if.then79.out_unlock_crit_edge ], [ -22, %if.end57.out_unlock_crit_edge ], [ -27, %if.end52.out_unlock_crit_edge ], [ -22, %if.then48.out_unlock_crit_edge ]
  %41 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iolock, align 4
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %42) #11
  br label %cleanup148

cleanup148:                                       ; preds = %out_unlock, %if.end.cleanup148_crit_edge, %entry.cleanup148_crit_edge
  %retval.0 = phi i32 [ %error.6, %out_unlock ], [ -22, %entry.cleanup148_crit_edge ], [ -95, %if.end.cleanup148_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iolock) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xfs_file_remap_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags) #3 align 64 {
entry:
  %len.addr = alloca i64, align 8
  %remapped = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %len, ptr %len.addr, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -312
  %f_inode.i98 = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i98 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i98, align 8
  %add.ptr.i99 = getelementptr i8, ptr %4, i32 -312
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remapped) #11
  %7 = ptrtoint ptr %remapped to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %remapped, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %remap_flags)
  %tobool.not = icmp ult i32 %remap_flags, 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 66
  %10 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %m_opstate.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i100.not = icmp eq i32 %12, 0
  br i1 %tobool.i100.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = call i32 @xfs_reflink_remap_prep(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, ptr noundef nonnull %len.addr, i32 noundef %remap_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end9.if.then12_crit_edge

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end9
  %13 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %len.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp = icmp eq i64 %14, 0
  br i1 %cmp, label %lor.lhs.false.if.then12_crit_edge, label %if.end13

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end9.if.then12_crit_edge
  %conv = sext i32 %call10 to i64
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  call fastcc void @trace_xfs_reflink_remap_range(ptr noundef %add.ptr.i, i64 noundef %pos_in, i64 noundef %14, ptr noundef %add.ptr.i99, i64 noundef %pos_out)
  %15 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %len.addr, align 8
  %call14 = call i32 @xfs_reflink_remap_blocks(ptr noundef %add.ptr.i, i64 noundef %pos_in, ptr noundef %add.ptr.i99, i64 noundef %pos_out, i64 noundef %16, ptr noundef nonnull %remapped) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.if.then52_crit_edge

if.end13.if.then52_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos_in)
  %cmp18 = icmp eq i64 %pos_in, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end17.if.end38_crit_edge

if.end17.if.end38_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end17
  %17 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %len.addr, align 8
  %call20 = call fastcc i64 @i_size_read(ptr noundef %2)
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %call20)
  %cmp21 = icmp eq i64 %18, %call20
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true23:                                  ; preds = %land.lhs.true
  %i_diflags2 = getelementptr i8, ptr %2, i32 -24
  %19 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_diflags2, align 8
  %and24 = and i64 %20, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool25.not = icmp ne i64 %and24, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos_out)
  %cmp27 = icmp eq i64 %pos_out, 0
  %or.cond = and i1 %cmp27, %tobool25.not
  br i1 %or.cond, label %land.lhs.true29, label %land.lhs.true23.if.end38_crit_edge

land.lhs.true23.if.end38_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true29:                                  ; preds = %land.lhs.true23
  %21 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %len.addr, align 8
  %call30 = call fastcc i64 @i_size_read(ptr noundef %4)
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %call30)
  %cmp31.not = icmp slt i64 %22, %call30
  br i1 %cmp31.not, label %land.lhs.true29.if.end38_crit_edge, label %land.lhs.true33

land.lhs.true29.if.end38_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %i_diflags234 = getelementptr i8, ptr %4, i32 -24
  %23 = ptrtoint ptr %i_diflags234 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_diflags234, align 8
  %and35 = and i64 %24, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true33.if.end38_crit_edge

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  %25 = getelementptr i8, ptr %2, i32 -32
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %land.lhs.true33.if.end38_crit_edge, %land.lhs.true29.if.end38_crit_edge, %land.lhs.true23.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.end17.if.end38_crit_edge
  %cowextsize.0 = phi i32 [ 0, %land.lhs.true33.if.end38_crit_edge ], [ %27, %if.then37 ], [ 0, %land.lhs.true29.if.end38_crit_edge ], [ 0, %land.lhs.true23.if.end38_crit_edge ], [ 0, %land.lhs.true.if.end38_crit_edge ], [ 0, %if.end17.if.end38_crit_edge ]
  %28 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %len.addr, align 8
  %add = add i64 %29, %pos_out
  %call39 = call i32 @xfs_reflink_update_dest(ptr noundef %add.ptr.i99, i64 noundef %add, i32 noundef %cowextsize.0, i32 noundef %remap_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.if.then52_crit_edge

if.end38.if.then52_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52

if.end42:                                         ; preds = %if.end38
  %call43 = call fastcc zeroext i1 @xfs_file_sync_writes(ptr noundef %file_in)
  br i1 %call43, label %if.end42.if.then48_crit_edge, label %lor.lhs.false45

if.end42.if.then48_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

lor.lhs.false45:                                  ; preds = %if.end42
  %call46 = call fastcc zeroext i1 @xfs_file_sync_writes(ptr noundef %file_out)
  br i1 %call46, label %lor.lhs.false45.if.then48_crit_edge, label %lor.lhs.false45.out_unlock.thread_crit_edge

lor.lhs.false45.out_unlock.thread_crit_edge:      ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.thread

lor.lhs.false45.if.then48_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false45.if.then48_crit_edge, %if.end42.if.then48_crit_edge
  %call49 = call i32 @xfs_log_force_inode(ptr noundef %add.ptr.i99) #11
  br label %out_unlock.thread

out_unlock.thread:                                ; preds = %if.then48, %lor.lhs.false45.out_unlock.thread_crit_edge
  call void @xfs_iunlock2_io_mmap(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i99) #11
  br label %if.end53

if.then52:                                        ; preds = %if.end38.if.then52_crit_edge, %if.end13.if.then52_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end13.if.then52_crit_edge ], [ %call39, %if.end38.if.then52_crit_edge ]
  call void @xfs_iunlock2_io_mmap(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i99) #11
  %30 = call ptr @llvm.returnaddress(i32 0)
  %31 = ptrtoint ptr %30 to i32
  call fastcc void @trace_xfs_reflink_remap_range_error(ptr noundef %add.ptr.i99, i32 noundef %ret.0, i32 noundef %31)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %out_unlock.thread
  %ret.0103 = phi i32 [ 0, %out_unlock.thread ], [ %ret.0, %if.then52 ]
  %32 = ptrtoint ptr %remapped to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %remapped, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp54 = icmp sgt i64 %33, 0
  %conv56 = sext i32 %ret.0103 to i64
  %cond = select i1 %cmp54, i64 %33, i64 %conv56
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then12, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.then12 ], [ %cond, %if.end53 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remapped) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_file_fadvise(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %advice) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %advice)
  %cmp = icmp eq i32 %advice, 3
  br i1 %cmp, label %if.then3, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @generic_fadvise(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %advice) #11
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 2) #11
  %call211 = tail call i32 @generic_fadvise(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef 3) #11
  tail call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 2) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call213 = phi i32 [ %call211, %if.then3 ], [ %call2, %if.end ]
  ret i32 %call213
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_file_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %i_disk_size = getelementptr i8, ptr %1, i32 -56
  %2 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_disk_size, align 8
  %4 = tail call i64 @llvm.smin.i64(i64 %3, i64 32768)
  %5 = trunc i64 %4 to i32
  %call2 = tail call i32 @xfs_readdir(ptr noundef null, ptr noundef %add.ptr.i, ptr noundef %ctx, i32 noundef %5) #11
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_dir_open(ptr noundef %inode, ptr nocapture noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %call1 = tail call i32 @xfs_file_open(ptr noundef %inode, ptr noundef %file)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfs_ilock_data_map_shared(ptr noundef %add.ptr.i) #11
  %if_nextents = getelementptr i8, ptr %inode, i32 -236
  %0 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @xfs_dir3_data_readahead(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %error.0 = phi i32 [ %call4, %if.then3 ], [ 0, %if.end.if.end5_crit_edge ]
  tail call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_dir_fsync(ptr nocapture noundef readonly %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  tail call fastcc void @trace_xfs_dir_fsync(ptr noundef %add.ptr.i)
  %call1 = tail call i32 @xfs_log_force_inode(ptr noundef %add.ptr.i) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iomap_seek_hole(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iomap_seek_data(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_file_dio_read(ptr noundef %iocb, ptr noundef %to) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  tail call fastcc void @trace_xfs_file_direct_read(ptr noundef %iocb, ptr noundef %to)
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iocb, align 8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.file_accessed.exit_crit_edge

if.end.file_accessed.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_accessed.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %f_path.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #11
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %if.end.file_accessed.exit_crit_edge
  %10 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_inode.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -312
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %14 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ki_flags.i, align 8
  %and.i18 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19, label %if.else.i, label %if.then.i20

if.then.i20:                                      ; preds = %file_accessed.exit
  %call2.i = tail call i32 @xfs_ilock_nowait(ptr noundef %add.ptr.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i20.cleanup_crit_edge, label %if.then.i20.if.end7_crit_edge

if.then.i20.if.end7_crit_edge:                    ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then.i20.cleanup_crit_edge:                    ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i:                                        ; preds = %file_accessed.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_ilock(ptr noundef %add.ptr.i.i, i32 noundef 2) #11
  br label %if.end7

if.end7:                                          ; preds = %if.else.i, %if.then.i20.if.end7_crit_edge
  %call8 = tail call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %to, ptr noundef nonnull @xfs_read_iomap_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  tail call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.i20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ -11, %if.then.i20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_file_buffered_read(ptr noundef %iocb, ptr noundef %to) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  tail call fastcc void @trace_xfs_file_buffered_read(ptr noundef %iocb, ptr noundef %to)
  %4 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -312
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %8 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ki_flags.i, align 8
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call2.i = tail call i32 @xfs_ilock_nowait(ptr noundef %add.ptr.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_ilock(ptr noundef %add.ptr.i.i, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i.if.end_crit_edge
  %call3 = tail call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %to) #11
  tail call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -11, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_nowait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_file_direct_read(ptr noundef %iocb, ptr noundef %iter) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_direct_read, i32 0, i32 1), ptr blockaddress(@trace_xfs_file_direct_read, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !90
  %call42 = tail call i32 @__traceiter_xfs_file_direct_read(ptr noundef null, ptr noundef %iocb, ptr noundef %iter) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_direct_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_direct_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_file_direct_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_file_direct_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1440, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_dio_rw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_file_direct_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_file_buffered_read(ptr noundef %iocb, ptr noundef %iter) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_buffered_read, i32 0, i32 1), ptr blockaddress(@trace_xfs_file_buffered_read, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  %call42 = tail call i32 @__traceiter_xfs_file_buffered_read(ptr noundef null, ptr noundef %iocb, ptr noundef %iter) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_buffered_read, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_buffered_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_file_buffered_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_file_buffered_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1439, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_file_buffered_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_file_buffered_write(ptr noundef %iocb, ptr noundef %from) unnamed_addr #3 align 64 {
entry:
  %iolock = alloca i32, align 4
  %icw = alloca %struct.xfs_icwalk, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iolock) #11
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %6 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ki_flags, align 8
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %write_retry.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

write_retry.preheader:                            ; preds = %entry
  %8 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %iolock, align 4
  call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 1) #11
  %call1112 = call fastcc i32 @xfs_file_write_checks(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull %iolock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1112)
  %tobool2.not113 = icmp eq i32 %call1112, 0
  br i1 %tobool2.not113, label %write_retry.preheader.if.end4_crit_edge, label %write_retry.preheader.out_crit_edge

write_retry.preheader.out_crit_edge:              ; preds = %write_retry.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

write_retry.preheader.if.end4_crit_edge:          ; preds = %write_retry.preheader
  br label %if.end4

if.end4:                                          ; preds = %write_retry.backedge.if.end4_crit_edge, %write_retry.preheader.if.end4_crit_edge
  %cleared_space.0.off0114 = phi i1 [ true, %write_retry.backedge.if.end4_crit_edge ], [ false, %write_retry.preheader.if.end4_crit_edge ]
  %call5 = call ptr @inode_to_bdi(ptr noundef %5) #11
  %9 = call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %backing_dev_info = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 150
  %13 = ptrtoint ptr %backing_dev_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %backing_dev_info, align 4
  call fastcc void @trace_xfs_file_buffered_write(ptr noundef %iocb, ptr noundef %from)
  %call7 = call i32 @iomap_file_buffered_write(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull @xfs_buffered_write_iomap_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp = icmp sgt i32 %call7, -1
  br i1 %cmp, label %if.else.thread, label %if.end11, !prof !86

if.else.thread:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %conv101 = zext i32 %call7 to i64
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %14 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ki_pos, align 8
  %add = add i64 %15, %conv101
  store i64 %add, ptr %ki_pos, align 8
  br label %if.end25

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -122, i32 %call7)
  %cmp12 = icmp ne i32 %call7, -122
  %brmerge = or i1 %cleared_space.0.off0114, %cmp12
  br i1 %brmerge, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iolock, align 4
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %17) #11
  %call16 = call i32 @xfs_blockgc_free_quota(ptr noundef %add.ptr.i, i32 noundef 1) #11
  br label %write_retry.backedge

write_retry.backedge:                             ; preds = %if.then21, %if.then15
  %18 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %iolock, align 4
  call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 1) #11
  %call1 = call fastcc i32 @xfs_file_write_checks(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull %iolock)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %write_retry.backedge.if.end4_crit_edge, label %write_retry.backedge.out_crit_edge

write_retry.backedge.out_crit_edge:               ; preds = %write_retry.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

write_retry.backedge.if.end4_crit_edge:           ; preds = %write_retry.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call7)
  %cmp17 = icmp ne i32 %call7, -28
  %brmerge92 = or i1 %cleared_space.0.off0114, %cmp17
  br i1 %brmerge92, label %if.else.if.end25_crit_edge, label %if.then21

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %icw) #11
  %19 = call ptr @memset(ptr %icw, i32 0, i32 32)
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  call void @xfs_flush_inodes(ptr noundef %21) #11
  %22 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iolock, align 4
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %23) #11
  %24 = ptrtoint ptr %icw to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %icw, align 8
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %call23 = call i32 @xfs_blockgc_free_space(ptr noundef %26, ptr noundef nonnull %icw) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %icw) #11
  br label %write_retry.backedge

if.end25:                                         ; preds = %if.else.if.end25_crit_edge, %if.else.thread
  %.pn = inttoptr i32 %and.i to ptr
  %task126 = getelementptr inbounds %struct.thread_info, ptr %.pn, i32 0, i32 2
  %27 = ptrtoint ptr %task126 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task126, align 8
  %backing_dev_info28 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 150
  %29 = ptrtoint ptr %backing_dev_info28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %backing_dev_info28, align 4
  br label %out

out:                                              ; preds = %if.end25, %write_retry.backedge.out_crit_edge, %write_retry.preheader.out_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end25 ], [ %call1112, %write_retry.preheader.out_crit_edge ], [ %call1, %write_retry.backedge.out_crit_edge ]
  %30 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iolock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool29.not = icmp eq i32 %31, 0
  br i1 %tobool29.not, label %out.if.end31_crit_edge, label %if.then30

out.if.end31_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef %31) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %out.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp32 = icmp sgt i32 %ret.0, 0
  br i1 %cmp32, label %do.body, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end31
  %conv35102 = zext i32 %ret.0 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %32 = load ptr, ptr @xfsstats, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i93 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i93 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %add39 = add i32 %39, %33
  %40 = inttoptr i32 %add39 to ptr
  %xs_write_bytes = getelementptr inbounds %struct.__xfsstats, ptr %40, i32 0, i32 92
  %41 = ptrtoint ptr %xs_write_bytes to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %xs_write_bytes, align 8
  %add40 = add i64 %42, %conv35102
  store i64 %add40, ptr %xs_write_bytes, align 8
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %44, i32 0, i32 92
  %45 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %m_stats, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = load i32, ptr %cpu, align 4
  %arrayidx52 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %50, %47
  %51 = inttoptr i32 %add53 to ptr
  %xs_write_bytes54 = getelementptr inbounds %struct.__xfsstats, ptr %51, i32 0, i32 92
  %52 = ptrtoint ptr %xs_write_bytes54 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %xs_write_bytes54, align 8
  %add55 = add i64 %53, %conv35102
  store i64 %add55, ptr %xs_write_bytes54, align 8
  %54 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ki_flags, align 8
  %and.i94 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i = icmp eq i32 %and.i94, 0
  br i1 %tobool.not.i, label %do.body.if.end8.i_crit_edge, label %if.then.i

do.body.if.end8.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then.i:                                        ; preds = %do.body
  %56 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iocb, align 8
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %58 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %ki_pos.i, align 8
  %sub.i = sub i64 %59, %conv35102
  %sub2.i = add i64 %59, -1
  %and4.i = lshr i32 %55, 2
  %and4.lobit.i = and i32 %and4.i, 1
  %60 = xor i32 %and4.lobit.i, 1
  %call.i = call i32 @vfs_fsync_range(ptr noundef %57, i64 noundef %sub.i, i64 noundef %sub2.i, i32 noundef %60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %do.body.if.end8.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %if.then.i.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %ret.0, %if.end31.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %ret.0, %if.end8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iolock) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_file_write_checks(ptr noundef %iocb, ptr noundef %from, ptr noundef %iolock) unnamed_addr #3 align 64 {
entry:
  %retry.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -312
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  %call2123127 = call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2123127)
  %cmp124128 = icmp slt i32 %call2123127, 1
  br i1 %cmp124128, label %entry.cleanup_crit_edge, label %if.end.lr.ph.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.lr.ph.lr.ph:                               ; preds = %entry
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 45
  %i_flags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %i_flags_lock = getelementptr i8, ptr %5, i32 -116
  br label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %if.end40.if.end.lr.ph_crit_edge, %if.end.lr.ph.lr.ph
  %drained_dio.0.off0.ph129 = phi i1 [ false, %if.end.lr.ph.lr.ph ], [ true, %if.end40.if.end.lr.ph_crit_edge ]
  br label %if.end

if.end:                                           ; preds = %xfs_ilock_iocb.exit.if.end_crit_edge, %if.end.lr.ph
  %8 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ki_flags, align 8
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  %10 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then3.if.end12_crit_edge, label %land.lhs.true.i

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.lhs.true.i:                                  ; preds = %if.then3
  %flc_lease.i = getelementptr inbounds %struct.file_lock_context, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flc_lease.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %flc_lease.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  %cmp.i.not.i.i = icmp eq ptr %13, %flc_lease.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

list_empty_careful.exit.i:                        ; preds = %land.lhs.true.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %11, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %flc_lease.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.if.end12_crit_edge, label %list_empty_careful.exit.i.if.then.i_crit_edge

list_empty_careful.exit.i.if.then.i_crit_edge:    ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

list_empty_careful.exit.i.if.end12_crit_edge:     ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then.i:                                        ; preds = %list_empty_careful.exit.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %call6.i = call i32 @__break_lease(ptr noundef %5, i32 noundef 2049, i32 noundef 2048) #11
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %retry.i) #11
  %call1.i = call zeroext i1 @xfs_isilocked(ptr noundef %add.ptr.i, i32 noundef 3) #11
  br i1 %call1.i, label %if.else.do.body.i.preheader_crit_edge, label %cond.false.i, !prof !86

if.else.do.body.i.preheader_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.preheader

cond.false.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 842) #11
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %cond.false.i, %if.else.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs50thread-pre-split.i.do.body.i_crit_edge, %do.body.i.preheader
  %16 = ptrtoint ptr %retry.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %retry.i, align 1
  %call7.i = call i32 @xfs_break_leased_layouts(ptr noundef %5, ptr noundef %iolock, ptr noundef nonnull %retry.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp eq i32 %call7.i, 0
  br i1 %cmp.i, label %land.rhs50thread-pre-split.i, label %do.body.i.xfs_break_layouts.exit_crit_edge

do.body.i.xfs_break_layouts.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_break_layouts.exit

land.rhs50thread-pre-split.i:                     ; preds = %do.body.i
  %17 = ptrtoint ptr %retry.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr.i = load i8, ptr %retry.i, align 1
  %tobool51.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool51.not.i, label %land.rhs50thread-pre-split.i.xfs_break_layouts.exit_crit_edge, label %land.rhs50thread-pre-split.i.do.body.i_crit_edge

land.rhs50thread-pre-split.i.do.body.i_crit_edge: ; preds = %land.rhs50thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.rhs50thread-pre-split.i.xfs_break_layouts.exit_crit_edge: ; preds = %land.rhs50thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_break_layouts.exit

xfs_break_layouts.exit:                           ; preds = %land.rhs50thread-pre-split.i.xfs_break_layouts.exit_crit_edge, %do.body.i.xfs_break_layouts.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %retry.i) #11
  br label %if.end9

if.end9:                                          ; preds = %xfs_break_layouts.exit, %if.then.i
  %error.0 = phi i32 [ %call7.i, %xfs_break_layouts.exit ], [ %call6.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool10.not = icmp eq i32 %error.0, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %list_empty_careful.exit.i.if.end12_crit_edge, %if.then3.if.end12_crit_edge
  %18 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iolock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp13 = icmp eq i32 %19, 2
  br i1 %cmp13, label %land.lhs.true, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end12
  %20 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags, align 4
  %and14 = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 2) #11
  %22 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %iolock, align 4
  %23 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_inode.i.i, align 8
  %add.ptr.i.i105 = getelementptr i8, ptr %26, i32 -312
  %27 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ki_flags, align 8
  %and.i = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i106 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i106, label %if.else.i, label %if.then.i107

if.then.i107:                                     ; preds = %if.then16
  %call2.i = call i32 @xfs_ilock_nowait(ptr noundef %add.ptr.i.i105, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then19, label %if.then.i107.xfs_ilock_iocb.exit_crit_edge

if.then.i107.xfs_ilock_iocb.exit_crit_edge:       ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_ilock_iocb.exit

if.else.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_ilock(ptr noundef %add.ptr.i.i105, i32 noundef 1) #11
  br label %xfs_ilock_iocb.exit

xfs_ilock_iocb.exit:                              ; preds = %if.else.i, %if.then.i107.xfs_ilock_iocb.exit_crit_edge
  %call2 = call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #11
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %xfs_ilock_iocb.exit.cleanup_crit_edge, label %xfs_ilock_iocb.exit.if.end_crit_edge

xfs_ilock_iocb.exit.if.end_crit_edge:             ; preds = %xfs_ilock_iocb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

xfs_ilock_iocb.exit.cleanup_crit_edge:            ; preds = %xfs_ilock_iocb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %iolock, align 4
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %30 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ki_pos, align 8
  %call22 = call fastcc i64 @i_size_read(ptr noundef %5)
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %call22)
  %cmp23.not = icmp sgt i64 %31, %call22
  br i1 %cmp23.not, label %if.end25, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end25:                                         ; preds = %if.end21
  call void @_raw_spin_lock(ptr noundef %i_flags_lock) #11
  %call26 = call fastcc i64 @i_size_read(ptr noundef %5)
  %32 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %call26)
  %cmp28 = icmp sgt i64 %33, %call26
  call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #11
  br i1 %cmp28, label %if.then29, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then29:                                        ; preds = %if.end25
  %34 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ki_flags, align 8
  %and32 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.then29
  br i1 %drained_dio.0.off0.ph129, label %if.end41, label %if.then37

if.then37:                                        ; preds = %if.end35
  %36 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iolock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp38 = icmp eq i32 %37, 2
  br i1 %cmp38, label %if.then39, label %if.then37.if.end40_crit_edge

if.then37.if.end40_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 2) #11
  %38 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %iolock, align 4
  call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 1) #11
  %39 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %7, ptr %count.i, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then37.if.end40_crit_edge
  call void @inode_dio_wait(ptr noundef %5) #11
  %call2123 = call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #11
  %cmp124 = icmp slt i32 %call2123, 1
  br i1 %cmp124, label %if.end40.cleanup_crit_edge, label %if.end40.if.end.lr.ph_crit_edge

if.end40.if.end.lr.ph_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.lr.ph

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %40 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ki_pos, align 8
  %sub = sub i64 %41, %call26
  %conv = trunc i64 %sub to i32
  call fastcc void @trace_xfs_zero_eof(ptr noundef %add.ptr.i, i64 noundef %call26, i32 noundef %conv)
  %42 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ki_pos, align 8
  %sub44 = sub i64 %43, %call26
  %call45 = call i32 @xfs_zero_range(ptr noundef %add.ptr.i, i64 noundef %call26, i64 noundef %sub44, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end41.out_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %if.end41.out_crit_edge, %if.end25.out_crit_edge, %if.end21.out_crit_edge
  %call52 = call i32 @file_modified(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end41.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then19, %xfs_ilock_iocb.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call52, %out ], [ -11, %if.then19 ], [ %call45, %if.end41.cleanup_crit_edge ], [ %call2123127, %entry.cleanup_crit_edge ], [ %error.0, %if.end9.cleanup_crit_edge ], [ %call2, %xfs_ilock_iocb.exit.cleanup_crit_edge ], [ %call2123, %if.end40.cleanup_crit_edge ], [ -11, %if.then29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !98
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %1 = tail call ptr @llvm.returnaddress(i32 0) #11
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #11
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !99
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !100

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !101
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !102
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !103
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !105
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  ret i64 %11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !107
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %18 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %37 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !86

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !111
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #11
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #11
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !113
  %48 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_setfilesize(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_zero_eof(ptr noundef %ip, i64 noundef %offset, i32 noundef %count) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_eof, i32 0, i32 1), ptr blockaddress(@trace_xfs_zero_eof, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !114
  %call42 = tail call i32 @__traceiter_xfs_zero_eof(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_eof, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_eof, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_zero_eof.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_zero_eof.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1533, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_zero_range(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_modified(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_zero_eof(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_file_dio_write_unaligned(ptr noundef %ip, ptr noundef %iocb, ptr noundef %from) unnamed_addr #3 align 64 {
entry:
  %iolock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i)
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iolock) #11
  %2 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %iolock, align 4
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %3 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ki_pos, align 8
  %conv3 = and i64 %call1, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv3)
  %cmp = icmp sgt i64 %4, %conv3
  br i1 %cmp, label %entry.retry_exclusive_crit_edge, label %lor.lhs.false

entry.retry_exclusive_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_exclusive

lor.lhs.false:                                    ; preds = %entry
  %conv6 = zext i32 %1 to i64
  %add = add i64 %4, %conv6
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv3)
  %cmp8.not = icmp slt i64 %add, %conv3
  br i1 %cmp8.not, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.retry_exclusive_crit_edge

lor.lhs.false.retry_exclusive_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_exclusive

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

retry_exclusive:                                  ; preds = %cond.end, %lor.lhs.false.retry_exclusive_crit_edge, %entry.retry_exclusive_crit_edge
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %5 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ki_flags, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %retry_exclusive.cleanup_crit_edge

retry_exclusive.cleanup_crit_edge:                ; preds = %retry_exclusive
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %retry_exclusive
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %iolock, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %lor.lhs.false.if.end11_crit_edge
  %flags.0 = phi i32 [ 1, %if.end ], [ 2, %lor.lhs.false.if.end11_crit_edge ]
  %8 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iolock, align 4
  %10 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_inode.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -312
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %14 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ki_flags.i, align 8
  %and.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end11
  %call2.i = call i32 @xfs_ilock_nowait(ptr noundef %add.ptr.i.i, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end15_crit_edge

if.then.i.if.end15_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_ilock(ptr noundef %add.ptr.i.i, i32 noundef %9) #11
  br label %if.end15

if.end15:                                         ; preds = %if.else.i, %if.then.i.if.end15_crit_edge
  %i_diflags2.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %16 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i = and i64 %17, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %if.end15.if.then17_crit_edge

if.end15.if.then17_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.rhs.i:                                        ; preds = %if.end15
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip, align 8
  %m_always_cow.i.i = getelementptr inbounds %struct.xfs_mount, ptr %19, i32 0, i32 67
  %20 = ptrtoint ptr %m_always_cow.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %m_always_cow.i.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.if.end18_crit_edge, label %xfs_is_cow_inode.exit

lor.rhs.i.if.end18_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

xfs_is_cow_inode.exit:                            ; preds = %lor.rhs.i
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %19, i32 0, i32 61
  %22 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.i.not = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.i.not, label %xfs_is_cow_inode.exit.if.end18_crit_edge, label %xfs_is_cow_inode.exit.if.then17_crit_edge

xfs_is_cow_inode.exit.if.then17_crit_edge:        ; preds = %xfs_is_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

xfs_is_cow_inode.exit.if.end18_crit_edge:         ; preds = %xfs_is_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %xfs_is_cow_inode.exit.if.then17_crit_edge, %if.end15.if.then17_crit_edge
  call fastcc void @trace_xfs_reflink_bounce_dio_write(ptr noundef %iocb, ptr noundef %from)
  br label %out_unlock

if.end18:                                         ; preds = %xfs_is_cow_inode.exit.if.end18_crit_edge, %lor.rhs.i.if.end18_crit_edge
  %call19 = call fastcc i32 @xfs_file_write_checks(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull %iolock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_unlock_crit_edge

if.end18.out_unlock_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end22:                                         ; preds = %if.end18
  %and23 = and i32 %flags.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void @inode_dio_wait(ptr noundef %i_vnode.i) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  call fastcc void @trace_xfs_file_direct_write(ptr noundef %iocb, ptr noundef %from)
  %call28 = call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull @xfs_direct_write_iomap_ops, ptr noundef nonnull @xfs_dio_write_ops, i32 noundef %flags.0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call28)
  %cmp29 = icmp eq i32 %call28, -11
  br i1 %cmp29, label %land.lhs.true, label %if.end27.out_unlock_crit_edge

if.end27.out_unlock_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

land.lhs.true:                                    ; preds = %if.end27
  %24 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ki_flags.i, align 8
  %and32 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then34:                                        ; preds = %land.lhs.true
  %and35 = and i32 %flags.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %cond.false, label %if.then34.cond.end_crit_edge, !prof !100

if.then34.cond.end_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 623) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then34.cond.end_crit_edge
  %26 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iolock, align 4
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef %27) #11
  br label %retry_exclusive

out_unlock:                                       ; preds = %land.lhs.true.out_unlock_crit_edge, %if.end27.out_unlock_crit_edge, %if.end18.out_unlock_crit_edge, %if.then17
  %ret.0 = phi i32 [ -15, %if.then17 ], [ %call19, %if.end18.out_unlock_crit_edge ], [ -11, %land.lhs.true.out_unlock_crit_edge ], [ %call28, %if.end27.out_unlock_crit_edge ]
  %28 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iolock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool40.not = icmp eq i32 %29, 0
  br i1 %tobool40.not, label %out_unlock.cleanup_crit_edge, label %if.then41

out_unlock.cleanup_crit_edge:                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then41:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef %29) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %out_unlock.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %retry_exclusive.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %retry_exclusive.cleanup_crit_edge ], [ %ret.0, %if.then41 ], [ %ret.0, %out_unlock.cleanup_crit_edge ], [ -11, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iolock) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_file_dio_write_aligned(ptr noundef %ip, ptr noundef %iocb, ptr noundef %from) unnamed_addr #3 align 64 {
entry:
  %iolock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iolock) #11
  %0 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %iolock, align 4
  %1 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -312
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %5 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ki_flags.i, align 8
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call2.i = tail call i32 @xfs_ilock_nowait(ptr noundef %add.ptr.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_ilock(ptr noundef %add.ptr.i.i, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i.if.end_crit_edge
  %call1 = call fastcc i32 @xfs_file_write_checks(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull %iolock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iolock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then5, label %if.end4.if.end6_crit_edge

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_ilock_demote(ptr noundef %ip, i32 noundef 1) #11
  %9 = ptrtoint ptr %iolock to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %iolock, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4.if.end6_crit_edge
  call fastcc void @trace_xfs_file_direct_write(ptr noundef %iocb, ptr noundef %from)
  %call7 = call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull @xfs_direct_write_iomap_ops, ptr noundef nonnull @xfs_dio_write_ops, i32 noundef 0, i32 noundef 0) #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.end6, %if.end.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_unlock_crit_edge ], [ %call7, %if.end6 ]
  %10 = ptrtoint ptr %iolock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iolock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %out_unlock.cleanup_crit_edge, label %if.then9

out_unlock.cleanup_crit_edge:                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %out_unlock.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then9 ], [ %ret.0, %out_unlock.cleanup_crit_edge ], [ -11, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iolock) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_bounce_dio_write(ptr noundef %iocb, ptr noundef %iter) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_bounce_dio_write, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_bounce_dio_write, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  %call42 = tail call i32 @__traceiter_xfs_reflink_bounce_dio_write(ptr noundef null, ptr noundef %iocb, ptr noundef %iter) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_bounce_dio_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_bounce_dio_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_reflink_bounce_dio_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_reflink_bounce_dio_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1445, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_file_direct_write(ptr noundef %iocb, ptr noundef %iter) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_direct_write, i32 0, i32 1), ptr blockaddress(@trace_xfs_file_direct_write, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  %call42 = tail call i32 @__traceiter_xfs_file_direct_write(ptr noundef null, ptr noundef %iocb, ptr noundef %iter) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_direct_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_direct_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_file_direct_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_file_direct_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1443, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_bounce_dio_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_file_direct_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_dio_write_end_io(ptr nocapture noundef readonly %iocb, i32 noundef %size, i32 noundef %error, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %4 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ki_pos, align 8
  tail call fastcc void @trace_xfs_end_io_direct_write(ptr noundef %add.ptr.i, i64 noundef %5, i32 noundef %size)
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 66
  %8 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %m_opstate.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool5.not = icmp eq i32 %size, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end4
  %conv = sext i32 %size to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %11 = load ptr, ptr @xfsstats, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %xs_write_bytes = getelementptr inbounds %struct.__xfsstats, ptr %19, i32 0, i32 92
  %20 = ptrtoint ptr %xs_write_bytes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %xs_write_bytes, align 8
  %add11 = add i64 %21, %conv
  store i64 %add11, ptr %xs_write_bytes, align 8
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %23, i32 0, i32 92
  %24 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m_stats, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = load i32, ptr %cpu, align 4
  %arrayidx23 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %29, %26
  %30 = inttoptr i32 %add24 to ptr
  %xs_write_bytes25 = getelementptr inbounds %struct.__xfsstats, ptr %30, i32 0, i32 92
  %31 = ptrtoint ptr %xs_write_bytes25 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %xs_write_bytes25, align 8
  %add26 = add i64 %32, %conv
  store i64 %add26, ptr %xs_write_bytes25, align 8
  %33 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags1.i, align 4
  %and.i96 = and i32 %38, 262144
  %or.i = or i32 %38, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %do.body.if.end37_crit_edge, label %if.then31

do.body.if.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then31:                                        ; preds = %do.body
  %call33 = tail call i32 @xfs_reflink_end_cow(ptr noundef %add.ptr.i, i64 noundef %5, i64 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.if.end37_crit_edge, label %if.then31.out_crit_edge

if.then31.out_crit_edge:                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %do.body.if.end37_crit_edge
  %and38 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 @xfs_iomap_write_unwritten(ptr noundef %add.ptr.i, i64 noundef %5, i64 noundef %conv, i1 noundef zeroext true) #11
  br label %out

if.end43:                                         ; preds = %if.end37
  %add45 = add i64 %5, %conv
  %call46 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %add45, i64 %call46)
  %cmp.not = icmp sgt i64 %add45, %call46
  br i1 %cmp.not, label %if.end49, label %if.end43.out_crit_edge

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end49:                                         ; preds = %if.end43
  %i_flags_lock = getelementptr i8, ptr %3, i32 -116
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock) #11
  %call52 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %add45, i64 %call52)
  %cmp53 = icmp sgt i64 %add45, %call52
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @i_size_write(ptr noundef %3, i64 noundef %add45)
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #11
  %call59 = tail call i32 @xfs_setfilesize(ptr noundef %add.ptr.i, i64 noundef %5, i32 noundef %size) #11
  br label %out

if.else:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock) #11
  br label %out

out:                                              ; preds = %if.else, %if.then55, %if.end43.out_crit_edge, %if.then40, %if.then31.out_crit_edge
  %error.addr.1 = phi i32 [ %call33, %if.then31.out_crit_edge ], [ %call42, %if.then40 ], [ 0, %if.end43.out_crit_edge ], [ %call59, %if.then55 ], [ 0, %if.else ]
  %39 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i97 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i97 to ptr
  %task.i98 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i98, align 8
  %flags1.i99 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %flags1.i99 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags1.i99, align 4
  %and.i100 = and i32 %44, -262145
  %or.i101 = or i32 %and.i100, %and.i96
  store i32 %or.i101, ptr %flags1.i99, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.addr.1, %out ], [ -5, %entry.cleanup_crit_edge ], [ %error, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_end_io_direct_write(ptr noundef %ip, i64 noundef %offset, i32 noundef %count) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_end_io_direct_write, i32 0, i32 1), ptr blockaddress(@trace_xfs_end_io_direct_write, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !120
  %call42 = tail call i32 @__traceiter_xfs_end_io_direct_write(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_end_io_direct_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_end_io_direct_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_end_io_direct_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_end_io_direct_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1534, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_end_cow(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iomap_write_unwritten(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_end_io_direct_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock_demote(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_file_buffered_write(ptr noundef %iocb, ptr noundef %iter) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_buffered_write, i32 0, i32 1), ptr blockaddress(@trace_xfs_file_buffered_write, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  %call42 = tail call i32 @__traceiter_xfs_file_buffered_write(ptr noundef null, ptr noundef %iocb, ptr noundef %iter) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !123
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_buffered_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_buffered_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_file_buffered_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_file_buffered_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1442, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_file_buffered_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_blockgc_free_quota(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_flush_inodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_blockgc_free_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_file_buffered_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_filemap_fault(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -312
  tail call fastcc void @trace_xfs_filemap_fault(ptr noundef %add.ptr.i.i, i1 noundef zeroext false) #11
  %call24.i = tail call i32 @filemap_fault(ptr noundef %vmf) #11
  ret i32 %call24.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_filemap_huge_fault(ptr nocapture noundef readonly %vmf, i32 noundef %pe_size) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2048
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_filemap_map_pages(ptr noundef %vmf, i32 noundef %start_pgoff, i32 noundef %end_pgoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -312
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 32) #11
  %call2 = tail call i32 @filemap_map_pages(ptr noundef %vmf, i32 noundef %start_pgoff, i32 noundef %end_pgoff) #11
  tail call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 32) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_filemap_page_mkwrite(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__xfs_filemap_fault(ptr noundef %vmf, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_filemap_pfn_mkwrite(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__xfs_filemap_fault(ptr noundef %vmf, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfs_filemap_fault(ptr noundef %vmf, i1 noundef zeroext %write_fault) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -312
  tail call fastcc void @trace_xfs_filemap_fault(ptr noundef %add.ptr.i, i1 noundef zeroext %write_fault)
  br i1 %write_fault, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %7, i32 0, i32 32, i32 2, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 49) #11
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %7, i32 0, i32 32, i32 2, i32 1, i32 5
  %8 = tail call ptr @llvm.returnaddress(i32 0) #11
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %9) #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.then.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.then.rcu_sync_is_idle.exit.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 35, ptr noundef nonnull @.str.10) #11
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.then.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %14 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !86

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !98
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %7, i32 0, i32 32, i32 2, i32 1, i32 1
  %17 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_count.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add21.i.i.i = add i32 %28, 1
  store i32 %add21.i.i.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !99
  %and.i.i.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !100

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #11, !srcloc !101
  br label %if.then28

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #11
  br label %if.then28

if.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 @filemap_fault(ptr noundef %vmf) #11
  br label %if.end30

if.then28:                                        ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %30 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i58.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  %34 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vmf, align 4
  %vm_file4 = getelementptr inbounds %struct.vm_area_struct, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %vm_file4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vm_file4, align 4
  %call5 = tail call i32 @file_update_time(ptr noundef %37) #11
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 32) #11
  %call21 = tail call i32 @iomap_page_mkwrite(ptr noundef %vmf, ptr noundef nonnull @xfs_buffered_write_iomap_ops) #11
  tail call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 32) #11
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i3 = getelementptr %struct.super_block, ptr %39, i32 0, i32 32, i32 2, i32 1
  %dep_map.i.i.i4 = getelementptr %struct.super_block, ptr %39, i32 0, i32 32, i32 2, i32 1, i32 5
  tail call void @lock_release(ptr noundef %dep_map.i.i.i4, i32 noundef %9) #11
  %40 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i.i.i5 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i5 to ptr
  %preempt_count.i.i.i.i.i6 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i6, align 4
  %add.i.i.i.i7 = add i32 %43, 1
  store volatile i32 %add.i.i.i.i7, ptr %preempt_count.i.i.i.i.i6, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !126
  %call.i.i.i.i8 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i8)
  %tobool.not.i.i.i.i9 = icmp eq i32 %call.i.i.i.i8, 0
  br i1 %tobool.not.i.i.i.i9, label %land.lhs.true.i.i.i.i12, label %if.then28.rcu_sync_is_idle.exit.i.i.i17_crit_edge

if.then28.rcu_sync_is_idle.exit.i.i.i17_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i17

land.lhs.true.i.i.i.i12:                          ; preds = %if.then28
  %call1.i.i.i.i10 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i10)
  %tobool2.not.i.i.i.i11 = icmp eq i32 %call1.i.i.i.i10, 0
  br i1 %tobool2.not.i.i.i.i11, label %land.lhs.true.i.i.i.i12.rcu_sync_is_idle.exit.i.i.i17_crit_edge, label %land.lhs.true3.i.i.i.i14

land.lhs.true.i.i.i.i12.rcu_sync_is_idle.exit.i.i.i17_crit_edge: ; preds = %land.lhs.true.i.i.i.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i17

land.lhs.true3.i.i.i.i14:                         ; preds = %land.lhs.true.i.i.i.i12
  %.b8.i.i.i.i13 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i13, label %land.lhs.true3.i.i.i.i14.rcu_sync_is_idle.exit.i.i.i17_crit_edge, label %if.then.i.i.i.i15

land.lhs.true3.i.i.i.i14.rcu_sync_is_idle.exit.i.i.i17_crit_edge: ; preds = %land.lhs.true3.i.i.i.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i17

if.then.i.i.i.i15:                                ; preds = %land.lhs.true3.i.i.i.i14
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 35, ptr noundef nonnull @.str.10) #11
  br label %rcu_sync_is_idle.exit.i.i.i17

rcu_sync_is_idle.exit.i.i.i17:                    ; preds = %if.then.i.i.i.i15, %land.lhs.true3.i.i.i.i14.rcu_sync_is_idle.exit.i.i.i17_crit_edge, %land.lhs.true.i.i.i.i12.rcu_sync_is_idle.exit.i.i.i17_crit_edge, %if.then28.rcu_sync_is_idle.exit.i.i.i17_crit_edge
  %44 = ptrtoint ptr %add.ptr1.i.i3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %add.ptr1.i.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool7.not.i.i.i.i16 = icmp eq i32 %45, 0
  br i1 %tobool7.not.i.i.i.i16, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !86

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i17
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !98
  %read_count.i.i.i18 = getelementptr %struct.super_block, ptr %39, i32 0, i32 32, i32 2, i32 1, i32 1
  %47 = ptrtoint ptr %read_count.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read_count.i.i.i18, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i19 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i19 to ptr
  %cpu.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i.i.i20, align 4
  %arrayidx.i.i.i21 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i.i21, align 4
  %add.i.i.i22 = add i32 %55, %49
  %56 = inttoptr i32 %add.i.i.i22 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add17.i.i.i = add i32 %58, -1
  store i32 %add17.i.i.i, ptr %56, align 4
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !99
  %and.i.i.i.i.i23 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i23)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i23, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !100

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #11, !srcloc !101
  br label %sb_end_pagefault.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !98
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %39, i32 0, i32 32, i32 2, i32 1, i32 1
  %61 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_count75.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i122.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %69, %63
  %70 = inttoptr i32 %add80.i.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add81.i.i.i = add i32 %72, -1
  store i32 %add81.i.i.i, ptr %70, align 4
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !99
  %and.i.i123.i.i.i = and i32 %73, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !100

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %60) #11, !srcloc !101
  %writer.i.i.i = getelementptr %struct.super_block, ptr %39, i32 0, i32 32, i32 2, i32 1, i32 2
  %call111.i.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #11
  br label %sb_end_pagefault.exit

sb_end_pagefault.exit:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !128
  %74 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i120.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i24 = add i32 %77, -1
  store volatile i32 %sub.i.i.i.i24, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %sb_end_pagefault.exit, %if.end26
  %ret.126 = phi i32 [ %call21, %sb_end_pagefault.exit ], [ %call24, %if.end26 ]
  ret i32 %ret.126
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_filemap_fault(ptr noundef %ip, i1 noundef zeroext %write_fault) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filemap_fault, i32 0, i32 1), ptr blockaddress(@trace_xfs_filemap_fault, %do.body)) #11
          to label %if.end49 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !129
  %call43 = tail call i32 @__traceiter_xfs_filemap_fault(ptr noundef null, ptr noundef %ip, i32 noundef 0, i1 noundef zeroext %write_fault) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !130
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !86

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filemap_fault, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_filemap_fault, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_xfs_filemap_fault.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_filemap_fault.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 822, ptr noundef nonnull @.str.4) #11
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_page_mkwrite(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_filemap_fault(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_file_fsync(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_fsync, i32 0, i32 1), ptr blockaddress(@trace_xfs_file_fsync, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !131
  %call42 = tail call i32 @__traceiter_xfs_file_fsync(ptr noundef null, ptr noundef %ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_fsync, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_fsync, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_file_fsync.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_file_fsync.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 770, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_file_fsync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force_seq(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_flush_unmap_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_free_file_space(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xfs_is_falloc_aligned(ptr nocapture noundef readonly %ip, i64 noundef %pos, i64 noundef %len) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %2 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_diflags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_rextsize, align 16
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8) #11, !range !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %10 = icmp eq i32 %9, 1
  %conv20 = zext i32 %8 to i64
  %sb_blocklog22 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %11 = ptrtoint ptr %sb_blocklog22 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sb_blocklog22, align 8
  %sh_prom24 = zext i8 %12 to i64
  %shl25 = shl i64 %conv20, %sh_prom24
  br i1 %10, label %if.end17, label %if.then3

if.then3:                                         ; preds = %if.then
  %conv9 = trunc i64 %shl25 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %pos)
  %cmp164.i = icmp ult i64 %pos, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !86

if.then168.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i = trunc i64 %pos to i32
  %rem170.i = urem i32 %conv169.i, %conv9
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv9, i64 %pos) #14, !srcloc !134
  %asmresult.i3.i = extractvalue { i64, i64 } %13, 0
  %shr.i.i = lshr i64 %asmresult.i3.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool11.not = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool11.not, label %if.else162.i153, label %div_u64_rem.exit.cleanup32_crit_edge

div_u64_rem.exit.cleanup32_crit_edge:             ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

if.else162.i153:                                  ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %len)
  %cmp164.i152 = icmp ult i64 %len, 4294967296
  br i1 %cmp164.i152, label %if.then168.i156, label %if.else174.i160, !prof !86

if.then168.i156:                                  ; preds = %if.else162.i153
  call void @__sanitizer_cov_trace_pc() #13
  %conv169.i154 = trunc i64 %len to i32
  %rem170.i155 = urem i32 %conv169.i154, %conv9
  br label %div_u64_rem.exit162

if.else174.i160:                                  ; preds = %if.else162.i153
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv9, i64 %len) #14, !srcloc !134
  %asmresult.i3.i157 = extractvalue { i64, i64 } %14, 0
  %shr.i.i158 = lshr i64 %asmresult.i3.i157, 32
  %conv.i.i159 = trunc i64 %shr.i.i158 to i32
  br label %div_u64_rem.exit162

div_u64_rem.exit162:                              ; preds = %if.else174.i160, %if.then168.i156
  %__rem.0.i161 = phi i32 [ %rem170.i155, %if.then168.i156 ], [ %conv.i.i159, %if.else174.i160 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i161)
  %cmp = icmp eq i32 %__rem.0.i161, 0
  br label %cleanup32

if.end17:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i64 %shl25, -1
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_blocksize, align 4
  %sub27 = add i32 %16, -1
  %conv28 = zext i32 %sub27 to i64
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end17
  %mask.0 = phi i64 [ %sub, %if.end17 ], [ %conv28, %if.else ]
  %or = or i64 %len, %pos
  %and30 = and i64 %mask.0, %or
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30)
  %tobool31.not = icmp eq i64 %and30, 0
  br label %cleanup32

cleanup32:                                        ; preds = %if.end29, %div_u64_rem.exit162, %div_u64_rem.exit.cleanup32_crit_edge
  %retval.1 = phi i1 [ %tobool31.not, %if.end29 ], [ %cmp, %div_u64_rem.exit162 ], [ false, %div_u64_rem.exit.cleanup32_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_collapse_file_space(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_zero_file_space(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_file_space, i32 0, i32 1), ptr blockaddress(@trace_xfs_zero_file_space, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !135
  %call42 = tail call i32 @__traceiter_xfs_zero_file_space(ptr noundef null, ptr noundef %ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !136
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_file_space, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_zero_file_space, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_zero_file_space.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_zero_file_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 758, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_unshare(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_file_space(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_vn_setattr_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_insert_file_space(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @xfs_file_sync_writes(ptr nocapture noundef readonly %filp) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = and i32 %7, 1052672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags, align 4
  %and6 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags, align 4
  %and9 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp ne i32 %and9, 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.end4.cleanup_crit_edge ], [ %tobool10.not, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_zero_file_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_remap_prep(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_remap_range(ptr noundef %src, i64 noundef %soffset, i64 noundef %len, ptr noundef %dest, i64 noundef %doffset) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_range, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_remap_range, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !137
  %call42 = tail call i32 @__traceiter_xfs_reflink_remap_range(ptr noundef null, ptr noundef %src, i64 noundef %soffset, i64 noundef %len, ptr noundef %dest, i64 noundef %doffset) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_range, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_reflink_remap_range.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_reflink_remap_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 3370, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_remap_blocks(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_update_dest(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock2_io_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_reflink_remap_range_error(ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_range_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_reflink_remap_range_error, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !139
  %call42 = tail call i32 @__traceiter_xfs_reflink_remap_range_error(ptr noundef null, ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_range_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_reflink_remap_range_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_reflink_remap_range_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_reflink_remap_range_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 3371, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_remap_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_reflink_remap_range_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_fadvise(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_readdir(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_data_map_shared(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_readahead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_dir_fsync(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir_fsync, i32 0, i32 1), ptr blockaddress(@trace_xfs_dir_fsync, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %call42 = tail call i32 @__traceiter_xfs_dir_fsync(ptr noundef null, ptr noundef %ip) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir_fsync, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_dir_fsync, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_dir_fsync.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_dir_fsync.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 769, ptr noundef nonnull @.str.4) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_dir_fsync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !38, !39, !41, !42, !44, !46, !47, !49, !50, !52, !54, !55, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_file.c", i32 842, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_file.c", i32 856, i32 4}
!5 = !{ptr @xfs_file_operations, !6, !"xfs_file_operations", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_file.c", i32 1413, i32 30}
!7 = !{ptr @xfs_dir_file_operations, !8, !"xfs_dir_file_operations", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_file.c", i32 1435, i32 30}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_file.c", i32 821, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_trace.h", i32 1441, i32 1}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_trace.h", i32 1440, i32 1}
!21 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_trace.h", i32 1439, i32 1}
!24 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_trace.h", i32 1533, i32 1}
!27 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_trace.h", i32 1444, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_file.c", i32 623, i32 3}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_trace.h", i32 1445, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_trace.h", i32 1443, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = !{ptr @xfs_dio_write_ops, !43, !"xfs_dio_write_ops", i1 false, i1 false}
!43 = !{!"../fs/xfs/xfs_file.c", i32 503, i32 35}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_trace.h", i32 1534, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_trace.h", i32 1442, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = !{ptr @xfs_file_vm_ops, !51, !"xfs_file_vm_ops", i1 false, i1 false}
!51 = !{!"../fs/xfs/xfs_file.c", i32 1383, i32 42}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../fs/xfs/xfs_trace.h", i32 798, i32 1}
!54 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!59 = !{ptr @.str.9, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../fs/xfs/xfs_trace.h", i32 770, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_trace.h", i32 758, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../fs/xfs/xfs_trace.h", i32 3370, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../fs/xfs/xfs_trace.h", i32 3371, i32 1}
!72 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../fs/xfs/xfs_trace.h", i32 769, i32 1}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i8 0, i8 2}
!88 = !{i64 2153057258}
!89 = !{i64 2148280478, i64 2148280483, i64 2148280496, i64 2148280540, i64 2148280574, i64 2148280595}
!90 = !{i64 2159576709}
!91 = !{i64 2159576932}
!92 = !{i64 2149982571}
!93 = !{i64 2149983607}
!94 = !{i64 2159559571}
!95 = !{i64 2159559798}
!96 = !{i64 2153177132}
!97 = !{i64 2148430488}
!98 = !{i64 1057170, i64 1057231}
!99 = !{i64 1059902}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i64 1060187}
!102 = !{i64 2153152690}
!103 = !{i64 2153152532}
!104 = !{i64 2153152860}
!105 = !{i64 2149816540}
!106 = !{i64 2153154621}
!107 = !{i64 2149708872}
!108 = !{i64 2149713804}
!109 = !{i64 2149735516}
!110 = !{i64 2149740408}
!111 = !{i64 2149816865}
!112 = !{i64 2149817190}
!113 = !{i64 2153166483}
!114 = !{i64 2159816290}
!115 = !{i64 2159820572}
!116 = !{i64 2159666139}
!117 = !{i64 2159666378}
!118 = !{i64 2159631899}
!119 = !{i64 2159632124}
!120 = !{i64 2159837400}
!121 = !{i64 2159837643}
!122 = !{i64 2159614668}
!123 = !{i64 2159614897}
!124 = !{i64 2152994251}
!125 = !{i64 2153003101}
!126 = !{i64 2153013055}
!127 = !{i64 2153022550}
!128 = !{i64 2153032027}
!129 = !{i64 2158405809}
!130 = !{i64 2158406054}
!131 = !{i64 2158136010}
!132 = !{i64 2158136205}
!133 = !{i32 0, i32 33}
!134 = !{i64 2148502275, i64 2148502555, i64 2148502889, i64 2148503223}
!135 = !{i64 2157962389}
!136 = !{i64 2157962594}
!137 = !{i64 2164608464}
!138 = !{i64 2164608737}
!139 = !{i64 2164626725}
!140 = !{i64 2164626986}
!141 = !{i64 2158116035}
!142 = !{i64 2158116228}
