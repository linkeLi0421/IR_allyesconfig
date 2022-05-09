; ModuleID = '/llk/IR_all_yes/fs/gfs2/file.c_pt.bc'
source_filename = "../fs/gfs2/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.iomap_ops = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.82, %struct.list_head, %struct.list_head, %union.anon.83 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.80 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.82 = type { %struct.list_head }
%union.anon.83 = type { %struct.hlist_node }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.68, %union.anon.69 }
%union.anon.68 = type { ptr }
%union.anon.69 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.84, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.84 = type { %struct.delayed_work, i64 }
%struct.rhash_head = type { ptr }
%struct.gfs2_sbd = type { ptr, ptr, %struct.kobject, %struct.completion, i32, %struct.gfs2_sb_host, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64], i32, %struct.gfs2_args, %struct.gfs2_tune, %struct.lm_lockstruct, %struct.gfs2_holder, ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.completion, %struct.completion, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32, %struct.spinlock, %struct.rb_root, i32, i32, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.gfs2_holder, %struct.gfs2_holder, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.completion, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, ptr, %struct.spinlock, i64, %struct.address_space, %struct.spinlock, ptr, i32, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, i64, i32, %struct.rw_semaphore, %struct.atomic_t, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.gfs2_holder, %struct.atomic_t, %struct.mutex, [270 x i8], [256 x i8], [256 x i8], i32, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.gfs2_sb_host = type { i32, i32, i32, i32, i32, i32, %struct.gfs2_inum_host, %struct.gfs2_inum_host, [64 x i8], [64 x i8] }
%struct.gfs2_inum_host = type { i64, i64 }
%struct.gfs2_args = type { [64 x i8], [64 x i8], [64 x i8], i24, i32, i32, i32, i32 }
%struct.gfs2_tune = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lm_lockstruct = type { i32, i32, ptr, ptr, i32, i32, %struct.dlm_lksb, %struct.dlm_lksb, [32 x i8], %struct.completion, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, ptr }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.26, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.74 }
%union.anon.74 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.gfs2_file = type { %struct.mutex, %struct.gfs2_holder }
%struct.gfs2_alloc_parms = type { i64, i32, i32, i64 }
%struct.vm_fault = type { %struct.anon.28, i32, ptr, ptr, %union.anon.29, ptr, ptr, ptr, ptr, ptr }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%union.anon.29 = type { i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }

@gfs2_open_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&fp->f_fl_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"!file->private_data\00", [44 x i8] zeroinitializer }, align 32
@__func__.gfs2_open_common = private unnamed_addr constant [17 x i8] c"gfs2_open_common\00", align 1
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/gfs2/file.c\00", [17 x i8] zeroinitializer }, align 32
@gfs2_file_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @gfs2_llseek, ptr null, ptr null, ptr @gfs2_file_read_iter, ptr @gfs2_file_write_iter, ptr @iocb_bio_iopoll, ptr null, ptr null, ptr null, ptr @gfs2_ioctl, ptr null, ptr @gfs2_mmap, i32 0, ptr @gfs2_open, ptr null, ptr @gfs2_release, ptr @gfs2_fsync, ptr null, ptr @gfs2_lock, ptr null, ptr null, ptr null, ptr @gfs2_flock, ptr @gfs2_file_splice_write, ptr @generic_file_splice_read, ptr @simple_nosetlease, ptr @gfs2_fallocate, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gfs2_dir_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfs2_readdir, ptr null, ptr @gfs2_ioctl, ptr null, ptr null, i32 0, ptr @gfs2_open, ptr null, ptr @gfs2_release, ptr @gfs2_fsync, ptr null, ptr @gfs2_lock, ptr null, ptr null, ptr null, ptr @gfs2_flock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gfs2_file_fops_nolock = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @gfs2_llseek, ptr null, ptr null, ptr @gfs2_file_read_iter, ptr @gfs2_file_write_iter, ptr @iocb_bio_iopoll, ptr null, ptr null, ptr null, ptr @gfs2_ioctl, ptr null, ptr @gfs2_mmap, i32 0, ptr @gfs2_open, ptr null, ptr @gfs2_release, ptr @gfs2_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfs2_file_splice_write, ptr @generic_file_splice_read, ptr @generic_setlease, ptr @gfs2_fallocate, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gfs2_dir_fops_nolock = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfs2_readdir, ptr null, ptr @gfs2_ioctl, ptr null, ptr null, i32 0, ptr @gfs2_open, ptr null, ptr @gfs2_release, ptr @gfs2_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gfs2_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@gfs2_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfs2_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @gfs2_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@gfs2_flock_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"!error\00", [25 x i8] zeroinitializer }, align 32
@__func__.do_flock = private unnamed_addr constant [9 x i8] c"do_flock\00", align 1
@fallocate_chunk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gfs2: fsid=%s: Failed to zero data buffers\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fallocate_chunk\00", [16 x i8] zeroinitializer }, align 32
@fallocate_chunk._entry_ptr = internal global ptr @fallocate_chunk._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.gfs2_page_mkwrite = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 256, i32 2, i32 1, i32 256], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2164298801, i64 3222820985]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 12]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967282, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967282, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967282, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967282, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967282, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967282, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967282, i64 4294967284, i64 4294967285]
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 638, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 640, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"gfs2_file_fops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1553, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"gfs2_dir_fops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1572, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"gfs2_file_fops_nolock\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1586, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"gfs2_dir_fops_nolock\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1603, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 174, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"gfs2_vm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 570, i32 42 }
@___asan_gen_.56 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 49, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 34, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 788, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 260, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1509, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private constant [18 x i8] c"../fs/gfs2/file.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1205, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 271, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [31 x i8] c"switch.table.gfs2_page_mkwrite\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @fallocate_chunk._entry, ptr @fallocate_chunk._entry_ptr, ptr @gfs2_open_common.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gfs2_file_fops, ptr @gfs2_dir_fops, ptr @gfs2_file_fops_nolock, ptr @gfs2_dir_fops_nolock, ptr @.str.5, ptr @gfs2_vm_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.gfs2_page_mkwrite], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_open_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_file_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_dir_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_file_fops_nolock to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_dir_fops_nolock to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fallocate_chunk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gfs2_page_mkwrite to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #11
  %2 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %4, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242880, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 5242880
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_gl, align 4
  %7 = tail call ptr @llvm.returnaddress(i32 0) #11
  %8 = ptrtoint ptr %7 to i32
  call void @__gfs2_holder_init(ptr noundef %6, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %8) #11
  %call3 = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.out_uninit_crit_edge

if.end.out_uninit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_diskflags, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp.i15 = icmp eq i16 %13, 16384
  %gfsflags.addr.0.v.i = select i1 %cmp.i15, i32 -2147483648, i32 1
  %gfsflags.addr.0.i = and i32 %gfsflags.addr.0.v.i, %10
  %and6.i = lshr i32 %10, 5
  %14 = and i32 %and6.i, 8
  %and6.1.i = lshr i32 %10, 1
  %15 = and i32 %and6.1.i, 16
  %16 = and i32 %and6.1.i, 32
  %and6.3.i = and i32 %10, 128
  %and6.4.i = shl i32 %10, 11
  %17 = and i32 %and6.4.i, 4096
  %and6.5.i = shl i32 %10, 7
  %18 = and i32 %and6.5.i, 131072
  %19 = or i32 %14, %and6.3.i
  %20 = or i32 %19, %15
  %21 = or i32 %20, %16
  %22 = or i32 %21, %17
  %23 = or i32 %22, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gfsflags.addr.0.i)
  %tobool.not.6.i = icmp eq i32 %gfsflags.addr.0.i, 0
  %or.6.i = or i32 %23, 16384
  %fsflags.1.6.i = select i1 %tobool.not.6.i, i32 %23, i32 %or.6.i
  call void @fileattr_fill_flags(ptr noundef %fa, i32 noundef %fsflags.1.6.i) #11
  call void @gfs2_glock_dq(ptr noundef nonnull %gh) #11
  br label %out_uninit

out_uninit:                                       ; preds = %if.end5, %if.end.out_uninit_crit_edge
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #11
  br label %cleanup

cleanup:                                          ; preds = %out_uninit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out_uninit ], [ -25, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @gfs2_set_inode_flags(ptr nocapture noundef %inode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, -4176
  %i_eattr = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 4
  %2 = ptrtoint ptr %i_eattr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_eattr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %conv.i = zext i16 %5 to i32
  %and.i = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %land.lhs.true.is_sxid.exit.thread_crit_edge

land.lhs.true.is_sxid.exit.thread_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_sxid.exit.thread

lor.rhs.i:                                        ; preds = %land.lhs.true
  %and2.i = and i32 %conv.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %is_sxid.exit.thread40, label %is_sxid.exit

is_sxid.exit.thread40:                            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %or41 = or i32 %and, 4096
  br label %if.end

is_sxid.exit:                                     ; preds = %lor.rhs.i
  %and5.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.i.not = icmp eq i32 %and5.i, 0
  %or = or i32 %and, 4096
  br i1 %tobool6.i.not, label %is_sxid.exit.if.end_crit_edge, label %is_sxid.exit.is_sxid.exit.thread_crit_edge

is_sxid.exit.is_sxid.exit.thread_crit_edge:       ; preds = %is_sxid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_sxid.exit.thread

is_sxid.exit.if.end_crit_edge:                    ; preds = %is_sxid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

is_sxid.exit.thread:                              ; preds = %is_sxid.exit.is_sxid.exit.thread_crit_edge, %land.lhs.true.is_sxid.exit.thread_crit_edge
  br label %if.end

if.end:                                           ; preds = %is_sxid.exit.thread, %is_sxid.exit.if.end_crit_edge, %is_sxid.exit.thread40, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %and, %entry.if.end_crit_edge ], [ %and, %is_sxid.exit.thread ], [ %or, %is_sxid.exit.if.end_crit_edge ], [ %or41, %is_sxid.exit.thread40 ]
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %6 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_diskflags, align 4
  %and2 = lshr i32 %7, 2
  %8 = and i32 %and2, 8
  %9 = or i32 %8, %flags.0
  %and7 = lshr i32 %7, 4
  %10 = and i32 %and7, 4
  %11 = or i32 %9, %10
  %and13 = lshr i32 %7, 6
  %12 = and i32 %and13, 2
  %13 = or i32 %11, %12
  %and19 = lshr i32 %7, 8
  %14 = and i32 %and19, 1
  %15 = or i32 %13, %14
  %16 = ptrtoint ptr %i_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %i_flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_fileattr_set(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %fa) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %gh.i = alloca %struct.gfs2_holder, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fa, align 4
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %5, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242880, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 5242880
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fsx_valid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %6 = ptrtoint ptr %fsx_valid.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %fsx_valid.i, align 4
  %7 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %bf.cast.not.i = icmp eq i8 %7, 0
  br i1 %bf.cast.not.i, label %if.end.for.cond.preheader_crit_edge, label %land.rhs.i

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.rhs.i:                                       ; preds = %if.end
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %8 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsx_xflags.i, align 4
  %and.i = and i32 %9, -33529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %fsx_extsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %10 = ptrtoint ptr %fsx_extsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fsx_extsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %fsx_projid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %12 = ptrtoint ptr %fsx_projid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fsx_projid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.not.i = icmp eq i32 %13, 0
  br i1 %cmp2.not.i, label %lor.rhs.i, label %lor.lhs.false1.i.cleanup_crit_edge

lor.lhs.false1.i.cleanup_crit_edge:               ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs.i:                                        ; preds = %lor.lhs.false1.i
  %fsx_cowextsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %14 = ptrtoint ptr %fsx_cowextsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsx_cowextsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3.i.not = icmp eq i32 %15, 0
  br i1 %cmp3.i.not, label %lor.rhs.i.for.cond.preheader_crit_edge, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs.i.for.cond.preheader_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.rhs.i.for.cond.preheader_crit_edge, %if.end.for.cond.preheader_crit_edge
  %and = shl i32 %3, 5
  %16 = and i32 %and, 256
  %and.1 = and i32 %3, 16
  %17 = xor i32 %and.1, -9
  %fsflags.1.1 = and i32 %3, %17
  %18 = shl nuw nsw i32 %and.1, 1
  %19 = or i32 %18, %16
  %and.2 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %and8.2 = and i32 %fsflags.1.1, -41
  %fsflags.1.2 = select i1 %tobool.not.2, i32 %fsflags.1.1, i32 %and8.2
  %20 = shl nuw nsw i32 %and.2, 1
  %21 = or i32 %20, %19
  %and.3 = and i32 %fsflags.1.2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %and8.3 = and i32 %fsflags.1.2, -137
  %fsflags.1.3 = select i1 %tobool.not.3, i32 %fsflags.1.2, i32 %and8.3
  %22 = or i32 %and.3, %21
  %and.4 = and i32 %fsflags.1.3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %and8.4 = and i32 %fsflags.1.3, -4105
  %fsflags.1.4 = select i1 %tobool.not.4, i32 %fsflags.1.3, i32 %and8.4
  %23 = lshr exact i32 %and.4, 11
  %24 = or i32 %23, %22
  %and.5 = lshr i32 %fsflags.1.4, 7
  %25 = and i32 %and.5, 1024
  %26 = or i32 %25, %24
  %and.6 = and i32 %fsflags.1.4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  %or.6 = or i32 %26, -2147483647
  %27 = xor i32 %and.6, -131073
  %fsflags.1.6 = and i32 %fsflags.1.4, %27
  %gfsflags.1.6 = select i1 %tobool.not.6, i32 %26, i32 %or.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fsflags.1.6)
  %tobool11.not = icmp eq i32 %fsflags.1.6, 0
  %and12 = and i32 %gfsflags.1.6, 2147482142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %if.end15, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %for.cond.preheader
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %1, align 8
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %30)
  %cmp17 = icmp eq i16 %30, 16384
  br i1 %cmp17, label %if.end15.if.end26_crit_edge, label %if.else

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else:                                          ; preds = %if.end15
  %and21 = and i32 %gfsflags.1.6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else.if.end26_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %mask.0 = phi i32 [ -2147482144, %if.end15.if.end26_crit_edge ], [ 481, %if.else.if.end26_crit_edge ]
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #11
  %35 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh.i) #11
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %36 = call ptr @memset(ptr %gh.i, i32 255, i32 32)
  %37 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_gl.i, align 4
  %39 = tail call ptr @llvm.returnaddress(i32 0) #11
  %40 = ptrtoint ptr %39 to i32
  call void @__gfs2_holder_init(ptr noundef %38, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %gh.i, i32 noundef %40) #11
  %call.i.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %gfs2_glock_nq_init.exit.i

gfs2_glock_nq_init.exit.i:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh.i) #11
  br label %do_gfs2_set_flags.exit

if.end.i:                                         ; preds = %if.end26
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 18
  %41 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_diskflags.i, align 4
  %neg.i = xor i32 %mask.0, -1
  %and.i46 = and i32 %42, %neg.i
  %and3.i = and i32 %mask.0, %gfsflags.1.6
  %or.i = or i32 %and.i46, %and3.i
  %xor.i = xor i32 %or.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %cmp.i47 = icmp eq i32 %xor.i, 0
  br i1 %cmp.i47, label %if.end.i.out.i_crit_edge, label %if.end5.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end5.i:                                        ; preds = %if.end.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_flags.i, align 4
  %and6.i = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end5.i.if.end13.i_crit_edge

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end5.i
  %call9.i = call i32 @gfs2_permission(ptr noundef nonnull @init_user_ns, ptr noundef %1, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.if.end13.i_crit_edge, label %if.then8.i.out.i_crit_edge

if.then8.i.out.i_crit_edge:                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %and15.i = and i32 %xor.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end36.i_crit_edge, label %if.then17.i

if.end13.i.if.end36.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then17.i:                                      ; preds = %if.end13.i
  %and18.i = and i32 %or.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then17.i.if.end22.i_crit_edge, label %if.then20.i

if.then17.i.if.end22.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_gl.i, align 4
  call void @gfs2_log_flush(ptr noundef %34, ptr noundef %46, i32 noundef 1026) #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.then17.i.if.end22.i_crit_edge
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %47 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_mapping.i, align 8
  %call23.i = call i32 @filemap_fdatawrite(ptr noundef %48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.out.i_crit_edge

if.end22.i.out.i_crit_edge:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end26.i:                                       ; preds = %if.end22.i
  %49 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_mapping.i, align 8
  %call.i85.i = call i32 @filemap_fdatawait_range(ptr noundef %50, i64 noundef 0, i64 noundef 9223372036854775807) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool29.not.i = icmp eq i32 %call.i85.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end26.i.out.i_crit_edge

if.end26.i.out.i_crit_edge:                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end31.i:                                       ; preds = %if.end26.i
  br i1 %tobool19.not.i, label %if.end31.i.if.end36.i_crit_edge, label %if.then34.i

if.end31.i.if.end36.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_ordered_del_inode(ptr noundef %1) #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end36.i_crit_edge, %if.end13.i.if.end36.i_crit_edge
  %call37.i = call i32 @gfs2_trans_begin(ptr noundef %34, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.out.i_crit_edge

if.end36.i.out.i_crit_edge:                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end40.i:                                       ; preds = %if.end36.i
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i86.i = call i32 @gfs2_meta_buffer(ptr noundef %1, i32 noundef 4, i64 noundef %52, ptr noundef nonnull %bh.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %tobool42.not.i = icmp eq i32 %call.i86.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end40.i.out_trans_end.i_crit_edge

if.end40.i.out_trans_end.i_crit_edge:             ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_end.i

if.end44.i:                                       ; preds = %if.end40.i
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %1) #11
  %53 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #11
  %54 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_gl.i, align 4
  %56 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %55, ptr noundef %57) #11
  %58 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i, ptr %i_diskflags.i, align 4
  %59 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data.i, align 4
  call void @gfs2_dinode_out(ptr noundef %1, ptr noundef %62) #11
  %63 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bh.i, align 4
  %tobool.not.i87.i = icmp eq ptr %64, null
  br i1 %tobool.not.i87.i, label %if.end44.i.brelse.exit.i_crit_edge, label %if.then.i88.i

if.end44.i.brelse.exit.i_crit_edge:               ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.i

if.then.i88.i:                                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %64) #11
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i88.i, %if.end44.i.brelse.exit.i_crit_edge
  call void @gfs2_set_inode_flags(ptr noundef %1) #11
  call void @gfs2_set_aops(ptr noundef %1) #11
  br label %out_trans_end.i

out_trans_end.i:                                  ; preds = %brelse.exit.i, %if.end40.i.out_trans_end.i_crit_edge
  call void @gfs2_trans_end(ptr noundef %34) #11
  br label %out.i

out.i:                                            ; preds = %out_trans_end.i, %if.end36.i.out.i_crit_edge, %if.end26.i.out.i_crit_edge, %if.end22.i.out.i_crit_edge, %if.then8.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %error.0.i = phi i32 [ 0, %if.end.i.out.i_crit_edge ], [ %call23.i, %if.end22.i.out.i_crit_edge ], [ %call.i85.i, %if.end26.i.out.i_crit_edge ], [ %call37.i, %if.end36.i.out.i_crit_edge ], [ %call.i86.i, %out_trans_end.i ], [ %call9.i, %if.then8.i.out.i_crit_edge ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh.i) #11
  br label %do_gfs2_set_flags.exit

do_gfs2_set_flags.exit:                           ; preds = %out.i, %gfs2_glock_nq_init.exit.i
  %retval.0.i = phi i32 [ %error.0.i, %out.i ], [ %call.i.i, %gfs2_glock_nq_init.exit.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do_gfs2_set_flags.exit, %if.else.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %lor.lhs.false1.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do_gfs2_set_flags.exit ], [ -25, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -95, %lor.rhs.i.cleanup_crit_edge ], [ -95, %lor.lhs.false1.i.cleanup_crit_edge ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -95, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_open_common(ptr noundef %inode, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @generic_file_open(ptr noundef %inode, ptr noundef %file) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3392, i32 noundef 124) #14
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %do.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end3
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @gfs2_open_common.__key) #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.body.if.end16_crit_edge, label %if.then14, !prof !60

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @gfs2_assert_warn_i(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.gfs2_open_common, ptr noundef nonnull @.str.2, i32 noundef 640) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.body.if.end16_crit_edge
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %private_data, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %11 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_mode, align 8
  %and21 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end16.cleanup_crit_edge, label %if.then23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %if.end16
  %call25 = tail call i32 @gfs2_qa_get(ptr noundef %inode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then23.cleanup_crit_edge, label %fail

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fail:                                             ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %14) #11
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then23.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %fail ], [ %call, %if.then.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_warn_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_qa_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gfs2_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  %i_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #11
  %4 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  %5 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %whence, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 1, label %entry.sw.bb7_crit_edge
    i32 0, label %entry.sw.bb7_crit_edge20
  ]

entry.sw.bb7_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_gl, align 4
  %8 = tail call ptr @llvm.returnaddress(i32 0) #11
  %9 = ptrtoint ptr %8 to i32
  call void @__gfs2_holder_init(ptr noundef %7, i32 noundef 3, i16 noundef zeroext 8, ptr noundef nonnull %i_gh, i32 noundef %9) #11
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #11
  %conv = sext i32 %call.i to i64
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call i64 @generic_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef 2) #11
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i64 @gfs2_seek_data(ptr noundef %file, i64 noundef %offset) #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i64 @gfs2_seek_hole(ptr noundef %file, i64 noundef %offset) #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge20
  %call8 = tail call i64 @generic_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %if.then, %gfs2_glock_nq_init.exit, %entry.sw.epilog_crit_edge
  %error.0 = phi i64 [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %conv, %gfs2_glock_nq_init.exit ], [ %call2, %if.then ], [ -22, %entry.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #11
  ret i64 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_file_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #11
  %0 = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 6
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %2 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %3 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ki_flags, align 8
  %and = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %5 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.cleanup52_crit_edge, label %if.end.i

if.then.cleanup52_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.end.i:                                         ; preds = %if.then
  %7 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iocb, align 8
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_mapping.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_gl.i, align 4
  %15 = tail call ptr @llvm.returnaddress(i32 0) #11
  %16 = ptrtoint ptr %15 to i32
  call void @__gfs2_holder_init(ptr noundef %14, i32 noundef 2, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %16) #11
  %call268.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268.i)
  %tobool3.not69.i = icmp eq i32 %call268.i, 0
  br i1 %tobool3.not69.i, label %retry_under_glock.preheader.lr.ph.i, label %if.end.i.gfs2_file_direct_read.exit_crit_edge

if.end.i.gfs2_file_direct_read.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_file_direct_read.exit

retry_under_glock.preheader.lr.ph.i:              ; preds = %if.end.i
  %nofault.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 1
  %17 = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 5
  %iov_offset.i.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 3
  br label %retry_under_glock.i

retry.loopexit.i:                                 ; preds = %if.then14.i
  %call2.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %retry.loopexit.i.retry_under_glock.i.backedge_crit_edge, label %retry.loopexit.i.gfs2_file_direct_read.exit_crit_edge

retry.loopexit.i.gfs2_file_direct_read.exit_crit_edge: ; preds = %retry.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_file_direct_read.exit

retry.loopexit.i.retry_under_glock.i.backedge_crit_edge: ; preds = %retry.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_under_glock.i.backedge

retry_under_glock.i:                              ; preds = %retry_under_glock.i.backedge, %retry_under_glock.preheader.lr.ph.i
  %written.1.i = phi i32 [ 0, %retry_under_glock.preheader.lr.ph.i ], [ %spec.select.i, %retry_under_glock.i.backedge ]
  %18 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %24 = ptrtoint ptr %nofault.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %nofault.i, align 1
  %call6.i = call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %to, ptr noundef nonnull @gfs2_iomap_ops, ptr noundef null, i32 noundef 4, i32 noundef %written.1.i) #11
  %25 = ptrtoint ptr %nofault.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %nofault.i, align 1
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  %26 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i51.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i51.i to ptr
  %task.i.i52.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i52.i, align 8
  %pagefault_disabled.i.i53.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 213
  %30 = ptrtoint ptr %pagefault_disabled.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagefault_disabled.i.i53.i, align 8
  %dec.i.i.i = add i32 %31, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i53.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp sgt i32 %call6.i, 0
  %spec.select.i = select i1 %cmp.i, i32 %call6.i, i32 %written.1.i
  %32 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %retry_under_glock.i.if.end19.i_crit_edge, label %if.end.i.i, !prof !60

retry_under_glock.i.if.end19.i_crit_edge:         ; preds = %retry_under_glock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.end.i.i:                                       ; preds = %retry_under_glock.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call6.i)
  %cmp4.not.i.i = icmp eq i32 %call6.i, -14
  %or.cond.i.i = or i1 %cmp.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.end6.i.i, label %if.end.i.i.if.end19.i_crit_edge

if.end.i.i.if.end19.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %34 = ptrtoint ptr %to to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %to, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i.i.i = icmp eq i8 %35, 0
  br i1 %cmp.i.i.i, label %if.then11.i, label %if.end6.i.i.if.end19.i_crit_edge

if.end6.i.i.if.end19.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then11.i:                                      ; preds = %if.end6.i.i
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %17, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %iov_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iov_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %41
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i.i = and i32 %42, 4095
  %sub33.i.i = sub nuw nsw i32 4096, %and.i.i
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %0, align 4
  %gl_lockref.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %44, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i.i) #11
  call void @_set_bit(i32 noundef 1, ptr noundef %1) #11
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i.i) #11
  %call12.i = call i32 @fault_in_iov_iter_writeable(ptr noundef %to, i32 noundef %sub33.i.i) #11
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %gl_lockref.i55.i = getelementptr inbounds %struct.gfs2_glock, ptr %46, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i55.i) #11
  call void @_clear_bit(i32 noundef 1, ptr noundef %1) #11
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i55.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call12.i, i32 %sub33.i.i)
  %cmp13.not.i = icmp eq i32 %call12.i, %sub33.i.i
  br i1 %cmp13.not.i, label %if.then11.i.if.end19.i_crit_edge, label %if.then14.i

if.then11.i.if.end19.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.then11.i
  %47 = ptrtoint ptr %gh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %gh, align 4
  %cmp.i.i57.not.i = icmp eq ptr %48, %gh
  br i1 %cmp.i.i57.not.i, label %retry.loopexit.i, label %if.then14.i.retry_under_glock.i.backedge_crit_edge

if.then14.i.retry_under_glock.i.backedge_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_under_glock.i.backedge

retry_under_glock.i.backedge:                     ; preds = %if.then14.i.retry_under_glock.i.backedge_crit_edge, %retry.loopexit.i.retry_under_glock.i.backedge_crit_edge
  br label %retry_under_glock.i

if.end19.i:                                       ; preds = %if.then11.i.if.end19.i_crit_edge, %if.end6.i.i.if.end19.i_crit_edge, %if.end.i.i.if.end19.i_crit_edge, %retry_under_glock.i.if.end19.i_crit_edge
  %49 = ptrtoint ptr %gh to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %gh, align 4
  %cmp.i.i58.not.i = icmp eq ptr %50, %gh
  br i1 %cmp.i.i58.not.i, label %if.end19.i.gfs2_file_direct_read.exit_crit_edge, label %if.then21.i

if.end19.i.gfs2_file_direct_read.exit_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_file_direct_read.exit

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_glock_dq(ptr noundef nonnull %gh) #11
  br label %gfs2_file_direct_read.exit

gfs2_file_direct_read.exit:                       ; preds = %if.then21.i, %if.end19.i.gfs2_file_direct_read.exit_crit_edge, %retry.loopexit.i.gfs2_file_direct_read.exit_crit_edge, %if.end.i.gfs2_file_direct_read.exit_crit_edge
  %written.3.i = phi i32 [ %spec.select.i, %if.then21.i ], [ %spec.select.i, %if.end19.i.gfs2_file_direct_read.exit_crit_edge ], [ 0, %if.end.i.gfs2_file_direct_read.exit_crit_edge ], [ %spec.select.i, %retry.loopexit.i.gfs2_file_direct_read.exit_crit_edge ]
  %ret.0.i = phi i32 [ %call6.i, %if.then21.i ], [ %call6.i, %if.end19.i.gfs2_file_direct_read.exit_crit_edge ], [ %call268.i, %if.end.i.gfs2_file_direct_read.exit_crit_edge ], [ %call2.i, %retry.loopexit.i.gfs2_file_direct_read.exit_crit_edge ]
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp23.i = icmp slt i32 %ret.0.i, 0
  %ret.0.written.3.i = select i1 %cmp23.i, i32 %ret.0.i, i32 %written.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %ret.0.written.3.i)
  %cmp.not = icmp eq i32 %ret.0.written.3.i, -15
  br i1 %cmp.not, label %if.end, label %gfs2_file_direct_read.exit.cleanup52_crit_edge, !prof !63

gfs2_file_direct_read.exit.cleanup52_crit_edge:   ; preds = %gfs2_file_direct_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.end:                                           ; preds = %gfs2_file_direct_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ki_flags, align 8
  %and5 = and i32 %52, -131073
  store i32 %and5, ptr %ki_flags, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %53 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ki_flags, align 8
  %or = or i32 %54, 1048576
  store i32 %or, ptr %ki_flags, align 8
  %call8 = call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %to) #11
  %55 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ki_flags, align 8
  %and10 = and i32 %56, -1048577
  store i32 %and10, ptr %ki_flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp11 = icmp sgt i32 %call8, -1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end6
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %57 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool14.not = icmp eq i32 %58, 0
  br i1 %tobool14.not, label %if.then12.cleanup52_crit_edge, label %if.then12.if.end25_crit_edge

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then12.cleanup52_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call8)
  %cmp17.not = icmp eq i32 %call8, -11
  br i1 %cmp17.not, label %if.end19, label %if.else.cleanup52_crit_edge

if.else.cleanup52_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.end19:                                         ; preds = %if.else
  %and21 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end25_crit_edge, label %if.end19.cleanup52_crit_edge

if.end19.cleanup52_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %if.end19.if.end25_crit_edge, %if.then12.if.end25_crit_edge
  %written.0 = phi i32 [ 0, %if.end19.if.end25_crit_edge ], [ %call8, %if.then12.if.end25_crit_edge ]
  %59 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %60, i32 0, i32 18
  %61 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %f_mapping, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_gl, align 4
  %67 = call ptr @llvm.returnaddress(i32 0) #11
  %68 = ptrtoint ptr %67 to i32
  call void @__gfs2_holder_init(ptr noundef %66, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %68) #11
  %call27122 = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27122)
  %tobool28.not123 = icmp eq i32 %call27122, 0
  br i1 %tobool28.not123, label %retry_under_glock.preheader.lr.ph, label %if.end25.out_uninit_crit_edge

if.end25.out_uninit_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

retry_under_glock.preheader.lr.ph:                ; preds = %if.end25
  %count.i.i89 = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %69 = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 5
  %iov_offset.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 3
  br label %retry_under_glock

retry.loopexit:                                   ; preds = %if.then41
  %call27 = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %retry.loopexit.retry_under_glock.backedge_crit_edge, label %retry.loopexit.out_uninit_crit_edge

retry.loopexit.out_uninit_crit_edge:              ; preds = %retry.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

retry.loopexit.retry_under_glock.backedge_crit_edge: ; preds = %retry.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_under_glock.backedge

retry_under_glock:                                ; preds = %retry_under_glock.backedge, %retry_under_glock.preheader.lr.ph
  %written.2 = phi i32 [ %written.0, %retry_under_glock.preheader.lr.ph ], [ %written.2.be, %retry_under_glock.backedge ]
  %70 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 213
  %74 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %75, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %call31 = call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %to) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  %76 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i86 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i86 to ptr
  %task.i.i87 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task.i.i87 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task.i.i87, align 8
  %pagefault_disabled.i.i88 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 213
  %80 = ptrtoint ptr %pagefault_disabled.i.i88 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pagefault_disabled.i.i88, align 8
  %dec.i.i = add i32 %81, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i88, align 8
  %82 = call i32 @llvm.smax.i32(i32 %call31, i32 0)
  %spec.select = add i32 %82, %written.2
  %83 = ptrtoint ptr %count.i.i89 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count.i.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i90 = icmp eq i32 %84, 0
  br i1 %tobool.not.i90, label %retry_under_glock.if.end47_crit_edge, label %if.end.i92, !prof !60

retry_under_glock.if.end47_crit_edge:             ; preds = %retry_under_glock
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end.i92:                                       ; preds = %retry_under_glock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp sgt i32 %call31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call31)
  %cmp4.not.i = icmp eq i32 %call31, -14
  %or.cond.i = or i1 %cmp32, %cmp4.not.i
  br i1 %or.cond.i, label %if.end6.i, label %if.end.i92.if.end47_crit_edge

if.end.i92.if.end47_crit_edge:                    ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.end6.i:                                        ; preds = %if.end.i92
  %85 = ptrtoint ptr %to to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %to, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp.i.i = icmp eq i8 %86, 0
  br i1 %cmp.i.i, label %if.then36, label %if.end6.i.if.end47_crit_edge

if.end6.i.if.end47_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then36:                                        ; preds = %if.end6.i
  %87 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %69, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %iov_offset.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iov_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %90, i32 %92
  %93 = ptrtoint ptr %add.ptr.i to i32
  %and.i = and i32 %93, 4095
  %sub33.i = sub nuw nsw i32 4096, %and.i
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %0, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %95, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #11
  call void @_set_bit(i32 noundef 1, ptr noundef %1) #11
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #11
  %call37 = call i32 @fault_in_iov_iter_writeable(ptr noundef %to, i32 noundef %sub33.i) #11
  %96 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %0, align 4
  %gl_lockref.i95 = getelementptr inbounds %struct.gfs2_glock, ptr %97, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i95) #11
  call void @_clear_bit(i32 noundef 1, ptr noundef %1) #11
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i95) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %sub33.i)
  %cmp38.not = icmp eq i32 %call37, %sub33.i
  br i1 %cmp38.not, label %if.then36.if.end47_crit_edge, label %if.then39

if.then36.if.end47_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then39:                                        ; preds = %if.then36
  %98 = ptrtoint ptr %gh to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %gh, align 4
  %cmp.i.i97.not = icmp eq ptr %99, %gh
  br i1 %cmp.i.i97.not, label %if.then41, label %if.then39.retry_under_glock.backedge_crit_edge

if.then39.retry_under_glock.backedge_crit_edge:   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_under_glock.backedge

retry_under_glock.backedge:                       ; preds = %if.then39.retry_under_glock.backedge_crit_edge, %retry.loopexit.retry_under_glock.backedge_crit_edge
  %written.2.be = phi i32 [ %spec.select, %if.then39.retry_under_glock.backedge_crit_edge ], [ 0, %retry.loopexit.retry_under_glock.backedge_crit_edge ]
  br label %retry_under_glock

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool42.not = icmp eq i32 %spec.select, 0
  br i1 %tobool42.not, label %retry.loopexit, label %if.then41.out_uninit_crit_edge

if.then41.out_uninit_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.end47:                                         ; preds = %if.then36.if.end47_crit_edge, %if.end6.i.if.end47_crit_edge, %if.end.i92.if.end47_crit_edge, %retry_under_glock.if.end47_crit_edge
  %100 = ptrtoint ptr %gh to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %gh, align 4
  %cmp.i.i98.not = icmp eq ptr %101, %gh
  br i1 %cmp.i.i98.not, label %if.end47.out_uninit_crit_edge, label %if.then49

if.end47.out_uninit_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_glock_dq(ptr noundef nonnull %gh) #11
  br label %out_uninit

out_uninit:                                       ; preds = %if.then49, %if.end47.out_uninit_crit_edge, %if.then41.out_uninit_crit_edge, %retry.loopexit.out_uninit_crit_edge, %if.end25.out_uninit_crit_edge
  %written.4 = phi i32 [ %spec.select, %if.then49 ], [ %spec.select, %if.end47.out_uninit_crit_edge ], [ %written.0, %if.end25.out_uninit_crit_edge ], [ 0, %retry.loopexit.out_uninit_crit_edge ], [ %spec.select, %if.then41.out_uninit_crit_edge ]
  %ret.0 = phi i32 [ %call31, %if.then49 ], [ %call31, %if.end47.out_uninit_crit_edge ], [ %call27122, %if.end25.out_uninit_crit_edge ], [ %call27, %retry.loopexit.out_uninit_crit_edge ], [ %call31, %if.then41.out_uninit_crit_edge ]
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.4)
  %tobool51.not = icmp eq i32 %written.4, 0
  %ret.0.written.4 = select i1 %tobool51.not, i32 %ret.0, i32 %written.4
  br label %cleanup52

cleanup52:                                        ; preds = %out_uninit, %if.end19.cleanup52_crit_edge, %if.else.cleanup52_crit_edge, %if.then12.cleanup52_crit_edge, %gfs2_file_direct_read.exit.cleanup52_crit_edge, %if.then.cleanup52_crit_edge
  %retval.0 = phi i32 [ %ret.0.written.4, %out_uninit ], [ %ret.0.written.3.i, %gfs2_file_direct_read.exit.cleanup52_crit_edge ], [ %call8, %if.then12.cleanup52_crit_edge ], [ %call8, %if.else.cleanup52_crit_edge ], [ -11, %if.end19.cleanup52_crit_edge ], [ 0, %if.then.cleanup52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #11
  %4 = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 1
  %5 = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 6
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %6 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 8
  %9 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %14, i32 0, i32 5, i32 4
  %15 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_bsize.i, align 8
  %add.i = add i32 %8, -1
  %sub.i = add i32 %add.i, %16
  %sb_bsize_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %14, i32 0, i32 5, i32 5
  %17 = ptrtoint ptr %sb_bsize_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_bsize_shift.i, align 4
  %shr.i = lshr i32 %sub.i, %18
  %19 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 2147483647) #11
  %i_sizehint.i = getelementptr inbounds %struct.gfs2_inode, ptr %10, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_sizehint.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %i_sizehint.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_sizehint.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp5.i = icmp sgt i32 %19, %21
  br i1 %cmp5.i, label %if.then.i, label %entry.gfs2_size_hint.exit_crit_edge

entry.gfs2_size_hint.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_size_hint.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_sizehint.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %i_sizehint.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %19, ptr %i_sizehint.i, align 4
  br label %gfs2_size_hint.exit

gfs2_size_hint.exit:                              ; preds = %if.then.i, %entry.gfs2_size_hint.exit_crit_edge
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %23 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ki_flags, align 8
  %and = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %gfs2_size_hint.exit.if.end6_crit_edge, label %if.then

gfs2_size_hint.exit.if.end6_crit_edge:            ; preds = %gfs2_size_hint.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %gfs2_size_hint.exit
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %25 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_gl, align 4
  %27 = tail call ptr @llvm.returnaddress(i32 0) #11
  %28 = ptrtoint ptr %27 to i32
  call void @__gfs2_holder_init(ptr noundef %26, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %28) #11
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #11
  br label %cleanup67

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #11
  br label %if.end6

if.end6:                                          ; preds = %if.end, %gfs2_size_hint.exit.if.end6_crit_edge
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #11
  %call7 = call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp = icmp slt i32 %call7, 1
  br i1 %cmp, label %if.end6.out_unlock_crit_edge, label %if.end9

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end9:                                          ; preds = %if.end6
  %call10 = call i32 @file_remove_privs(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_unlock_crit_edge

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 @file_update_time(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_unlock_crit_edge

if.end13.out_unlock_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end17:                                         ; preds = %if.end13
  %29 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ki_flags, align 8
  %and19 = and i32 %30, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end17
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %31 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_mapping, align 4
  %33 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iocb, align 8
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 18
  %35 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_mapping.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_gl.i, align 4
  %41 = call ptr @llvm.returnaddress(i32 0) #11
  %42 = ptrtoint ptr %41 to i32
  call void @__gfs2_holder_init(ptr noundef %40, i32 noundef 2, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %42) #11
  %call192.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i)
  %tobool.not93.i = icmp eq i32 %call192.i, 0
  br i1 %tobool.not93.i, label %retry_under_glock.preheader.lr.ph.i, label %if.then21.gfs2_file_direct_write.exit_crit_edge

if.then21.gfs2_file_direct_write.exit_crit_edge:  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_file_direct_write.exit

retry_under_glock.preheader.lr.ph.i:              ; preds = %if.then21
  %nofault.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 1
  %43 = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 5
  %iov_offset.i.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 3
  br label %retry_under_glock.preheader.i

retry.loopexit.i:                                 ; preds = %if.then22.i
  %call1.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  %tobool.not.i111 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i111, label %retry.loopexit.i.retry_under_glock.preheader.i_crit_edge, label %retry.loopexit.i.gfs2_file_direct_write.exit_crit_edge

retry.loopexit.i.gfs2_file_direct_write.exit_crit_edge: ; preds = %retry.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_file_direct_write.exit

retry.loopexit.i.retry_under_glock.preheader.i_crit_edge: ; preds = %retry.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_under_glock.preheader.i

retry_under_glock.preheader.i:                    ; preds = %retry.loopexit.i.retry_under_glock.preheader.i_crit_edge, %retry_under_glock.preheader.lr.ph.i
  %read.094.i = phi i32 [ 0, %retry_under_glock.preheader.lr.ph.i ], [ %spec.select.i, %retry.loopexit.i.retry_under_glock.preheader.i_crit_edge ]
  %44 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ki_pos, align 8
  %46 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count.i, align 8
  %conv76.i = zext i32 %47 to i64
  %add77.i = add i64 %45, %conv76.i
  %call378.i = call fastcc i64 @i_size_read(ptr noundef %38) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %add77.i, i64 %call378.i)
  %cmp79.i = icmp sgt i64 %add77.i, %call378.i
  br i1 %cmp79.i, label %retry_under_glock.preheader.i.out.i_crit_edge, label %retry_under_glock.preheader.i.if.end6.i_crit_edge

retry_under_glock.preheader.i.if.end6.i_crit_edge: ; preds = %retry_under_glock.preheader.i
  br label %if.end6.i

retry_under_glock.preheader.i.out.i_crit_edge:    ; preds = %retry_under_glock.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

retry_under_glock.i:                              ; preds = %if.then22.i
  %48 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ki_pos, align 8
  %50 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count.i, align 8
  %conv.i = zext i32 %51 to i64
  %add.i112 = add i64 %49, %conv.i
  %call3.i = call fastcc i64 @i_size_read(ptr noundef %38) #11
  %cmp.i = icmp sgt i64 %add.i112, %call3.i
  br i1 %cmp.i, label %retry_under_glock.i.out.i_crit_edge, label %retry_under_glock.i.if.end6.i_crit_edge

retry_under_glock.i.if.end6.i_crit_edge:          ; preds = %retry_under_glock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

retry_under_glock.i.out.i_crit_edge:              ; preds = %retry_under_glock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end6.i:                                        ; preds = %retry_under_glock.i.if.end6.i_crit_edge, %retry_under_glock.preheader.i.if.end6.i_crit_edge
  %read.180.i = phi i32 [ %spec.select.i, %retry_under_glock.i.if.end6.i_crit_edge ], [ %read.094.i, %retry_under_glock.preheader.i.if.end6.i_crit_edge ]
  %52 = ptrtoint ptr %nofault.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %nofault.i, align 1
  %call7.i = call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull @gfs2_iomap_ops, ptr noundef null, i32 noundef 4, i32 noundef %read.180.i) #11
  %53 = ptrtoint ptr %nofault.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %nofault.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %call7.i)
  %cmp9.i = icmp eq i32 %call7.i, -15
  %spec.store.select.i = select i1 %cmp9.i, i32 0, i32 %call7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp13.i = icmp sgt i32 %spec.store.select.i, 0
  %spec.select.i = select i1 %cmp13.i, i32 %spec.store.select.i, i32 %read.180.i
  %54 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i, label %if.end6.i.out.i_crit_edge, label %if.end.i.i, !prof !60

if.end6.i.out.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %spec.store.select.i)
  %cmp4.not.i.i = icmp eq i32 %spec.store.select.i, -14
  %or.cond.i.i = or i1 %cmp13.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.end6.i.i, label %if.end.i.i.out.i_crit_edge

if.end.i.i.out.i_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %56 = ptrtoint ptr %from to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %from, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp.i.i.i = icmp eq i8 %57, 0
  br i1 %cmp.i.i.i, label %if.then18.i, label %if.end6.i.i.out.i_crit_edge

if.end6.i.i.out.i_crit_edge:                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then18.i:                                      ; preds = %if.end6.i.i
  %58 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %43, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %62 = ptrtoint ptr %iov_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iov_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 %63
  %64 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i.i = and i32 %64, 4095
  %sub33.i.i = sub nuw nsw i32 4096, %and.i.i
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %4, align 4
  %gl_lockref.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %66, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i.i) #11
  call void @_set_bit(i32 noundef 1, ptr noundef %5) #11
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i.i) #11
  %call19.i = call i32 @fault_in_iov_iter_readable(ptr noundef %from, i32 noundef %sub33.i.i) #11
  %67 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %4, align 4
  %gl_lockref.i65.i = getelementptr inbounds %struct.gfs2_glock, ptr %68, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i65.i) #11
  call void @_clear_bit(i32 noundef 1, ptr noundef %5) #11
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i65.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i, i32 %sub33.i.i)
  %cmp20.not.i = icmp eq i32 %call19.i, %sub33.i.i
  br i1 %cmp20.not.i, label %if.then18.i.out.i_crit_edge, label %if.then22.i

if.then18.i.out.i_crit_edge:                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then22.i:                                      ; preds = %if.then18.i
  %69 = ptrtoint ptr %gh to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %gh, align 4
  %cmp.i.i67.not.i = icmp eq ptr %70, %gh
  br i1 %cmp.i.i67.not.i, label %retry.loopexit.i, label %retry_under_glock.i

out.i:                                            ; preds = %if.then18.i.out.i_crit_edge, %if.end6.i.i.out.i_crit_edge, %if.end.i.i.out.i_crit_edge, %if.end6.i.out.i_crit_edge, %retry_under_glock.i.out.i_crit_edge, %retry_under_glock.preheader.i.out.i_crit_edge
  %read.3.i = phi i32 [ %spec.select.i, %retry_under_glock.i.out.i_crit_edge ], [ %spec.select.i, %if.end6.i.out.i_crit_edge ], [ %spec.select.i, %if.end.i.i.out.i_crit_edge ], [ %spec.select.i, %if.end6.i.i.out.i_crit_edge ], [ %spec.select.i, %if.then18.i.out.i_crit_edge ], [ %read.094.i, %retry_under_glock.preheader.i.out.i_crit_edge ]
  %ret.1.i = phi i32 [ %spec.store.select.i, %retry_under_glock.i.out.i_crit_edge ], [ %spec.store.select.i, %if.end6.i.out.i_crit_edge ], [ %spec.store.select.i, %if.end.i.i.out.i_crit_edge ], [ %spec.store.select.i, %if.end6.i.i.out.i_crit_edge ], [ %spec.store.select.i, %if.then18.i.out.i_crit_edge ], [ 0, %retry_under_glock.preheader.i.out.i_crit_edge ]
  %71 = ptrtoint ptr %gh to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %gh, align 4
  %cmp.i.i68.not.i = icmp eq ptr %72, %gh
  br i1 %cmp.i.i68.not.i, label %out.i.gfs2_file_direct_write.exit_crit_edge, label %if.then29.i

out.i.gfs2_file_direct_write.exit_crit_edge:      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_file_direct_write.exit

if.then29.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_glock_dq(ptr noundef nonnull %gh) #11
  br label %gfs2_file_direct_write.exit

gfs2_file_direct_write.exit:                      ; preds = %if.then29.i, %out.i.gfs2_file_direct_write.exit_crit_edge, %retry.loopexit.i.gfs2_file_direct_write.exit_crit_edge, %if.then21.gfs2_file_direct_write.exit_crit_edge
  %read.4.i = phi i32 [ %read.3.i, %if.then29.i ], [ %read.3.i, %out.i.gfs2_file_direct_write.exit_crit_edge ], [ 0, %if.then21.gfs2_file_direct_write.exit_crit_edge ], [ %spec.select.i, %retry.loopexit.i.gfs2_file_direct_write.exit_crit_edge ]
  %ret.2.i = phi i32 [ %ret.1.i, %if.then29.i ], [ %ret.1.i, %out.i.gfs2_file_direct_write.exit_crit_edge ], [ %call192.i, %if.then21.gfs2_file_direct_write.exit_crit_edge ], [ %call1.i, %retry.loopexit.i.gfs2_file_direct_write.exit_crit_edge ]
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp31.i = icmp slt i32 %ret.2.i, 0
  %ret.2.read.4.i = select i1 %cmp31.i, i32 %ret.2.i, i32 %read.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.read.4.i)
  %cmp23 = icmp slt i32 %ret.2.read.4.i, 0
  br i1 %cmp23, label %gfs2_file_direct_write.exit.out_unlock_crit_edge, label %lor.lhs.false

gfs2_file_direct_write.exit.out_unlock_crit_edge: ; preds = %gfs2_file_direct_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

lor.lhs.false:                                    ; preds = %gfs2_file_direct_write.exit
  %73 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool25.not = icmp eq i32 %74, 0
  br i1 %tobool25.not, label %lor.lhs.false.out_unlock_crit_edge, label %if.end27

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end27:                                         ; preds = %lor.lhs.false
  %75 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ki_flags, align 8
  %or = or i32 %76, 2
  store i32 %or, ptr %ki_flags, align 8
  %call29 = call fastcc i32 @gfs2_file_buffered_write(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull %gh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %if.then33, label %if.end37, !prof !63

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.read.4.i)
  %tobool34.not = icmp eq i32 %ret.2.read.4.i, 0
  %spec.select = select i1 %tobool34.not, i32 %call29, i32 %ret.2.read.4.i
  br label %out_unlock

if.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = call fastcc i32 @generic_write_sync(ptr noundef %iocb, i32 noundef %call29)
  %77 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ki_pos, align 8
  %conv122 = zext i32 %call29 to i64
  %sub = sub i64 %78, %conv122
  %79 = lshr i64 %sub, 12
  %conv40 = trunc i64 %79 to i32
  %sub42 = add i64 %78, 17592186044415
  %80 = lshr i64 %sub42, 12
  %conv44 = trunc i64 %80 to i32
  %call45 = call i32 @invalidate_mapping_pages(ptr noundef %32, i32 noundef %conv40, i32 noundef %conv44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.read.4.i)
  %tobool46.not = icmp eq i32 %ret.2.read.4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp48 = icmp sgt i32 %call38, 0
  %or.cond = select i1 %tobool46.not, i1 true, i1 %cmp48
  %add = select i1 %or.cond, i32 %call38, i32 0
  %ret.1 = add i32 %add, %ret.2.read.4.i
  br label %out_unlock

if.else:                                          ; preds = %if.end17
  %call54 = call fastcc i32 @gfs2_file_buffered_write(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull %gh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp sgt i32 %call54, 0
  br i1 %cmp55, label %if.then63, label %if.else.out_unlock_crit_edge, !prof !60

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then63:                                        ; preds = %if.else
  %81 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ki_flags, align 8
  %and.i = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i114 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i114, label %if.then63.if.end8.i_crit_edge, label %if.then.i119

if.then63.if.end8.i_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then.i119:                                     ; preds = %if.then63
  %83 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iocb, align 8
  %85 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %ki_pos, align 8
  %conv.i116121 = zext i32 %call54 to i64
  %sub.i117 = sub i64 %86, %conv.i116121
  %sub2.i = add i64 %86, -1
  %and4.i = lshr i32 %82, 2
  %and4.lobit.i = and i32 %and4.i, 1
  %87 = xor i32 %and4.lobit.i, 1
  %call.i118 = call i32 @vfs_fsync_range(ptr noundef %84, i64 noundef %sub.i117, i64 noundef %sub2.i, i32 noundef %87) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool6.not.i = icmp eq i32 %call.i118, 0
  br i1 %tobool6.not.i, label %if.then.i119.if.end8.i_crit_edge, label %if.then.i119.out_unlock_crit_edge

if.then.i119.out_unlock_crit_edge:                ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then.i119.if.end8.i_crit_edge:                 ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i119.if.end8.i_crit_edge, %if.then63.if.end8.i_crit_edge
  br label %out_unlock

out_unlock:                                       ; preds = %if.end8.i, %if.then.i119.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %if.end37, %if.then33, %lor.lhs.false.out_unlock_crit_edge, %gfs2_file_direct_write.exit.out_unlock_crit_edge, %if.end13.out_unlock_crit_edge, %if.end9.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge
  %ret.3 = phi i32 [ %call7, %if.end6.out_unlock_crit_edge ], [ %call10, %if.end9.out_unlock_crit_edge ], [ %call14, %if.end13.out_unlock_crit_edge ], [ %call54, %if.else.out_unlock_crit_edge ], [ %spec.select, %if.then33 ], [ %ret.1, %if.end37 ], [ %ret.2.read.4.i, %lor.lhs.false.out_unlock_crit_edge ], [ %ret.2.read.4.i, %gfs2_file_direct_write.exit.out_unlock_crit_edge ], [ %call.i118, %if.then.i119.out_unlock_crit_edge ], [ %call54, %if.end8.i ]
  call void @up_write(ptr noundef %i_rwsem.i) #11
  br label %cleanup67

cleanup67:                                        ; preds = %out_unlock, %gfs2_glock_nq_init.exit
  %retval.0 = phi i32 [ %ret.3, %out_unlock ], [ %call.i, %gfs2_glock_nq_init.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iocb_bio_iopoll(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 -1072146311, label %sw.bb
    i32 -2130668495, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = inttoptr i32 %arg to ptr
  %call = tail call i32 @gfs2_fitrim(ptr noundef %filp, ptr noundef %1) #11
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = inttoptr i32 %arg to ptr
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_locktable.i = getelementptr inbounds %struct.gfs2_sbd, ptr %8, i32 0, i32 5, i32 9
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %sw.bb1.return_crit_edge, label %if.end.i.i.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i.i.i:                                     ; preds = %sw.bb1
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 64, i32 -1226833920) #15, !srcloc !64
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.return_crit_edge

if.end.i.i.i.return_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sb_locktable.i, i32 noundef 64) #11
  %call.i1.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %sb_locktable.i, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %return

return:                                           ; preds = %copy_to_user.exit.i, %if.end.i.i.i.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -25, %entry.return_crit_edge ], [ -14, %sw.bb1.return_crit_edge ], [ -14, %if.end.i.i.i.return_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_mmap(ptr noundef %file, ptr nocapture noundef writeonly %vma) #0 align 64 {
entry:
  %i_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags, align 4
  %and1 = and i32 %9, 1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #11
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %10 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  %11 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_gl, align 4
  %13 = tail call ptr @llvm.returnaddress(i32 0) #11
  %14 = ptrtoint ptr %13 to i32
  call void @__gfs2_holder_init(ptr noundef %12, i32 noundef 3, i16 noundef zeroext 8, ptr noundef nonnull %i_gh, i32 noundef %14) #11
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %cleanup8.critedge

if.end:                                           ; preds = %if.then
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #11
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %and.i = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i13 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i13, label %if.then.i14, label %if.end.file_accessed.exit_crit_edge

if.end.file_accessed.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_accessed.exit

if.then.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  call void @touch_atime(ptr noundef %f_path.i) #11
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i14, %if.end.file_accessed.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #11
  br label %if.end7

if.end7:                                          ; preds = %file_accessed.exit, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %17 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gfs2_vm_ops, ptr %vm_ops, align 4
  br label %cleanup8

cleanup8.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #11
  br label %cleanup8

cleanup8:                                         ; preds = %cleanup8.critedge, %if.end7
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %call.i, %cleanup8.critedge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  %i_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #11
  %0 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  %1 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %inode, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %3)
  %cmp = icmp eq i16 %3, -32768
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  %6 = tail call ptr @llvm.returnaddress(i32 0) #11
  %7 = ptrtoint ptr %6 to i32
  call void @__gfs2_holder_init(ptr noundef %5, i32 noundef 3, i16 noundef zeroext 8, ptr noundef nonnull %i_gh, i32 noundef %7) #11
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then7, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @gfs2_open_common(ptr noundef %inode, ptr noundef %file)
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call516 = call i32 @gfs2_open_common(ptr noundef %inode, ptr noundef %file)
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4, %gfs2_glock_nq_init.exit
  %retval.0 = phi i32 [ %call.i, %gfs2_glock_nq_init.exit ], [ %call516, %if.then7 ], [ %call5, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_release(ptr noundef %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #11
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode, align 8
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %i_res = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 10
  %5 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_res, align 8
  %7 = ptrtoint ptr %i_res to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp.i.not = icmp eq i32 %6, %7
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %i_writecount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 42
  tail call void @gfs2_rs_delete(ptr noundef %inode, ptr noundef %i_writecount) #11
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  tail call void @gfs2_qa_put(ptr noundef %inode) #11
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
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
  %i_state = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @filemap_fdatawrite_range(ptr noundef %1, i64 noundef %start, i64 noundef %end) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call1)
  %cmp = icmp eq i32 %call1, -5
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret1.0 = phi i32 [ %call1, %if.then.if.end3_crit_edge ], [ 0, %entry.if.end3_crit_edge ]
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not = icmp eq i32 %and.i, 0
  %spec.select.v = select i1 %tobool5.not, i32 3, i32 7
  %spec.select = and i32 %spec.select.v, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool9.not = icmp eq i32 %datasync, 0
  %and11 = and i32 %spec.select, 6
  %sync_state.1 = select i1 %tobool9.not, i32 %spec.select, i32 %and11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync_state.1)
  %tobool13.not = icmp eq i32 %sync_state.1, 0
  br i1 %tobool13.not, label %if.end3.if.end27_crit_edge, label %if.then14

if.end3.if.end27_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then14:                                        ; preds = %if.end3
  %call15 = tail call i32 @sync_inode_metadata(ptr noundef %3, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  %10 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_diskflags.i, align 4
  %and.i60 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool20.not = icmp eq i32 %and.i60, 0
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %if.end23

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end23:                                         ; preds = %if.end18
  %call.i = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef 0, i64 noundef 9223372036854775807) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end26:                                         ; preds = %if.end23.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_gl, align 4
  tail call void @gfs2_ail_flush(ptr noundef %13, i1 noundef zeroext true) #11
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end3.if.end27_crit_edge
  %14 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool29.not = icmp eq i32 %15, 0
  br i1 %tobool29.not, label %if.end27.if.end32.thread_crit_edge, label %if.end32

if.end27.if.end32.thread_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.thread

if.end32:                                         ; preds = %if.end27
  %call31 = tail call i32 @file_fdatawait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool33.not = icmp eq i32 %call31, 0
  br i1 %tobool33.not, label %if.end32.if.end32.thread_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32.if.end32.thread_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.thread

if.end32.thread:                                  ; preds = %if.end32.if.end32.thread_crit_edge, %if.end27.if.end32.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end32.thread, %if.end32.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then.cleanup_crit_edge ], [ %call15, %if.then14.cleanup_crit_edge ], [ %call.i, %if.end23.cleanup_crit_edge ], [ %ret1.0, %if.end32.thread ], [ %call31, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_lock(ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
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
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %8 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fl_flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1029
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %10 = ptrtoint ptr %fl_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %fl_type, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %cmd.addr.0 = phi i32 [ 6, %if.then4 ], [ %cmd, %if.end.if.end5_crit_edge ]
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sd_flags.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %if.end5.if.then9_crit_edge, !prof !65

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

gfs2_withdrawn.exit:                              ; preds = %if.end5
  %14 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %sd_flags.i, align 4
  %16 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.i.not = icmp eq i32 %16, 0
  br i1 %tobool3.i.not, label %if.end16, label %gfs2_withdrawn.exit.if.then9_crit_edge, !prof !60

gfs2_withdrawn.exit.if.then9_crit_edge:           ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %gfs2_withdrawn.exit.if.then9_crit_edge, %if.end5.if.then9_crit_edge
  %fl_type10 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %17 = ptrtoint ptr %fl_type10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fl_type10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp11 = icmp eq i8 %18, 2
  br i1 %cmp11, label %if.then13, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %19 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_inode.i.i, align 8
  %call1.i = tail call i32 @locks_lock_inode_wait(ptr noundef %20, ptr noundef %fl) #11
  br label %cleanup

if.end16:                                         ; preds = %gfs2_withdrawn.exit
  %21 = zext i32 %cmd.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %cmd.addr.0, label %if.else [
    i32 5, label %if.end16.if.then21_crit_edge
    i32 12, label %if.end16.if.then21_crit_edge57
  ]

if.end16.if.then21_crit_edge57:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.end16.if.then21_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.then21:                                        ; preds = %if.end16.if.then21_crit_edge, %if.end16.if.then21_crit_edge57
  %ls_dlm = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 23, i32 3
  %22 = ptrtoint ptr %ls_dlm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ls_dlm, align 4
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_no_addr, align 8
  %call22 = tail call i32 @dlm_posix_get(ptr noundef %23, i64 noundef %25, ptr noundef %file, ptr noundef %fl) #11
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %fl_type23 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %26 = ptrtoint ptr %fl_type23 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fl_type23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp25 = icmp eq i8 %27, 2
  %ls_dlm28 = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 23, i32 3
  %28 = ptrtoint ptr %ls_dlm28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ls_dlm28, align 4
  %i_no_addr29 = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %i_no_addr29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_no_addr29, align 8
  br i1 %cmp25, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 @dlm_posix_unlock(ptr noundef %29, i64 noundef %31, ptr noundef %file, ptr noundef %fl) #11
  br label %cleanup

if.else31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 @dlm_posix_lock(ptr noundef %29, i64 noundef %31, ptr noundef %file, i32 noundef %cmd.addr.0, ptr noundef %fl) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else31, %if.then27, %if.then21, %if.then13, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.then21 ], [ %call30, %if.then27 ], [ %call34, %if.else31 ], [ -37, %entry.cleanup_crit_edge ], [ -5, %if.then13 ], [ -5, %if.then9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_flock(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  %gl.i = alloca ptr, align 4
  %request.i = alloca %struct.file_lock, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %0 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fl_flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %2 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #11
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i.i.i, align 8
  %call1.i.i = tail call i32 @locks_lock_inode_wait(ptr noundef %7, ptr noundef %fl) #11
  %gh_gl.i.i = getelementptr inbounds %struct.gfs2_file, ptr %5, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %gh_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gh_gl.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.i.not.i, label %if.then2.do_unflock.exit_crit_edge, label %if.then.i

if.then2.do_unflock.exit_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_unflock.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %f_fl_gh.i = getelementptr inbounds %struct.gfs2_file, ptr %5, i32 0, i32 1
  tail call void @gfs2_glock_dq(ptr noundef %f_fl_gh.i) #11
  tail call void @gfs2_holder_uninit(ptr noundef %f_fl_gh.i) #11
  br label %do_unflock.exit

do_unflock.exit:                                  ; preds = %if.then.i, %if.then2.do_unflock.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %5) #11
  br label %return

if.else:                                          ; preds = %if.end
  %f_fl_gh.i8 = getelementptr inbounds %struct.gfs2_file, ptr %5, i32 0, i32 1
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gl.i) #11
  %12 = ptrtoint ptr %gl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %gl.i, align 4, !annotation !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  %cond.i = select i1 %cmp.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %cmp3.i = icmp eq i32 %cmd, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %cmd)
  %cmp5.i = icmp eq i32 %cmd, 14
  %13 = or i1 %cmp3.i, %cmp5.i
  %14 = select i1 %13, i16 128, i16 130
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #11
  %gh_gl.i.i9 = getelementptr inbounds %struct.gfs2_file, ptr %5, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %gh_gl.i.i9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gh_gl.i.i9, align 4
  %tobool.i.not.i10 = icmp eq ptr %16, null
  br i1 %tobool.i.not.i10, label %if.else.i, label %if.then.i11

if.then.i11:                                      ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %request.i) #11
  %17 = call ptr @memset(ptr %request.i, i32 255, i32 168)
  %gh_state.i = getelementptr inbounds %struct.gfs2_file, ptr %5, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %gh_state.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gh_state.i, align 2
  %conv10.i = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv10.i)
  %cmp11.i = icmp eq i32 %cond.i, %conv10.i
  br i1 %cmp11.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #13
  call void @locks_init_lock(ptr noundef nonnull %request.i) #11
  %fl_type14.i = getelementptr inbounds %struct.file_lock, ptr %request.i, i32 0, i32 7
  %20 = ptrtoint ptr %fl_type14.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %fl_type14.i, align 4
  %fl_flags.i = getelementptr inbounds %struct.file_lock, ptr %request.i, i32 0, i32 6
  %21 = ptrtoint ptr %fl_flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %fl_flags.i, align 8
  %22 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_inode.i.i, align 8
  %call1.i.i12 = call i32 @locks_lock_inode_wait(ptr noundef %23, ptr noundef nonnull %request.i) #11
  call void @gfs2_glock_dq(ptr noundef %f_fl_gh.i8) #11
  call void @gfs2_holder_reinit(i32 noundef %cond.i, i16 noundef zeroext %14, ptr noundef %f_fl_gh.i8) #11
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %request.i) #11
  br label %if.end20.i

cleanup.i:                                        ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %request.i) #11
  br label %do_flock.exit

if.else.i:                                        ; preds = %if.else
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %11, i32 0, i32 1
  %28 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_no_addr.i, align 8
  %call17.i = call i32 @gfs2_glock_get(ptr noundef %27, i64 noundef %29, ptr noundef nonnull @gfs2_flock_glops, i32 noundef 1, ptr noundef nonnull %gl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %if.end19.i, label %if.else.i.do_flock.exit_crit_edge

if.else.i.do_flock.exit_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_flock.exit

if.end19.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %gl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gl.i, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #11
  %33 = ptrtoint ptr %32 to i32
  call void @__gfs2_holder_init(ptr noundef %31, i32 noundef %cond.i, i16 noundef zeroext %14, ptr noundef %f_fl_gh.i8, i32 noundef %33) #11
  %34 = ptrtoint ptr %gl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gl.i, align 4
  call void @gfs2_glock_put(ptr noundef %35) #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end19.i, %cleanup.thread.i
  %gh_flags.i = getelementptr inbounds %struct.gfs2_file, ptr %5, i32 0, i32 1, i32 3
  %gh_error.i = getelementptr inbounds %struct.gfs2_file, ptr %5, i32 0, i32 1, i32 5
  %call23.i = call i32 @gfs2_glock_nq(ptr noundef %f_fl_gh.i8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call23.i)
  %cmp24.not.i = icmp eq i32 %call23.i, 13
  br i1 %cmp24.not.i, label %if.end27.i, label %if.end20.i.for.end.i_crit_edge

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end27.i:                                       ; preds = %if.end20.i
  %36 = ptrtoint ptr %gh_flags.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 129, ptr %gh_flags.i, align 4
  %37 = ptrtoint ptr %gh_error.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %gh_error.i, align 4
  call void @msleep(i32 noundef 1) #11
  %call23.1.i = call i32 @gfs2_glock_nq(ptr noundef %f_fl_gh.i8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call23.1.i)
  %cmp24.not.1.i = icmp eq i32 %call23.1.i, 13
  br i1 %cmp24.not.1.i, label %if.end27.1.i, label %if.end27.i.for.end.i_crit_edge

if.end27.i.for.end.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end27.1.i:                                     ; preds = %if.end27.i
  %38 = ptrtoint ptr %gh_flags.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 129, ptr %gh_flags.i, align 4
  %39 = ptrtoint ptr %gh_error.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %gh_error.i, align 4
  call void @msleep(i32 noundef 2) #11
  %call23.2.i = call i32 @gfs2_glock_nq(ptr noundef %f_fl_gh.i8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call23.2.i)
  %cmp24.not.2.i = icmp eq i32 %call23.2.i, 13
  br i1 %cmp24.not.2.i, label %40, label %if.end27.1.i.for.end.i_crit_edge

if.end27.1.i.for.end.i_crit_edge:                 ; preds = %if.end27.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %if.end27.1.i.for.end.i_crit_edge, %if.end27.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  %error.2.i = phi i32 [ %call23.i, %if.end20.i.for.end.i_crit_edge ], [ %call23.1.i, %if.end27.i.for.end.i_crit_edge ], [ %call23.2.i, %if.end27.1.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2.i)
  %tobool28.not.i = icmp eq i32 %error.2.i, 0
  br i1 %tobool28.not.i, label %if.else34.i, label %if.then29.i

if.then29.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_holder_uninit(ptr noundef %f_fl_gh.i8) #11
  br label %do_flock.exit

40:                                               ; preds = %if.end27.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %gh_flags.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 129, ptr %gh_flags.i, align 4
  %42 = ptrtoint ptr %gh_error.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %gh_error.i, align 4
  call void @msleep(i32 noundef 4) #11
  call void @gfs2_holder_uninit(ptr noundef %f_fl_gh.i8) #11
  br label %do_flock.exit

if.else34.i:                                      ; preds = %for.end.i
  %43 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %f_inode.i.i, align 8
  %call1.i89.i = call i32 @locks_lock_inode_wait(ptr noundef %44, ptr noundef %fl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89.i)
  %tobool36.not.i = icmp eq i32 %call1.i89.i, 0
  br i1 %tobool36.not.i, label %if.else34.i.do_flock.exit_crit_edge, label %if.then42.i, !prof !60

if.else34.i.do_flock.exit_crit_edge:              ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_flock.exit

if.then42.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i90.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %45 = ptrtoint ptr %i_sb.i90.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb.i90.i, align 4
  %s_fs_info.i91.i = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 33
  %47 = ptrtoint ptr %s_fs_info.i91.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i91.i, align 16
  call void @gfs2_assert_warn_i(ptr noundef %48, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.do_flock, ptr noundef nonnull @.str.2, i32 noundef 1509) #11
  br label %do_flock.exit

do_flock.exit:                                    ; preds = %if.then42.i, %if.else34.i.do_flock.exit_crit_edge, %40, %if.then29.i, %if.else.i.do_flock.exit_crit_edge, %cleanup.i
  %error.3.i = phi i32 [ 0, %cleanup.i ], [ %call17.i, %if.else.i.do_flock.exit_crit_edge ], [ %call1.i89.i, %if.then42.i ], [ 0, %if.else34.i.do_flock.exit_crit_edge ], [ -11, %40 ], [ %error.2.i, %if.then29.i ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gl.i) #11
  br label %return

return:                                           ; preds = %do_flock.exit, %do_unflock.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do_unflock.exit ], [ %error.3.i, %do_flock.exit ], [ -37, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_file_splice_write(ptr noundef %pipe, ptr noundef %out, ptr noundef %ppos, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %out, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_bsize.i, align 8
  %add.i = add i32 %len, -1
  %sub.i = add i32 %add.i, %7
  %sb_bsize_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 5
  %8 = ptrtoint ptr %sb_bsize_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_bsize_shift.i, align 4
  %shr.i = lshr i32 %sub.i, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 2147483647) #11
  %i_sizehint.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_sizehint.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %i_sizehint.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_sizehint.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp5.i = icmp sgt i32 %10, %12
  br i1 %cmp5.i, label %if.then.i, label %entry.gfs2_size_hint.exit_crit_edge

entry.gfs2_size_hint.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_size_hint.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_sizehint.i, i32 noundef 4) #11
  %13 = ptrtoint ptr %i_sizehint.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %10, ptr %i_sizehint.i, align 4
  br label %gfs2_size_hint.exit

gfs2_size_hint.exit:                              ; preds = %if.then.i, %entry.gfs2_size_hint.exit_crit_edge
  %call = tail call i32 @iter_file_splice_write(ptr noundef %pipe, ptr noundef %out, ptr noundef %ppos, i32 noundef %len, i32 noundef %flags) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_nosetlease(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_fallocate(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mode)
  %tobool.not = icmp ult i32 %mode, 4
  %6 = call ptr @memset(ptr %gh, i32 255, i32 32)
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 41
  %9 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_rindex, align 4
  %cmp.not = icmp eq ptr %1, %10
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #11
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_gl, align 4
  %13 = tail call ptr @llvm.returnaddress(i32 0) #11
  %14 = ptrtoint ptr %13 to i32
  call void @__gfs2_holder_init(ptr noundef %12, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %14) #11
  %call7 = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_uninit_crit_edge

if.end6.out_uninit_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.end10:                                         ; preds = %if.end6
  %and11 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true13:                                  ; preds = %if.end10
  %add = add i64 %len, %offset
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %16)
  %cmp14 = icmp sgt i64 %add, %16
  br i1 %cmp14, label %if.then15, label %land.lhs.true13.if.end21_crit_edge

land.lhs.true13.if.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then15:                                        ; preds = %land.lhs.true13
  %call17 = call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then15.if.end21_crit_edge, label %if.then15.out_unlock_crit_edge

if.then15.out_unlock_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %land.lhs.true13.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 42
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %i_writecount.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end21
  %c.0.i.i.i = phi i32 [ %18, %if.end21 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.out_unlock_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.out_unlock_crit_edge:              ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %19 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %i_writecount.i) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end25, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !60

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i.i.i

if.end25:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %and26 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call i32 @__gfs2_punch_hole(ptr noundef %file, i64 noundef %offset, i64 noundef %len) #11
  br label %if.end34

if.else:                                          ; preds = %if.end25
  %call30 = call fastcc i32 @__gfs2_fallocate(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else.if.end34_crit_edge, label %if.then32

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %i_res = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 10
  call void @gfs2_rs_deltree(ptr noundef %i_res) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.else.if.end34_crit_edge, %if.then28
  %ret.0 = phi i32 [ %call29, %if.then28 ], [ %call30, %if.then32 ], [ 0, %if.else.if.end34_crit_edge ]
  %call.i.i.i65 = call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #11
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 1, ptr elementtype(i32) %i_writecount.i) #11, !srcloc !69
  br label %out_unlock

out_unlock:                                       ; preds = %if.end34, %do.body1.i.i.i.out_unlock_crit_edge, %if.then15.out_unlock_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end34 ], [ %call17, %if.then15.out_unlock_crit_edge ], [ -26, %do.body1.i.i.i.out_unlock_crit_edge ]
  call void @gfs2_glock_dq(ptr noundef nonnull %gh) #11
  br label %out_uninit

out_uninit:                                       ; preds = %out_unlock, %if.end6.out_uninit_crit_edge
  %ret.2 = phi i32 [ %call7, %if.end6.out_uninit_crit_edge ], [ %ret.1, %out_unlock ]
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #11
  call void @up_write(ptr noundef %i_rwsem.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_uninit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_uninit ], [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_readdir(ptr noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  %d_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d_gh) #11
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %4 = call ptr @memset(ptr %d_gh, i32 255, i32 32)
  %5 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_gl, align 4
  %7 = tail call ptr @llvm.returnaddress(i32 0) #11
  %8 = ptrtoint ptr %7 to i32
  call void @__gfs2_holder_init(ptr noundef %6, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %d_gh, i32 noundef %8) #11
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %d_gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_holder_uninit(ptr noundef nonnull %d_gh) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f_ra = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 13
  %call2 = call i32 @gfs2_dir_read(ptr noundef %3, ptr noundef %ctx, ptr noundef %f_ra) #11
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %d_gh) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %gfs2_glock_nq_init.exit
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %gfs2_glock_nq_init.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d_gh) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_setlease(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_ordered_del_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_trans_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dinode_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_set_aops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gfs2_seek_data(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gfs2_seek_hole(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_iov_iter_writeable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_dio_rw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_remove_privs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_file_buffered_write(ptr noundef %iocb, ptr noundef %from, ptr noundef %gh) unnamed_addr #0 align 64 {
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
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 41
  %10 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_rindex, align 4
  %cmp = icmp eq ptr %3, %11
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3136, i32 noundef 32) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then.cleanup69_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then.cleanup69_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup69

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %statfs_gh.0 = phi ptr [ %call7.i, %if.then.if.end6_crit_edge ], [ null, %entry.if.end6_crit_edge ]
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_gl, align 4
  %15 = tail call ptr @llvm.returnaddress(i32 0) #11
  %16 = ptrtoint ptr %15 to i32
  tail call void @__gfs2_holder_init(ptr noundef %14, i32 noundef 1, i16 noundef zeroext 0, ptr noundef %gh, i32 noundef %16) #11
  %call7159 = tail call i32 @gfs2_glock_nq(ptr noundef %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7159)
  %tobool8.not160 = icmp eq i32 %call7159, 0
  br i1 %tobool8.not160, label %retry_under_glock.preheader.lr.ph, label %if.end6.out_uninit_crit_edge

if.end6.out_uninit_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

retry_under_glock.preheader.lr.ph:                ; preds = %if.end6
  %sd_statfs_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 37
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %17 = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 5
  %iov_offset.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 3
  %gh_gl.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 1
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 6
  br label %retry_under_glock

retry.loopexit:                                   ; preds = %if.then48
  %call7 = tail call i32 @gfs2_glock_nq(ptr noundef %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %retry.loopexit.retry_under_glock.backedge_crit_edge, label %retry.loopexit.out_uninit_crit_edge

retry.loopexit.out_uninit_crit_edge:              ; preds = %retry.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

retry.loopexit.retry_under_glock.backedge_crit_edge: ; preds = %retry.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_under_glock.backedge

retry_under_glock:                                ; preds = %retry_under_glock.backedge, %retry_under_glock.preheader.lr.ph
  %read.1 = phi i32 [ 0, %retry_under_glock.preheader.lr.ph ], [ %read.1.be, %retry_under_glock.backedge ]
  %18 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_rindex, align 4
  %cmp12 = icmp eq ptr %3, %19
  br i1 %cmp12, label %if.then13, label %retry_under_glock.if.end20_crit_edge

retry_under_glock.if.end20_crit_edge:             ; preds = %retry_under_glock
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then13:                                        ; preds = %retry_under_glock
  %20 = ptrtoint ptr %sd_statfs_inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sd_statfs_inode, align 8
  %i_gl15 = getelementptr inbounds %struct.gfs2_inode, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %i_gl15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_gl15, align 4
  tail call void @__gfs2_holder_init(ptr noundef %23, i32 noundef 1, i16 noundef zeroext 1024, ptr noundef %statfs_gh.0, i32 noundef %16) #11
  %call.i = tail call i32 @gfs2_glock_nq(ptr noundef %statfs_gh.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then13.if.end20_crit_edge, label %gfs2_glock_nq_init.exit

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

gfs2_glock_nq_init.exit:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gfs2_holder_uninit(ptr noundef %statfs_gh.0) #11
  br label %out_unlock

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %retry_under_glock.if.end20_crit_edge
  %call21 = tail call ptr @inode_to_bdi(ptr noundef %3) #11
  %24 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %backing_dev_info = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 150
  %28 = ptrtoint ptr %backing_dev_info to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call21, ptr %backing_dev_info, align 4
  %29 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %34, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %call23 = tail call i32 @iomap_file_buffered_write(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull @gfs2_iomap_ops) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  %35 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i122 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i122 to ptr
  %task.i.i123 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i123 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i123, align 8
  %pagefault_disabled.i.i124 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 213
  %39 = ptrtoint ptr %pagefault_disabled.i.i124 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pagefault_disabled.i.i124, align 8
  %dec.i.i = add i32 %40, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i124, align 8
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %backing_dev_info26 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 150
  %43 = ptrtoint ptr %backing_dev_info26 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %backing_dev_info26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp27 = icmp sgt i32 %call23, 0
  br i1 %cmp27, label %if.then28, label %if.end20.if.end30_crit_edge

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %conv139 = zext i32 %call23 to i64
  %44 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ki_pos, align 8
  %add = add i64 %45, %conv139
  store i64 %add, ptr %ki_pos, align 8
  %add29 = add i32 %call23, %read.1
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end20.if.end30_crit_edge
  %read.2 = phi i32 [ %add29, %if.then28 ], [ %read.1, %if.end20.if.end30_crit_edge ]
  %46 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sd_rindex, align 4
  %cmp32 = icmp eq ptr %3, %47
  br i1 %cmp32, label %if.then34, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gfs2_glock_dq_uninit(ptr noundef %statfs_gh.0) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  %sub = sub i32 %9, %read.2
  %48 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %read.2)
  %tobool.not.i125 = icmp eq i32 %9, %read.2
  br i1 %tobool.not.i125, label %if.end35.out_unlock_crit_edge, label %if.end.i, !prof !60

if.end35.out_unlock_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call23)
  %cmp4.not.i = icmp eq i32 %call23, -14
  %or.cond.i = or i1 %cmp27, %cmp4.not.i
  br i1 %or.cond.i, label %if.end6.i, label %if.end.i.out_unlock_crit_edge

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end6.i:                                        ; preds = %if.end.i
  %49 = ptrtoint ptr %from to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %from, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i.i = icmp eq i8 %50, 0
  br i1 %cmp.i.i, label %if.then37, label %if.end6.i.out_unlock_crit_edge

if.end6.i.out_unlock_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then37:                                        ; preds = %if.end6.i
  %51 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %17, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %iov_offset.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iov_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 %56
  %57 = ptrtoint ptr %add.ptr.i to i32
  %and.i126 = and i32 %57, 4095
  %sub33.i = sub nuw nsw i32 4096, %and.i126
  %58 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gh_gl.i, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %59, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %gh_iflags.i) #11
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #11
  %call38 = tail call i32 @fault_in_iov_iter_readable(ptr noundef %from, i32 noundef %sub33.i) #11
  %60 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gh_gl.i, align 4
  %gl_lockref.i128 = getelementptr inbounds %struct.gfs2_glock, ptr %61, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i128) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %gh_iflags.i) #11
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i128) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33.i, i32 %call38)
  %cmp39.not = icmp eq i32 %sub33.i, %call38
  br i1 %cmp39.not, label %if.then37.out_unlock_crit_edge, label %if.then41

if.then37.out_unlock_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then41:                                        ; preds = %if.then37
  %62 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count.i, align 8
  %sub43 = sub i32 %sub33.i, %call38
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 %sub43)
  %65 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %count.i, align 8
  %66 = ptrtoint ptr %gh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %gh, align 4
  %cmp.i.i130.not = icmp eq ptr %67, %gh
  br i1 %cmp.i.i130.not, label %if.then48, label %if.then41.retry_under_glock.backedge_crit_edge

if.then41.retry_under_glock.backedge_crit_edge:   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_under_glock.backedge

retry_under_glock.backedge:                       ; preds = %if.then41.retry_under_glock.backedge_crit_edge, %retry.loopexit.retry_under_glock.backedge_crit_edge
  %read.1.be = phi i32 [ %read.2, %if.then41.retry_under_glock.backedge_crit_edge ], [ 0, %retry.loopexit.retry_under_glock.backedge_crit_edge ]
  br label %retry_under_glock

if.then48:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read.2)
  %tobool49.not = icmp eq i32 %read.2, 0
  br i1 %tobool49.not, label %retry.loopexit, label %if.then48.out_uninit_crit_edge

if.then48.out_uninit_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

out_unlock:                                       ; preds = %if.then37.out_unlock_crit_edge, %if.end6.i.out_unlock_crit_edge, %if.end.i.out_unlock_crit_edge, %if.end35.out_unlock_crit_edge, %gfs2_glock_nq_init.exit
  %read.3 = phi i32 [ %read.1, %gfs2_glock_nq_init.exit ], [ %read.2, %if.then37.out_unlock_crit_edge ], [ %read.2, %if.end6.i.out_unlock_crit_edge ], [ %read.2, %if.end.i.out_unlock_crit_edge ], [ %9, %if.end35.out_unlock_crit_edge ]
  %ret.0 = phi i32 [ %call.i, %gfs2_glock_nq_init.exit ], [ %call23, %if.end35.out_unlock_crit_edge ], [ %call23, %if.end.i.out_unlock_crit_edge ], [ %call23, %if.end6.i.out_unlock_crit_edge ], [ %call23, %if.then37.out_unlock_crit_edge ]
  %68 = ptrtoint ptr %gh to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %gh, align 4
  %cmp.i.i131.not = icmp eq ptr %69, %gh
  br i1 %cmp.i.i131.not, label %out_unlock.out_uninit_crit_edge, label %if.then59

out_unlock.out_uninit_crit_edge:                  ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.then59:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gfs2_glock_dq(ptr noundef %gh) #11
  br label %out_uninit

out_uninit:                                       ; preds = %if.then59, %out_unlock.out_uninit_crit_edge, %if.then48.out_uninit_crit_edge, %retry.loopexit.out_uninit_crit_edge, %if.end6.out_uninit_crit_edge
  %read.4 = phi i32 [ %read.3, %if.then59 ], [ %read.3, %out_unlock.out_uninit_crit_edge ], [ 0, %if.end6.out_uninit_crit_edge ], [ 0, %retry.loopexit.out_uninit_crit_edge ], [ %read.2, %if.then48.out_uninit_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %if.then59 ], [ %ret.0, %out_unlock.out_uninit_crit_edge ], [ %call7159, %if.end6.out_uninit_crit_edge ], [ %call7, %retry.loopexit.out_uninit_crit_edge ], [ %call23, %if.then48.out_uninit_crit_edge ]
  tail call void @gfs2_holder_uninit(ptr noundef %gh) #11
  %tobool61.not = icmp eq ptr %statfs_gh.0, null
  br i1 %tobool61.not, label %out_uninit.if.end63_crit_edge, label %if.then62

out_uninit.if.end63_crit_edge:                    ; preds = %out_uninit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then62:                                        ; preds = %out_uninit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %statfs_gh.0) #11
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %out_uninit.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read.4)
  %tobool64.not = icmp eq i32 %read.4, 0
  %ret.1.read.4 = select i1 %tobool64.not, i32 %ret.1, i32 %read.4
  br label %cleanup69

cleanup69:                                        ; preds = %if.end63, %if.then.cleanup69_crit_edge
  %retval.0 = phi i32 [ %ret.1.read.4, %if.end63 ], [ -12, %if.then.cleanup69_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_write_sync(ptr nocapture noundef readonly %iocb, i32 noundef %count) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %0 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ki_flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocb, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %4 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ki_pos, align 8
  %conv = sext i32 %count to i64
  %sub = sub i64 %5, %conv
  %sub2 = add i64 %5, -1
  %and4 = lshr i32 %1, 2
  %and4.lobit = and i32 %and4, 1
  %6 = xor i32 %and4.lobit, 1
  %call = tail call i32 @vfs_fsync_range(ptr noundef %3, i64 noundef %sub, i64 noundef %sub2, i32 noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then.if.end8_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %return

return:                                           ; preds = %if.end8, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ %count, %if.end8 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !70
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !71
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !63

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !72
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !74
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !75
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_iov_iter_readable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_file_buffered_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_fitrim(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_fault(ptr noundef %vmf) #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #11
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 6
  %6 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %7 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_gl, align 4
  %9 = tail call ptr @llvm.returnaddress(i32 0) #11
  %10 = ptrtoint ptr %9 to i32
  call void @__gfs2_holder_init(ptr noundef %8, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %10) #11
  %call2 = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  %11 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call2, label %if.end7.i [
    i32 0, label %if.end
    i32 -14, label %entry.out_uninit_crit_edge
    i32 -11, label %entry.out_uninit_crit_edge7
    i32 -12, label %if.then6.i
  ]

entry.out_uninit_crit_edge7:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

entry.out_uninit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = call i32 @filemap_fault(ptr noundef %vmf) #11
  call void @gfs2_glock_dq(ptr noundef nonnull %gh) #11
  br label %out_uninit

out_uninit:                                       ; preds = %if.end, %if.end7.i, %if.then6.i, %entry.out_uninit_crit_edge, %entry.out_uninit_crit_edge7
  %ret.0 = phi i32 [ %call4, %if.end ], [ 1, %if.then6.i ], [ 2, %if.end7.i ], [ 256, %entry.out_uninit_crit_edge ], [ 256, %entry.out_uninit_crit_edge7 ]
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_page_mkwrite(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  %ap = alloca %struct.gfs2_alloc_parms, align 8
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  %2 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #11
  %12 = call ptr @memset(ptr %ap, i32 0, i32 24)
  %index.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %14 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #11
  %15 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %17, i32 0, i32 32, i32 2, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 49) #11
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %17, i32 0, i32 32, i32 2, i32 1, i32 5
  %18 = tail call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %19) #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 35, ptr noundef nonnull @.str.8) #11
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %24 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool7.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !60

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !70
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %17, i32 0, i32 32, i32 2, i32 1, i32 1
  %27 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_count.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %35, %29
  %36 = inttoptr i32 %add.i.i.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add21.i.i.i = add i32 %38, 1
  store i32 %add21.i.i.i, ptr %36, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !71
  %and.i.i.i.i.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !63

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #11, !srcloc !72
  br label %sb_start_pagefault.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #11
  br label %sb_start_pagefault.exit

sb_start_pagefault.exit:                          ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  %40 = tail call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i58.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 6
  %44 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_gl, align 4
  call void @__gfs2_holder_init(ptr noundef %45, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %19) #11
  %call5 = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #11
  %46 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call5, label %if.end7.i [
    i32 0, label %if.end
    i32 -14, label %sb_start_pagefault.exit.out_uninit.thread_crit_edge
    i32 -11, label %sb_start_pagefault.exit.out_uninit.thread_crit_edge261
    i32 -12, label %if.then6.i
  ]

sb_start_pagefault.exit.out_uninit.thread_crit_edge261: ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit.thread

sb_start_pagefault.exit.out_uninit.thread_crit_edge: ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit.thread

if.then6.i:                                       ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit.thread

if.end7.i:                                        ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit.thread

if.end:                                           ; preds = %sb_start_pagefault.exit
  %call7 = call fastcc i64 @i_size_read(ptr noundef %7)
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %shl.i)
  %cmp.not = icmp ugt i64 %call7, %shl.i
  br i1 %cmp.not, label %if.end9, label %if.end.out_uninit_crit_edge

if.end.out_uninit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.end9:                                          ; preds = %if.end
  %47 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vmf, align 4
  %vm_file11 = getelementptr inbounds %struct.vm_area_struct, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %vm_file11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vm_file11, align 4
  %call12 = call i32 @file_update_time(ptr noundef %50) #11
  %sub = sub i64 %call7, %shl.i
  %51 = call i64 @llvm.umin.i64(i64 %sub, i64 4096)
  %52 = trunc i64 %51 to i32
  %53 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vmf, align 4
  %vm_file18 = getelementptr inbounds %struct.vm_area_struct, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %vm_file18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vm_file18, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %62, i32 0, i32 5, i32 4
  %63 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sb_bsize.i, align 8
  %add.i = add nsw i32 %52, -1
  %sub.i = add i32 %add.i, %64
  %sb_bsize_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %62, i32 0, i32 5, i32 5
  %65 = ptrtoint ptr %sb_bsize_shift.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sb_bsize_shift.i, align 4
  %shr.i = lshr i32 %sub.i, %66
  %67 = call i32 @llvm.umin.i32(i32 %shr.i, i32 2147483647) #11
  %i_sizehint.i = getelementptr inbounds %struct.gfs2_inode, ptr %58, i32 0, i32 12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_sizehint.i, i32 noundef 4) #11
  %68 = ptrtoint ptr %i_sizehint.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %i_sizehint.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp5.i = icmp sgt i32 %67, %69
  br i1 %cmp5.i, label %if.then.i, label %if.end9.gfs2_size_hint.exit_crit_edge

if.end9.gfs2_size_hint.exit_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_size_hint.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_sizehint.i, i32 noundef 4) #11
  %70 = ptrtoint ptr %i_sizehint.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 %67, ptr %i_sizehint.i, align 4
  br label %gfs2_size_hint.exit

gfs2_size_hint.exit:                              ; preds = %if.then.i, %if.end9.gfs2_size_hint.exit_crit_edge
  %71 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_gl, align 4
  call void @_set_bit(i32 noundef 6, ptr noundef %72) #11
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 5
  call void @_set_bit(i32 noundef 3, ptr noundef %i_flags) #11
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 19
  %73 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i.not = icmp eq i8 %74, 0
  br i1 %tobool.not.i.not, label %gfs2_size_hint.exit.if.end31_crit_edge, label %land.lhs.true

gfs2_size_hint.exit.if.end31_crit_edge:           ; preds = %gfs2_size_hint.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true:                                    ; preds = %gfs2_size_hint.exit
  %call22 = call i32 @gfs2_write_alloc_required(ptr noundef %7, i64 noundef %shl.i, i32 noundef %52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then24:                                        ; preds = %land.lhs.true
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 788) #11
  %75 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 4
  %and.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !60

if.then.i.i:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %77, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %78, %if.end.i.i ]
  %79 = inttoptr i32 %retval.0.i.i to ptr
  %80 = getelementptr inbounds %struct.page, ptr %79, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  %and.i.i.i.i164 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i164)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i164, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !60

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %79, ptr noundef nonnull @.str.10) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !79
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i165 = call zeroext i1 @__kasan_check_write(ptr noundef %79, i32 noundef 4) #11
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %79, align 4
  %and.i.i4.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i166 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i166, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i167_crit_edge

folio_flags.exit.i.i.if.then.i167_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i167

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %79, i32 1, i32 3, i32 1) #11
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #11, !srcloc !80
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !81
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i167_crit_edge

folio_trylock.exit.i.if.then.i167_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i167

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_page.exit

if.then.i167:                                     ; preds = %folio_trylock.exit.i.if.then.i167_crit_edge, %folio_flags.exit.i.i.if.then.i167_crit_edge
  call void @__folio_lock(ptr noundef %79) #11
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i167, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %86 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %75, align 4
  %and.i.i168 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i168)
  %tobool.not.i.i169 = icmp eq i32 %and.i.i168, 0
  br i1 %tobool.not.i.i169, label %if.end.i.i172, label %if.then.i.i171, !prof !60

if.then.i.i171:                                   ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i170 = add i32 %87, -1
  br label %_compound_head.exit.i176

if.end.i.i172:                                    ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i176

_compound_head.exit.i176:                         ; preds = %if.end.i.i172, %if.then.i.i171
  %retval.0.i.i173 = phi i32 [ %sub.i.i170, %if.then.i.i171 ], [ %88, %if.end.i.i172 ]
  %89 = inttoptr i32 %retval.0.i.i173 to ptr
  %90 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %and.i.i.i.i174 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i174)
  %tobool.not.i.i.i175 = icmp eq i32 %and.i.i.i.i174, 0
  br i1 %tobool.not.i.i.i175, label %folio_flags.exit.i.i178, label %if.then.i.i.i177, !prof !60

if.then.i.i.i177:                                 ; preds = %_compound_head.exit.i176
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %89, ptr noundef nonnull @.str.10) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !79
  unreachable

folio_flags.exit.i.i178:                          ; preds = %_compound_head.exit.i176
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %89, align 4
  %95 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.i.not.i = icmp eq i32 %95, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i178.if.then29_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i178.if.then29_crit_edge:      ; preds = %folio_flags.exit.i.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i178
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !82
  %mapping = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %96 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mapping, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %98 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_mapping, align 8
  %cmp27.not = icmp eq ptr %97, %99
  br i1 %cmp27.not, label %PageUptodate.exit.out_uninit_crit_edge, label %PageUptodate.exit.if.then29_crit_edge

PageUptodate.exit.if.then29_crit_edge:            ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

PageUptodate.exit.out_uninit_crit_edge:           ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.then29:                                        ; preds = %PageUptodate.exit.if.then29_crit_edge, %folio_flags.exit.i.i178.if.then29_crit_edge
  call void @unlock_page(ptr noundef %1) #11
  br label %out_uninit

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %gfs2_size_hint.exit.if.end31_crit_edge
  %call32 = call i32 @gfs2_rindex_update(ptr noundef %11) #11
  %100 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call32, label %if.end7.i180 [
    i32 0, label %if.end36
    i32 -14, label %if.end31.out_uninit_crit_edge
    i32 -11, label %if.end31.out_uninit_crit_edge262
    i32 -12, label %if.then6.i179
  ]

if.end31.out_uninit_crit_edge262:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.end31.out_uninit_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.then6.i179:                                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.end7.i180:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.end36:                                         ; preds = %if.end31
  %101 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i184 = getelementptr inbounds %struct.super_block, ptr %102, i32 0, i32 33
  %103 = ptrtoint ptr %s_fs_info.i.i184 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_fs_info.i.i184, align 16
  %105 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %7, align 8
  %107 = and i16 %106, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %107)
  %cmp.i.not.i = icmp eq i16 %107, 16384
  br i1 %cmp.i.not.i, label %do.body4.i, label %do.end9.i, !prof !63

do.body4.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #11, !srcloc !83
  unreachable

do.end9.i:                                        ; preds = %if.end36
  %sb_bsize_shift.i185 = getelementptr inbounds %struct.gfs2_sbd, ptr %104, i32 0, i32 5, i32 5
  %108 = ptrtoint ptr %sb_bsize_shift.i185 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sb_bsize_shift.i185, align 4
  %shr.i186 = lshr i32 %52, %109
  %add.i187 = add nuw nsw i32 %shr.i186, 3
  %sd_max_height.i = getelementptr inbounds %struct.gfs2_sbd, ptr %104, i32 0, i32 18
  %110 = ptrtoint ptr %sd_max_height.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sd_max_height.i, align 8
  %112 = mul i32 %111, 3
  %mul.i = add i32 %112, -3
  %sd_diptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %104, i32 0, i32 8
  %113 = ptrtoint ptr %sd_diptrs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sd_diptrs.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i187, i32 %114)
  %cmp23.i = icmp ugt i32 %add.i187, %114
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %do.end9.i.gfs2_write_calc_reserv.exit_crit_edge

do.end9.i.gfs2_write_calc_reserv.exit_crit_edge:  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_write_calc_reserv.exit

for.body.lr.ph.i:                                 ; preds = %do.end9.i
  %sd_inptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %104, i32 0, i32 9
  %115 = ptrtoint ptr %sd_inptrs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sd_inptrs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ind_blocks.0 = phi i32 [ %mul.i, %for.body.lr.ph.i ], [ %add13.i, %for.body.i.for.body.i_crit_edge ]
  %tmp.024.i = phi i32 [ %add.i187, %for.body.lr.ph.i ], [ %div.i, %for.body.i.for.body.i_crit_edge ]
  %add10.i = add i32 %tmp.024.i, -1
  %sub11.i = add i32 %add10.i, %116
  %div.i = udiv i32 %sub11.i, %116
  %add13.i = add i32 %div.i, %ind_blocks.0
  %cmp.i = icmp ugt i32 %div.i, %114
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.gfs2_write_calc_reserv.exit_crit_edge

for.body.i.gfs2_write_calc_reserv.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_write_calc_reserv.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

gfs2_write_calc_reserv.exit:                      ; preds = %for.body.i.gfs2_write_calc_reserv.exit_crit_edge, %do.end9.i.gfs2_write_calc_reserv.exit_crit_edge
  %ind_blocks.1 = phi i32 [ %mul.i, %do.end9.i.gfs2_write_calc_reserv.exit_crit_edge ], [ %add13.i, %for.body.i.gfs2_write_calc_reserv.exit_crit_edge ]
  %add = add i32 %ind_blocks.1, %add.i187
  %conv37 = zext i32 %add to i64
  %117 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv37, ptr %ap, align 8
  %allowed.i = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 3
  %118 = ptrtoint ptr %allowed.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 4294967295, ptr %allowed.i, align 8
  %call1.i = call zeroext i1 @capable(i32 noundef 24) #11
  br i1 %call1.i, label %gfs2_write_calc_reserv.exit.if.end42_crit_edge, label %lor.lhs.false.i

gfs2_write_calc_reserv.exit.if.end42_crit_edge:   ; preds = %gfs2_write_calc_reserv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

lor.lhs.false.i:                                  ; preds = %gfs2_write_calc_reserv.exit
  %ar_quota.i = getelementptr inbounds %struct.gfs2_sbd, ptr %104, i32 0, i32 21, i32 3
  %119 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %bf.load.i = load i32, ptr %ar_quota.i, align 4
  %120 = and i32 %bf.load.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i190 = icmp eq i32 %120, 0
  br i1 %cmp.i190, label %lor.lhs.false.i.if.end42_crit_edge, label %if.end.i

lor.lhs.false.i.if.end42_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call5.i = call i32 @gfs2_quota_lock(ptr noundef %7, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i191 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i191, label %if.end7.i192, label %if.end.i.if.then40_crit_edge

if.end.i.if.then40_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.end7.i192:                                     ; preds = %if.end.i
  %121 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %bf.load10.i = load i32, ptr %ar_quota.i, align 4
  %122 = and i32 %bf.load10.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %122)
  %cmp13.not.i = icmp eq i32 %122, 134217728
  br i1 %cmp13.not.i, label %if.end15.i, label %if.end7.i192.if.end42_crit_edge

if.end7.i192.if.end42_crit_edge:                  ; preds = %if.end7.i192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end15.i:                                       ; preds = %if.end7.i192
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 3
  %123 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %124 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %125 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.unpack36.i = load i32, ptr %i_gid.i, align 8
  %126 = insertvalue [1 x i32] undef, i32 %.unpack36.i, 0
  %call20.i = call i32 @gfs2_quota_check(ptr noundef %7, [1 x i32] %124, [1 x i32] %126, ptr noundef nonnull %ap) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end15.i.if.end42_crit_edge, label %if.then22.i

if.end15.i.if.end42_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_quota_unlock(ptr noundef %7) #11
  br label %if.then40

if.then40:                                        ; preds = %if.then22.i, %if.end.i.if.then40_crit_edge
  %retval.0.i193 = phi i32 [ %call5.i, %if.end.i.if.then40_crit_edge ], [ %call20.i, %if.then22.i ]
  %switch.tableidx = add i32 %retval.0.i193, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %127 = icmp ult i32 %switch.tableidx, 4
  br i1 %127, label %switch.lookup, label %if.then40.out_uninit_crit_edge

if.then40.out_uninit_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_uninit

if.end42:                                         ; preds = %if.end15.i.if.end42_crit_edge, %if.end7.i192.if.end42_crit_edge, %lor.lhs.false.i.if.end42_crit_edge, %gfs2_write_calc_reserv.exit.if.end42_crit_edge
  %call43 = call i32 @gfs2_inplace_reserve(ptr noundef %7, ptr noundef nonnull %ap) #11
  %128 = zext i32 %call43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call43, label %if.end7.i199 [
    i32 0, label %if.end63
    i32 -14, label %if.end42.out_quota_unlock_crit_edge
    i32 -11, label %if.end42.out_quota_unlock_crit_edge263
    i32 -12, label %if.then6.i198
  ]

if.end42.out_quota_unlock_crit_edge263:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota_unlock

if.end42.out_quota_unlock_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota_unlock

if.then6.i198:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota_unlock

if.end7.i199:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota_unlock

if.end63:                                         ; preds = %if.end42
  %add48 = add i32 %ind_blocks.1, 1
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 18
  %129 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool50.not = icmp eq i32 %and.i, 0
  %add53 = select i1 %tobool50.not, i32 0, i32 %add.i187
  %rblocks.0 = add i32 %add48, %add53
  %add59 = add i32 %rblocks.0, 3
  %rs_rgd.i = getelementptr inbounds %struct.gfs2_inode, ptr %7, i32 0, i32 10, i32 1
  %131 = ptrtoint ptr %rs_rgd.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rs_rgd.i, align 4
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rd_length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %add)
  %cmp.i202 = icmp ugt i32 %134, %add
  %add.i203 = add i32 %add, 1
  %retval.0.i204 = select i1 %cmp.i202, i32 %add.i203, i32 %134
  %add62 = add i32 %add59, %retval.0.i204
  %call64 = call i32 @gfs2_trans_begin(ptr noundef %11, i32 noundef %add62, i32 noundef 0) #11
  %135 = zext i32 %call64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call64, label %if.end7.i206 [
    i32 0, label %if.end68
    i32 -14, label %if.end63.out_trans_fail_crit_edge
    i32 -11, label %if.end63.out_trans_fail_crit_edge264
    i32 -12, label %if.then6.i205
  ]

if.end63.out_trans_fail_crit_edge264:             ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_fail

if.end63.out_trans_fail_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_fail

if.then6.i205:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_fail

if.end7.i206:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_fail

if.end68:                                         ; preds = %if.end63
  %136 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i210.not = icmp eq i8 %137, 0
  br i1 %tobool.not.i210.not, label %if.then71, label %if.end68.if.end77_crit_edge

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then71:                                        ; preds = %if.end68
  %call72 = call i32 @gfs2_unstuff_dinode(ptr noundef %7) #11
  %138 = zext i32 %call72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call72, label %if.end7.i213 [
    i32 0, label %if.then71.if.end77_crit_edge
    i32 -14, label %if.then71.out_trans_end_crit_edge
    i32 -11, label %if.then71.out_trans_end_crit_edge265
    i32 -12, label %if.then6.i212
  ]

if.then71.out_trans_end_crit_edge265:             ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_end

if.then71.out_trans_end_crit_edge:                ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_end

if.then71.if.end77_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then6.i212:                                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_end

if.end7.i213:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_end

if.end77:                                         ; preds = %if.then71.if.end77_crit_edge, %if.end68.if.end77_crit_edge
  call fastcc void @lock_page(ptr noundef %1)
  %call78 = call fastcc i32 @PageUptodate(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end77.if.then94_crit_edge, label %lor.lhs.false80

if.end77.if.then94_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

lor.lhs.false80:                                  ; preds = %if.end77
  %mapping81 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %139 = ptrtoint ptr %mapping81 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mapping81, align 4
  %i_mapping82 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %141 = ptrtoint ptr %i_mapping82 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i_mapping82, align 8
  %cmp83.not = icmp eq ptr %140, %142
  br i1 %cmp83.not, label %if.end86, label %lor.lhs.false80.if.then94_crit_edge

lor.lhs.false80.if.then94_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

if.end86:                                         ; preds = %lor.lhs.false80
  %call87 = call fastcc i32 @gfs2_allocate_page_backing(ptr noundef %1, i32 noundef %52)
  %143 = zext i32 %call87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call87, label %if.end7.i217 [
    i32 0, label %if.end86.out_trans_end_crit_edge
    i32 -14, label %if.end86.if.then94_crit_edge
    i32 -11, label %if.end86.if.then94_crit_edge266
    i32 -12, label %if.then6.i216
  ]

if.end86.if.then94_crit_edge266:                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

if.end86.if.then94_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

if.end86.out_trans_end_crit_edge:                 ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_end

if.then6.i216:                                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

if.end7.i217:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

if.then94:                                        ; preds = %if.end7.i217, %if.then6.i216, %if.end86.if.then94_crit_edge, %if.end86.if.then94_crit_edge266, %lor.lhs.false80.if.then94_crit_edge, %if.end77.if.then94_crit_edge
  %ret.0.ph = phi i32 [ 2, %if.end7.i217 ], [ 1, %if.then6.i216 ], [ 256, %if.end77.if.then94_crit_edge ], [ 256, %lor.lhs.false80.if.then94_crit_edge ], [ 256, %if.end86.if.then94_crit_edge ], [ 256, %if.end86.if.then94_crit_edge266 ]
  call void @unlock_page(ptr noundef %1) #11
  br label %out_trans_end

out_trans_end:                                    ; preds = %if.then94, %if.end86.out_trans_end_crit_edge, %if.end7.i213, %if.then6.i212, %if.then71.out_trans_end_crit_edge, %if.then71.out_trans_end_crit_edge265
  %ret.1 = phi i32 [ %ret.0.ph, %if.then94 ], [ 1, %if.then6.i212 ], [ 2, %if.end7.i213 ], [ 512, %if.end86.out_trans_end_crit_edge ], [ 256, %if.then71.out_trans_end_crit_edge ], [ 256, %if.then71.out_trans_end_crit_edge265 ]
  call void @gfs2_trans_end(ptr noundef %11) #11
  br label %out_trans_fail

out_trans_fail:                                   ; preds = %out_trans_end, %if.end7.i206, %if.then6.i205, %if.end63.out_trans_fail_crit_edge, %if.end63.out_trans_fail_crit_edge264
  %ret.2 = phi i32 [ %ret.1, %out_trans_end ], [ 1, %if.then6.i205 ], [ 2, %if.end7.i206 ], [ 256, %if.end63.out_trans_fail_crit_edge ], [ 256, %if.end63.out_trans_fail_crit_edge264 ]
  call void @gfs2_inplace_release(ptr noundef %7) #11
  br label %out_quota_unlock

out_quota_unlock:                                 ; preds = %out_trans_fail, %if.end7.i199, %if.then6.i198, %if.end42.out_quota_unlock_crit_edge, %if.end42.out_quota_unlock_crit_edge263
  %ret.3 = phi i32 [ %ret.2, %out_trans_fail ], [ 1, %if.then6.i198 ], [ 2, %if.end7.i199 ], [ 256, %if.end42.out_quota_unlock_crit_edge ], [ 256, %if.end42.out_quota_unlock_crit_edge263 ]
  call void @gfs2_quota_unlock(ptr noundef %7) #11
  br label %out_uninit

out_uninit.thread:                                ; preds = %if.end7.i, %if.then6.i, %sb_start_pagefault.exit.out_uninit.thread_crit_edge, %sb_start_pagefault.exit.out_uninit.thread_crit_edge261
  %ret.5.ph = phi i32 [ 2, %if.end7.i ], [ 1, %if.then6.i ], [ 256, %sb_start_pagefault.exit.out_uninit.thread_crit_edge ], [ 256, %sb_start_pagefault.exit.out_uninit.thread_crit_edge261 ]
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #11
  br label %if.end100

switch.lookup:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.gfs2_page_mkwrite, i32 0, i32 %switch.tableidx
  %144 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %144)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %out_uninit

out_uninit:                                       ; preds = %switch.lookup, %out_quota_unlock, %if.then40.out_uninit_crit_edge, %if.end7.i180, %if.then6.i179, %if.end31.out_uninit_crit_edge, %if.end31.out_uninit_crit_edge262, %if.then29, %PageUptodate.exit.out_uninit_crit_edge, %if.end.out_uninit_crit_edge
  %ret.4 = phi i32 [ %ret.3, %out_quota_unlock ], [ 256, %if.then29 ], [ 512, %PageUptodate.exit.out_uninit_crit_edge ], [ 2, %if.end.out_uninit_crit_edge ], [ 1, %if.then6.i179 ], [ 2, %if.end7.i180 ], [ 256, %if.end31.out_uninit_crit_edge ], [ 256, %if.end31.out_uninit_crit_edge262 ], [ %switch.load, %switch.lookup ], [ 2, %if.then40.out_uninit_crit_edge ]
  call void @gfs2_glock_dq(ptr noundef nonnull %gh) #11
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %ret.4)
  %cmp96 = icmp eq i32 %ret.4, 512
  br i1 %cmp96, label %if.then98, label %out_uninit.if.end100_crit_edge

out_uninit.if.end100_crit_edge:                   ; preds = %out_uninit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then98:                                        ; preds = %out_uninit
  call void @__sanitizer_cov_trace_pc() #13
  %call99 = call zeroext i1 @set_page_dirty(ptr noundef %1) #11
  call void @wait_for_stable_page(ptr noundef %1) #11
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %out_uninit.if.end100_crit_edge, %out_uninit.thread
  %ret.5259 = phi i32 [ %ret.5.ph, %out_uninit.thread ], [ 512, %if.then98 ], [ %ret.4, %out_uninit.if.end100_crit_edge ]
  %145 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %i_sb.i, align 4
  %add.ptr1.i.i220 = getelementptr %struct.super_block, ptr %146, i32 0, i32 32, i32 2, i32 1
  %dep_map.i.i.i221 = getelementptr %struct.super_block, ptr %146, i32 0, i32 32, i32 2, i32 1, i32 5
  call void @lock_release(ptr noundef %dep_map.i.i.i221, i32 noundef %19) #11
  %147 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i.i.i.i222 = and i32 %147, -16384
  %148 = inttoptr i32 %and.i.i.i.i.i.i222 to ptr
  %preempt_count.i.i.i.i.i223 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %preempt_count.i.i.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %preempt_count.i.i.i.i.i223, align 4
  %add.i.i.i.i224 = add i32 %150, 1
  store volatile i32 %add.i.i.i.i224, ptr %preempt_count.i.i.i.i.i223, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !84
  %call.i.i.i.i225 = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i225)
  %tobool.not.i.i.i.i226 = icmp eq i32 %call.i.i.i.i225, 0
  br i1 %tobool.not.i.i.i.i226, label %land.lhs.true.i.i.i.i229, label %if.end100.rcu_sync_is_idle.exit.i.i.i234_crit_edge

if.end100.rcu_sync_is_idle.exit.i.i.i234_crit_edge: ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i234

land.lhs.true.i.i.i.i229:                         ; preds = %if.end100
  %call1.i.i.i.i227 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i227)
  %tobool2.not.i.i.i.i228 = icmp eq i32 %call1.i.i.i.i227, 0
  br i1 %tobool2.not.i.i.i.i228, label %land.lhs.true.i.i.i.i229.rcu_sync_is_idle.exit.i.i.i234_crit_edge, label %land.lhs.true3.i.i.i.i231

land.lhs.true.i.i.i.i229.rcu_sync_is_idle.exit.i.i.i234_crit_edge: ; preds = %land.lhs.true.i.i.i.i229
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i234

land.lhs.true3.i.i.i.i231:                        ; preds = %land.lhs.true.i.i.i.i229
  %.b8.i.i.i.i230 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i230, label %land.lhs.true3.i.i.i.i231.rcu_sync_is_idle.exit.i.i.i234_crit_edge, label %if.then.i.i.i.i232

land.lhs.true3.i.i.i.i231.rcu_sync_is_idle.exit.i.i.i234_crit_edge: ; preds = %land.lhs.true3.i.i.i.i231
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i.i234

if.then.i.i.i.i232:                               ; preds = %land.lhs.true3.i.i.i.i231
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 35, ptr noundef nonnull @.str.8) #11
  br label %rcu_sync_is_idle.exit.i.i.i234

rcu_sync_is_idle.exit.i.i.i234:                   ; preds = %if.then.i.i.i.i232, %land.lhs.true3.i.i.i.i231.rcu_sync_is_idle.exit.i.i.i234_crit_edge, %land.lhs.true.i.i.i.i229.rcu_sync_is_idle.exit.i.i.i234_crit_edge, %if.end100.rcu_sync_is_idle.exit.i.i.i234_crit_edge
  %151 = ptrtoint ptr %add.ptr1.i.i220 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %add.ptr1.i.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool7.not.i.i.i.i233 = icmp eq i32 %152, 0
  br i1 %tobool7.not.i.i.i.i233, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !60

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i234
  %153 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !70
  %read_count.i.i.i235 = getelementptr %struct.super_block, ptr %146, i32 0, i32 32, i32 2, i32 1, i32 1
  %154 = ptrtoint ptr %read_count.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read_count.i.i.i235, align 4
  %156 = ptrtoint ptr %155 to i32
  %157 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i.i236 = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i.i236 to ptr
  %cpu.i.i.i237 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %cpu.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cpu.i.i.i237, align 4
  %arrayidx.i.i.i238 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %160
  %161 = ptrtoint ptr %arrayidx.i.i.i238 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i.i.i238, align 4
  %add.i.i.i239 = add i32 %162, %156
  %163 = inttoptr i32 %add.i.i.i239 to ptr
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 4
  %add17.i.i.i = add i32 %165, -1
  store i32 %add17.i.i.i, ptr %163, align 4
  %166 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !71
  %and.i.i.i.i.i240 = and i32 %166, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i240)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i240, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !63

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %153) #11, !srcloc !72
  br label %sb_end_pagefault.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i234
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  %167 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !70
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %146, i32 0, i32 32, i32 2, i32 1, i32 1
  %168 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %read_count75.i.i.i, align 4
  %170 = ptrtoint ptr %169 to i32
  %171 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i122.i.i.i = and i32 %171, -16384
  %172 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %174
  %175 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %176, %170
  %177 = inttoptr i32 %add80.i.i.i to ptr
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  %add81.i.i.i = add i32 %179, -1
  store i32 %add81.i.i.i, ptr %177, align 4
  %180 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !71
  %and.i.i123.i.i.i = and i32 %180, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !63

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %167) #11, !srcloc !72
  %writer.i.i.i = getelementptr %struct.super_block, ptr %146, i32 0, i32 32, i32 2, i32 1, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #11
  br label %sb_end_pagefault.exit

sb_end_pagefault.exit:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !86
  %181 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i120.i.i.i = and i32 %181, -16384
  %182 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i241 = add i32 %184, -1
  store volatile i32 %sub.i.i.i.i241, ptr %preempt_count.i.i121.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #11
  ret i32 %ret.5259
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_write_alloc_required(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_page(ptr noundef %page) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 788) #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !60

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !60

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !79
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #11
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %and.i.i4.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool.not.i.i.i, label %folio_trylock.exit, label %folio_flags.exit.i.if.then_crit_edge

folio_flags.exit.i.if.then_crit_edge:             ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

folio_trylock.exit:                               ; preds = %folio_flags.exit.i
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #11, !srcloc !80
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !81
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.i, label %folio_trylock.exit.if.end_crit_edge, label %folio_trylock.exit.if.then_crit_edge

folio_trylock.exit.if.then_crit_edge:             ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

folio_trylock.exit.if.end_crit_edge:              ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %folio_trylock.exit.if.then_crit_edge, %folio_flags.exit.i.if.then_crit_edge
  tail call void @__folio_lock(ptr noundef %4) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %folio_trylock.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @PageUptodate(ptr noundef %page) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !60

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !60

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !79
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge, label %do.end.i

folio_flags.exit.i.folio_test_uptodate.exit_crit_edge: ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_test_uptodate.exit

do.end.i:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !82
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %do.end.i, %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge
  %.lobit = lshr exact i32 %10, 2
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_rindex_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_inplace_reserve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_unstuff_dinode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_allocate_page_backing(ptr nocapture noundef readonly %page, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %iomap = alloca %struct.iomap, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %1 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %length3 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %length.addr.0 = phi i32 [ %length, %entry ], [ %conv11, %do.cond.do.body_crit_edge ]
  %pos.0 = phi i64 [ %shl.i, %entry ], [ %add, %do.cond.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %iomap) #11
  %2 = call ptr @memset(ptr %iomap, i32 0, i32 48)
  %3 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mapping, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %conv = zext i32 %length.addr.0 to i64
  %call1 = call i32 @gfs2_iomap_alloc(ptr noundef %6, i64 noundef %pos.0, i64 noundef %conv, ptr noundef nonnull %iomap) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %do.body
  %7 = ptrtoint ptr %length3 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %length3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv)
  %cmp = icmp ugt i64 %8, %conv
  br i1 %cmp, label %if.then5, label %if.end.do.cond_crit_edge

if.end.do.cond_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %length3 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %length3, align 8
  br label %do.cond

cleanup:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %iomap) #11
  br label %cleanup15

do.cond:                                          ; preds = %if.then5, %if.end.do.cond_crit_edge
  %10 = ptrtoint ptr %length3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %length3, align 8
  %12 = trunc i64 %11 to i32
  %conv11 = sub i32 %length.addr.0, %12
  %add = add i64 %11, %pos.0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %iomap) #11
  %cmp13.not = icmp eq i32 %conv11, 0
  br i1 %cmp13.not, label %do.cond.cleanup15_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.cond.cleanup15_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup15

cleanup15:                                        ; preds = %do.cond.cleanup15_crit_edge, %cleanup
  %retval.2 = phi i32 [ -5, %cleanup ], [ 0, %do.cond.cleanup15_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_inplace_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_stable_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_lock(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_check(ptr noundef, [1 x i32], [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_iomap_alloc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rs_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_qa_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_ail_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_posix_get(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_posix_unlock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_posix_lock(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_reinit(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gfs2_punch_hole(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gfs2_fallocate(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) unnamed_addr #0 align 64 {
entry:
  %dibh.i = alloca ptr, align 4
  %iomap.i = alloca %struct.iomap, align 8
  %ap = alloca %struct.gfs2_alloc_parms, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #11
  %6 = call ptr @memset(ptr %ap, i32 0, i32 24)
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_bsize, align 8
  %conv = zext i32 %8 to i64
  %neg = sub nsw i64 0, %conv
  %add = add i64 %len, %offset
  %sub3 = add i64 %add, -1
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 5
  %9 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_bsize_shift, align 4
  %sh_prom = zext i32 %10 to i64
  %shr = ashr i64 %sub3, %sh_prom
  %and = and i64 %neg, 4294967295
  %add5 = add i64 %shr, 1
  %shl = shl i64 %add5, %sh_prom
  %and9 = and i64 %neg, %offset
  %sub10 = sub i64 %shl, %and9
  %sd_max_rg_data = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 51
  %11 = ptrtoint ptr %sd_max_rg_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sd_max_rg_data, align 4
  %mul = mul i32 %12, %8
  %div208 = lshr i32 %mul, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mul)
  %tobool.not = icmp ult i32 %mul, 2
  %narrow = select i1 %tobool.not, i32 -1, i32 %div208
  %spec.store.select = zext i32 %narrow to i64
  %and14 = and i64 %spec.store.select, %neg
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %cmp = icmp eq i64 %and14, 0
  %spec.select = select i1 %cmp, i64 %conv, i64 %and14
  %conv21 = trunc i64 %sub10 to i32
  %add.i = add i32 %8, -1
  %sub.i = add i32 %add.i, %conv21
  %shr.i = lshr i32 %sub.i, %10
  %13 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 2147483647) #11
  %i_sizehint.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_sizehint.i, i32 noundef 4) #11
  %14 = ptrtoint ptr %i_sizehint.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_sizehint.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp5.i = icmp sgt i32 %13, %15
  br i1 %cmp5.i, label %if.then.i, label %entry.gfs2_size_hint.exit_crit_edge

entry.gfs2_size_hint.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_size_hint.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_sizehint.i, i32 noundef 4) #11
  %16 = ptrtoint ptr %i_sizehint.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %13, ptr %i_sizehint.i, align 4
  br label %gfs2_size_hint.exit

gfs2_size_hint.exit:                              ; preds = %if.then.i, %entry.gfs2_size_hint.exit_crit_edge
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i215 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i215 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i215, align 16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %1, align 8
  %23 = and i16 %22, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %23)
  %cmp.i.not.i = icmp eq i16 %23, 16384
  br i1 %cmp.i.not.i, label %do.body4.i, label %do.end9.i, !prof !63

do.body4.i:                                       ; preds = %gfs2_size_hint.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #11, !srcloc !83
  unreachable

do.end9.i:                                        ; preds = %gfs2_size_hint.exit
  %sb_bsize_shift.i216 = getelementptr inbounds %struct.gfs2_sbd, ptr %20, i32 0, i32 5, i32 5
  %24 = ptrtoint ptr %sb_bsize_shift.i216 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_bsize_shift.i216, align 4
  %shr.i217 = lshr i32 4096, %25
  %add.i218 = add nuw nsw i32 %shr.i217, 3
  %sd_max_height.i = getelementptr inbounds %struct.gfs2_sbd, ptr %20, i32 0, i32 18
  %26 = ptrtoint ptr %sd_max_height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sd_max_height.i, align 8
  %28 = mul i32 %27, 3
  %mul.i = add i32 %28, -3
  %sd_diptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %20, i32 0, i32 8
  %29 = ptrtoint ptr %sd_diptrs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sd_diptrs.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i218, i32 %30)
  %cmp23.i = icmp ugt i32 %add.i218, %30
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %do.end9.i.gfs2_write_calc_reserv.exit_crit_edge

do.end9.i.gfs2_write_calc_reserv.exit_crit_edge:  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_write_calc_reserv.exit

for.body.lr.ph.i:                                 ; preds = %do.end9.i
  %sd_inptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %20, i32 0, i32 9
  %31 = ptrtoint ptr %sd_inptrs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sd_inptrs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ind_blocks.0 = phi i32 [ %mul.i, %for.body.lr.ph.i ], [ %add13.i, %for.body.i.for.body.i_crit_edge ]
  %tmp.024.i = phi i32 [ %add.i218, %for.body.lr.ph.i ], [ %div.i, %for.body.i.for.body.i_crit_edge ]
  %add10.i = add i32 %tmp.024.i, -1
  %sub11.i = add i32 %add10.i, %32
  %div.i = udiv i32 %sub11.i, %32
  %add13.i = add i32 %div.i, %ind_blocks.0
  %cmp.i = icmp ugt i32 %div.i, %30
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.gfs2_write_calc_reserv.exit_crit_edge

for.body.i.gfs2_write_calc_reserv.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_write_calc_reserv.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

gfs2_write_calc_reserv.exit:                      ; preds = %for.body.i.gfs2_write_calc_reserv.exit_crit_edge, %do.end9.i.gfs2_write_calc_reserv.exit_crit_edge
  %ind_blocks.1 = phi i32 [ %mul.i, %do.end9.i.gfs2_write_calc_reserv.exit_crit_edge ], [ %add13.i, %for.body.i.gfs2_write_calc_reserv.exit_crit_edge ]
  %add22 = add i32 %ind_blocks.1, %add.i218
  %min_target = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 1
  %33 = ptrtoint ptr %min_target to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add22, ptr %min_target, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub10)
  %cmp23298 = icmp sgt i64 %sub10, 0
  br i1 %cmp23298, label %while.body.lr.ph, label %gfs2_write_calc_reserv.exit.while.end_crit_edge

gfs2_write_calc_reserv.exit.while.end_crit_edge:  ; preds = %gfs2_write_calc_reserv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %gfs2_write_calc_reserv.exit
  %allowed.i = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 3
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %rs_reserved = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 10, i32 4
  %rs_rgd.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 10, i32 1
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 18
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 1
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %i_height.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 19
  %offset22.i = getelementptr inbounds %struct.iomap, ptr %iomap.i, i32 0, i32 1
  %length.i = getelementptr inbounds %struct.iomap, ptr %iomap.i, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.iomap, ptr %iomap.i, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.0301 = phi i64 [ %and9, %while.body.lr.ph ], [ %offset.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %bytes.1300 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %34, %while.cond.backedge.while.body_crit_edge ]
  %len.addr.0299 = phi i64 [ %sub10, %while.body.lr.ph ], [ %len.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %34 = call i64 @llvm.smin.i64(i64 %len.addr.0299, i64 %bytes.1300)
  %conv29 = trunc i64 %34 to i32
  %call30 = call i32 @gfs2_write_alloc_required(ptr noundef %1, i64 noundef %offset.addr.0301, i32 noundef %conv29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end35

if.then32:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %add34 = add i64 %offset.addr.0301, %34
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end88, %if.then32
  %max_bytes.0.pn = phi i64 [ %max_bytes.0, %if.end88 ], [ %34, %if.then32 ]
  %offset.addr.0.be = phi i64 [ %add.i261, %if.end88 ], [ %add34, %if.then32 ]
  %len.addr.0.be = sub i64 %len.addr.0299, %max_bytes.0.pn
  %cmp23 = icmp sgt i64 %len.addr.0.be, 0
  br i1 %cmp23, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end35:                                         ; preds = %while.body
  %35 = call i64 @llvm.smin.i64(i64 %len.addr.0299, i64 %and)
  %36 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i220 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %s_fs_info.i.i220 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i.i220, align 16
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 8
  %42 = and i16 %41, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %42)
  %cmp.i.not.i221 = icmp eq i16 %42, 16384
  br i1 %cmp.i.not.i221, label %do.body4.i222, label %do.end9.i230, !prof !63

do.body4.i222:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #11, !srcloc !83
  unreachable

do.end9.i230:                                     ; preds = %if.end35
  %sb_bsize_shift.i223 = getelementptr inbounds %struct.gfs2_sbd, ptr %39, i32 0, i32 5, i32 5
  %43 = ptrtoint ptr %sb_bsize_shift.i223 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sb_bsize_shift.i223, align 4
  %shr.i224 = lshr i32 %conv29, %44
  %add.i225 = add i32 %shr.i224, 3
  %sd_max_height.i226 = getelementptr inbounds %struct.gfs2_sbd, ptr %39, i32 0, i32 18
  %45 = ptrtoint ptr %sd_max_height.i226 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sd_max_height.i226, align 8
  %47 = mul i32 %46, 3
  %mul.i227 = add i32 %47, -3
  %sd_diptrs.i228 = getelementptr inbounds %struct.gfs2_sbd, ptr %39, i32 0, i32 8
  %48 = ptrtoint ptr %sd_diptrs.i228 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sd_diptrs.i228, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i225, i32 %49)
  %cmp23.i229 = icmp ugt i32 %add.i225, %49
  br i1 %cmp23.i229, label %for.body.lr.ph.i232, label %do.end9.i230.gfs2_write_calc_reserv.exit240_crit_edge

do.end9.i230.gfs2_write_calc_reserv.exit240_crit_edge: ; preds = %do.end9.i230
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_write_calc_reserv.exit240

for.body.lr.ph.i232:                              ; preds = %do.end9.i230
  %sd_inptrs.i231 = getelementptr inbounds %struct.gfs2_sbd, ptr %39, i32 0, i32 9
  %50 = ptrtoint ptr %sd_inptrs.i231 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sd_inptrs.i231, align 4
  br label %for.body.i239

for.body.i239:                                    ; preds = %for.body.i239.for.body.i239_crit_edge, %for.body.lr.ph.i232
  %ind_blocks.2 = phi i32 [ %mul.i227, %for.body.lr.ph.i232 ], [ %add13.i237, %for.body.i239.for.body.i239_crit_edge ]
  %tmp.024.i233 = phi i32 [ %add.i225, %for.body.lr.ph.i232 ], [ %div.i236, %for.body.i239.for.body.i239_crit_edge ]
  %add10.i234 = add i32 %tmp.024.i233, -1
  %sub11.i235 = add i32 %add10.i234, %51
  %div.i236 = udiv i32 %sub11.i235, %51
  %add13.i237 = add i32 %div.i236, %ind_blocks.2
  %cmp.i238 = icmp ugt i32 %div.i236, %49
  br i1 %cmp.i238, label %for.body.i239.for.body.i239_crit_edge, label %for.body.i239.gfs2_write_calc_reserv.exit240_crit_edge

for.body.i239.gfs2_write_calc_reserv.exit240_crit_edge: ; preds = %for.body.i239
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfs2_write_calc_reserv.exit240

for.body.i239.for.body.i239_crit_edge:            ; preds = %for.body.i239
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i239

gfs2_write_calc_reserv.exit240:                   ; preds = %for.body.i239.gfs2_write_calc_reserv.exit240_crit_edge, %do.end9.i230.gfs2_write_calc_reserv.exit240_crit_edge
  %ind_blocks.3 = phi i32 [ %mul.i227, %do.end9.i230.gfs2_write_calc_reserv.exit240_crit_edge ], [ %add13.i237, %for.body.i239.gfs2_write_calc_reserv.exit240_crit_edge ]
  %add39 = add i32 %ind_blocks.3, %add.i225
  %conv40 = zext i32 %add39 to i64
  %52 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv40, ptr %ap, align 8
  %53 = ptrtoint ptr %allowed.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 4294967295, ptr %allowed.i, align 8
  %call1.i = call zeroext i1 @capable(i32 noundef 24) #11
  br i1 %call1.i, label %gfs2_write_calc_reserv.exit240.if.end44_crit_edge, label %lor.lhs.false.i

gfs2_write_calc_reserv.exit240.if.end44_crit_edge: ; preds = %gfs2_write_calc_reserv.exit240
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

lor.lhs.false.i:                                  ; preds = %gfs2_write_calc_reserv.exit240
  %ar_quota.i = getelementptr inbounds %struct.gfs2_sbd, ptr %39, i32 0, i32 21, i32 3
  %54 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load.i = load i32, ptr %ar_quota.i, align 4
  %55 = and i32 %bf.load.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i243 = icmp eq i32 %55, 0
  br i1 %cmp.i243, label %lor.lhs.false.i.if.end44_crit_edge, label %if.end.i

lor.lhs.false.i.if.end44_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call5.i = call i32 @gfs2_quota_lock(ptr noundef %1, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %56 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load10.i = load i32, ptr %ar_quota.i, align 4
  %57 = and i32 %bf.load10.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %57)
  %cmp13.not.i = icmp eq i32 %57, 134217728
  br i1 %cmp13.not.i, label %if.end15.i, label %if.end7.i.if.end44_crit_edge

if.end7.i.if.end44_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end15.i:                                       ; preds = %if.end7.i
  %58 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %59 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %60 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.unpack36.i = load i32, ptr %i_gid.i, align 8
  %61 = insertvalue [1 x i32] undef, i32 %.unpack36.i, 0
  %call20.i = call i32 @gfs2_quota_check(ptr noundef %1, [1 x i32] %59, [1 x i32] %61, ptr noundef nonnull %ap) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end15.i.if.end44_crit_edge, label %if.then22.i

if.end15.i.if.end44_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_quota_unlock(ptr noundef %1) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end15.i.if.end44_crit_edge, %if.end7.i.if.end44_crit_edge, %lor.lhs.false.i.if.end44_crit_edge, %gfs2_write_calc_reserv.exit240.if.end44_crit_edge
  %62 = ptrtoint ptr %allowed.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %allowed.i, align 8
  %call49 = call i32 @gfs2_inplace_reserve(ptr noundef %1, ptr noundef nonnull %ap) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end44.out_qunlock_crit_edge

if.end44.out_qunlock_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_qunlock

if.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool45.not = icmp eq i64 %63, 0
  %spec.select211 = select i1 %tobool45.not, i64 4294967295, i64 %63
  %64 = ptrtoint ptr %rs_reserved to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rs_reserved, align 4
  %conv53 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select211, i64 %conv53)
  %cmp54 = icmp sgt i64 %spec.select211, %conv53
  %extract.t209 = trunc i64 %spec.select211 to i32
  %spec.select212 = select i1 %cmp54, i32 %65, i32 %extract.t209
  %66 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i245 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 33
  %68 = ptrtoint ptr %s_fs_info.i.i245 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i.i245, align 16
  %sd_max_height.i246 = getelementptr inbounds %struct.gfs2_sbd, ptr %69, i32 0, i32 18
  %70 = ptrtoint ptr %sd_max_height.i246 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sd_max_height.i246, align 8
  %.neg.i = mul i32 %71, -3
  %mul.neg.i = add i32 %spec.select212, 3
  %sub1.i = add i32 %mul.neg.i, %.neg.i
  %sd_diptrs.i247 = getelementptr inbounds %struct.gfs2_sbd, ptr %69, i32 0, i32 8
  %72 = ptrtoint ptr %sd_diptrs.i247 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sd_diptrs.i247, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %73)
  %cmp29.i = icmp ugt i32 %sub1.i, %73
  br i1 %cmp29.i, label %for.body.lr.ph.i249, label %if.end52.for.end.i_crit_edge

if.end52.for.end.i_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i249:                              ; preds = %if.end52
  %sd_inptrs.i248 = getelementptr inbounds %struct.gfs2_sbd, ptr %69, i32 0, i32 9
  %74 = ptrtoint ptr %sd_inptrs.i248 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sd_inptrs.i248, align 4
  %add.i250 = add i32 %75, -1
  br label %for.body.i253

for.body.i253:                                    ; preds = %for.body.i253.for.body.i253_crit_edge, %for.body.lr.ph.i249
  %max_data.031.i = phi i32 [ %sub1.i, %for.body.lr.ph.i249 ], [ %sub4.i, %for.body.i253.for.body.i253_crit_edge ]
  %tmp.030.i = phi i32 [ %sub1.i, %for.body.lr.ph.i249 ], [ %div.i251, %for.body.i253.for.body.i253_crit_edge ]
  %sub2.i = add i32 %add.i250, %tmp.030.i
  %div.i251 = udiv i32 %sub2.i, %75
  %sub4.i = sub i32 %max_data.031.i, %div.i251
  %cmp.i252 = icmp ugt i32 %div.i251, %73
  br i1 %cmp.i252, label %for.body.i253.for.body.i253_crit_edge, label %for.body.i253.for.end.i_crit_edge

for.body.i253.for.end.i_crit_edge:                ; preds = %for.body.i253
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i253.for.body.i253_crit_edge:            ; preds = %for.body.i253
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i253

for.end.i:                                        ; preds = %for.body.i253.for.end.i_crit_edge, %if.end52.for.end.i_crit_edge
  %max_data.0.lcssa.i = phi i32 [ %sub1.i, %if.end52.for.end.i_crit_edge ], [ %sub4.i, %for.body.i253.for.end.i_crit_edge ]
  %sub5.i = sub i32 %spec.select212, %max_data.0.lcssa.i
  %conv.i = zext i32 %max_data.0.lcssa.i to i64
  %sub6.i = add nsw i64 %conv.i, -3
  %sb_bsize_shift.i254 = getelementptr inbounds %struct.gfs2_sbd, ptr %69, i32 0, i32 5, i32 5
  %76 = ptrtoint ptr %sb_bsize_shift.i254 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sb_bsize_shift.i254, align 4
  %sh_prom.i = zext i32 %77 to i64
  %shl.i = shl i64 %sub6.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %35)
  %cmp7.i = icmp sgt i64 %shl.i, %35
  br i1 %cmp7.i, label %if.then.i255, label %for.end.i.calc_max_reserv.exit_crit_edge

for.end.i.calc_max_reserv.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_max_reserv.exit

if.then.i255:                                     ; preds = %for.end.i
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %1, align 8
  %80 = and i16 %79, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %80)
  %cmp.i.not.i.i = icmp eq i16 %80, 16384
  br i1 %cmp.i.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !63

do.body4.i.i:                                     ; preds = %if.then.i255
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #11, !srcloc !83
  unreachable

do.end9.i.i:                                      ; preds = %if.then.i255
  %conv9.i = trunc i64 %35 to i32
  %shr.i.i = lshr i32 %conv9.i, %77
  %add.i.i = add i32 %shr.i.i, 3
  %81 = mul i32 %71, 3
  %mul.i.i = add i32 %81, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %73)
  %cmp23.i.i = icmp ugt i32 %add.i.i, %73
  br i1 %cmp23.i.i, label %for.body.lr.ph.i.i, label %do.end9.i.i.calc_max_reserv.exit_crit_edge

do.end9.i.i.calc_max_reserv.exit_crit_edge:       ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_max_reserv.exit

for.body.lr.ph.i.i:                               ; preds = %do.end9.i.i
  %sd_inptrs.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %69, i32 0, i32 9
  %82 = ptrtoint ptr %sd_inptrs.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sd_inptrs.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ind_blocks.4 = phi i32 [ %mul.i.i, %for.body.lr.ph.i.i ], [ %add13.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %tmp.024.i.i = phi i32 [ %add.i.i, %for.body.lr.ph.i.i ], [ %div.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add10.i.i = add i32 %tmp.024.i.i, -1
  %sub11.i.i = add i32 %add10.i.i, %83
  %div.i.i = udiv i32 %sub11.i.i, %83
  %add13.i.i = add i32 %div.i.i, %ind_blocks.4
  %cmp.i.i = icmp ugt i32 %div.i.i, %73
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.calc_max_reserv.exit_crit_edge

for.body.i.i.calc_max_reserv.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_max_reserv.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

calc_max_reserv.exit:                             ; preds = %for.body.i.i.calc_max_reserv.exit_crit_edge, %do.end9.i.i.calc_max_reserv.exit_crit_edge, %for.end.i.calc_max_reserv.exit_crit_edge
  %data_blocks.0 = phi i32 [ %add.i.i, %do.end9.i.i.calc_max_reserv.exit_crit_edge ], [ %max_data.0.lcssa.i, %for.end.i.calc_max_reserv.exit_crit_edge ], [ %add.i.i, %for.body.i.i.calc_max_reserv.exit_crit_edge ]
  %ind_blocks.5 = phi i32 [ %mul.i.i, %do.end9.i.i.calc_max_reserv.exit_crit_edge ], [ %sub5.i, %for.end.i.calc_max_reserv.exit_crit_edge ], [ %add13.i.i, %for.body.i.i.calc_max_reserv.exit_crit_edge ]
  %max_bytes.0 = phi i64 [ %35, %do.end9.i.i.calc_max_reserv.exit_crit_edge ], [ %shl.i, %for.end.i.calc_max_reserv.exit_crit_edge ], [ %35, %for.body.i.i.calc_max_reserv.exit_crit_edge ]
  %add65 = add i32 %ind_blocks.5, 5
  %add66 = add i32 %ind_blocks.5, %data_blocks.0
  %84 = ptrtoint ptr %rs_rgd.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rs_rgd.i, align 4
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rd_length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %add66)
  %cmp.i257 = icmp ugt i32 %87, %add66
  %add.i258 = add i32 %add66, 1
  %retval.0.i259 = select i1 %cmp.i257, i32 %add.i258, i32 %87
  %add68 = add i32 %add65, %retval.0.i259
  %88 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool70.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_blocks.0)
  %tobool72.not = icmp eq i32 %data_blocks.0, 0
  %spec.select213 = select i1 %tobool72.not, i32 1, i32 %data_blocks.0
  %add77 = select i1 %tobool70.not, i32 0, i32 %spec.select213
  %rblocks.0 = add i32 %add68, %add77
  %90 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %i_blkbits, align 2
  %conv79 = zext i8 %91 to i32
  %shr80 = lshr i32 4096, %conv79
  %call81 = call i32 @gfs2_trans_begin(ptr noundef %5, i32 noundef %rblocks.0, i32 noundef %shr80) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %calc_max_reserv.exit.out_trans_fail_crit_edge

calc_max_reserv.exit.out_trans_fail_crit_edge:    ; preds = %calc_max_reserv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_fail

if.end84:                                         ; preds = %calc_max_reserv.exit
  %92 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb.i, align 4
  %add.i261 = add i64 %max_bytes.0, %offset.addr.0301
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #11
  %94 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i, align 4, !annotation !59
  %95 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i.i = call i32 @gfs2_meta_buffer(ptr noundef %1, i32 noundef 4, i64 noundef %96, ptr noundef nonnull %dibh.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i262 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i262, label %if.end.i263, label %fallocate_chunk.exit.thread, !prof !60

fallocate_chunk.exit.thread:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #11
  call void @gfs2_trans_end(ptr noundef %5) #11
  br label %out_trans_fail

if.end.i263:                                      ; preds = %if.end84
  %97 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_gl.i, align 4
  %99 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dibh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %98, ptr noundef %100) #11
  %101 = ptrtoint ptr %i_height.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %i_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i.not.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i.not.i, label %if.then6.i, label %if.end.i263.if.end17.i_crit_edge

if.end.i263.if.end17.i_crit_edge:                 ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then6.i:                                       ; preds = %if.end.i263
  %call7.i = call i32 @gfs2_unstuff_dinode(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.if.end17.i_crit_edge, label %if.then6.i.out.i_crit_edge, !prof !60

if.then6.i.out.i_crit_edge:                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then6.i.if.end17.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then6.i.if.end17.i_crit_edge, %if.end.i263.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i261, i64 %offset.addr.0301)
  %cmp7.i264 = icmp sgt i64 %add.i261, %offset.addr.0301
  br i1 %cmp7.i264, label %while.body.lr.ph.i, label %if.end17.i.out.i_crit_edge

if.end17.i.out.i_crit_edge:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

while.body.lr.ph.i:                               ; preds = %if.end17.i
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 26
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %offset.addr.08.i = phi i64 [ %offset.addr.0301, %while.body.lr.ph.i ], [ %add23.i, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %iomap.i) #11
  %103 = call ptr @memset(ptr %iomap.i, i32 0, i32 48)
  %sub.i265 = sub i64 %add.i261, %offset.addr.08.i
  %call18.i = call i32 @gfs2_iomap_alloc(ptr noundef %1, i64 noundef %offset.addr.08.i, i64 noundef %sub.i265, ptr noundef nonnull %iomap.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %while.body.i.cleanup.thread.i_crit_edge

while.body.i.cleanup.thread.i_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end21.i:                                       ; preds = %while.body.i
  %104 = ptrtoint ptr %offset22.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %offset22.i, align 8
  %106 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %length.i, align 8
  %add23.i = add i64 %107, %105
  %108 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %flags.i, align 2
  %110 = and i16 %109, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool24.not.i = icmp eq i16 %110, 0
  br i1 %tobool24.not.i, label %if.end21.i.cleanup.i_crit_edge, label %if.end26.i

if.end21.i.cleanup.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end26.i:                                       ; preds = %if.end21.i
  %111 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %iomap.i, align 8
  %113 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %i_blkbits, align 2
  %sh_prom.i266 = zext i8 %114 to i64
  %shr.i267 = lshr i64 %112, %sh_prom.i266
  %shr32.i = lshr i64 %107, %sh_prom.i266
  %115 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_bdev.i.i, align 4
  %117 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i.i = zext i8 %118 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -9
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl i64 %shr.i267, %sh_prom.i.i
  %shl5.i.i = shl i64 %shr32.i, %sh_prom.i.i
  %call.i1.i = call i32 @blkdev_issue_zeroout(ptr noundef %116, i64 noundef %shl.i.i, i64 noundef %shl5.i.i, i32 noundef 3136, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool34.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool34.not.i, label %if.end26.i.cleanup.i_crit_edge, label %do.end.i

if.end26.i.cleanup.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i268 = getelementptr inbounds %struct.super_block, ptr %120, i32 0, i32 33
  %121 = ptrtoint ptr %s_fs_info.i.i268 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i.i268, align 16
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %122, i32 0, i32 110
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %sd_fsname.i) #16
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end.i, %while.body.i.cleanup.thread.i_crit_edge
  %error.2.ph.i = phi i32 [ %call.i1.i, %do.end.i ], [ %call18.i, %while.body.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %iomap.i) #11
  br label %out.i

cleanup.i:                                        ; preds = %if.end26.i.cleanup.i_crit_edge, %if.end21.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %iomap.i) #11
  %cmp.i269 = icmp sgt i64 %add.i261, %add23.i
  br i1 %cmp.i269, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.out.i_crit_edge

cleanup.i.out.i_crit_edge:                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

out.i:                                            ; preds = %cleanup.i.out.i_crit_edge, %cleanup.thread.i, %if.end17.i.out.i_crit_edge, %if.then6.i.out.i_crit_edge
  %error.3.i = phi i32 [ %call7.i, %if.then6.i.out.i_crit_edge ], [ %error.2.ph.i, %cleanup.thread.i ], [ 0, %if.end17.i.out.i_crit_edge ], [ 0, %cleanup.i.out.i_crit_edge ]
  %123 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i2.i = icmp eq ptr %124, null
  br i1 %tobool.not.i2.i, label %out.i.fallocate_chunk.exit_crit_edge, label %if.then.i.i

out.i.fallocate_chunk.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fallocate_chunk.exit

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %124) #11
  br label %fallocate_chunk.exit

fallocate_chunk.exit:                             ; preds = %if.then.i.i, %out.i.fallocate_chunk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #11
  call void @gfs2_trans_end(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3.i)
  %tobool86.not = icmp eq i32 %error.3.i, 0
  br i1 %tobool86.not, label %if.end88, label %fallocate_chunk.exit.out_trans_fail_crit_edge

fallocate_chunk.exit.out_trans_fail_crit_edge:    ; preds = %fallocate_chunk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_trans_fail

if.end88:                                         ; preds = %fallocate_chunk.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @gfs2_inplace_release(ptr noundef %1) #11
  call void @gfs2_quota_unlock(ptr noundef %1) #11
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %gfs2_write_calc_reserv.exit.while.end_crit_edge
  %and91 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %land.lhs.true, label %while.end.if.end98_crit_edge

while.end.if.end98_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

land.lhs.true:                                    ; preds = %while.end
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %125 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %126)
  %cmp94 = icmp sgt i64 %add, %126
  br i1 %cmp94, label %if.then96, label %land.lhs.true.if.end98_crit_edge

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then96:                                        ; preds = %land.lhs.true
  %127 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i.i = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i271 = add i32 %130, 1
  store volatile i32 %add.i.i271, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %131 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i.i = icmp eq i32 %131, 0
  br i1 %tobool.not.i.i, label %if.then96.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then96.i_size_write.exit_crit_edge:            ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then96
  %132 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i.i.i = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %135, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !88
  %136 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %141, ptrtoint (ptr @lockdep_recursion to i32)
  %142 = inttoptr i32 %add.i28.i to ptr
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %142, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !89
  %145 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i7.i.i = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %148, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool20.not.i.i = icmp eq i32 %144, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %149 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i29.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i.i272 = icmp eq i32 %152, 0
  br i1 %cmp.i.i272, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %153 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i9.i.i = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %156, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !90
  %157 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %158
  %159 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %160, ptrtoint (ptr @hardirqs_enabled to i32)
  %161 = inttoptr i32 %add47.i.i to ptr
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %161, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  %164 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i12.i.i = and i32 %164, -16384
  %165 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %167, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool54.not.i.i = icmp eq i32 %163, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i273, !prof !60

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

if.then.i.i273:                                   ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i273, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then96.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %168 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %169, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !92
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %170 = call ptr @llvm.returnaddress(i32 0) #11
  %171 = ptrtoint ptr %170 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %171) #11
  %172 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %add, ptr %i_size, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %171) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  %173 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %174, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  %175 = call i32 @llvm.read_register.i32(metadata !49) #11
  %and.i.i.i26.i = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i274 = add i32 %178, -1
  store volatile i32 %sub.i.i274, ptr %preempt_count.i.i27.i, align 4
  br label %if.end98

if.end98:                                         ; preds = %i_size_write.exit, %land.lhs.true.if.end98_crit_edge, %while.end.if.end98_crit_edge
  %call99 = call i32 @file_update_time(ptr noundef %file) #11
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #11
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %179 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %f_flags, align 4
  %and100 = and i32 %180, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %lor.lhs.false, label %if.end98.if.then109_crit_edge

if.end98.if.then109_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then109

lor.lhs.false:                                    ; preds = %if.end98
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %181 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %f_mapping, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %184, i32 0, i32 8
  %185 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %186, i32 0, i32 10
  %187 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %s_flags, align 4
  %and102 = and i32 %188, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %lor.lhs.false104, label %lor.lhs.false.if.then109_crit_edge

lor.lhs.false.if.then109_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then109

lor.lhs.false104:                                 ; preds = %lor.lhs.false
  %i_flags = getelementptr inbounds %struct.inode, ptr %184, i32 0, i32 4
  %189 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %i_flags, align 4
  %and107 = and i32 %190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %lor.lhs.false104.cleanup_crit_edge, label %lor.lhs.false104.if.then109_crit_edge

lor.lhs.false104.if.then109_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then109

lor.lhs.false104.cleanup_crit_edge:               ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then109:                                       ; preds = %lor.lhs.false104.if.then109_crit_edge, %lor.lhs.false.if.then109_crit_edge, %if.end98.if.then109_crit_edge
  %and113 = lshr i32 %180, 20
  %and113.lobit = and i32 %and113, 1
  %191 = xor i32 %and113.lobit, 1
  %call116 = call i32 @vfs_fsync_range(ptr noundef %file, i64 noundef %offset, i64 noundef %sub3, i32 noundef %191) #11
  br label %cleanup

out_trans_fail:                                   ; preds = %fallocate_chunk.exit.out_trans_fail_crit_edge, %fallocate_chunk.exit.thread, %calc_max_reserv.exit.out_trans_fail_crit_edge
  %error.0 = phi i32 [ %call.i.i, %fallocate_chunk.exit.thread ], [ %error.3.i, %fallocate_chunk.exit.out_trans_fail_crit_edge ], [ %call81, %calc_max_reserv.exit.out_trans_fail_crit_edge ]
  call void @gfs2_inplace_release(ptr noundef %1) #11
  br label %out_qunlock

out_qunlock:                                      ; preds = %out_trans_fail, %if.end44.out_qunlock_crit_edge
  %error.1 = phi i32 [ %error.0, %out_trans_fail ], [ %call49, %if.end44.out_qunlock_crit_edge ]
  call void @gfs2_quota_unlock(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %out_qunlock, %if.then109, %lor.lhs.false104.cleanup_crit_edge, %if.then22.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_qunlock ], [ %call116, %if.then109 ], [ 0, %lor.lhs.false104.cleanup_crit_edge ], [ %call20.i, %if.then22.i ], [ %call5.i, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rs_deltree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_dir_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !31, !32, !34, !36, !38, !40, !41, !43, !44, !45, !46, !48}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @gfs2_open_common.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/gfs2/file.c", i32 638, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/gfs2/file.c", i32 640, i32 2}
!5 = !{ptr @__func__.gfs2_open_common, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @gfs2_file_fops, !8, !"gfs2_file_fops", i1 false, i1 false}
!8 = !{!"../fs/gfs2/file.c", i32 1553, i32 30}
!9 = !{ptr @gfs2_dir_fops, !10, !"gfs2_dir_fops", i1 false, i1 false}
!10 = !{!"../fs/gfs2/file.c", i32 1572, i32 30}
!11 = !{ptr @gfs2_file_fops_nolock, !12, !"gfs2_file_fops_nolock", i1 false, i1 false}
!12 = !{!"../fs/gfs2/file.c", i32 1586, i32 30}
!13 = !{ptr @gfs2_dir_fops_nolock, !14, !"gfs2_dir_fops_nolock", i1 false, i1 false}
!14 = !{!"../fs/gfs2/file.c", i32 1603, i32 30}
!15 = distinct !{null, !16, !"fsflag_gfs2flag", i1 false, i1 false}
!16 = !{!"../fs/gfs2/file.c", i32 131, i32 3}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!19 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!24 = !{ptr @gfs2_vm_ops, !25, !"gfs2_vm_ops", i1 false, i1 false}
!25 = !{!"../fs/gfs2/file.c", i32 570, i32 42}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/gfs2/file.c", i32 1509, i32 3}
!40 = !{ptr @__func__.do_flock, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/gfs2/file.c", i32 1205, i32 4}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fallocate_chunk._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @fallocate_chunk._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2152705977}
!62 = !{i64 2152706184}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2152703841, i64 2152703866}
!65 = !{!"branch_weights", i32 2146410443, i32 1073205}
!66 = !{i64 2148721336}
!67 = !{i64 1105002, i64 1105026, i64 1105047, i64 1105064, i64 1105081}
!68 = !{i64 2148721562}
!69 = !{i64 2148621954, i64 2148621980, i64 2148622009, i64 2148622043, i64 2148622074, i64 2148622097}
!70 = !{i64 1024169, i64 1024230}
!71 = !{i64 1026901}
!72 = !{i64 1027186}
!73 = !{i64 2153037573}
!74 = !{i64 2153037415}
!75 = !{i64 2153037743}
!76 = !{i64 2149798888}
!77 = !{i64 2152873823}
!78 = !{i64 2152882673}
!79 = !{i64 2150176025, i64 2150176516, i64 2150176062, i64 2150176118, i64 2150176152, i64 2150176176, i64 2150176217, i64 2150176238, i64 2150176266, i64 2150176300}
!80 = !{i64 2148628347, i64 2148628379, i64 2148628408, i64 2148628442, i64 2148628473, i64 2148628496}
!81 = !{i64 2148717452}
!82 = !{i64 2150925917}
!83 = !{i64 2155435395, i64 2155435873, i64 2155435432, i64 2155435488, i64 2155435522, i64 2155435546, i64 2155435587, i64 2155435608, i64 2155435636, i64 2155435670}
!84 = !{i64 2152892627}
!85 = !{i64 2152902122}
!86 = !{i64 2152911599}
!87 = !{i64 2153039504}
!88 = !{i64 2149691220}
!89 = !{i64 2149696152}
!90 = !{i64 2149717864}
!91 = !{i64 2149722756}
!92 = !{i64 2149799213}
!93 = !{i64 2149799538}
!94 = !{i64 2153051366}
