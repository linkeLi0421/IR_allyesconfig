; ModuleID = '/llk/IR_all_yes/fs/gfs2/inode.c_pt.bc'
source_filename = "../fs/gfs2/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.iomap_ops = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.gfs2_diradd = type { i32, ptr, ptr, i32 }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
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
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.82, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.82 = type { %struct.delayed_work, i64 }
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
%struct.anon.4 = type { i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.gfs2_alloc_parms = type { i64, i32, i32, i64 }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.85 }
%union.anon.85 = type { i32 }
%struct.gfs2_dinode = type { %struct.gfs2_meta_header, %struct.gfs2_inum, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i16, i16, i32, i16, i16, i32, %struct.gfs2_inum, i64, i32, i32, i32, [44 x i8] }
%struct.gfs2_inum = type { i64, i64 }
%struct.gfs2_dirent = type { %struct.gfs2_inum, i32, i16, i16, i16, i16, %union.anon.83 }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i32, [8 x i8] }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.xattr = type { ptr, ptr, i32 }
%struct.delayed_call = type { ptr, ptr }

@gfs2_inode_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@gfs2_iopen_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@gfs2_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gl->gl_object == NULL\00", [42 x i8] zeroinitializer }, align 32
@__func__.glock_set_object = private unnamed_addr constant [17 x i8] c"glock_set_object\00", align 1
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/gfs2/glock.h\00", [16 x i8] zeroinitializer }, align 32
@gfs2_file_iops = internal constant %struct.inode_operations { ptr null, ptr null, ptr @gfs2_permission, ptr @gfs2_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfs2_setattr, ptr @gfs2_getattr, ptr @gfs2_listxattr, ptr @gfs2_fiemap, ptr @gfs2_update_time, ptr null, ptr null, ptr @gfs2_set_acl, ptr @gfs2_fileattr_set, ptr @gfs2_fileattr_get, [36 x i8] undef }, align 128
@gfs2_file_fops_nolock = external dso_local constant %struct.file_operations, align 4
@gfs2_file_fops = external dso_local constant %struct.file_operations, align 4
@gfs2_dir_iops = internal constant %struct.inode_operations { ptr @gfs2_lookup, ptr null, ptr @gfs2_permission, ptr @gfs2_get_acl, ptr null, ptr @gfs2_create, ptr @gfs2_link, ptr @gfs2_unlink, ptr @gfs2_symlink, ptr @gfs2_mkdir, ptr @gfs2_unlink, ptr @gfs2_mknod, ptr @gfs2_rename2, ptr @gfs2_setattr, ptr @gfs2_getattr, ptr @gfs2_listxattr, ptr @gfs2_fiemap, ptr @gfs2_update_time, ptr @gfs2_atomic_open, ptr null, ptr @gfs2_set_acl, ptr @gfs2_fileattr_set, ptr @gfs2_fileattr_get, [36 x i8] undef }, align 128
@gfs2_dir_fops_nolock = external dso_local constant %struct.file_operations, align 4
@gfs2_dir_fops = external dso_local constant %struct.file_operations, align 4
@gfs2_symlink_iops = internal constant %struct.inode_operations { ptr null, ptr @gfs2_get_link, ptr @gfs2_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfs2_setattr, ptr @gfs2_getattr, ptr @gfs2_listxattr, ptr @gfs2_fiemap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@gfs2_qdot = external dso_local local_unnamed_addr global %struct.qstr, align 8
@gfs2_qdotdot = external dso_local global %struct.qstr, align 8
@__const.gfs2_link.da = private unnamed_addr constant %struct.gfs2_diradd { i32 0, ptr null, ptr null, i32 1 }, align 4
@__func__.gfs2_rename = private unnamed_addr constant [12 x i8] c"gfs2_rename\00", align 1
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/gfs2/inode.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.gfs2_get_link = private unnamed_addr constant [14 x i8] c"gfs2_get_link\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 295, i32 44 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"../fs/gfs2/glock.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 306, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [19 x i8] c"../fs/gfs2/inode.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1475, i32 5 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_inode_lookup(ptr noundef %sb, i32 noundef %type, i64 noundef %no_addr, i64 noundef %no_formal_ino, i32 noundef %blktype) local_unnamed_addr #0 align 64 {
entry:
  %no_addr.addr = alloca i64, align 8
  %i_gh = alloca %struct.gfs2_holder, align 4
  %io_gl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %no_addr.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %no_addr, ptr %no_addr.addr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #14
  %1 = getelementptr inbounds %struct.gfs2_holder, ptr %i_gh, i32 0, i32 1
  %2 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %1, align 4
  %conv = trunc i64 %no_addr to i32
  %call = call ptr @iget5_locked(ptr noundef %sb, i32 noundef %conv, ptr noundef nonnull @iget_test, ptr noundef nonnull @iget_set, ptr noundef nonnull %no_addr.addr) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup100_crit_edge, label %if.end

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup100

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end79_crit_edge, label %if.then4

if.end.if.end79_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then4:                                         ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %io_gl) #14
  %10 = ptrtoint ptr %io_gl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %io_gl, align 4, !annotation !39
  %11 = ptrtoint ptr %no_addr.addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %no_addr.addr, align 8
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 6
  %call6 = call i32 @gfs2_glock_get(ptr noundef %9, i64 noundef %12, ptr noundef nonnull @gfs2_inode_glops, i32 noundef 1, ptr noundef %i_gl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %if.then4.fail_crit_edge, !prof !40

if.then4.fail_crit_edge:                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end11:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %cmp.not = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blktype)
  %cmp13.not = icmp eq i32 %blktype, 0
  %or.cond = and i1 %cmp13.not, %cmp.not
  br i1 %or.cond, label %if.end11.if.end35_crit_edge, label %if.then15

if.end11.if.end35_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then15:                                        ; preds = %if.end11
  %13 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_gl, align 4
  %15 = call ptr @llvm.returnaddress(i32 0) #14
  %16 = ptrtoint ptr %15 to i32
  call void @__gfs2_holder_init(ptr noundef %14, i32 noundef 1, i16 noundef zeroext 256, ptr noundef nonnull %i_gh, i32 noundef %16) #14
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end20, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #14
  br label %fail

if.end20:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %no_formal_ino)
  %tobool21.not = icmp eq i64 %no_formal_ino, 0
  br i1 %tobool21.not, label %if.end20.if.end26_crit_edge, label %land.lhs.true

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end20
  %17 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_gl, align 4
  %call23 = call zeroext i1 @gfs2_inode_already_deleted(ptr noundef %18, i64 noundef %no_formal_ino) #14
  br i1 %call23, label %land.lhs.true.fail_crit_edge, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  br i1 %cmp13.not, label %if.end26.if.end35_crit_edge, label %if.then29

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then29:                                        ; preds = %if.end26
  %19 = ptrtoint ptr %no_addr.addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %no_addr.addr, align 8
  %call30 = call i32 @gfs2_check_blk_type(ptr noundef %9, i64 noundef %20, i32 noundef %blktype) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end35_crit_edge, label %if.then29.fail_crit_edge

if.then29.fail_crit_edge:                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %if.end26.if.end35_crit_edge, %if.end11.if.end35_crit_edge
  %21 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_gl, align 4
  call void @_set_bit(i32 noundef 2, ptr noundef %22) #14
  %23 = ptrtoint ptr %no_addr.addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %no_addr.addr, align 8
  %call37 = call i32 @gfs2_glock_get(ptr noundef %9, i64 noundef %24, ptr noundef nonnull @gfs2_iopen_glops, i32 noundef 1, ptr noundef nonnull %io_gl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end46, label %if.end35.fail_crit_edge, !prof !40

if.end35.fail_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end46:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %blktype)
  %cmp47.not = icmp eq i32 %blktype, 2
  br i1 %cmp47.not, label %if.end46.if.end50_crit_edge, label %if.then49

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %io_gl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_gl, align 4
  call void @gfs2_cancel_delete_work(ptr noundef %26) #14
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end46.if.end50_crit_edge
  %27 = ptrtoint ptr %io_gl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_gl, align 4
  %i_iopen_gh = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 7
  %29 = call ptr @llvm.returnaddress(i32 0) #14
  %30 = ptrtoint ptr %29 to i32
  call void @__gfs2_holder_init(ptr noundef %28, i32 noundef 3, i16 noundef zeroext 128, ptr noundef %i_iopen_gh, i32 noundef %30) #14
  %call.i149 = call i32 @gfs2_glock_nq(ptr noundef %i_iopen_gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i150 = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i150, label %if.end60, label %gfs2_glock_nq_init.exit152

gfs2_glock_nq_init.exit152:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef %i_iopen_gh) #14
  %31 = ptrtoint ptr %io_gl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_gl, align 4
  call void @gfs2_glock_put(ptr noundef %32) #14
  br label %fail

if.end60:                                         ; preds = %if.end50
  %33 = ptrtoint ptr %io_gl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_gl, align 4
  call void @gfs2_glock_put(ptr noundef %34) #14
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %35 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -9223372036854775808, ptr %i_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tv_nsec, align 8
  %37 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_gl, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %38, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #14
  %gl_object.i = getelementptr inbounds %struct.gfs2_glock, ptr %38, i32 0, i32 12
  %39 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gl_object.i, align 4
  %cmp.not.i = icmp eq ptr %40, null
  br i1 %cmp.not.i, label %if.end60.glock_set_object.exit_crit_edge, label %if.then.i153, !prof !40

if.end60.glock_set_object.exit_crit_edge:         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %glock_set_object.exit

if.then.i153:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %ln_sbd.i = getelementptr inbounds %struct.gfs2_glock, ptr %38, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ln_sbd.i, align 8
  call void @gfs2_assert_warn_i(ptr noundef %42, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.glock_set_object, ptr noundef nonnull @.str.3, i32 noundef 306) #14
  call void @gfs2_dump_glock(ptr noundef null, ptr noundef %38, i1 noundef zeroext true) #14
  br label %glock_set_object.exit

glock_set_object.exit:                            ; preds = %if.then.i153, %if.end60.glock_set_object.exit_crit_edge
  %43 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call, ptr %gl_object.i, align 4
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #14
  br i1 %cmp, label %if.then65, label %if.else

if.then65:                                        ; preds = %glock_set_object.exit
  %call66 = call i32 @gfs2_instantiate(ptr noundef nonnull %i_gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end73_crit_edge, label %if.then68

if.then65.if.end73_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then68:                                        ; preds = %if.then65
  %44 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_gl, align 4
  %gl_lockref.i154 = getelementptr inbounds %struct.gfs2_glock, ptr %45, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i154) #14
  %gl_object.i155 = getelementptr inbounds %struct.gfs2_glock, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %gl_object.i155 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gl_object.i155, align 4
  %cmp.i = icmp eq ptr %47, %call
  br i1 %cmp.i, label %if.then.i156, label %if.then68.glock_clear_object.exit_crit_edge

if.then68.glock_clear_object.exit_crit_edge:      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  br label %glock_clear_object.exit

if.then.i156:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %gl_object.i155 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %gl_object.i155, align 4
  br label %glock_clear_object.exit

glock_clear_object.exit:                          ; preds = %if.then.i156, %if.then68.glock_clear_object.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i154) #14
  br label %fail

if.else:                                          ; preds = %glock_set_object.exit
  call void @__sanitizer_cov_trace_pc() #16
  %i_no_formal_ino = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 2
  %49 = ptrtoint ptr %i_no_formal_ino to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %no_formal_ino, ptr %i_no_formal_ino, align 8
  %type.tr = trunc i32 %type to i16
  %conv72 = shl i16 %type.tr, 12
  %50 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv72, ptr %call, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.then65.if.end73_crit_edge
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %tobool.i.not = icmp eq ptr %52, null
  br i1 %tobool.i.not, label %if.end73.if.end76_crit_edge, label %if.then75

if.end73.if.end76_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #14
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end73.if.end76_crit_edge
  %gh_gl = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %gh_gl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gh_gl, align 8
  %gl_lockref.i158 = getelementptr inbounds %struct.gfs2_glock, ptr %54, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i158) #14
  %gl_object.i159 = getelementptr inbounds %struct.gfs2_glock, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %gl_object.i159 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gl_object.i159, align 4
  %cmp.not.i160 = icmp eq ptr %56, null
  br i1 %cmp.not.i160, label %if.end76.glock_set_object.exit163_crit_edge, label %if.then.i162, !prof !40

if.end76.glock_set_object.exit163_crit_edge:      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %glock_set_object.exit163

if.then.i162:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %ln_sbd.i161 = getelementptr inbounds %struct.gfs2_glock, ptr %54, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %ln_sbd.i161 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ln_sbd.i161, align 8
  call void @gfs2_assert_warn_i(ptr noundef %58, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.glock_set_object, ptr noundef nonnull @.str.3, i32 noundef 306) #14
  call void @gfs2_dump_glock(ptr noundef null, ptr noundef %54, i1 noundef zeroext true) #14
  br label %glock_set_object.exit163

glock_set_object.exit163:                         ; preds = %if.then.i162, %if.end76.glock_set_object.exit163_crit_edge
  %59 = ptrtoint ptr %gl_object.i159 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call, ptr %gl_object.i159, align 4
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i158) #14
  %60 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 33
  %62 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i.i, align 16
  %64 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %call, align 8
  %66 = and i16 %65, -4096
  %67 = zext i16 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i16 %66, label %if.else23.i [
    i16 -32768, label %if.then.i165
    i16 16384, label %if.then9.i
    i16 -24576, label %if.then21.i
  ]

if.then.i165:                                     ; preds = %glock_set_object.exit163
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %68 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @gfs2_file_iops, ptr %i_op.i, align 8
  %ar_localflocks.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %63, i32 0, i32 21, i32 3
  %69 = ptrtoint ptr %ar_localflocks.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load.i.i = load i32, ptr %ar_localflocks.i.i, align 4
  %70 = and i32 %bf.load.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i164 = icmp eq i32 %70, 0
  %71 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  br i1 %tobool.not.i164, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @gfs2_file_fops_nolock, ptr %71, align 8
  br label %cleanup

if.else.i:                                        ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #16
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @gfs2_file_fops, ptr %71, align 8
  br label %cleanup

if.then9.i:                                       ; preds = %glock_set_object.exit163
  %i_op10.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %74 = ptrtoint ptr %i_op10.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @gfs2_dir_iops, ptr %i_op10.i, align 8
  %ar_localflocks.i44.i = getelementptr inbounds %struct.gfs2_sbd, ptr %63, i32 0, i32 21, i32 3
  %75 = ptrtoint ptr %ar_localflocks.i44.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load.i45.i = load i32, ptr %ar_localflocks.i44.i, align 4
  %76 = and i32 %bf.load.i45.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool12.not.i = icmp eq i32 %76, 0
  %77 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  br i1 %tobool12.not.i, label %if.else14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @gfs2_dir_fops_nolock, ptr %77, align 8
  br label %cleanup

if.else14.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @gfs2_dir_fops, ptr %77, align 8
  br label %cleanup

if.then21.i:                                      ; preds = %glock_set_object.exit163
  call void @__sanitizer_cov_trace_pc() #16
  %i_op22.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %80 = ptrtoint ptr %i_op22.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @gfs2_symlink_iops, ptr %i_op22.i, align 8
  br label %cleanup

if.else23.i:                                      ; preds = %glock_set_object.exit163
  call void @__sanitizer_cov_trace_pc() #16
  %i_op24.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %81 = ptrtoint ptr %i_op24.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @gfs2_file_iops, ptr %i_op24.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 13
  %82 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_rdev.i, align 8
  call void @init_special_inode(ptr noundef nonnull %call, i16 noundef zeroext %65, i32 noundef %83) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else23.i, %if.then21.i, %if.else14.i, %if.then13.i, %if.else.i, %if.then3.i
  call void @unlock_new_inode(ptr noundef nonnull %call) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %io_gl) #14
  br label %if.end79

if.end79:                                         ; preds = %cleanup, %if.end.if.end79_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %no_formal_ino)
  %tobool80.not = icmp eq i64 %no_formal_ino, 0
  br i1 %tobool80.not, label %if.end79.cleanup100_crit_edge, label %land.lhs.true81

if.end79.cleanup100_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup100

land.lhs.true81:                                  ; preds = %if.end79
  %i_no_formal_ino82 = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 2
  %84 = ptrtoint ptr %i_no_formal_ino82 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %i_no_formal_ino82, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %85)
  %tobool83.not = icmp eq i64 %85, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %no_formal_ino)
  %cmp86.not = icmp eq i64 %85, %no_formal_ino
  %or.cond148 = or i1 %tobool83.not, %cmp86.not
  br i1 %or.cond148, label %land.lhs.true81.cleanup100_crit_edge, label %if.then88

land.lhs.true81.cleanup100_crit_edge:             ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup100

if.then88:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef nonnull %call) #14
  br label %cleanup100

fail:                                             ; preds = %glock_clear_object.exit, %gfs2_glock_nq_init.exit152, %if.end35.fail_crit_edge, %if.then29.fail_crit_edge, %land.lhs.true.fail_crit_edge, %gfs2_glock_nq_init.exit, %if.then4.fail_crit_edge
  %error.1.ph = phi i32 [ %call.i149, %gfs2_glock_nq_init.exit152 ], [ %call37, %if.end35.fail_crit_edge ], [ %call30, %if.then29.fail_crit_edge ], [ -116, %land.lhs.true.fail_crit_edge ], [ %call.i, %gfs2_glock_nq_init.exit ], [ %call6, %if.then4.fail_crit_edge ], [ %call66, %glock_clear_object.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %io_gl) #14
  %gh_gl.i166 = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 7, i32 1
  %86 = ptrtoint ptr %gh_gl.i166 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gh_gl.i166, align 4
  %tobool.i167.not = icmp eq ptr %87, null
  br i1 %tobool.i167.not, label %fail.if.end95_crit_edge, label %if.then93

fail.if.end95_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then93:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  %i_iopen_gh91 = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 7
  call void @gfs2_glock_dq_uninit(ptr noundef %i_iopen_gh91) #14
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %fail.if.end95_crit_edge
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %tobool.i169.not = icmp eq ptr %89, null
  br i1 %tobool.i169.not, label %if.end95.if.end98_crit_edge, label %if.then97

if.end95.if.end98_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #14
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end95.if.end98_crit_edge
  call void @iget_failed(ptr noundef nonnull %call) #14
  %90 = inttoptr i32 %error.1.ph to ptr
  br label %cleanup100

cleanup100:                                       ; preds = %if.end98, %if.then88, %land.lhs.true81.cleanup100_crit_edge, %if.end79.cleanup100_crit_edge, %entry.cleanup100_crit_edge
  %retval.0 = phi ptr [ %90, %if.end98 ], [ inttoptr (i32 -116 to ptr), %if.then88 ], [ %call, %land.lhs.true81.cleanup100_crit_edge ], [ %call, %if.end79.cleanup100_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup100_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #14
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iget_test(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %opaque) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opaque to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %opaque, align 8
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %2 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_no_addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %1)
  %cmp = icmp eq i64 %3, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iget_set(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %opaque) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opaque to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %opaque, align 8
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %2 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %i_no_addr, align 8
  %conv = trunc i64 %1 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %i_ino, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_glock_nq_init(ptr noundef %gl, i32 noundef %state, i16 noundef zeroext %flags, ptr noundef %gh) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @__gfs2_holder_init(ptr noundef %gl, i32 noundef %state, i16 noundef zeroext %flags, ptr noundef %gh, i32 noundef %1) #14
  %call = tail call i32 @gfs2_glock_nq(ptr noundef %gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @gfs2_holder_uninit(ptr noundef %gh) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gfs2_inode_already_deleted(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_check_blk_type(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_cancel_delete_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @glock_set_object(ptr noundef %gl, ptr noundef %object) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %gl_lockref = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref) #14
  %gl_object = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %0 = ptrtoint ptr %gl_object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl_object, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then, !prof !40

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ln_sbd, align 8
  tail call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.glock_set_object, ptr noundef nonnull @.str.3, i32 noundef 306) #14
  tail call void @gfs2_dump_glock(ptr noundef null, ptr noundef %gl, i1 noundef zeroext true) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %4 = ptrtoint ptr %gl_object to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %object, ptr %gl_object, align 4
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_instantiate(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @glock_clear_object(ptr noundef %gl, ptr noundef readnone %object) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %gl_lockref = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref) #14
  %gl_object = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %0 = ptrtoint ptr %gl_object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl_object, align 4
  %cmp = icmp eq ptr %1, %object
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %gl_object to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gl_object, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_set_iop(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %6, label %if.else23 [
    i16 -32768, label %if.then
    i16 16384, label %if.then9
    i16 -24576, label %if.then21
  ]

if.then:                                          ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %8 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gfs2_file_iops, ptr %i_op, align 8
  %ar_localflocks.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %9 = ptrtoint ptr %ar_localflocks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i = load i32, ptr %ar_localflocks.i, align 4
  %10 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gfs2_file_fops_nolock, ptr %11, align 8
  br label %if.end28

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gfs2_file_fops, ptr %11, align 8
  br label %if.end28

if.then9:                                         ; preds = %entry
  %i_op10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %14 = ptrtoint ptr %i_op10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @gfs2_dir_iops, ptr %i_op10, align 8
  %ar_localflocks.i44 = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %15 = ptrtoint ptr %ar_localflocks.i44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i45 = load i32, ptr %ar_localflocks.i44, align 4
  %16 = and i32 %bf.load.i45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  %17 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  br i1 %tobool12.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gfs2_dir_fops_nolock, ptr %17, align 8
  br label %if.end28

if.else14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @gfs2_dir_fops, ptr %17, align 8
  br label %if.end28

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_op22 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %20 = ptrtoint ptr %i_op22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @gfs2_symlink_iops, ptr %i_op22, align 8
  br label %if.end28

if.else23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_op24 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %21 = ptrtoint ptr %i_op24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gfs2_file_iops, ptr %i_op24, align 8
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %22 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_rdev, align 8
  tail call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %5, i32 noundef %23) #14
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.then21, %if.else14, %if.then13, %if.else, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_lookup_by_inum(ptr nocapture noundef readonly %sdp, i64 noundef %no_addr, i64 noundef %no_formal_ino, i32 noundef %blktype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 8
  %call = tail call ptr @gfs2_inode_lookup(ptr noundef %1, i32 noundef 0, i64 noundef %no_addr, i64 noundef %no_formal_ino, i32 noundef %blktype)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %no_formal_ino)
  %tobool.not = icmp eq i64 %no_formal_ino, 0
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %entry
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %fail_iput

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

fail_iput:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @iput(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %fail_iput, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %fail_iput ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.then2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_lookup_simple(ptr noundef %dip, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %qstr = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qstr) #14
  %0 = getelementptr inbounds i8, ptr %qstr, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %name1.i = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %2 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %name1.i, align 8
  %call.i = tail call i32 @strlen(ptr noundef %name) #17
  %3 = ptrtoint ptr %qstr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %qstr, align 8
  %call.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %name, i32 noundef %call.i) #18
  %xor.i.i = xor i32 %call.i.i, -1
  %hash.i = getelementptr inbounds %struct.anon.4, ptr %qstr, i32 0, i32 1
  %4 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xor.i.i, ptr %hash.i, align 4
  %call = call ptr @gfs2_lookupi(ptr noundef %dip, ptr noundef nonnull %qstr, i32 noundef 1)
  %cmp = icmp eq ptr %call, null
  %spec.select = select i1 %cmp, ptr inttoptr (i32 -2 to ptr), ptr %call
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qstr) #14
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_lookupi(ptr noundef %dir, ptr noundef %name, i32 noundef %is_root) local_unnamed_addr #0 align 64 {
entry:
  %d_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d_gh) #14
  %2 = getelementptr inbounds %struct.gfs2_holder, ptr %d_gh, i32 0, i32 1
  %3 = call ptr @memset(ptr %d_gh, i32 255, i32 32)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %2, align 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name, align 8
  %7 = add i32 %6, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %7)
  %8 = icmp ult i32 %7, -255
  br i1 %8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %6, label %if.end.if.end20_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true11
  ]

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %name5 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %10 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name5, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %lhsc = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %lhsc)
  %cmp7 = icmp eq i8 %lhsc, 46
  br i1 %cmp7, label %land.lhs.true.if.then18_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

land.lhs.true11:                                  ; preds = %if.end
  %name12 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %13 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name12, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(2) %14, ptr noundef nonnull dereferenceable(2) @.str.1, i32 2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp14 = icmp eq i32 %bcmp, 0
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true11.if.end20_crit_edge

land.lhs.true11.if.end20_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %cmp17 = icmp eq ptr %18, %dir
  br i1 %cmp17, label %land.lhs.true15.if.then18_crit_edge, label %land.lhs.true15.if.end20_crit_edge

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true15.if.then18_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

if.then18:                                        ; preds = %land.lhs.true15.if.then18_crit_edge, %land.lhs.true.if.then18_crit_edge
  %call19 = tail call ptr @igrab(ptr noundef %dir) #14
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true15.if.end20_crit_edge, %land.lhs.true11.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 6
  %19 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_gl, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %20, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #14
  %21 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 78
  %25 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %thread_pid.i.i, align 16
  %gl_holders.i = getelementptr inbounds %struct.gfs2_glock, ptr %20, i32 0, i32 6
  %27 = ptrtoint ptr %gl_holders.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %gh.029.i = load ptr, ptr %gl_holders.i, align 4
  %cmp.not30.i = icmp eq ptr %gh.029.i, %gl_holders.i
  br i1 %cmp.not30.i, label %if.end20.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end20.for.body.i_crit_edge

if.end20.for.body.i_crit_edge:                    ; preds = %if.end20
  br label %for.body.i

if.end20.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end20.for.body.i_crit_edge
  %gh.031.i = phi ptr [ %gh.0.i, %for.inc.i.for.body.i_crit_edge ], [ %gh.029.i, %if.end20.for.body.i_crit_edge ]
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 6
  %28 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %gh_iflags.i, align 4
  %30 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.i

for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %31 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %gh_iflags.i, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool6.not.i = icmp eq i32 %33, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %gh_owner_pid.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 2
  %34 = ptrtoint ptr %gh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gh_owner_pid.i, align 4
  %cmp9.i = icmp eq ptr %35, %26
  br i1 %cmp9.i, label %gfs2_glock_is_locked_by_me.exit, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %36 = ptrtoint ptr %gh.031.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %gh.0.i = load ptr, ptr %gh.031.i, align 4
  %cmp.not.i = icmp eq ptr %gh.0.i, %gl_holders.i
  br i1 %cmp.not.i, label %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

gfs2_glock_is_locked_by_me.exit.thread:           ; preds = %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %if.end20.gfs2_glock_is_locked_by_me.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #14
  br label %if.then23

gfs2_glock_is_locked_by_me.exit:                  ; preds = %if.end8.i
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #14
  %cmp22 = icmp eq ptr %gh.031.i, null
  br i1 %cmp22, label %gfs2_glock_is_locked_by_me.exit.if.then23_crit_edge, label %gfs2_glock_is_locked_by_me.exit.if.end30_crit_edge

gfs2_glock_is_locked_by_me.exit.if.end30_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

gfs2_glock_is_locked_by_me.exit.if.then23_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23

if.then23:                                        ; preds = %gfs2_glock_is_locked_by_me.exit.if.then23_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread
  %37 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_gl, align 4
  %39 = tail call ptr @llvm.returnaddress(i32 0) #14
  %40 = ptrtoint ptr %39 to i32
  call void @__gfs2_holder_init(ptr noundef %38, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %d_gh, i32 noundef %40) #14
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %d_gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i75 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i75, label %if.then23.if.end30_crit_edge, label %if.then27

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %d_gh) #14
  %41 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end30:                                         ; preds = %if.then23.if.end30_crit_edge, %gfs2_glock_is_locked_by_me.exit.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_root)
  %tobool31.not = icmp eq i32 %is_root, 0
  br i1 %tobool31.not, label %if.then32, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then32:                                        ; preds = %if.end30
  %call33 = call i32 @gfs2_permission(ptr undef, ptr noundef %dir, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end37_crit_edge, label %if.then32.out_crit_edge

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.end37:                                         ; preds = %if.then32.if.end37_crit_edge, %if.end30.if.end37_crit_edge
  %call38 = call ptr @gfs2_dir_search(ptr noundef %dir, ptr noundef %name, i1 noundef zeroext false) #14
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  %42 = ptrtoint ptr %call38 to i32
  %spec.select = select i1 %cmp.i, i32 %42, i32 0
  br label %out

out:                                              ; preds = %if.end37, %if.then32.out_crit_edge
  %error.2 = phi i32 [ %call33, %if.then32.out_crit_edge ], [ %spec.select, %if.end37 ]
  %inode.0 = phi ptr [ null, %if.then32.out_crit_edge ], [ %call38, %if.end37 ]
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %2, align 4
  %tobool.i.not = icmp eq ptr %44, null
  br i1 %tobool.i.not, label %out.if.end45_crit_edge, label %if.then44

out.if.end45_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then44:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %d_gh) #14
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %out.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %error.2)
  %cmp46 = icmp eq i32 %error.2, -2
  br i1 %cmp46, label %if.end45.cleanup_crit_edge, label %if.end48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end48:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %tobool49.not = icmp eq ptr %inode.0, null
  %45 = inttoptr i32 %error.2 to ptr
  %spec.select81 = select i1 %tobool49.not, ptr %45, ptr %inode.0
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end45.cleanup_crit_edge, %if.then27, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %dir, %if.then18 ], [ %41, %if.then27 ], [ null, %if.end45.cleanup_crit_edge ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ], [ %spec.select81, %if.end48 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d_gh) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_permission(ptr nocapture readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  %i_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #14
  %0 = getelementptr inbounds %struct.gfs2_holder, ptr %i_gh, i32 0, i32 1
  %1 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %0, align 4
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %3 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_gl, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %4, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 78
  %9 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %thread_pid.i.i, align 16
  %gl_holders.i = getelementptr inbounds %struct.gfs2_glock, ptr %4, i32 0, i32 6
  %11 = ptrtoint ptr %gl_holders.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %gh.029.i = load ptr, ptr %gl_holders.i, align 4
  %cmp.not30.i = icmp eq ptr %gh.029.i, %gl_holders.i
  br i1 %cmp.not30.i, label %entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %gh.031.i = phi ptr [ %gh.0.i, %for.inc.i.for.body.i_crit_edge ], [ %gh.029.i, %entry.for.body.i_crit_edge ]
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 6
  %12 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %gh_iflags.i, align 4
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.i

for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %15 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %gh_iflags.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not.i = icmp eq i32 %17, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %gh_owner_pid.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 2
  %18 = ptrtoint ptr %gh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gh_owner_pid.i, align 4
  %cmp9.i = icmp eq ptr %19, %10
  br i1 %cmp9.i, label %gfs2_glock_is_locked_by_me.exit, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %20 = ptrtoint ptr %gh.031.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %gh.0.i = load ptr, ptr %gh.031.i, align 4
  %cmp.not.i = icmp eq ptr %gh.0.i, %gl_holders.i
  br i1 %cmp.not.i, label %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

gfs2_glock_is_locked_by_me.exit.thread:           ; preds = %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #14
  br label %if.then

gfs2_glock_is_locked_by_me.exit:                  ; preds = %if.end8.i
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #14
  %cmp = icmp eq ptr %gh.031.i, null
  br i1 %cmp, label %gfs2_glock_is_locked_by_me.exit.if.then_crit_edge, label %gfs2_glock_is_locked_by_me.exit.if.end8_crit_edge

gfs2_glock_is_locked_by_me.exit.if.end8_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

gfs2_glock_is_locked_by_me.exit.if.then_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %gfs2_glock_is_locked_by_me.exit.if.then_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread
  %and = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %21 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_gl, align 4
  %23 = tail call ptr @llvm.returnaddress(i32 0) #14
  %24 = ptrtoint ptr %23 to i32
  call void @__gfs2_holder_init(ptr noundef %22, i32 noundef 3, i16 noundef zeroext 8, ptr noundef nonnull %i_gh, i32 noundef %24) #14
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i28 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i28, label %if.end.if.end8_crit_edge, label %gfs2_glock_nq_init.exit

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

gfs2_glock_nq_init.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %gfs2_glock_is_locked_by_me.exit.if.end8_crit_edge
  %and9 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.else_crit_edge, label %land.lhs.true

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end8
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %25 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_flags, align 4
  %and11 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end8.if.else_crit_edge
  %call14 = call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #14
  br label %if.end15

if.end15:                                         ; preds = %if.else, %land.lhs.true.if.end15_crit_edge
  %error.0 = phi i32 [ %call14, %if.else ], [ -1, %land.lhs.true.if.end15_crit_edge ]
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %tobool.i.not = icmp eq ptr %28, null
  br i1 %tobool.i.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end15.cleanup_crit_edge, %gfs2_glock_nq_init.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -10, %if.then.cleanup_crit_edge ], [ %call.i, %gfs2_glock_nq_init.exit ], [ %error.0, %if.then17 ], [ %error.0, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_dir_search(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @gfs2_seek_data(ptr noundef %file, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #14
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  %4 = call ptr @memset(ptr %gh, i32 255, i32 32)
  tail call void @down_read(ptr noundef %i_rwsem.i) #14
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_gl, align 4
  %7 = tail call ptr @llvm.returnaddress(i32 0) #14
  %8 = ptrtoint ptr %7 to i32
  call void @__gfs2_holder_init(ptr noundef %6, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %8) #14
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #14
  %conv = sext i32 %call.i to i64
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i64 @iomap_seek_data(ptr noundef %3, i64 noundef %offset, ptr noundef nonnull @gfs2_iomap_ops) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %gfs2_glock_nq_init.exit
  %ret.0 = phi i64 [ %conv, %gfs2_glock_nq_init.exit ], [ %call2, %if.then ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #14
  call void @up_read(ptr noundef %i_rwsem.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ret.0)
  %cmp = icmp slt i64 %ret.0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %s_maxbytes, align 8
  %call6 = call i64 @vfs_setpos(ptr noundef %file, i64 noundef %ret.0, i64 noundef %12) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i64 [ %call6, %if.end5 ], [ %ret.0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #14
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iomap_seek_data(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @gfs2_seek_hole(ptr noundef %file, i64 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #14
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  %4 = call ptr @memset(ptr %gh, i32 255, i32 32)
  tail call void @down_read(ptr noundef %i_rwsem.i) #14
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_gl, align 4
  %7 = tail call ptr @llvm.returnaddress(i32 0) #14
  %8 = ptrtoint ptr %7 to i32
  call void @__gfs2_holder_init(ptr noundef %6, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %8) #14
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #14
  %conv = sext i32 %call.i to i64
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i64 @iomap_seek_hole(ptr noundef %3, i64 noundef %offset, ptr noundef nonnull @gfs2_iomap_ops) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %gfs2_glock_nq_init.exit
  %ret.0 = phi i64 [ %conv, %gfs2_glock_nq_init.exit ], [ %call2, %if.then ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #14
  call void @up_read(ptr noundef %i_rwsem.i) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ret.0)
  %cmp = icmp slt i64 %ret.0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %s_maxbytes, align 8
  %call6 = call i64 @vfs_setpos(ptr noundef %file, i64 noundef %ret.0, i64 noundef %12) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i64 [ %call6, %if.end5 ], [ %ret.0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #14
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iomap_seek_hole(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_warn_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dump_glock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  %i_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #14
  %2 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  %call2 = tail call i32 @gfs2_qa_get(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_gl, align 4
  %5 = tail call ptr @llvm.returnaddress(i32 0) #14
  %6 = ptrtoint ptr %5 to i32
  call void @__gfs2_holder_init(ptr noundef %4, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %i_gh, i32 noundef %6) #14
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #14
  br label %out

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attr, align 8
  %call7 = call i32 @may_setattr(ptr noundef nonnull @init_user_ns, ptr noundef %1, i32 noundef %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.if.end38_crit_edge

if.end6.if.end38_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end10:                                         ; preds = %if.end6
  %call11 = call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.if.end38_crit_edge

if.end10.if.end38_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.end14:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attr, align 8
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %11 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ia_size, align 8
  %call18 = call i32 @gfs2_setattr_size(ptr noundef %1, i64 noundef %12) #14
  br label %error35

if.else:                                          ; preds = %if.end14
  %and20 = and i32 %10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = call fastcc i32 @setattr_chown(ptr noundef %1, ptr noundef %attr)
  br label %error35

if.else24:                                        ; preds = %if.else
  %call25 = call fastcc i32 @gfs2_setattr_simple(ptr noundef %1, ptr noundef %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true, label %if.else24.if.end38_crit_edge

if.else24.if.end38_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

land.lhs.true:                                    ; preds = %if.else24
  %13 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attr, align 8
  %and28 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true.if.then37_crit_edge, label %if.then30

land.lhs.true.if.then37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 8
  %call31 = call i32 @posix_acl_chmod(ptr noundef nonnull @init_user_ns, ptr noundef %1, i16 noundef zeroext %16) #14
  br label %error35

error35:                                          ; preds = %if.then30, %if.then22, %if.then17
  %error.0 = phi i32 [ %call18, %if.then17 ], [ %call23, %if.then22 ], [ %call31, %if.then30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool36.not = icmp eq i32 %error.0, 0
  br i1 %tobool36.not, label %error35.if.then37_crit_edge, label %error35.if.end38_crit_edge

error35.if.end38_crit_edge:                       ; preds = %error35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

error35.if.then37_crit_edge:                      ; preds = %error35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

if.then37:                                        ; preds = %error35.if.then37_crit_edge, %land.lhs.true.if.then37_crit_edge
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %error35.if.end38_crit_edge, %if.else24.if.end38_crit_edge, %if.end10.if.end38_crit_edge, %if.end6.if.end38_crit_edge
  %error.068 = phi i32 [ 0, %if.then37 ], [ %error.0, %error35.if.end38_crit_edge ], [ %call25, %if.else24.if.end38_crit_edge ], [ %call11, %if.end10.if.end38_crit_edge ], [ %call7, %if.end6.if.end38_crit_edge ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #14
  br label %out

out:                                              ; preds = %if.end38, %gfs2_glock_nq_init.exit
  %error.1 = phi i32 [ %call.i, %gfs2_glock_nq_init.exit ], [ %error.068, %if.end38 ]
  call void @gfs2_qa_put(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #14
  %4 = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 1
  %5 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %4, align 4
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_gl, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %8, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 78
  %13 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %thread_pid.i.i, align 16
  %gl_holders.i = getelementptr inbounds %struct.gfs2_glock, ptr %8, i32 0, i32 6
  %15 = ptrtoint ptr %gl_holders.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %gh.029.i = load ptr, ptr %gl_holders.i, align 4
  %cmp.not30.i = icmp eq ptr %gh.029.i, %gl_holders.i
  br i1 %cmp.not30.i, label %entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %gh.031.i = phi ptr [ %gh.0.i, %for.inc.i.for.body.i_crit_edge ], [ %gh.029.i, %entry.for.body.i_crit_edge ]
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 6
  %16 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %gh_iflags.i, align 4
  %18 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.i

for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %19 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %gh_iflags.i, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not.i = icmp eq i32 %21, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %gh_owner_pid.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 2
  %22 = ptrtoint ptr %gh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gh_owner_pid.i, align 4
  %cmp9.i = icmp eq ptr %23, %14
  br i1 %cmp9.i, label %gfs2_glock_is_locked_by_me.exit, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %24 = ptrtoint ptr %gh.031.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %gh.0.i = load ptr, ptr %gh.031.i, align 4
  %cmp.not.i = icmp eq ptr %gh.0.i, %gl_holders.i
  br i1 %cmp.not.i, label %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

gfs2_glock_is_locked_by_me.exit.thread:           ; preds = %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #14
  br label %if.then

gfs2_glock_is_locked_by_me.exit:                  ; preds = %if.end8.i
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #14
  %cmp = icmp eq ptr %gh.031.i, null
  br i1 %cmp, label %gfs2_glock_is_locked_by_me.exit.if.then_crit_edge, label %gfs2_glock_is_locked_by_me.exit.if.end6_crit_edge

gfs2_glock_is_locked_by_me.exit.if.end6_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

gfs2_glock_is_locked_by_me.exit.if.then_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %gfs2_glock_is_locked_by_me.exit.if.then_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread
  %25 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_gl, align 4
  %27 = tail call ptr @llvm.returnaddress(i32 0) #14
  %28 = ptrtoint ptr %27 to i32
  call void @__gfs2_holder_init(ptr noundef %26, i32 noundef 3, i16 noundef zeroext 8, ptr noundef nonnull %gh, i32 noundef %28) #14
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i32 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i32, label %if.then.if.end6_crit_edge, label %gfs2_glock_nq_init.exit

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

gfs2_glock_nq_init.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #14
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %gfs2_glock_is_locked_by_me.exit.if.end6_crit_edge
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 18
  %29 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %31 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %attributes, align 8
  %or = or i64 %32, 32
  store i64 %or, ptr %attributes, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %and10 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %attributes13 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %33 = ptrtoint ptr %attributes13 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %attributes13, align 8
  %or14 = or i64 %34, 16
  store i64 %or14, ptr %attributes13, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %35 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %attributes_mask, align 8
  %or16 = or i64 %36, 2164
  store i64 %or16, ptr %attributes_mask, align 8
  call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #14
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %4, align 4
  %tobool.i.not = icmp eq ptr %38, null
  br i1 %tobool.i.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %gfs2_glock_nq_init.exit
  %retval.0 = phi i32 [ %call.i, %gfs2_glock_nq_init.exit ], [ 0, %if.then18 ], [ 0, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len) #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #14
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  %0 = call ptr @memset(ptr %gh, i32 255, i32 32)
  tail call void @down_read(ptr noundef %i_rwsem.i) #14
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %1 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_gl, align 4
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  call void @__gfs2_holder_init(ptr noundef %2, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %4) #14
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 @iomap_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len, ptr noundef nonnull @gfs2_iomap_ops) #14
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #14
  br label %out

out:                                              ; preds = %if.end, %gfs2_glock_nq_init.exit
  %ret.0 = phi i32 [ %call.i, %gfs2_glock_nq_init.exit ], [ %call2, %if.end ]
  call void @up_read(ptr noundef %i_rwsem.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_update_time(ptr noundef %inode, ptr noundef %time, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %0 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_gl, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 78
  %6 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread_pid.i.i, align 16
  %gl_holders.i = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %gl_holders.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %gh.029.i = load ptr, ptr %gl_holders.i, align 4
  %cmp.not30.i = icmp eq ptr %gh.029.i, %gl_holders.i
  br i1 %cmp.not30.i, label %entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %gh.031.i = phi ptr [ %gh.0.i, %for.inc.i.for.body.i_crit_edge ], [ %gh.029.i, %entry.for.body.i_crit_edge ]
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 6
  %9 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %gh_iflags.i, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.i

for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %12 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %gh_iflags.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not.i = icmp eq i32 %14, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %gh_owner_pid.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 2
  %15 = ptrtoint ptr %gh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gh_owner_pid.i, align 4
  %cmp9.i = icmp eq ptr %16, %7
  br i1 %cmp9.i, label %gfs2_glock_is_locked_by_me.exit, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %gh.031.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %gh.0.i = load ptr, ptr %gh.031.i, align 4
  %cmp.not.i = icmp eq ptr %gh.0.i, %gl_holders.i
  br i1 %cmp.not.i, label %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_glock_is_locked_by_me.exit.thread

gfs2_glock_is_locked_by_me.exit.thread:           ; preds = %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #14
  br label %if.end7

gfs2_glock_is_locked_by_me.exit:                  ; preds = %if.end8.i
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #14
  %tobool.not = icmp eq ptr %gh.031.i, null
  br i1 %tobool.not, label %gfs2_glock_is_locked_by_me.exit.if.end7_crit_edge, label %land.lhs.true

gfs2_glock_is_locked_by_me.exit.if.end7_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

land.lhs.true:                                    ; preds = %gfs2_glock_is_locked_by_me.exit
  %gl_state.i = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %gl_state.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %gl_state.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i)
  %cmp.i.not = icmp eq i16 %bf.lshr.mask.i, 16384
  br i1 %cmp.i.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  tail call void @gfs2_glock_dq(ptr noundef nonnull %gh.031.i) #14
  tail call void @gfs2_holder_reinit(i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %gh.031.i) #14
  %call4 = tail call i32 @gfs2_glock_nq(ptr noundef nonnull %gh.031.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %gfs2_glock_is_locked_by_me.exit.if.end7_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread
  %call8 = tail call i32 @generic_update_time(ptr noundef %inode, ptr noundef %time, i32 noundef %flags) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ %call4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_qa_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @may_setattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_setattr_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setattr_chown(ptr noundef %inode, ptr noundef %attr) unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.gfs2_alloc_parms, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #14
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %4 = call ptr @memset(ptr %ap, i32 255, i32 24)
  %5 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %5)
  %ogid.sroa.0.0.copyload = load i32, ptr %i_gid, align 8
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %ngid.sroa.0.0.copyload = load i32, ptr %ia_gid, align 4
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %attr, align 8
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %9)
  %nuid.sroa.0.0.copyload = load i32, ptr %ia_uid, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %10 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %ouid.sroa.0.0.copyload = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ouid.sroa.0.0.copyload, i32 %nuid.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %ouid.sroa.0.0.copyload, %nuid.sroa.0.0.copyload
  br i1 %cmp.i, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %nuid.sroa.0.0 = phi i32 [ -1, %if.then ], [ %nuid.sroa.0.0.copyload, %lor.lhs.false.if.end_crit_edge ]
  %ouid.sroa.0.0 = phi i32 [ -1, %if.then ], [ %ouid.sroa.0.0.copyload, %lor.lhs.false.if.end_crit_edge ]
  %and5 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %ogid.sroa.0.0.copyload, i32 %ngid.sroa.0.0.copyload)
  %cmp.i164 = icmp eq i32 %ogid.sroa.0.0.copyload, %ngid.sroa.0.0.copyload
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp.i164
  %ngid.sroa.0.0 = select i1 %or.cond, i32 -1, i32 %ngid.sroa.0.0.copyload
  %ogid.sroa.0.0 = select i1 %or.cond, i32 -1, i32 %ogid.sroa.0.0.copyload
  %call15 = tail call i32 @gfs2_qa_get(ptr noundef %inode) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call i32 @gfs2_rindex_update(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end22:                                         ; preds = %if.end18
  %.fca.0.insert123 = insertvalue [1 x i32] poison, i32 %nuid.sroa.0.0, 0
  %.fca.0.insert96 = insertvalue [1 x i32] poison, i32 %ngid.sroa.0.0, 0
  %call25 = tail call i32 @gfs2_quota_lock(ptr noundef %inode, [1 x i32] %.fca.0.insert123, [1 x i32] %.fca.0.insert96) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end28:                                         ; preds = %if.end22
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %11 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_blocks.i, align 8
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_bsize_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %16, i32 0, i32 5, i32 5
  %17 = ptrtoint ptr %sb_bsize_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_bsize_shift.i, align 4
  %sub.i = add i32 %18, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %12, %sh_prom.i
  %19 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shr.i, ptr %ap, align 8
  %.fca.0.insert137 = insertvalue [1 x i32] poison, i32 %ouid.sroa.0.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ouid.sroa.0.0)
  %cmp.i165 = icmp eq i32 %ouid.sroa.0.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ogid.sroa.0.0)
  %cmp.i166 = icmp eq i32 %ogid.sroa.0.0, -1
  %or.cond169 = select i1 %cmp.i165, i1 %cmp.i166, i1 false
  br i1 %or.cond169, label %if.end28.if.end48_crit_edge, label %if.then41

if.end28.if.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then41:                                        ; preds = %if.end28
  %call44 = call i32 @gfs2_quota_check(ptr noundef %inode, [1 x i32] %.fca.0.insert123, [1 x i32] %.fca.0.insert96, ptr noundef nonnull %ap) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then41.if.end48_crit_edge, label %if.then41.out_gunlock_q_crit_edge

if.then41.out_gunlock_q_crit_edge:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_q

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.end48:                                         ; preds = %if.then41.if.end48_crit_edge, %if.end28.if.end48_crit_edge
  %call49 = call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef 5, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.out_gunlock_q_crit_edge

if.end48.out_gunlock_q_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_q

if.end52:                                         ; preds = %if.end48
  %call53 = call fastcc i32 @gfs2_setattr_simple(ptr noundef %inode, ptr noundef %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp ne i32 %call53, 0
  %or.cond171 = select i1 %tobool54.not, i1 true, i1 %or.cond169
  br i1 %or.cond171, label %if.end52.out_end_trans_crit_edge, label %if.then68

if.end52.out_end_trans_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans

if.then68:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %ap to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ap, align 8
  %sub = sub i64 0, %21
  %.fca.0.insert116 = insertvalue [1 x i32] poison, i32 %ogid.sroa.0.0, 0
  call void @gfs2_quota_change(ptr noundef %inode, i64 noundef %sub, [1 x i32] %.fca.0.insert137, [1 x i32] %.fca.0.insert116) #14
  %22 = ptrtoint ptr %ap to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ap, align 8
  call void @gfs2_quota_change(ptr noundef %inode, i64 noundef %23, [1 x i32] %.fca.0.insert123, [1 x i32] %.fca.0.insert96) #14
  br label %out_end_trans

out_end_trans:                                    ; preds = %if.then68, %if.end52.out_end_trans_crit_edge
  call void @gfs2_trans_end(ptr noundef %3) #14
  br label %out_gunlock_q

out_gunlock_q:                                    ; preds = %out_end_trans, %if.end48.out_gunlock_q_crit_edge, %if.then41.out_gunlock_q_crit_edge
  %error.0 = phi i32 [ %call49, %if.end48.out_gunlock_q_crit_edge ], [ %call53, %out_end_trans ], [ %call44, %if.then41.out_gunlock_q_crit_edge ]
  call void @gfs2_quota_unlock(ptr noundef %inode) #14
  br label %out

out:                                              ; preds = %out_gunlock_q, %if.end22.out_crit_edge, %if.end18.out_crit_edge
  %error.1 = phi i32 [ %call19, %if.end18.out_crit_edge ], [ %call25, %if.end22.out_crit_edge ], [ %error.0, %out_gunlock_q ]
  call void @gfs2_qa_put(ptr noundef %inode) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out ], [ %call15, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_setattr_simple(ptr noundef %inode, ptr noundef %attr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %inode, ptr noundef %attr) #14
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %call3 = tail call i32 @gfs2_trans_begin(ptr noundef %9, i32 noundef 1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %inode, ptr noundef %attr) #14
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #14
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i16 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i16, align 16
  tail call void @gfs2_trans_end(ptr noundef %13) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end6 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_qa_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_rindex_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_lock(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_check(ptr noundef, [1 x i32], [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_trans_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_change(ptr noundef, i64 noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_reinit(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_update_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gfs2_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__gfs2_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, -32768
  %conv2 = zext i1 %excl to i32
  %call = tail call fastcc i32 @gfs2_create_inode(ptr noundef %dir, ptr noundef %dentry, ptr noundef null, i16 noundef zeroext %0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %conv2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %ghs = alloca [2 x %struct.gfs2_holder], align 4
  %dibh = alloca ptr, align 4
  %da = alloca %struct.gfs2_diradd, align 4
  %ap = alloca %struct.gfs2_alloc_parms, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ghs) #14
  %6 = call ptr @memset(ptr %ghs, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh) #14
  %7 = ptrtoint ptr %dibh to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %da) #14
  %8 = call ptr @memcpy(ptr %da, ptr @__const.gfs2_link.da, i32 16)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %5, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp = icmp eq i16 %11, 16384
  br i1 %cmp, label %entry.cleanup108_crit_edge, label %if.end

entry.cleanup108_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup108

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @gfs2_qa_get(ptr noundef %dir) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup108_crit_edge

if.end.cleanup108_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup108

if.end7:                                          ; preds = %if.end
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 6
  %12 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_gl, align 4
  %14 = tail call ptr @llvm.returnaddress(i32 0) #14
  %15 = ptrtoint ptr %14 to i32
  call void @__gfs2_holder_init(ptr noundef %13, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %ghs, i32 noundef %15) #14
  %i_gl8 = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %i_gl8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_gl8, align 4
  %add.ptr = getelementptr inbounds %struct.gfs2_holder, ptr %ghs, i32 1
  call void @__gfs2_holder_init(ptr noundef %17, i32 noundef 1, i16 noundef zeroext 0, ptr noundef %add.ptr, i32 noundef %15) #14
  %call11 = call i32 @gfs2_glock_nq(ptr noundef nonnull %ghs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end7.out_parent_crit_edge

if.end7.out_parent_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_parent

if.end14:                                         ; preds = %if.end7
  %call17 = call i32 @gfs2_glock_nq(ptr noundef %add.ptr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.out_child_crit_edge

if.end14.out_child_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_child

if.end20:                                         ; preds = %if.end14
  %18 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp21 = icmp eq i32 %20, 0
  br i1 %cmp21, label %if.end20.out_gunlock_crit_edge, label %if.end24

if.end20.out_gunlock_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @gfs2_permission(ptr undef, ptr noundef %dir, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.out_gunlock_crit_edge

if.end24.out_gunlock_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.end28:                                         ; preds = %if.end24
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call29 = call i32 @gfs2_dir_check(ptr noundef %dir, ptr noundef %d_name, ptr noundef null) #14
  %21 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call29, label %if.end28.out_gunlock_crit_edge [
    i32 -2, label %sw.epilog
    i32 0, label %sw.bb
  ]

if.end28.out_gunlock_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

sw.epilog:                                        ; preds = %if.end28
  %22 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool30.not = icmp eq i32 %24, 0
  br i1 %tobool30.not, label %sw.epilog.out_gunlock_crit_edge, label %if.end32

sw.epilog.out_gunlock_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.end32:                                         ; preds = %sw.epilog
  %i_entries = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 17
  %25 = ptrtoint ptr %i_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp33 = icmp eq i32 %26, -1
  br i1 %cmp33, label %if.end32.out_gunlock_crit_edge, label %if.end36

if.end32.out_gunlock_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.end36:                                         ; preds = %if.end32
  %i_flags = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %27 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_flags, align 4
  %29 = and i32 %28, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %if.end43, label %if.end36.out_gunlock_crit_edge

if.end36.out_gunlock_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.end43:                                         ; preds = %if.end36
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %18, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %32, label %if.end52 [
    i32 0, label %if.end43.out_gunlock_crit_edge
    i32 -1, label %out_gunlock.fold.split
  ]

if.end43.out_gunlock_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.end52:                                         ; preds = %if.end43
  %call54 = call i32 @gfs2_diradd_alloc_required(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %da) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end52.out_gunlock_crit_edge, label %if.end58

if.end52.out_gunlock_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.end58:                                         ; preds = %if.end52
  %34 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %da, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool59.not = icmp eq i32 %35, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #14
  %36 = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 1
  %conv62 = zext i32 %35 to i64
  %37 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv62, ptr %ap, align 8
  %38 = call ptr @memset(ptr %36, i32 0, i32 16)
  %call63 = call fastcc i32 @gfs2_quota_lock_check(ptr noundef %dir, ptr noundef nonnull %ap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %cleanup

if.end66:                                         ; preds = %if.then60
  %call67 = call i32 @gfs2_inplace_reserve(ptr noundef %dir, ptr noundef nonnull %ap) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %cleanup.thread168

cleanup.thread168:                                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #14
  br label %out_gunlock_q

if.end70:                                         ; preds = %if.end66
  %39 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %da, align 4
  %rs_rgd.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %rs_rgd.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rs_rgd.i.i, align 4
  %rd_length.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %rd_length.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rd_length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %40)
  %cmp.i.i = icmp ugt i32 %44, %40
  %add.i.i = add i32 %40, 1
  %retval.0.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %44
  %add2.i = add i32 %40, 5
  %add4.i = add i32 %add2.i, %retval.0.i.i
  %call72 = call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef %add4.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #14
  br i1 %tobool73.not, label %if.end70.if.end80_crit_edge, label %if.end70.out_ipres_crit_edge

if.end70.out_ipres_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_ipres

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

cleanup:                                          ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #14
  br label %out_gunlock

if.else:                                          ; preds = %if.end58
  %call76 = call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef 3, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.else.if.end80_crit_edge, label %if.else.out_ipres_crit_edge

if.else.out_ipres_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_ipres

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.end80:                                         ; preds = %if.else.if.end80_crit_edge, %if.end70.if.end80_crit_edge
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 1
  %45 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_no_addr.i, align 8
  %call.i = call i32 @gfs2_meta_buffer(ptr noundef %5, i32 noundef 4, i64 noundef %46, ptr noundef nonnull %dibh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool82.not = icmp eq i32 %call.i, 0
  br i1 %tobool82.not, label %if.end84, label %if.end80.out_end_trans_crit_edge

if.end80.out_end_trans_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans

if.end84:                                         ; preds = %if.end80
  %call86 = call i32 @gfs2_dir_add(ptr noundef %dir, ptr noundef %d_name, ptr noundef %5, ptr noundef nonnull %da) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end84.out_brelse_crit_edge

if.end84.out_brelse_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_brelse

if.end89:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %i_gl8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_gl8, align 4
  %49 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dibh, align 4
  call void @gfs2_trans_add_meta(ptr noundef %48, ptr noundef %50) #14
  call void @inc_nlink(ptr noundef %5) #14
  %i_ctime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %5) #14
  %51 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  call void @ihold(ptr noundef %5) #14
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %5) #14
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #14
  br label %out_brelse

out_brelse:                                       ; preds = %if.end89, %if.end84.out_brelse_crit_edge
  %52 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dibh, align 4
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %out_brelse.out_end_trans_crit_edge, label %if.then.i

out_brelse.out_end_trans_crit_edge:               ; preds = %out_brelse
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans

if.then.i:                                        ; preds = %out_brelse
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %53) #14
  br label %out_end_trans

out_end_trans:                                    ; preds = %if.then.i, %out_brelse.out_end_trans_crit_edge, %if.end80.out_end_trans_crit_edge
  %error.1 = phi i32 [ %call.i, %if.end80.out_end_trans_crit_edge ], [ %call86, %out_brelse.out_end_trans_crit_edge ], [ %call86, %if.then.i ]
  call void @gfs2_trans_end(ptr noundef %3) #14
  br label %out_ipres

out_ipres:                                        ; preds = %out_end_trans, %if.else.out_ipres_crit_edge, %if.end70.out_ipres_crit_edge
  %error.2 = phi i32 [ %error.1, %out_end_trans ], [ %call76, %if.else.out_ipres_crit_edge ], [ %call72, %if.end70.out_ipres_crit_edge ]
  %54 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %da, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool95.not = icmp eq i32 %55, 0
  br i1 %tobool95.not, label %out_ipres.out_gunlock_crit_edge, label %if.then96

out_ipres.out_gunlock_crit_edge:                  ; preds = %out_ipres
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.then96:                                        ; preds = %out_ipres
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_inplace_release(ptr noundef %dir) #14
  br label %out_gunlock_q

out_gunlock_q:                                    ; preds = %if.then96, %cleanup.thread168
  %error.3.ph = phi i32 [ %call67, %cleanup.thread168 ], [ %error.2, %if.then96 ]
  %56 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %da, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool99.not = icmp eq i32 %.pr, 0
  br i1 %tobool99.not, label %out_gunlock_q.out_gunlock_crit_edge, label %if.then100

out_gunlock_q.out_gunlock_crit_edge:              ; preds = %out_gunlock_q
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.then100:                                       ; preds = %out_gunlock_q
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_quota_unlock(ptr noundef %dir) #14
  br label %out_gunlock

out_gunlock.fold.split:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

out_gunlock:                                      ; preds = %out_gunlock.fold.split, %if.then100, %out_gunlock_q.out_gunlock_crit_edge, %out_ipres.out_gunlock_crit_edge, %cleanup, %if.end52.out_gunlock_crit_edge, %if.end43.out_gunlock_crit_edge, %if.end36.out_gunlock_crit_edge, %if.end32.out_gunlock_crit_edge, %sw.epilog.out_gunlock_crit_edge, %sw.bb, %if.end28.out_gunlock_crit_edge, %if.end24.out_gunlock_crit_edge, %if.end20.out_gunlock_crit_edge
  %error.4 = phi i32 [ -2, %if.end20.out_gunlock_crit_edge ], [ %call25, %if.end24.out_gunlock_crit_edge ], [ %call29, %if.end28.out_gunlock_crit_edge ], [ -17, %sw.bb ], [ -27, %if.end32.out_gunlock_crit_edge ], [ -1, %if.end36.out_gunlock_crit_edge ], [ %call54, %if.end52.out_gunlock_crit_edge ], [ %call63, %cleanup ], [ %error.3.ph, %if.then100 ], [ %error.3.ph, %out_gunlock_q.out_gunlock_crit_edge ], [ -22, %if.end43.out_gunlock_crit_edge ], [ -22, %sw.epilog.out_gunlock_crit_edge ], [ -31, %out_gunlock.fold.split ], [ %error.2, %out_ipres.out_gunlock_crit_edge ]
  %bh.i = getelementptr inbounds %struct.gfs2_diradd, ptr %da, i32 0, i32 2
  %57 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %out_gunlock.gfs2_dir_no_add.exit_crit_edge, label %if.then.i.i

out_gunlock.gfs2_dir_no_add.exit_crit_edge:       ; preds = %out_gunlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_dir_no_add.exit

if.then.i.i:                                      ; preds = %out_gunlock
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %58) #14
  br label %gfs2_dir_no_add.exit

gfs2_dir_no_add.exit:                             ; preds = %if.then.i.i, %out_gunlock.gfs2_dir_no_add.exit_crit_edge
  %59 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %bh.i, align 4
  call void @gfs2_glock_dq(ptr noundef %add.ptr) #14
  br label %out_child

out_child:                                        ; preds = %gfs2_dir_no_add.exit, %if.end14.out_child_crit_edge
  %error.5 = phi i32 [ %call17, %if.end14.out_child_crit_edge ], [ %error.4, %gfs2_dir_no_add.exit ]
  call void @gfs2_glock_dq(ptr noundef nonnull %ghs) #14
  br label %out_parent

out_parent:                                       ; preds = %out_child, %if.end7.out_parent_crit_edge
  %error.6 = phi i32 [ %call11, %if.end7.out_parent_crit_edge ], [ %error.5, %out_child ]
  call void @gfs2_qa_put(ptr noundef %dir) #14
  call void @gfs2_holder_uninit(ptr noundef nonnull %ghs) #14
  call void @gfs2_holder_uninit(ptr noundef %add.ptr) #14
  br label %cleanup108

cleanup108:                                       ; preds = %out_parent, %if.end.cleanup108_crit_edge, %entry.cleanup108_crit_edge
  %retval.0 = phi i32 [ %error.6, %out_parent ], [ -1, %entry.cleanup108_crit_edge ], [ %call5, %if.end.cleanup108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %da) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ghs) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_unlink(ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %ghs = alloca [3 x %struct.gfs2_holder], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %ghs) #14
  %6 = call ptr @memset(ptr %ghs, i32 255, i32 96)
  %call4 = tail call i32 @gfs2_rindex_update(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 6
  %7 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_gl, align 4
  %9 = tail call ptr @llvm.returnaddress(i32 0) #14
  %10 = ptrtoint ptr %9 to i32
  call void @__gfs2_holder_init(ptr noundef %8, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %ghs, i32 noundef %10) #14
  %i_gl5 = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %i_gl5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_gl5, align 4
  %add.ptr = getelementptr inbounds %struct.gfs2_holder, ptr %ghs, i32 1
  call void @__gfs2_holder_init(ptr noundef %12, i32 noundef 1, i16 noundef zeroext 0, ptr noundef %add.ptr, i32 noundef %10) #14
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_no_addr, align 8
  %call7 = call ptr @gfs2_blk2rgrpd(ptr noundef %3, i64 noundef %14, i1 noundef zeroext true) #14
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.out_inodes_crit_edge, label %if.end10

if.end.out_inodes_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_inodes

if.end10:                                         ; preds = %if.end
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call7, i32 0, i32 1
  %15 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rd_gl, align 4
  %add.ptr12 = getelementptr inbounds %struct.gfs2_holder, ptr %ghs, i32 2
  call void @__gfs2_holder_init(ptr noundef %16, i32 noundef 1, i16 noundef zeroext 32, ptr noundef %add.ptr12, i32 noundef %10) #14
  %call14 = call i32 @gfs2_glock_nq(ptr noundef nonnull %ghs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end10.out_parent_crit_edge

if.end10.out_parent_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_parent

if.end17:                                         ; preds = %if.end10
  %call20 = call i32 @gfs2_glock_nq(ptr noundef %add.ptr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.out_child_crit_edge

if.end17.out_child_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_child

if.end23:                                         ; preds = %if.end17
  %17 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.end23.out_rgrp_crit_edge, label %if.end25

if.end23.out_rgrp_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_rgrp

if.end25:                                         ; preds = %if.end23
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %5, align 8
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %22)
  %cmp26 = icmp eq i16 %22, 16384
  br i1 %cmp26, label %if.then28, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then28:                                        ; preds = %if.end25
  %i_entries = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 17
  %23 = ptrtoint ptr %i_entries to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp29 = icmp ugt i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp31 = icmp ugt i32 %19, 2
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp31
  br i1 %or.cond, label %if.then28.out_rgrp_crit_edge, label %if.then28.if.end35_crit_edge

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then28.out_rgrp_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_rgrp

if.end35:                                         ; preds = %if.then28.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  %call38 = call i32 @gfs2_glock_nq(ptr noundef %add.ptr12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.out_rgrp_crit_edge

if.end35.out_rgrp_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_rgrp

if.end41:                                         ; preds = %if.end35
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call42 = call fastcc i32 @gfs2_unlink_ok(ptr noundef %dir, ptr noundef %d_name, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.out_gunlock_crit_edge

if.end41.out_gunlock_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.end45:                                         ; preds = %if.end41
  %call46 = call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef 7, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.out_gunlock_crit_edge

if.end45.out_gunlock_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %call50 = call fastcc i32 @gfs2_unlink_inode(ptr noundef %dir, ptr noundef %dentry)
  call void @gfs2_trans_end(ptr noundef %3) #14
  br label %out_gunlock

out_gunlock:                                      ; preds = %if.end49, %if.end45.out_gunlock_crit_edge, %if.end41.out_gunlock_crit_edge
  %error.0 = phi i32 [ %call42, %if.end41.out_gunlock_crit_edge ], [ %call46, %if.end45.out_gunlock_crit_edge ], [ %call50, %if.end49 ]
  call void @gfs2_glock_dq(ptr noundef %add.ptr12) #14
  br label %out_rgrp

out_rgrp:                                         ; preds = %out_gunlock, %if.end35.out_rgrp_crit_edge, %if.then28.out_rgrp_crit_edge, %if.end23.out_rgrp_crit_edge
  %error.1 = phi i32 [ -2, %if.end23.out_rgrp_crit_edge ], [ -39, %if.then28.out_rgrp_crit_edge ], [ %call38, %if.end35.out_rgrp_crit_edge ], [ %error.0, %out_gunlock ]
  call void @gfs2_glock_dq(ptr noundef %add.ptr) #14
  br label %out_child

out_child:                                        ; preds = %out_rgrp, %if.end17.out_child_crit_edge
  %error.2 = phi i32 [ %call20, %if.end17.out_child_crit_edge ], [ %error.1, %out_rgrp ]
  call void @gfs2_glock_dq(ptr noundef nonnull %ghs) #14
  br label %out_parent

out_parent:                                       ; preds = %out_child, %if.end10.out_parent_crit_edge
  %error.3 = phi i32 [ %call14, %if.end10.out_parent_crit_edge ], [ %error.2, %out_child ]
  call void @gfs2_holder_uninit(ptr noundef %add.ptr12) #14
  br label %out_inodes

out_inodes:                                       ; preds = %out_parent, %if.end.out_inodes_crit_edge
  %error.4 = phi i32 [ %error.3, %out_parent ], [ -30, %if.end.out_inodes_crit_edge ]
  call void @gfs2_holder_uninit(ptr noundef %add.ptr) #14
  call void @gfs2_holder_uninit(ptr noundef nonnull %ghs) #14
  br label %cleanup

cleanup:                                          ; preds = %out_inodes, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.4, %out_inodes ], [ %call4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %ghs) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr nocapture noundef readonly %symname) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %symname) #19
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_bsize.i, align 8
  %sub.i = add i32 %5, -232
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub.i)
  %cmp.not = icmp ult i32 %call, %sub.i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call fastcc i32 @gfs2_create_inode(ptr noundef %dir, ptr noundef %dentry, ptr noundef null, i16 noundef zeroext -24065, i32 noundef 0, ptr noundef %symname, i32 noundef %call, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -36, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_bsize.i, align 8
  %sub.i = add i32 %5, -232
  %6 = or i16 %mode, 16384
  %call3 = tail call fastcc i32 @gfs2_create_inode(ptr noundef %dir, ptr noundef %dentry, ptr noundef null, i16 noundef zeroext %6, i32 noundef 0, ptr noundef null, i32 noundef %sub.i, i32 noundef 0)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gfs2_create_inode(ptr noundef %dir, ptr noundef %dentry, ptr noundef null, i16 noundef zeroext %mode, i32 noundef %dev, ptr noundef null, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_rename2(ptr nocapture noundef readnone %mnt_userns, ptr noundef %odir, ptr noundef %odentry, ptr noundef %ndir, ptr noundef %ndentry, i32 noundef %flags) #0 align 64 {
entry:
  %tmp.i90 = alloca %struct.timespec64, align 8
  %tmp.i48 = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  %ghs.i14 = alloca [4 x %struct.gfs2_holder], align 4
  %r_gh.i15 = alloca %struct.gfs2_holder, align 4
  %rd_gh.i = alloca %struct.gfs2_holder, align 4
  %da.i = alloca %struct.gfs2_diradd, align 4
  %ap.i = alloca %struct.gfs2_alloc_parms, align 8
  %ghs.i = alloca [4 x %struct.gfs2_holder], align 4
  %r_gh.i = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 4
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %and2 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %odentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %d_inode3.i = getelementptr inbounds %struct.dentry, ptr %ndentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode3.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %odir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ghs.i) #14
  %8 = call ptr @memset(ptr %ghs.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r_gh.i) #14
  %9 = getelementptr inbounds %struct.gfs2_holder, ptr %r_gh.i, i32 0, i32 1
  %10 = call ptr @memset(ptr %r_gh.i, i32 255, i32 32)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 8
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %9, align 4
  %call8.i = tail call i32 @gfs2_rindex_update(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.gfs2_exchange.exit_crit_edge

if.then4.gfs2_exchange.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_exchange.exit

if.end.i:                                         ; preds = %if.then4
  %cmp.not.i = icmp eq ptr %odir, %ndir
  br i1 %cmp.not.i, label %if.end38.critedge.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  %sd_rename_gl.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 25
  %16 = ptrtoint ptr %sd_rename_gl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd_rename_gl.i, align 8
  %18 = tail call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  call void @__gfs2_holder_init(ptr noundef %17, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %r_gh.i, i32 noundef %19) #14
  %call.i.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %r_gh.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end13.i, label %gfs2_glock_nq_init.exit.i

gfs2_glock_nq_init.exit.i:                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %r_gh.i) #14
  br label %gfs2_exchange.exit

if.end13.i:                                       ; preds = %if.then9.i
  %20 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %20)
  %cmp14.i = icmp eq i16 %20, 16384
  br i1 %cmp14.i, label %if.then16.i, label %if.end13.i.if.end21.i_crit_edge

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.end13.i
  %i_sb.i7.i = getelementptr inbounds %struct.inode, ptr %ndir, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb.i7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i7.i, align 4
  %call.i8.i = call ptr @igrab(ptr noundef %ndir) #14
  %cmp24.i.i = icmp eq ptr %1, %ndir
  br i1 %cmp24.i.i, label %if.then16.i.out_gunlock_r.sink.split.i_crit_edge, label %if.end.lr.ph.i.i

if.then16.i.out_gunlock_r.sink.split.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.sink.split.i

if.end.lr.ph.i.i:                                 ; preds = %if.then16.i
  %s_root.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end12.i.i.if.end.i.i_crit_edge, %if.end.lr.ph.i.i
  %dir.025.i.i = phi ptr [ %ndir, %if.end.lr.ph.i.i ], [ %call6.i.i, %if.end12.i.i.if.end.i.i_crit_edge ]
  %23 = ptrtoint ptr %s_root.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_root.i.i, align 64
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i.i.i, align 8
  %cmp3.i.i = icmp eq ptr %dir.025.i.i, %26
  br i1 %cmp3.i.i, label %gfs2_ok_to_move.exit.thread35.i, label %if.end5.i.i

gfs2_ok_to_move.exit.thread35.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef %dir.025.i.i) #14
  br label %if.end21.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call6.i.i = call ptr @gfs2_lookupi(ptr noundef %dir.025.i.i, ptr noundef nonnull @gfs2_qdotdot, i32 noundef 1) #14
  %tobool.not.i9.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool.not.i9.i, label %if.end5.i.i.out_gunlock_r.sink.split.i_crit_edge, label %if.end8.i.i

if.end5.i.i.out_gunlock_r.sink.split.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.sink.split.i

if.end8.i.i:                                      ; preds = %if.end5.i.i
  %cmp.i.i.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %gfs2_ok_to_move.exit.i, label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  call void @iput(ptr noundef %dir.025.i.i) #14
  %cmp.i.i = icmp eq ptr %call6.i.i, %1
  br i1 %cmp.i.i, label %if.end12.i.i.out_gunlock_r.sink.split.i_crit_edge, label %if.end12.i.i.if.end.i.i_crit_edge

if.end12.i.i.if.end.i.i_crit_edge:                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.end12.i.i.out_gunlock_r.sink.split.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.sink.split.i

gfs2_ok_to_move.exit.i:                           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %call6.i.i to i32
  br label %out_gunlock_r.sink.split.i

if.end21.i:                                       ; preds = %gfs2_ok_to_move.exit.thread35.i, %if.end13.i.if.end21.i_crit_edge
  %28 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %28)
  %cmp24.i = icmp eq i16 %28, 16384
  br i1 %cmp24.i, label %if.then26.i, label %if.end21.i.if.then35.i_crit_edge

if.end21.i.if.then35.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35.i

if.then26.i:                                      ; preds = %if.end21.i
  %29 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb.i.i, align 4
  %call.i11.i = call ptr @igrab(ptr noundef %odir) #14
  %cmp24.i12.i = icmp eq ptr %3, %odir
  br i1 %cmp24.i12.i, label %if.then26.i.out_gunlock_r.sink.split.i_crit_edge, label %if.end.lr.ph.i14.i

if.then26.i.out_gunlock_r.sink.split.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.sink.split.i

if.end.lr.ph.i14.i:                               ; preds = %if.then26.i
  %s_root.i13.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 13
  br label %if.end.i18.i

if.end.i18.i:                                     ; preds = %if.end12.i26.i.if.end.i18.i_crit_edge, %if.end.lr.ph.i14.i
  %dir.025.i15.i = phi ptr [ %odir, %if.end.lr.ph.i14.i ], [ %call6.i19.i, %if.end12.i26.i.if.end.i18.i_crit_edge ]
  %31 = ptrtoint ptr %s_root.i13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_root.i13.i, align 64
  %d_inode.i.i16.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i.i16.i, align 8
  %cmp3.i17.i = icmp eq ptr %dir.025.i15.i, %34
  br i1 %cmp3.i17.i, label %gfs2_ok_to_move.exit29.thread42.i, label %if.end5.i21.i

gfs2_ok_to_move.exit29.thread42.i:                ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef %dir.025.i15.i) #14
  br label %if.then35.i

if.end5.i21.i:                                    ; preds = %if.end.i18.i
  %call6.i19.i = call ptr @gfs2_lookupi(ptr noundef %dir.025.i15.i, ptr noundef nonnull @gfs2_qdotdot, i32 noundef 1) #14
  %tobool.not.i20.i = icmp eq ptr %call6.i19.i, null
  br i1 %tobool.not.i20.i, label %if.end5.i21.i.out_gunlock_r.sink.split.i_crit_edge, label %if.end8.i23.i

if.end5.i21.i.out_gunlock_r.sink.split.i_crit_edge: ; preds = %if.end5.i21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.sink.split.i

if.end8.i23.i:                                    ; preds = %if.end5.i21.i
  %cmp.i.i22.i = icmp ugt ptr %call6.i19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i22.i, label %gfs2_ok_to_move.exit29.i, label %if.end12.i26.i

if.end12.i26.i:                                   ; preds = %if.end8.i23.i
  call void @iput(ptr noundef %dir.025.i15.i) #14
  %cmp.i25.i = icmp eq ptr %call6.i19.i, %3
  br i1 %cmp.i25.i, label %if.end12.i26.i.out_gunlock_r.sink.split.i_crit_edge, label %if.end12.i26.i.if.end.i18.i_crit_edge

if.end12.i26.i.if.end.i18.i_crit_edge:            ; preds = %if.end12.i26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i18.i

if.end12.i26.i.out_gunlock_r.sink.split.i_crit_edge: ; preds = %if.end12.i26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.sink.split.i

gfs2_ok_to_move.exit29.i:                         ; preds = %if.end8.i23.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %call6.i19.i to i32
  br label %out_gunlock_r.sink.split.i

if.then35.i:                                      ; preds = %gfs2_ok_to_move.exit29.thread42.i, %if.end21.i.if.then35.i_crit_edge
  %i_gl.c2.i = getelementptr inbounds %struct.gfs2_inode, ptr %odir, i32 0, i32 6
  %36 = ptrtoint ptr %i_gl.c2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_gl.c2.i, align 4
  call void @__gfs2_holder_init(ptr noundef %37, i32 noundef 1, i16 noundef zeroext 64, ptr noundef nonnull %ghs.i, i32 noundef %19) #14
  %i_gl36.i = getelementptr inbounds %struct.gfs2_inode, ptr %ndir, i32 0, i32 6
  %38 = ptrtoint ptr %i_gl36.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_gl36.i, align 4
  %add.ptr.i = getelementptr inbounds %struct.gfs2_holder, ptr %ghs.i, i32 1
  call void @__gfs2_holder_init(ptr noundef %39, i32 noundef 1, i16 noundef zeroext 64, ptr noundef %add.ptr.i, i32 noundef %19) #14
  br label %if.end38.i

if.end38.critedge.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_gl.c3.i = getelementptr inbounds %struct.gfs2_inode, ptr %odir, i32 0, i32 6
  %40 = ptrtoint ptr %i_gl.c3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_gl.c3.i, align 4
  %42 = tail call ptr @llvm.returnaddress(i32 0) #14
  %43 = ptrtoint ptr %42 to i32
  call void @__gfs2_holder_init(ptr noundef %41, i32 noundef 1, i16 noundef zeroext 64, ptr noundef nonnull %ghs.i, i32 noundef %43) #14
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end38.critedge.i, %if.then35.i
  %.pre-phi66.i = phi i32 [ %43, %if.end38.critedge.i ], [ %19, %if.then35.i ]
  %num_gh.0.i = phi i32 [ 1, %if.end38.critedge.i ], [ 2, %if.then35.i ]
  %i_gl39.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %i_gl39.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_gl39.i, align 4
  %add.ptr41.i = getelementptr %struct.gfs2_holder, ptr %ghs.i, i32 %num_gh.0.i
  call void @__gfs2_holder_init(ptr noundef %45, i32 noundef 1, i16 noundef zeroext 64, ptr noundef %add.ptr41.i, i32 noundef %.pre-phi66.i) #14
  %inc42.i = add nuw nsw i32 %num_gh.0.i, 1
  %i_gl43.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %46 = ptrtoint ptr %i_gl43.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_gl43.i, align 4
  %add.ptr45.i = getelementptr %struct.gfs2_holder, ptr %ghs.i, i32 %inc42.i
  call void @__gfs2_holder_init(ptr noundef %47, i32 noundef 1, i16 noundef zeroext 64, ptr noundef %add.ptr45.i, i32 noundef %.pre-phi66.i) #14
  %inc46.i = add nuw nsw i32 %num_gh.0.i, 2
  %call51.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %ghs.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %for.body.i.1, label %if.end38.i.out_gunlock.i_crit_edge

if.end38.i.out_gunlock.i_crit_edge:               ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i

for.body.i.1:                                     ; preds = %if.end38.i
  %add.ptr50.i.1 = getelementptr inbounds %struct.gfs2_holder, ptr %ghs.i, i32 1
  %call51.i.1 = call i32 @gfs2_glock_nq(ptr noundef %add.ptr50.i.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.1)
  %tobool52.not.i.1 = icmp eq i32 %call51.i.1, 0
  br i1 %tobool52.not.i.1, label %for.body.i.2, label %for.body.i.1.out_gunlock.i_crit_edge

for.body.i.1.out_gunlock.i_crit_edge:             ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %add.ptr50.i.2 = getelementptr inbounds %struct.gfs2_holder, ptr %ghs.i, i32 2
  %call51.i.2 = call i32 @gfs2_glock_nq(ptr noundef %add.ptr50.i.2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.2)
  %tobool52.not.i.2 = icmp eq i32 %call51.i.2, 0
  br i1 %tobool52.not.i.2, label %for.inc.i.2, label %for.body.i.2.out_gunlock.i_crit_edge

for.body.i.2.out_gunlock.i_crit_edge:             ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i

for.inc.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc46.i)
  %exitcond.not.i.2 = icmp eq i32 %inc46.i, 3
  br i1 %exitcond.not.i.2, label %for.inc.i.2.for.end.i_crit_edge, label %for.body.i.3

for.inc.i.2.for.end.i_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.inc.i.2
  %add.ptr50.i.3 = getelementptr inbounds %struct.gfs2_holder, ptr %ghs.i, i32 3
  %call51.i.3 = call i32 @gfs2_glock_nq(ptr noundef %add.ptr50.i.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.3)
  %tobool52.not.i.3 = icmp eq i32 %call51.i.3, 0
  br i1 %tobool52.not.i.3, label %for.body.i.3.for.end.i_crit_edge, label %for.body.i.3.out_gunlock.i_crit_edge

for.body.i.3.out_gunlock.i_crit_edge:             ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i

for.body.i.3.for.end.i_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.3.for.end.i_crit_edge, %for.inc.i.2.for.end.i_crit_edge
  %call57.i = call i32 @gfs2_glock_async_wait(i32 noundef %inc46.i, ptr noundef nonnull %ghs.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %for.end.i.while.body.preheader.i_crit_edge

for.end.i.while.body.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.end60.i:                                       ; preds = %for.end.i
  %48 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp62.i = icmp eq i32 %50, 0
  br i1 %cmp62.i, label %if.end60.i.while.body.preheader.i_crit_edge, label %lor.lhs.false.i

if.end60.i.while.body.preheader.i_crit_edge:      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

lor.lhs.false.i:                                  ; preds = %if.end60.i
  %51 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 12
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp65.i = icmp eq i32 %53, 0
  br i1 %cmp65.i, label %lor.lhs.false.i.while.body.preheader.i_crit_edge, label %if.end68.i

lor.lhs.false.i.while.body.preheader.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.end68.i:                                       ; preds = %lor.lhs.false.i
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %odentry, i32 0, i32 4
  %i_flags.i60 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %i_flags.i60 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_flags.i60, align 4
  %56 = and i32 %55, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %if.end.i62, label %if.end68.i.while.body.preheader.i_crit_edge

if.end68.i.while.body.preheader.i_crit_edge:      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.end.i62:                                       ; preds = %if.end68.i
  %58 = ptrtoint ptr %odir to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %odir, align 8
  %60 = and i16 %59, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool7.not.i61 = icmp eq i16 %60, 0
  br i1 %tobool7.not.i61, label %if.end.i62.if.end29.i81_crit_edge, label %land.lhs.true.i71

if.end.i62.if.end29.i81_crit_edge:                ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i81

land.lhs.true.i71:                                ; preds = %if.end.i62
  %i_uid.i63 = getelementptr inbounds %struct.inode, ptr %odir, i32 0, i32 2
  %61 = call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i64 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i64 to ptr
  %task.i65 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task.i65 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task.i65, align 8
  %cred.i66 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 99
  %65 = ptrtoint ptr %cred.i66 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cred.i66, align 16
  %fsuid.i67 = getelementptr inbounds %struct.cred, ptr %66, i32 0, i32 10
  %67 = ptrtoint ptr %fsuid.i67 to i32
  call void @__asan_load4_noabort(i32 %67)
  %agg.tmp.sroa.0.0.copyload.i68 = load i32, ptr %fsuid.i67, align 4
  %68 = ptrtoint ptr %i_uid.i63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack.i69 = load i32, ptr %i_uid.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i69, i32 %agg.tmp.sroa.0.0.copyload.i68)
  %cmp.i.i70 = icmp eq i32 %.unpack.i69, %agg.tmp.sroa.0.0.copyload.i68
  br i1 %cmp.i.i70, label %land.lhs.true.i71.if.end29.i81_crit_edge, label %land.lhs.true11.i75

land.lhs.true.i71.if.end29.i81_crit_edge:         ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i81

land.lhs.true11.i75:                              ; preds = %land.lhs.true.i71
  %i_uid13.i72 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %i_uid13.i72 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack52.i73 = load i32, ptr %i_uid13.i72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack52.i73, i32 %agg.tmp.sroa.0.0.copyload.i68)
  %cmp.i53.i74 = icmp eq i32 %.unpack52.i73, %agg.tmp.sroa.0.0.copyload.i68
  br i1 %cmp.i53.i74, label %land.lhs.true11.i75.if.end29.i81_crit_edge, label %land.lhs.true26.i77

land.lhs.true11.i75.if.end29.i81_crit_edge:       ; preds = %land.lhs.true11.i75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i81

land.lhs.true26.i77:                              ; preds = %land.lhs.true11.i75
  %call27.i76 = call zeroext i1 @capable(i32 noundef 3) #14
  br i1 %call27.i76, label %land.lhs.true26.i77.if.end29.i81_crit_edge, label %land.lhs.true26.i77.while.body.preheader.i_crit_edge

land.lhs.true26.i77.while.body.preheader.i_crit_edge: ; preds = %land.lhs.true26.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

land.lhs.true26.i77.if.end29.i81_crit_edge:       ; preds = %land.lhs.true26.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i81

if.end29.i81:                                     ; preds = %land.lhs.true26.i77.if.end29.i81_crit_edge, %land.lhs.true11.i75.if.end29.i81_crit_edge, %land.lhs.true.i71.if.end29.i81_crit_edge, %if.end.i62.if.end29.i81_crit_edge
  %i_flags31.i78 = getelementptr inbounds %struct.inode, ptr %odir, i32 0, i32 4
  %70 = ptrtoint ptr %i_flags31.i78 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_flags31.i78, align 4
  %and32.i79 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i79)
  %tobool33.not.i80 = icmp eq i32 %and32.i79, 0
  br i1 %tobool33.not.i80, label %if.end35.i84, label %if.end29.i81.while.body.preheader.i_crit_edge

if.end29.i81.while.body.preheader.i_crit_edge:    ; preds = %if.end29.i81
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.end35.i84:                                     ; preds = %if.end29.i81
  %call37.i82 = call i32 @gfs2_permission(ptr undef, ptr noundef %odir, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i82)
  %tobool38.not.i83 = icmp eq i32 %call37.i82, 0
  br i1 %tobool38.not.i83, label %gfs2_unlink_ok.exit89, label %if.end35.i84.while.body.preheader.i_crit_edge

if.end35.i84.while.body.preheader.i_crit_edge:    ; preds = %if.end35.i84
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

gfs2_unlink_ok.exit89:                            ; preds = %if.end35.i84
  %call42.i85 = call i32 @gfs2_dir_check(ptr noundef %odir, ptr noundef %d_name.i, ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i85)
  %tobool70.not.i = icmp eq i32 %call42.i85, 0
  br i1 %tobool70.not.i, label %if.end72.i, label %gfs2_unlink_ok.exit89.while.body.preheader.i_crit_edge

gfs2_unlink_ok.exit89.while.body.preheader.i_crit_edge: ; preds = %gfs2_unlink_ok.exit89
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.end72.i:                                       ; preds = %gfs2_unlink_ok.exit89
  %d_name73.i = getelementptr inbounds %struct.dentry, ptr %ndentry, i32 0, i32 4
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %72 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_flags.i, align 4
  %74 = and i32 %73, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %if.end.i56, label %if.end72.i.while.body.preheader.i_crit_edge

if.end72.i.while.body.preheader.i_crit_edge:      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.end.i56:                                       ; preds = %if.end72.i
  %76 = ptrtoint ptr %ndir to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %ndir, align 8
  %78 = and i16 %77, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool7.not.i = icmp eq i16 %78, 0
  br i1 %tobool7.not.i, label %if.end.i56.if.end29.i_crit_edge, label %land.lhs.true.i

if.end.i56.if.end29.i_crit_edge:                  ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.end.i56
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %ndir, i32 0, i32 2
  %79 = call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 99
  %83 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %84, i32 0, i32 10
  %85 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %86 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %agg.tmp.sroa.0.0.copyload.i)
  %cmp.i.i57 = icmp eq i32 %.unpack.i, %agg.tmp.sroa.0.0.copyload.i
  br i1 %cmp.i.i57, label %land.lhs.true.i.if.end29.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %i_uid13.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 2
  %87 = ptrtoint ptr %i_uid13.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.unpack52.i = load i32, ptr %i_uid13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack52.i, i32 %agg.tmp.sroa.0.0.copyload.i)
  %cmp.i53.i = icmp eq i32 %.unpack52.i, %agg.tmp.sroa.0.0.copyload.i
  br i1 %cmp.i53.i, label %land.lhs.true11.i.if.end29.i_crit_edge, label %land.lhs.true26.i

land.lhs.true11.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

land.lhs.true26.i:                                ; preds = %land.lhs.true11.i
  %call27.i = call zeroext i1 @capable(i32 noundef 3) #14
  br i1 %call27.i, label %land.lhs.true26.i.if.end29.i_crit_edge, label %land.lhs.true26.i.while.body.preheader.i_crit_edge

land.lhs.true26.i.while.body.preheader.i_crit_edge: ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

land.lhs.true26.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.end29.i:                                       ; preds = %land.lhs.true26.i.if.end29.i_crit_edge, %land.lhs.true11.i.if.end29.i_crit_edge, %land.lhs.true.i.if.end29.i_crit_edge, %if.end.i56.if.end29.i_crit_edge
  %i_flags31.i = getelementptr inbounds %struct.inode, ptr %ndir, i32 0, i32 4
  %88 = ptrtoint ptr %i_flags31.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %i_flags31.i, align 4
  %and32.i = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end29.i.while.body.preheader.i_crit_edge

if.end29.i.while.body.preheader.i_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.end35.i:                                       ; preds = %if.end29.i
  %call37.i = call i32 @gfs2_permission(ptr undef, ptr noundef %ndir, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %gfs2_unlink_ok.exit, label %if.end35.i.while.body.preheader.i_crit_edge

if.end35.i.while.body.preheader.i_crit_edge:      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

gfs2_unlink_ok.exit:                              ; preds = %if.end35.i
  %call42.i = call i32 @gfs2_dir_check(ptr noundef %ndir, ptr noundef %d_name73.i, ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool75.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %gfs2_unlink_ok.exit.while.body.preheader.i_crit_edge

gfs2_unlink_ok.exit.while.body.preheader.i_crit_edge: ; preds = %gfs2_unlink_ok.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.end77.i:                                       ; preds = %gfs2_unlink_ok.exit
  %90 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %90)
  %cmp80.i = icmp eq i16 %90, 16384
  br i1 %cmp80.i, label %if.then82.i, label %if.end77.i.if.end88.i_crit_edge

if.end77.i.if.end88.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88.i

if.then82.i:                                      ; preds = %if.end77.i
  %91 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %d_inode.i.i, align 8
  %call84.i = call i32 @gfs2_permission(ptr undef, ptr noundef %92, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %if.then82.i.if.end88.i_crit_edge, label %if.then82.i.while.body.preheader.i_crit_edge

if.then82.i.while.body.preheader.i_crit_edge:     ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.then82.i.if.end88.i_crit_edge:                 ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then82.i.if.end88.i_crit_edge, %if.end77.i.if.end88.i_crit_edge
  %93 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %93)
  %cmp91.i = icmp eq i16 %93, 16384
  br i1 %cmp91.i, label %if.then93.i, label %if.end88.i.if.end99.i_crit_edge

if.end88.i.if.end99.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99.i

if.then93.i:                                      ; preds = %if.end88.i
  %94 = ptrtoint ptr %d_inode3.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %d_inode3.i, align 8
  %call95.i = call i32 @gfs2_permission(ptr undef, ptr noundef %95, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.then93.i.if.end99.i_crit_edge, label %if.then93.i.while.body.preheader.i_crit_edge

if.then93.i.while.body.preheader.i_crit_edge:     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.then93.i.if.end99.i_crit_edge:                 ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then93.i.if.end99.i_crit_edge, %if.end88.i.if.end99.i_crit_edge
  %call100.i = call i32 @gfs2_trans_begin(ptr noundef %7, i32 noundef 8, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %if.end103.i, label %if.end99.i.while.body.preheader.i_crit_edge

if.end99.i.while.body.preheader.i_crit_edge:      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

if.end103.i:                                      ; preds = %if.end99.i
  br i1 %cmp80.i, label %update_moved_ino.exit55, label %update_moved_ino.exit55.thread

update_moved_ino.exit55.thread:                   ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_ctime.i52 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i48) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i48, ptr noundef %1) #14
  %96 = call ptr @memcpy(ptr %i_ctime.i52, ptr %tmp.i48, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i48) #14
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 1) #14
  br label %if.end111.i

update_moved_ino.exit55:                          ; preds = %if.end103.i
  %call.i50 = call i32 @gfs2_dir_mvino(ptr noundef %1, ptr noundef nonnull @gfs2_qdotdot, ptr noundef %ndir, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool109.not.i = icmp eq i32 %call.i50, 0
  br i1 %tobool109.not.i, label %update_moved_ino.exit55.if.end111.i_crit_edge, label %update_moved_ino.exit55.out_end_trans.i_crit_edge

update_moved_ino.exit55.out_end_trans.i_crit_edge: ; preds = %update_moved_ino.exit55
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans.i

update_moved_ino.exit55.if.end111.i_crit_edge:    ; preds = %update_moved_ino.exit55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111.i

if.end111.i:                                      ; preds = %update_moved_ino.exit55.if.end111.i_crit_edge, %update_moved_ino.exit55.thread
  br i1 %cmp91.i, label %update_moved_ino.exit, label %update_moved_ino.exit.thread

update_moved_ino.exit.thread:                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %3) #14
  %97 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #14
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 1) #14
  br label %if.end119.i

update_moved_ino.exit:                            ; preds = %if.end111.i
  %call.i = call i32 @gfs2_dir_mvino(ptr noundef %3, ptr noundef nonnull @gfs2_qdotdot, ptr noundef %odir, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool117.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool117.not.i, label %update_moved_ino.exit.if.end119.i_crit_edge, label %update_moved_ino.exit.out_end_trans.i_crit_edge

update_moved_ino.exit.out_end_trans.i_crit_edge:  ; preds = %update_moved_ino.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans.i

update_moved_ino.exit.if.end119.i_crit_edge:      ; preds = %update_moved_ino.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119.i

if.end119.i:                                      ; preds = %update_moved_ino.exit.if.end119.i_crit_edge, %update_moved_ino.exit.thread
  %98 = lshr i16 %12, 12
  %99 = zext i16 %98 to i32
  %call123.i = call i32 @gfs2_dir_mvino(ptr noundef %ndir, ptr noundef %d_name73.i, ptr noundef %1, i32 noundef %99) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %tobool124.not.i = icmp eq i32 %call123.i, 0
  br i1 %tobool124.not.i, label %if.end126.i, label %if.end119.i.out_end_trans.i_crit_edge

if.end119.i.out_end_trans.i_crit_edge:            ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans.i

if.end126.i:                                      ; preds = %if.end119.i
  %100 = lshr i16 %14, 12
  %101 = zext i16 %100 to i32
  %call131.i = call i32 @gfs2_dir_mvino(ptr noundef %odir, ptr noundef %d_name.i, ptr noundef %3, i32 noundef %101) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %tobool132.not.i = icmp eq i32 %call131.i, 0
  br i1 %tobool132.not.i, label %if.end134.i, label %if.end126.i.out_end_trans.i_crit_edge

if.end126.i.out_end_trans.i_crit_edge:            ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans.i

if.end134.i:                                      ; preds = %if.end126.i
  br i1 %cmp.not.i, label %if.end134.i.out_end_trans.sink.split.i_crit_edge, label %if.then137.i

if.end134.i.out_end_trans.sink.split.i_crit_edge: ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans.sink.split.i

if.then137.i:                                     ; preds = %if.end134.i
  %cmp91.not.i = xor i1 %cmp91.i, true
  %brmerge.i = select i1 %cmp91.not.i, i1 true, i1 %cmp80.i
  br i1 %brmerge.i, label %if.else.i, label %if.then137.i.if.then167.sink.split.i_crit_edge

if.then137.i.if.then167.sink.split.i_crit_edge:   ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then167.sink.split.i

if.else.i:                                        ; preds = %if.then137.i
  %cmp80.not.i = xor i1 %cmp80.i, true
  %brmerge4.i = select i1 %cmp80.not.i, i1 true, i1 %cmp91.i
  br i1 %brmerge4.i, label %if.else.i.if.then167.i_crit_edge, label %if.else.i.if.then167.sink.split.i_crit_edge

if.else.i.if.then167.sink.split.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then167.sink.split.i

if.else.i.if.then167.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then167.i

if.then167.sink.split.i:                          ; preds = %if.else.i.if.then167.sink.split.i_crit_edge, %if.then137.i.if.then167.sink.split.i_crit_edge
  %ndir.sink.i = phi ptr [ %odir, %if.then137.i.if.then167.sink.split.i_crit_edge ], [ %ndir, %if.else.i.if.then167.sink.split.i_crit_edge ]
  %odir.sink.i = phi ptr [ %ndir, %if.then137.i.if.then167.sink.split.i_crit_edge ], [ %odir, %if.else.i.if.then167.sink.split.i_crit_edge ]
  call void @inc_nlink(ptr noundef %ndir.sink.i) #14
  call void @drop_nlink(ptr noundef %odir.sink.i) #14
  br label %if.then167.i

if.then167.i:                                     ; preds = %if.then167.sink.split.i, %if.else.i.if.then167.i_crit_edge
  call void @__mark_inode_dirty(ptr noundef %ndir, i32 noundef 7) #14
  br label %out_end_trans.sink.split.i

out_end_trans.sink.split.i:                       ; preds = %if.then167.i, %if.end134.i.out_end_trans.sink.split.i_crit_edge
  call void @__mark_inode_dirty(ptr noundef %odir, i32 noundef 7) #14
  br label %out_end_trans.i

out_end_trans.i:                                  ; preds = %out_end_trans.sink.split.i, %if.end126.i.out_end_trans.i_crit_edge, %if.end119.i.out_end_trans.i_crit_edge, %update_moved_ino.exit.out_end_trans.i_crit_edge, %update_moved_ino.exit55.out_end_trans.i_crit_edge
  %error.0.i = phi i32 [ %call.i50, %update_moved_ino.exit55.out_end_trans.i_crit_edge ], [ %call.i, %update_moved_ino.exit.out_end_trans.i_crit_edge ], [ %call123.i, %if.end119.i.out_end_trans.i_crit_edge ], [ %call131.i, %if.end126.i.out_end_trans.i_crit_edge ], [ 0, %out_end_trans.sink.split.i ]
  call void @gfs2_trans_end(ptr noundef %7) #14
  br label %while.body.preheader.i

out_gunlock.i:                                    ; preds = %for.body.i.3.out_gunlock.i_crit_edge, %for.body.i.2.out_gunlock.i_crit_edge, %for.body.i.1.out_gunlock.i_crit_edge, %if.end38.i.out_gunlock.i_crit_edge
  %x.054.i.lcssa = phi i32 [ 0, %if.end38.i.out_gunlock.i_crit_edge ], [ 1, %for.body.i.1.out_gunlock.i_crit_edge ], [ 2, %for.body.i.2.out_gunlock.i_crit_edge ], [ 3, %for.body.i.3.out_gunlock.i_crit_edge ]
  %call51.i.lcssa = phi i32 [ %call51.i, %if.end38.i.out_gunlock.i_crit_edge ], [ %call51.i.1, %for.body.i.1.out_gunlock.i_crit_edge ], [ %call51.i.2, %for.body.i.2.out_gunlock.i_crit_edge ], [ %call51.i.3, %for.body.i.3.out_gunlock.i_crit_edge ]
  br i1 %tobool52.not.i, label %out_gunlock.i.while.body.preheader.i_crit_edge, label %out_gunlock.i.out_gunlock_r.i_crit_edge

out_gunlock.i.out_gunlock_r.i_crit_edge:          ; preds = %out_gunlock.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.i

out_gunlock.i.while.body.preheader.i_crit_edge:   ; preds = %out_gunlock.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %out_gunlock.i.while.body.preheader.i_crit_edge, %out_end_trans.i, %if.end99.i.while.body.preheader.i_crit_edge, %if.then93.i.while.body.preheader.i_crit_edge, %if.then82.i.while.body.preheader.i_crit_edge, %gfs2_unlink_ok.exit.while.body.preheader.i_crit_edge, %if.end35.i.while.body.preheader.i_crit_edge, %if.end29.i.while.body.preheader.i_crit_edge, %land.lhs.true26.i.while.body.preheader.i_crit_edge, %if.end72.i.while.body.preheader.i_crit_edge, %gfs2_unlink_ok.exit89.while.body.preheader.i_crit_edge, %if.end35.i84.while.body.preheader.i_crit_edge, %if.end29.i81.while.body.preheader.i_crit_edge, %land.lhs.true26.i77.while.body.preheader.i_crit_edge, %if.end68.i.while.body.preheader.i_crit_edge, %lor.lhs.false.i.while.body.preheader.i_crit_edge, %if.end60.i.while.body.preheader.i_crit_edge, %for.end.i.while.body.preheader.i_crit_edge
  %error.171.i = phi i32 [ %call51.i.lcssa, %out_gunlock.i.while.body.preheader.i_crit_edge ], [ %error.0.i, %out_end_trans.i ], [ %call100.i, %if.end99.i.while.body.preheader.i_crit_edge ], [ %call95.i, %if.then93.i.while.body.preheader.i_crit_edge ], [ %call84.i, %if.then82.i.while.body.preheader.i_crit_edge ], [ %call42.i, %gfs2_unlink_ok.exit.while.body.preheader.i_crit_edge ], [ %call42.i85, %gfs2_unlink_ok.exit89.while.body.preheader.i_crit_edge ], [ -2, %lor.lhs.false.i.while.body.preheader.i_crit_edge ], [ -2, %if.end60.i.while.body.preheader.i_crit_edge ], [ %call57.i, %for.end.i.while.body.preheader.i_crit_edge ], [ %call37.i82, %if.end35.i84.while.body.preheader.i_crit_edge ], [ -1, %if.end29.i81.while.body.preheader.i_crit_edge ], [ -1, %land.lhs.true26.i77.while.body.preheader.i_crit_edge ], [ -1, %if.end68.i.while.body.preheader.i_crit_edge ], [ %call37.i, %if.end35.i.while.body.preheader.i_crit_edge ], [ -1, %if.end29.i.while.body.preheader.i_crit_edge ], [ -1, %land.lhs.true26.i.while.body.preheader.i_crit_edge ], [ -1, %if.end72.i.while.body.preheader.i_crit_edge ]
  %x.04770.i = phi i32 [ %x.054.i.lcssa, %out_gunlock.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %out_end_trans.i ], [ %inc46.i, %if.end99.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %if.then93.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %if.then82.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %gfs2_unlink_ok.exit.while.body.preheader.i_crit_edge ], [ %inc46.i, %gfs2_unlink_ok.exit89.while.body.preheader.i_crit_edge ], [ %inc46.i, %lor.lhs.false.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %if.end60.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %for.end.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %if.end35.i84.while.body.preheader.i_crit_edge ], [ %inc46.i, %if.end29.i81.while.body.preheader.i_crit_edge ], [ %inc46.i, %land.lhs.true26.i77.while.body.preheader.i_crit_edge ], [ %inc46.i, %if.end68.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %if.end35.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %if.end29.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %land.lhs.true26.i.while.body.preheader.i_crit_edge ], [ %inc46.i, %if.end72.i.while.body.preheader.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end177.i.while.body.i_crit_edge, %while.body.preheader.i
  %dec57.in.i = phi i32 [ %dec57.i, %if.end177.i.while.body.i_crit_edge ], [ %x.04770.i, %while.body.preheader.i ]
  %dec57.i = add nsw i32 %dec57.in.i, -1
  %add.ptr172.i = getelementptr %struct.gfs2_holder, ptr %ghs.i, i32 %dec57.i
  %102 = ptrtoint ptr %add.ptr172.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %add.ptr172.i, align 4
  %cmp.i.i30.not.i = icmp eq ptr %103, %add.ptr172.i
  br i1 %cmp.i.i30.not.i, label %while.body.i.if.end177.i_crit_edge, label %if.then174.i

while.body.i.if.end177.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end177.i

if.then174.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq(ptr noundef %add.ptr172.i) #14
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.then174.i, %while.body.i.if.end177.i_crit_edge
  call void @gfs2_holder_uninit(ptr noundef %add.ptr172.i) #14
  %tobool170.not.i = icmp eq i32 %dec57.i, 0
  br i1 %tobool170.not.i, label %if.end177.i.out_gunlock_r.i_crit_edge, label %if.end177.i.while.body.i_crit_edge

if.end177.i.while.body.i_crit_edge:               ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end177.i.out_gunlock_r.i_crit_edge:            ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.i

out_gunlock_r.sink.split.i:                       ; preds = %gfs2_ok_to_move.exit29.i, %if.end12.i26.i.out_gunlock_r.sink.split.i_crit_edge, %if.end5.i21.i.out_gunlock_r.sink.split.i_crit_edge, %if.then26.i.out_gunlock_r.sink.split.i_crit_edge, %gfs2_ok_to_move.exit.i, %if.end12.i.i.out_gunlock_r.sink.split.i_crit_edge, %if.end5.i.i.out_gunlock_r.sink.split.i_crit_edge, %if.then16.i.out_gunlock_r.sink.split.i_crit_edge
  %dir.025.i.lcssa78.sink.i = phi ptr [ %dir.025.i.i, %gfs2_ok_to_move.exit.i ], [ %dir.025.i15.i, %gfs2_ok_to_move.exit29.i ], [ %ndir, %if.then16.i.out_gunlock_r.sink.split.i_crit_edge ], [ %odir, %if.then26.i.out_gunlock_r.sink.split.i_crit_edge ], [ %dir.025.i15.i, %if.end5.i21.i.out_gunlock_r.sink.split.i_crit_edge ], [ %3, %if.end12.i26.i.out_gunlock_r.sink.split.i_crit_edge ], [ %dir.025.i.i, %if.end5.i.i.out_gunlock_r.sink.split.i_crit_edge ], [ %1, %if.end12.i.i.out_gunlock_r.sink.split.i_crit_edge ]
  %error.2.ph.i = phi i32 [ %27, %gfs2_ok_to_move.exit.i ], [ %35, %gfs2_ok_to_move.exit29.i ], [ -22, %if.then16.i.out_gunlock_r.sink.split.i_crit_edge ], [ -22, %if.then26.i.out_gunlock_r.sink.split.i_crit_edge ], [ -2, %if.end5.i21.i.out_gunlock_r.sink.split.i_crit_edge ], [ -22, %if.end12.i26.i.out_gunlock_r.sink.split.i_crit_edge ], [ -2, %if.end5.i.i.out_gunlock_r.sink.split.i_crit_edge ], [ -22, %if.end12.i.i.out_gunlock_r.sink.split.i_crit_edge ]
  call void @iput(ptr noundef %dir.025.i.lcssa78.sink.i) #14
  br label %out_gunlock_r.i

out_gunlock_r.i:                                  ; preds = %out_gunlock_r.sink.split.i, %if.end177.i.out_gunlock_r.i_crit_edge, %out_gunlock.i.out_gunlock_r.i_crit_edge
  %error.2.i = phi i32 [ %call51.i.lcssa, %out_gunlock.i.out_gunlock_r.i_crit_edge ], [ %error.2.ph.i, %out_gunlock_r.sink.split.i ], [ %error.171.i, %if.end177.i.out_gunlock_r.i_crit_edge ]
  %104 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %9, align 4
  %tobool.i.not.i = icmp eq ptr %105, null
  br i1 %tobool.i.not.i, label %out_gunlock_r.i.gfs2_exchange.exit_crit_edge, label %if.then181.i

out_gunlock_r.i.gfs2_exchange.exit_crit_edge:     ; preds = %out_gunlock_r.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_exchange.exit

if.then181.i:                                     ; preds = %out_gunlock_r.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %r_gh.i) #14
  br label %gfs2_exchange.exit

gfs2_exchange.exit:                               ; preds = %if.then181.i, %out_gunlock_r.i.gfs2_exchange.exit_crit_edge, %gfs2_glock_nq_init.exit.i, %if.then4.gfs2_exchange.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.then4.gfs2_exchange.exit_crit_edge ], [ %call.i.i, %gfs2_glock_nq_init.exit.i ], [ %error.2.i, %if.then181.i ], [ %error.2.i, %out_gunlock_r.i.gfs2_exchange.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r_gh.i) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ghs.i) #14
  br label %return

if.end5:                                          ; preds = %if.end
  %i_sb.i.i16 = getelementptr inbounds %struct.inode, ptr %odir, i32 0, i32 8
  %106 = ptrtoint ptr %i_sb.i.i16 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i_sb.i.i16, align 4
  %s_fs_info.i.i17 = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 33
  %108 = ptrtoint ptr %s_fs_info.i.i17 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_fs_info.i.i17, align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ghs.i14) #14
  %110 = call ptr @memset(ptr %ghs.i14, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r_gh.i15) #14
  %111 = getelementptr inbounds %struct.gfs2_holder, ptr %r_gh.i15, i32 0, i32 1
  %112 = call ptr @memset(ptr %r_gh.i15, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd_gh.i) #14
  %113 = getelementptr inbounds %struct.gfs2_holder, ptr %rd_gh.i, i32 0, i32 1
  %114 = call ptr @memset(ptr %rd_gh.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %da.i) #14
  %115 = call ptr @memset(ptr %da.i, i32 0, i32 16)
  %116 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %111, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %113, align 4
  %d_inode.i340.i = getelementptr inbounds %struct.dentry, ptr %ndentry, i32 0, i32 5
  %118 = ptrtoint ptr %d_inode.i340.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %d_inode.i340.i, align 8
  %cmp.i.i18 = icmp ne ptr %119, null
  %cmp.i = icmp eq ptr %1, %119
  %or.cond357.i = select i1 %cmp.i.i18, i1 %cmp.i, i1 false
  br i1 %or.cond357.i, label %if.end5.gfs2_rename.exit_crit_edge, label %if.end9.i

if.end5.gfs2_rename.exit_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_rename.exit

if.end9.i:                                        ; preds = %if.end5
  %call10.i = tail call i32 @gfs2_rindex_update(ptr noundef %109) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i19 = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i19, label %if.end12.i, label %if.end9.i.gfs2_rename.exit_crit_edge

if.end9.i.gfs2_rename.exit_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_rename.exit

if.end12.i:                                       ; preds = %if.end9.i
  %call13.i = tail call i32 @gfs2_qa_get(ptr noundef %ndir) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.gfs2_rename.exit_crit_edge

if.end12.i.gfs2_rename.exit_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_rename.exit

if.end16.i:                                       ; preds = %if.end12.i
  %cmp17.not.i = icmp eq ptr %odir, %ndir
  br i1 %cmp17.not.i, label %if.end31.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end16.i
  %sd_rename_gl.i20 = getelementptr inbounds %struct.gfs2_sbd, ptr %109, i32 0, i32 25
  %120 = ptrtoint ptr %sd_rename_gl.i20 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sd_rename_gl.i20, align 8
  %122 = tail call ptr @llvm.returnaddress(i32 0) #14
  %123 = ptrtoint ptr %122 to i32
  call void @__gfs2_holder_init(ptr noundef %121, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %r_gh.i15, i32 noundef %123) #14
  %call.i.i21 = call i32 @gfs2_glock_nq(ptr noundef nonnull %r_gh.i15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %tobool.not.i.i22 = icmp eq i32 %call.i.i21, 0
  br i1 %tobool.not.i.i22, label %if.end22.i, label %gfs2_glock_nq_init.exit.i23

gfs2_glock_nq_init.exit.i23:                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %r_gh.i15) #14
  br label %out.i

if.end22.i:                                       ; preds = %if.then18.i
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %1, align 8
  %126 = and i16 %125, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %126)
  %cmp23.i = icmp eq i16 %126, 16384
  br i1 %cmp23.i, label %if.then25.i, label %if.end22.i.if.then34.i_crit_edge

if.end22.i.if.then34.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then34.i

if.then25.i:                                      ; preds = %if.end22.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ndir, i32 0, i32 8
  %127 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i_sb.i, align 4
  %call.i172 = call ptr @igrab(ptr noundef %ndir) #14
  %cmp24.i173 = icmp eq ptr %1, %ndir
  br i1 %cmp24.i173, label %if.then25.i.out_gunlock_r.i43.sink.split_crit_edge, label %if.end.lr.ph.i

if.then25.i.out_gunlock_r.i43.sink.split_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.i43.sink.split

if.end.lr.ph.i:                                   ; preds = %if.then25.i
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %128, i32 0, i32 13
  br label %if.end.i175

if.end.i175:                                      ; preds = %if.end12.i179.if.end.i175_crit_edge, %if.end.lr.ph.i
  %dir.025.i = phi ptr [ %ndir, %if.end.lr.ph.i ], [ %call6.i, %if.end12.i179.if.end.i175_crit_edge ]
  %129 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %s_root.i, align 64
  %d_inode.i.i174 = getelementptr inbounds %struct.dentry, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %d_inode.i.i174 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %d_inode.i.i174, align 8
  %cmp3.i = icmp eq ptr %dir.025.i, %132
  br i1 %cmp3.i, label %gfs2_ok_to_move.exit.thread193, label %if.end5.i

gfs2_ok_to_move.exit.thread193:                   ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef %dir.025.i) #14
  br label %if.then34.i

if.end5.i:                                        ; preds = %if.end.i175
  %call6.i = call ptr @gfs2_lookupi(ptr noundef %dir.025.i, ptr noundef nonnull @gfs2_qdotdot, i32 noundef 1) #14
  %tobool.not.i176 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i176, label %if.end5.i.out_gunlock_r.i43.sink.split_crit_edge, label %if.end8.i

if.end5.i.out_gunlock_r.i43.sink.split_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.i43.sink.split

if.end8.i:                                        ; preds = %if.end5.i
  %cmp.i.i177 = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i177, label %gfs2_ok_to_move.exit, label %if.end12.i179

if.end12.i179:                                    ; preds = %if.end8.i
  call void @iput(ptr noundef %dir.025.i) #14
  %cmp.i178 = icmp eq ptr %call6.i, %1
  br i1 %cmp.i178, label %if.end12.i179.out_gunlock_r.i43.sink.split_crit_edge, label %if.end12.i179.if.end.i175_crit_edge

if.end12.i179.if.end.i175_crit_edge:              ; preds = %if.end12.i179
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i175

if.end12.i179.out_gunlock_r.i43.sink.split_crit_edge: ; preds = %if.end12.i179
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.i43.sink.split

gfs2_ok_to_move.exit:                             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %133 = ptrtoint ptr %call6.i to i32
  br label %out_gunlock_r.i43.sink.split

if.end31.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i = tail call ptr @llvm.returnaddress(i32 0) #14
  %.pre366.i = ptrtoint ptr %.pre.i to i32
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %odir, i32 0, i32 6
  %134 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i_gl.i, align 4
  call void @__gfs2_holder_init(ptr noundef %135, i32 noundef 1, i16 noundef zeroext 64, ptr noundef nonnull %ghs.i14, i32 noundef %.pre366.i) #14
  br label %if.end37.i

if.then34.i:                                      ; preds = %gfs2_ok_to_move.exit.thread193, %if.end22.i.if.then34.i_crit_edge
  %dir_rename.0.ph.i = phi i32 [ 0, %if.end22.i.if.then34.i_crit_edge ], [ 1, %gfs2_ok_to_move.exit.thread193 ]
  %136 = xor i1 %cmp23.i, true
  %i_gl371.i = getelementptr inbounds %struct.gfs2_inode, ptr %odir, i32 0, i32 6
  %137 = ptrtoint ptr %i_gl371.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i_gl371.i, align 4
  call void @__gfs2_holder_init(ptr noundef %138, i32 noundef 1, i16 noundef zeroext 64, ptr noundef nonnull %ghs.i14, i32 noundef %123) #14
  %i_gl35.i = getelementptr inbounds %struct.gfs2_inode, ptr %ndir, i32 0, i32 6
  %139 = ptrtoint ptr %i_gl35.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i_gl35.i, align 4
  %add.ptr.i24 = getelementptr inbounds %struct.gfs2_holder, ptr %ghs.i14, i32 1
  call void @__gfs2_holder_init(ptr noundef %140, i32 noundef 1, i16 noundef zeroext 64, ptr noundef %add.ptr.i24, i32 noundef %123) #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %if.end31.i
  %dir_rename.0377.i = phi i32 [ %dir_rename.0.ph.i, %if.then34.i ], [ 0, %if.end31.i ]
  %tobool144.not375.i = phi i1 [ %136, %if.then34.i ], [ true, %if.end31.i ]
  %.pre-phi367373.i = phi i32 [ %123, %if.then34.i ], [ %.pre366.i, %if.end31.i ]
  %num_gh.0.i25 = phi i32 [ 2, %if.then34.i ], [ 1, %if.end31.i ]
  %i_gl38.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %141 = ptrtoint ptr %i_gl38.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i_gl38.i, align 4
  %add.ptr40.i = getelementptr %struct.gfs2_holder, ptr %ghs.i14, i32 %num_gh.0.i25
  call void @__gfs2_holder_init(ptr noundef %142, i32 noundef 1, i16 noundef zeroext 64, ptr noundef %add.ptr40.i, i32 noundef %.pre-phi367373.i) #14
  %inc41.i = add nuw nsw i32 %num_gh.0.i25, 1
  %tobool42.not.i = icmp eq ptr %119, null
  br i1 %tobool42.not.i, label %if.end37.i.for.body.i26_crit_edge, label %if.then43.i

if.end37.i.for.body.i26_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i26

if.then43.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_gl44.i = getelementptr inbounds %struct.gfs2_inode, ptr %119, i32 0, i32 6
  %143 = ptrtoint ptr %i_gl44.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i_gl44.i, align 4
  %add.ptr46.i = getelementptr %struct.gfs2_holder, ptr %ghs.i14, i32 %inc41.i
  call void @__gfs2_holder_init(ptr noundef %144, i32 noundef 1, i16 noundef zeroext 64, ptr noundef %add.ptr46.i, i32 noundef %.pre-phi367373.i) #14
  %inc47.i = add nuw nsw i32 %num_gh.0.i25, 2
  br label %for.body.i26

for.body.i26:                                     ; preds = %if.then43.i, %if.end37.i.for.body.i26_crit_edge
  %num_gh.1.i = phi i32 [ %inc47.i, %if.then43.i ], [ %inc41.i, %if.end37.i.for.body.i26_crit_edge ]
  %call53.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %ghs.i14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %for.body.i26.1, label %for.body.i26.out_gunlock.i40_crit_edge

for.body.i26.out_gunlock.i40_crit_edge:           ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

for.body.i26.1:                                   ; preds = %for.body.i26
  %add.ptr52.i.1 = getelementptr inbounds %struct.gfs2_holder, ptr %ghs.i14, i32 1
  %call53.i.1 = call i32 @gfs2_glock_nq(ptr noundef %add.ptr52.i.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.1)
  %tobool54.not.i.1 = icmp eq i32 %call53.i.1, 0
  br i1 %tobool54.not.i.1, label %for.inc.i28.1, label %for.body.i26.1.out_gunlock.i40_crit_edge

for.body.i26.1.out_gunlock.i40_crit_edge:         ; preds = %for.body.i26.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

for.inc.i28.1:                                    ; preds = %for.body.i26.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_gh.1.i)
  %exitcond.not.i27.1 = icmp eq i32 %num_gh.1.i, 2
  br i1 %exitcond.not.i27.1, label %for.inc.i28.1.for.end.i29_crit_edge, label %for.body.i26.2

for.inc.i28.1.for.end.i29_crit_edge:              ; preds = %for.inc.i28.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i29

for.body.i26.2:                                   ; preds = %for.inc.i28.1
  %add.ptr52.i.2 = getelementptr inbounds %struct.gfs2_holder, ptr %ghs.i14, i32 2
  %call53.i.2 = call i32 @gfs2_glock_nq(ptr noundef %add.ptr52.i.2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.2)
  %tobool54.not.i.2 = icmp eq i32 %call53.i.2, 0
  br i1 %tobool54.not.i.2, label %for.inc.i28.2, label %for.body.i26.2.out_gunlock.i40_crit_edge

for.body.i26.2.out_gunlock.i40_crit_edge:         ; preds = %for.body.i26.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

for.inc.i28.2:                                    ; preds = %for.body.i26.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num_gh.1.i)
  %exitcond.not.i27.2 = icmp eq i32 %num_gh.1.i, 3
  br i1 %exitcond.not.i27.2, label %for.inc.i28.2.for.end.i29_crit_edge, label %for.body.i26.3

for.inc.i28.2.for.end.i29_crit_edge:              ; preds = %for.inc.i28.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i29

for.body.i26.3:                                   ; preds = %for.inc.i28.2
  %add.ptr52.i.3 = getelementptr inbounds %struct.gfs2_holder, ptr %ghs.i14, i32 3
  %call53.i.3 = call i32 @gfs2_glock_nq(ptr noundef %add.ptr52.i.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.3)
  %tobool54.not.i.3 = icmp eq i32 %call53.i.3, 0
  br i1 %tobool54.not.i.3, label %for.body.i26.3.for.end.i29_crit_edge, label %for.body.i26.3.out_gunlock.i40_crit_edge

for.body.i26.3.out_gunlock.i40_crit_edge:         ; preds = %for.body.i26.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

for.body.i26.3.for.end.i29_crit_edge:             ; preds = %for.body.i26.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i29

for.end.i29:                                      ; preds = %for.body.i26.3.for.end.i29_crit_edge, %for.inc.i28.2.for.end.i29_crit_edge, %for.inc.i28.1.for.end.i29_crit_edge
  %call59.i = call i32 @gfs2_glock_async_wait(i32 noundef %num_gh.1.i, ptr noundef nonnull %ghs.i14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %for.end.i29.out_gunlock.i40_crit_edge

for.end.i29.out_gunlock.i40_crit_edge:            ; preds = %for.end.i29
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end62.i:                                       ; preds = %for.end.i29
  br i1 %tobool42.not.i, label %if.end62.i.if.end73.i_crit_edge, label %if.then64.i

if.end62.i.if.end73.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.then64.i:                                      ; preds = %if.end62.i
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %119, i32 0, i32 1
  %145 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %i_no_addr.i, align 8
  %call65.i = call ptr @gfs2_blk2rgrpd(ptr noundef %109, i64 noundef %146, i1 noundef zeroext true) #14
  %tobool66.not.i = icmp eq ptr %call65.i, null
  br i1 %tobool66.not.i, label %if.then64.i.out_gunlock.i40_crit_edge, label %if.end68.i32

if.then64.i.out_gunlock.i40_crit_edge:            ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end68.i32:                                     ; preds = %if.then64.i
  %rd_gl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call65.i, i32 0, i32 1
  %147 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rd_gl.i, align 4
  %149 = call ptr @llvm.returnaddress(i32 0) #14
  %150 = ptrtoint ptr %149 to i32
  call void @__gfs2_holder_init(ptr noundef %148, i32 noundef 1, i16 noundef zeroext 32, ptr noundef nonnull %rd_gh.i, i32 noundef %150) #14
  %call.i168 = call i32 @gfs2_glock_nq(ptr noundef nonnull %rd_gh.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.end68.i32.if.end73.i_crit_edge, label %gfs2_glock_nq_init.exit

if.end68.i32.if.end73.i_crit_edge:                ; preds = %if.end68.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

gfs2_glock_nq_init.exit:                          ; preds = %if.end68.i32
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %rd_gh.i) #14
  br label %out_gunlock.i40

if.end73.i:                                       ; preds = %if.end68.i32.if.end73.i_crit_edge, %if.end62.i.if.end73.i_crit_edge
  %151 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp75.i = icmp eq i32 %153, 0
  br i1 %cmp75.i, label %if.end73.i.out_gunlock.i40_crit_edge, label %if.end78.i

if.end73.i.out_gunlock.i40_crit_edge:             ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end78.i:                                       ; preds = %if.end73.i
  %d_name.i33 = getelementptr inbounds %struct.dentry, ptr %odentry, i32 0, i32 4
  %i_flags.i138 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %154 = ptrtoint ptr %i_flags.i138 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %i_flags.i138, align 4
  %156 = and i32 %155, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %if.end.i140, label %if.end78.i.out_gunlock.i40_crit_edge

if.end78.i.out_gunlock.i40_crit_edge:             ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end.i140:                                      ; preds = %if.end78.i
  %158 = ptrtoint ptr %odir to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %odir, align 8
  %160 = and i16 %159, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool7.not.i139 = icmp eq i16 %160, 0
  br i1 %tobool7.not.i139, label %if.end.i140.if.end29.i159_crit_edge, label %land.lhs.true.i149

if.end.i140.if.end29.i159_crit_edge:              ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i159

land.lhs.true.i149:                               ; preds = %if.end.i140
  %i_uid.i141 = getelementptr inbounds %struct.inode, ptr %odir, i32 0, i32 2
  %161 = call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i142 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i142 to ptr
  %task.i143 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %task.i143 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %task.i143, align 8
  %cred.i144 = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 99
  %165 = ptrtoint ptr %cred.i144 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cred.i144, align 16
  %fsuid.i145 = getelementptr inbounds %struct.cred, ptr %166, i32 0, i32 10
  %167 = ptrtoint ptr %fsuid.i145 to i32
  call void @__asan_load4_noabort(i32 %167)
  %agg.tmp.sroa.0.0.copyload.i146 = load i32, ptr %fsuid.i145, align 4
  %168 = ptrtoint ptr %i_uid.i141 to i32
  call void @__asan_load4_noabort(i32 %168)
  %.unpack.i147 = load i32, ptr %i_uid.i141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i147, i32 %agg.tmp.sroa.0.0.copyload.i146)
  %cmp.i.i148 = icmp eq i32 %.unpack.i147, %agg.tmp.sroa.0.0.copyload.i146
  br i1 %cmp.i.i148, label %land.lhs.true.i149.if.end29.i159_crit_edge, label %land.lhs.true11.i153

land.lhs.true.i149.if.end29.i159_crit_edge:       ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i159

land.lhs.true11.i153:                             ; preds = %land.lhs.true.i149
  %i_uid13.i150 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %169 = ptrtoint ptr %i_uid13.i150 to i32
  call void @__asan_load4_noabort(i32 %169)
  %.unpack52.i151 = load i32, ptr %i_uid13.i150, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack52.i151, i32 %agg.tmp.sroa.0.0.copyload.i146)
  %cmp.i53.i152 = icmp eq i32 %.unpack52.i151, %agg.tmp.sroa.0.0.copyload.i146
  br i1 %cmp.i53.i152, label %land.lhs.true11.i153.if.end29.i159_crit_edge, label %land.lhs.true26.i155

land.lhs.true11.i153.if.end29.i159_crit_edge:     ; preds = %land.lhs.true11.i153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i159

land.lhs.true26.i155:                             ; preds = %land.lhs.true11.i153
  %call27.i154 = call zeroext i1 @capable(i32 noundef 3) #14
  br i1 %call27.i154, label %land.lhs.true26.i155.if.end29.i159_crit_edge, label %land.lhs.true26.i155.out_gunlock.i40_crit_edge

land.lhs.true26.i155.out_gunlock.i40_crit_edge:   ; preds = %land.lhs.true26.i155
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

land.lhs.true26.i155.if.end29.i159_crit_edge:     ; preds = %land.lhs.true26.i155
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i159

if.end29.i159:                                    ; preds = %land.lhs.true26.i155.if.end29.i159_crit_edge, %land.lhs.true11.i153.if.end29.i159_crit_edge, %land.lhs.true.i149.if.end29.i159_crit_edge, %if.end.i140.if.end29.i159_crit_edge
  %i_flags31.i156 = getelementptr inbounds %struct.inode, ptr %odir, i32 0, i32 4
  %170 = ptrtoint ptr %i_flags31.i156 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %i_flags31.i156, align 4
  %and32.i157 = and i32 %171, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i157)
  %tobool33.not.i158 = icmp eq i32 %and32.i157, 0
  br i1 %tobool33.not.i158, label %if.end35.i162, label %if.end29.i159.out_gunlock.i40_crit_edge

if.end29.i159.out_gunlock.i40_crit_edge:          ; preds = %if.end29.i159
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end35.i162:                                    ; preds = %if.end29.i159
  %call37.i160 = call i32 @gfs2_permission(ptr undef, ptr noundef %odir, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i160)
  %tobool38.not.i161 = icmp eq i32 %call37.i160, 0
  br i1 %tobool38.not.i161, label %gfs2_unlink_ok.exit167, label %if.end35.i162.out_gunlock.i40_crit_edge

if.end35.i162.out_gunlock.i40_crit_edge:          ; preds = %if.end35.i162
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

gfs2_unlink_ok.exit167:                           ; preds = %if.end35.i162
  %call42.i163 = call i32 @gfs2_dir_check(ptr noundef %odir, ptr noundef %d_name.i33, ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i163)
  %tobool80.not.i = icmp eq i32 %call42.i163, 0
  br i1 %tobool80.not.i, label %if.end82.i, label %gfs2_unlink_ok.exit167.out_gunlock.i40_crit_edge

gfs2_unlink_ok.exit167.out_gunlock.i40_crit_edge: ; preds = %gfs2_unlink_ok.exit167
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end82.i:                                       ; preds = %gfs2_unlink_ok.exit167
  br i1 %tobool42.not.i, label %if.else.i35, label %if.then84.i

if.then84.i:                                      ; preds = %if.end82.i
  %d_name85.i = getelementptr inbounds %struct.dentry, ptr %ndentry, i32 0, i32 4
  %i_flags.i108 = getelementptr inbounds %struct.inode, ptr %119, i32 0, i32 4
  %172 = ptrtoint ptr %i_flags.i108 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %i_flags.i108, align 4
  %174 = and i32 %173, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %if.end.i110, label %if.then84.i.out_gunlock.i40_crit_edge

if.then84.i.out_gunlock.i40_crit_edge:            ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end.i110:                                      ; preds = %if.then84.i
  %176 = ptrtoint ptr %ndir to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %ndir, align 8
  %178 = and i16 %177, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %178)
  %tobool7.not.i109 = icmp eq i16 %178, 0
  br i1 %tobool7.not.i109, label %if.end.i110.if.end29.i129_crit_edge, label %land.lhs.true.i119

if.end.i110.if.end29.i129_crit_edge:              ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i129

land.lhs.true.i119:                               ; preds = %if.end.i110
  %i_uid.i111 = getelementptr inbounds %struct.inode, ptr %ndir, i32 0, i32 2
  %179 = call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i.i112 = and i32 %179, -16384
  %180 = inttoptr i32 %and.i.i112 to ptr
  %task.i113 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %task.i113 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %task.i113, align 8
  %cred.i114 = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 99
  %183 = ptrtoint ptr %cred.i114 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cred.i114, align 16
  %fsuid.i115 = getelementptr inbounds %struct.cred, ptr %184, i32 0, i32 10
  %185 = ptrtoint ptr %fsuid.i115 to i32
  call void @__asan_load4_noabort(i32 %185)
  %agg.tmp.sroa.0.0.copyload.i116 = load i32, ptr %fsuid.i115, align 4
  %186 = ptrtoint ptr %i_uid.i111 to i32
  call void @__asan_load4_noabort(i32 %186)
  %.unpack.i117 = load i32, ptr %i_uid.i111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i117, i32 %agg.tmp.sroa.0.0.copyload.i116)
  %cmp.i.i118 = icmp eq i32 %.unpack.i117, %agg.tmp.sroa.0.0.copyload.i116
  br i1 %cmp.i.i118, label %land.lhs.true.i119.if.end29.i129_crit_edge, label %land.lhs.true11.i123

land.lhs.true.i119.if.end29.i129_crit_edge:       ; preds = %land.lhs.true.i119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i129

land.lhs.true11.i123:                             ; preds = %land.lhs.true.i119
  %i_uid13.i120 = getelementptr inbounds %struct.inode, ptr %119, i32 0, i32 2
  %187 = ptrtoint ptr %i_uid13.i120 to i32
  call void @__asan_load4_noabort(i32 %187)
  %.unpack52.i121 = load i32, ptr %i_uid13.i120, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack52.i121, i32 %agg.tmp.sroa.0.0.copyload.i116)
  %cmp.i53.i122 = icmp eq i32 %.unpack52.i121, %agg.tmp.sroa.0.0.copyload.i116
  br i1 %cmp.i53.i122, label %land.lhs.true11.i123.if.end29.i129_crit_edge, label %land.lhs.true26.i125

land.lhs.true11.i123.if.end29.i129_crit_edge:     ; preds = %land.lhs.true11.i123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i129

land.lhs.true26.i125:                             ; preds = %land.lhs.true11.i123
  %call27.i124 = call zeroext i1 @capable(i32 noundef 3) #14
  br i1 %call27.i124, label %land.lhs.true26.i125.if.end29.i129_crit_edge, label %land.lhs.true26.i125.out_gunlock.i40_crit_edge

land.lhs.true26.i125.out_gunlock.i40_crit_edge:   ; preds = %land.lhs.true26.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

land.lhs.true26.i125.if.end29.i129_crit_edge:     ; preds = %land.lhs.true26.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i129

if.end29.i129:                                    ; preds = %land.lhs.true26.i125.if.end29.i129_crit_edge, %land.lhs.true11.i123.if.end29.i129_crit_edge, %land.lhs.true.i119.if.end29.i129_crit_edge, %if.end.i110.if.end29.i129_crit_edge
  %i_flags31.i126 = getelementptr inbounds %struct.inode, ptr %ndir, i32 0, i32 4
  %188 = ptrtoint ptr %i_flags31.i126 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %i_flags31.i126, align 4
  %and32.i127 = and i32 %189, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i127)
  %tobool33.not.i128 = icmp eq i32 %and32.i127, 0
  br i1 %tobool33.not.i128, label %if.end35.i132, label %if.end29.i129.out_gunlock.i40_crit_edge

if.end29.i129.out_gunlock.i40_crit_edge:          ; preds = %if.end29.i129
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end35.i132:                                    ; preds = %if.end29.i129
  %call37.i130 = call i32 @gfs2_permission(ptr undef, ptr noundef %ndir, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i130)
  %tobool38.not.i131 = icmp eq i32 %call37.i130, 0
  br i1 %tobool38.not.i131, label %gfs2_unlink_ok.exit137, label %if.end35.i132.out_gunlock.i40_crit_edge

if.end35.i132.out_gunlock.i40_crit_edge:          ; preds = %if.end35.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

gfs2_unlink_ok.exit137:                           ; preds = %if.end35.i132
  %call42.i133 = call i32 @gfs2_dir_check(ptr noundef %ndir, ptr noundef %d_name85.i, ptr noundef nonnull %119) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i133)
  %tobool87.not.i = icmp eq i32 %call42.i133, 0
  br i1 %tobool87.not.i, label %if.end89.i, label %gfs2_unlink_ok.exit137.out_gunlock.i40_crit_edge

gfs2_unlink_ok.exit137.out_gunlock.i40_crit_edge: ; preds = %gfs2_unlink_ok.exit137
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end89.i:                                       ; preds = %gfs2_unlink_ok.exit137
  %190 = getelementptr inbounds %struct.inode, ptr %119, i32 0, i32 12
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp91.i34 = icmp eq i32 %192, 0
  br i1 %cmp91.i34, label %if.end89.i.out_gunlock.i40_crit_edge, label %if.end94.i

if.end89.i.out_gunlock.i40_crit_edge:             ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end94.i:                                       ; preds = %if.end89.i
  %193 = ptrtoint ptr %119 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %119, align 8
  %195 = and i16 %194, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %195)
  %cmp99.i = icmp eq i16 %195, 16384
  br i1 %cmp99.i, label %if.then101.i, label %if.end94.i.if.end143.i_crit_edge

if.end94.i.if.end143.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i

if.then101.i:                                     ; preds = %if.end94.i
  %i_entries.i = getelementptr inbounds %struct.gfs2_inode, ptr %119, i32 0, i32 17
  %196 = ptrtoint ptr %i_entries.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %i_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %197)
  %cmp102.i = icmp ult i32 %197, 2
  br i1 %cmp102.i, label %if.then104.i, label %if.end105.i

if.then104.i:                                     ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_consist_inode_i(ptr noundef nonnull %119, ptr noundef nonnull @__func__.gfs2_rename, ptr noundef nonnull @.str.7, i32 noundef 1475) #14
  br label %out_gunlock.i40

if.end105.i:                                      ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %197)
  %cmp107.not.i = icmp eq i32 %197, 2
  br i1 %cmp107.not.i, label %if.end105.i.if.end143.i_crit_edge, label %if.end105.i.out_gunlock.i40_crit_edge

if.end105.i.out_gunlock.i40_crit_edge:            ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end105.i.if.end143.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i

if.else.i35:                                      ; preds = %if.end82.i
  %call112.i = call i32 @gfs2_permission(ptr undef, ptr noundef %ndir, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %if.end115.i, label %if.else.i35.out_gunlock.i40_crit_edge

if.else.i35.out_gunlock.i40_crit_edge:            ; preds = %if.else.i35
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end115.i:                                      ; preds = %if.else.i35
  %d_name116.i = getelementptr inbounds %struct.dentry, ptr %ndentry, i32 0, i32 4
  %call117.i = call i32 @gfs2_dir_check(ptr noundef %ndir, ptr noundef %d_name116.i, ptr noundef null) #14
  %198 = zext i32 %call117.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call117.i, label %if.end115.i.out_gunlock.i40_crit_edge [
    i32 -2, label %sw.bb.i
    i32 0, label %sw.bb118.i
  ]

if.end115.i.out_gunlock.i40_crit_edge:            ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

sw.bb.i:                                          ; preds = %if.end115.i
  br i1 %cmp17.not.i, label %sw.bb.i.if.end143.i_crit_edge, label %if.then121.i

sw.bb.i.if.end143.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i

sw.bb118.i:                                       ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.then121.i:                                     ; preds = %sw.bb.i
  %199 = getelementptr inbounds %struct.inode, ptr %ndir, i32 0, i32 12
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool123.not.i = icmp eq i32 %201, 0
  br i1 %tobool123.not.i, label %if.then121.i.out_gunlock.i40_crit_edge, label %if.end125.i

if.then121.i.out_gunlock.i40_crit_edge:           ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end125.i:                                      ; preds = %if.then121.i
  %i_entries126.i = getelementptr inbounds %struct.gfs2_inode, ptr %ndir, i32 0, i32 17
  %202 = ptrtoint ptr %i_entries126.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %i_entries126.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %203)
  %cmp127.i = icmp eq i32 %203, -1
  br i1 %cmp127.i, label %if.end125.i.out_gunlock.i40_crit_edge, label %if.end130.i

if.end125.i.out_gunlock.i40_crit_edge:            ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end130.i:                                      ; preds = %if.end125.i
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %1, align 8
  %206 = and i16 %205, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %206)
  %cmp135.i = icmp eq i16 %206, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %201)
  %cmp138.i = icmp eq i32 %201, -1
  %or.cond.i = select i1 %cmp135.i, i1 %cmp138.i, i1 false
  br i1 %or.cond.i, label %if.end130.i.out_gunlock.i40_crit_edge, label %if.end130.i.if.end143.i_crit_edge

if.end130.i.if.end143.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i

if.end130.i.out_gunlock.i40_crit_edge:            ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.end143.i:                                      ; preds = %if.end130.i.if.end143.i_crit_edge, %sw.bb.i.if.end143.i_crit_edge, %if.end105.i.if.end143.i_crit_edge, %if.end94.i.if.end143.i_crit_edge
  br i1 %tobool144.not375.i, label %if.end143.i.if.end151.i_crit_edge, label %if.then145.i

if.end143.i.if.end151.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151.i

if.then145.i:                                     ; preds = %if.end143.i
  %207 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %d_inode.i.i, align 8
  %call147.i = call i32 @gfs2_permission(ptr undef, ptr noundef %208, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i)
  %tobool148.not.i = icmp eq i32 %call147.i, 0
  br i1 %tobool148.not.i, label %if.then145.i.if.end151.i_crit_edge, label %if.then145.i.out_gunlock.i40_crit_edge

if.then145.i.out_gunlock.i40_crit_edge:           ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.then145.i.if.end151.i_crit_edge:               ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then145.i.if.end151.i_crit_edge, %if.end143.i.if.end151.i_crit_edge
  br i1 %tobool42.not.i, label %if.then154.i, label %if.end151.i.if.end160.i_crit_edge

if.end151.i.if.end160.i_crit_edge:                ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160.i

if.then154.i:                                     ; preds = %if.end151.i
  %d_name155.i = getelementptr inbounds %struct.dentry, ptr %ndentry, i32 0, i32 4
  %call156.i = call i32 @gfs2_diradd_alloc_required(ptr noundef %ndir, ptr noundef %d_name155.i, ptr noundef nonnull %da.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %tobool157.not.i = icmp eq i32 %call156.i, 0
  br i1 %tobool157.not.i, label %if.then154.i.if.end160.i_crit_edge, label %if.then154.i.out_gunlock.i40_crit_edge

if.then154.i.out_gunlock.i40_crit_edge:           ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.then154.i.if.end160.i_crit_edge:               ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then154.i.if.end160.i_crit_edge, %if.end151.i.if.end160.i_crit_edge
  %209 = ptrtoint ptr %da.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %da.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool161.not.i = icmp eq i32 %210, 0
  br i1 %tobool161.not.i, label %if.else179.i, label %if.then162.i

if.then162.i:                                     ; preds = %if.end160.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap.i) #14
  %211 = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap.i, i32 0, i32 1
  %conv164.i = zext i32 %210 to i64
  %212 = ptrtoint ptr %ap.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %conv164.i, ptr %ap.i, align 8
  %213 = ptrtoint ptr %211 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 0, ptr %211, align 8
  %i_sb.i.i98 = getelementptr inbounds %struct.inode, ptr %ndir, i32 0, i32 8
  %214 = ptrtoint ptr %i_sb.i.i98 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %i_sb.i.i98, align 4
  %s_fs_info.i.i99 = getelementptr inbounds %struct.super_block, ptr %215, i32 0, i32 33
  %216 = ptrtoint ptr %s_fs_info.i.i99 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %s_fs_info.i.i99, align 16
  %allowed.i = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap.i, i32 0, i32 3
  %218 = ptrtoint ptr %allowed.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 4294967295, ptr %allowed.i, align 8
  %call1.i = call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call1.i, label %if.then162.i.if.end168.i_crit_edge, label %lor.lhs.false.i101

if.then162.i.if.end168.i_crit_edge:               ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168.i

lor.lhs.false.i101:                               ; preds = %if.then162.i
  %ar_quota.i = getelementptr inbounds %struct.gfs2_sbd, ptr %217, i32 0, i32 21, i32 3
  %219 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %bf.load.i = load i32, ptr %ar_quota.i, align 4
  %220 = and i32 %bf.load.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp.i100 = icmp eq i32 %220, 0
  br i1 %cmp.i100, label %lor.lhs.false.i101.if.end168.i_crit_edge, label %if.end.i103

lor.lhs.false.i101.if.end168.i_crit_edge:         ; preds = %lor.lhs.false.i101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168.i

if.end.i103:                                      ; preds = %lor.lhs.false.i101
  %call5.i = call i32 @gfs2_quota_lock(ptr noundef %ndir, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i102 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i102, label %if.end7.i, label %if.end.i103.cleanup.i_crit_edge

if.end.i103.cleanup.i_crit_edge:                  ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end7.i:                                        ; preds = %if.end.i103
  %221 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %bf.load10.i = load i32, ptr %ar_quota.i, align 4
  %222 = and i32 %bf.load10.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %222)
  %cmp13.not.i = icmp eq i32 %222, 134217728
  br i1 %cmp13.not.i, label %if.end15.i, label %if.end7.i.if.end168.i_crit_edge

if.end7.i.if.end168.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168.i

if.end15.i:                                       ; preds = %if.end7.i
  %i_uid.i104 = getelementptr inbounds %struct.inode, ptr %ndir, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %ndir, i32 0, i32 3
  %223 = ptrtoint ptr %i_uid.i104 to i32
  call void @__asan_load4_noabort(i32 %223)
  %.unpack.i105 = load i32, ptr %i_uid.i104, align 4
  %224 = insertvalue [1 x i32] undef, i32 %.unpack.i105, 0
  %225 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %.unpack36.i = load i32, ptr %i_gid.i, align 8
  %226 = insertvalue [1 x i32] undef, i32 %.unpack36.i, 0
  %call20.i = call i32 @gfs2_quota_check(ptr noundef %ndir, [1 x i32] %224, [1 x i32] %226, ptr noundef nonnull %ap.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end15.i.if.end168.i_crit_edge, label %if.then22.i

if.end15.i.if.end168.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end168.i

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_quota_unlock(ptr noundef %ndir) #14
  br label %cleanup.i

if.end168.i:                                      ; preds = %if.end15.i.if.end168.i_crit_edge, %if.end7.i.if.end168.i_crit_edge, %lor.lhs.false.i101.if.end168.i_crit_edge, %if.then162.i.if.end168.i_crit_edge
  %call169.i = call i32 @gfs2_inplace_reserve(ptr noundef %ndir, ptr noundef nonnull %ap.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %tobool170.not.i36 = icmp eq i32 %call169.i, 0
  br i1 %tobool170.not.i36, label %if.end172.i, label %cleanup.thread352.i

cleanup.thread352.i:                              ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap.i) #14
  br label %out_gunlock_q.i

if.end172.i:                                      ; preds = %if.end168.i
  %227 = ptrtoint ptr %da.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %da.i, align 4
  %rs_rgd.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ndir, i32 0, i32 10, i32 1
  %229 = ptrtoint ptr %rs_rgd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %rs_rgd.i.i.i, align 4
  %rd_length.i.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %230, i32 0, i32 4
  %231 = ptrtoint ptr %rd_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %rd_length.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %228)
  %cmp.i.i.i37 = icmp ugt i32 %232, %228
  %add.i.i.i = add i32 %228, 1
  %retval.0.i.i.i = select i1 %cmp.i.i.i37, i32 %add.i.i.i, i32 %232
  %add4.i.i = add i32 %228, 15
  %add174.i = add i32 %add4.i.i, %retval.0.i.i.i
  %call175.i = call i32 @gfs2_trans_begin(ptr noundef %109, i32 noundef %add174.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175.i)
  %tobool176.not.i = icmp eq i32 %call175.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap.i) #14
  br i1 %tobool176.not.i, label %if.end172.i.if.end184.i_crit_edge, label %if.end172.i.out_ipreserv.i_crit_edge

if.end172.i.out_ipreserv.i_crit_edge:             ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_ipreserv.i

if.end172.i.if.end184.i_crit_edge:                ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end184.i

cleanup.i:                                        ; preds = %if.then22.i, %if.end.i103.cleanup.i_crit_edge
  %retval.0.i106 = phi i32 [ %call5.i, %if.end.i103.cleanup.i_crit_edge ], [ %call20.i, %if.then22.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap.i) #14
  br label %out_gunlock.i40

if.else179.i:                                     ; preds = %if.end160.i
  %call180.i = call i32 @gfs2_trans_begin(ptr noundef %109, i32 noundef 13, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %tobool181.not.i = icmp eq i32 %call180.i, 0
  br i1 %tobool181.not.i, label %if.else179.i.if.end184.i_crit_edge, label %if.else179.i.out_gunlock.i40_crit_edge

if.else179.i.out_gunlock.i40_crit_edge:           ; preds = %if.else179.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.else179.i.if.end184.i_crit_edge:               ; preds = %if.else179.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.else179.i.if.end184.i_crit_edge, %if.end172.i.if.end184.i_crit_edge
  br i1 %tobool42.not.i, label %if.end184.i.if.end188.i_crit_edge, label %if.then186.i

if.end184.i.if.end188.i_crit_edge:                ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end188.i

if.then186.i:                                     ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #16
  %call187.i = call fastcc i32 @gfs2_unlink_inode(ptr noundef %ndir, ptr noundef %ndentry) #14
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.then186.i, %if.end184.i.if.end188.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir_rename.0377.i)
  %tobool.not.i91 = icmp eq i32 %dir_rename.0377.i, 0
  br i1 %tobool.not.i91, label %update_moved_ino.exit97.thread, label %update_moved_ino.exit97

update_moved_ino.exit97.thread:                   ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_ctime.i94 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i90) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i90, ptr noundef %1) #14
  %233 = call ptr @memcpy(ptr %i_ctime.i94, ptr %tmp.i90, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i90) #14
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 1) #14
  br label %if.end192.i

update_moved_ino.exit97:                          ; preds = %if.end188.i
  %call.i92 = call i32 @gfs2_dir_mvino(ptr noundef %1, ptr noundef nonnull @gfs2_qdotdot, ptr noundef %ndir, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool190.not.i = icmp eq i32 %call.i92, 0
  br i1 %tobool190.not.i, label %update_moved_ino.exit97.if.end192.i_crit_edge, label %update_moved_ino.exit97.out_end_trans.i38_crit_edge

update_moved_ino.exit97.out_end_trans.i38_crit_edge: ; preds = %update_moved_ino.exit97
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans.i38

update_moved_ino.exit97.if.end192.i_crit_edge:    ; preds = %update_moved_ino.exit97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end192.i

if.end192.i:                                      ; preds = %update_moved_ino.exit97.if.end192.i_crit_edge, %update_moved_ino.exit97.thread
  %call193.i = call i32 @gfs2_dir_del(ptr noundef %odir, ptr noundef %odentry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193.i)
  %tobool194.not.i = icmp eq i32 %call193.i, 0
  br i1 %tobool194.not.i, label %if.end196.i, label %if.end192.i.out_end_trans.i38_crit_edge

if.end192.i.out_end_trans.i38_crit_edge:          ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_end_trans.i38

if.end196.i:                                      ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #16
  %d_name197.i = getelementptr inbounds %struct.dentry, ptr %ndentry, i32 0, i32 4
  %call198.i = call i32 @gfs2_dir_add(ptr noundef %ndir, ptr noundef %d_name197.i, ptr noundef %1, ptr noundef nonnull %da.i) #14
  br label %out_end_trans.i38

out_end_trans.i38:                                ; preds = %if.end196.i, %if.end192.i.out_end_trans.i38_crit_edge, %update_moved_ino.exit97.out_end_trans.i38_crit_edge
  %error.1.i = phi i32 [ %call.i92, %update_moved_ino.exit97.out_end_trans.i38_crit_edge ], [ %call193.i, %if.end192.i.out_end_trans.i38_crit_edge ], [ %call198.i, %if.end196.i ]
  call void @gfs2_trans_end(ptr noundef %109) #14
  br label %out_ipreserv.i

out_ipreserv.i:                                   ; preds = %out_end_trans.i38, %if.end172.i.out_ipreserv.i_crit_edge
  %error.2.i39 = phi i32 [ %error.1.i, %out_end_trans.i38 ], [ %call175.i, %if.end172.i.out_ipreserv.i_crit_edge ]
  %234 = ptrtoint ptr %da.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %da.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool203.not.i = icmp eq i32 %235, 0
  br i1 %tobool203.not.i, label %out_ipreserv.i.out_gunlock.i40_crit_edge, label %if.then204.i

out_ipreserv.i.out_gunlock.i40_crit_edge:         ; preds = %out_ipreserv.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.then204.i:                                     ; preds = %out_ipreserv.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_inplace_release(ptr noundef %ndir) #14
  br label %out_gunlock_q.i

out_gunlock_q.i:                                  ; preds = %if.then204.i, %cleanup.thread352.i
  %error.3.ph.i = phi i32 [ %call169.i, %cleanup.thread352.i ], [ %error.2.i39, %if.then204.i ]
  %236 = ptrtoint ptr %da.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %.pr.i = load i32, ptr %da.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool207.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool207.not.i, label %out_gunlock_q.i.out_gunlock.i40_crit_edge, label %if.then208.i

out_gunlock_q.i.out_gunlock.i40_crit_edge:        ; preds = %out_gunlock_q.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock.i40

if.then208.i:                                     ; preds = %out_gunlock_q.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_quota_unlock(ptr noundef %ndir) #14
  br label %out_gunlock.i40

out_gunlock.i40:                                  ; preds = %if.then208.i, %out_gunlock_q.i.out_gunlock.i40_crit_edge, %out_ipreserv.i.out_gunlock.i40_crit_edge, %if.else179.i.out_gunlock.i40_crit_edge, %cleanup.i, %if.then154.i.out_gunlock.i40_crit_edge, %if.then145.i.out_gunlock.i40_crit_edge, %if.end130.i.out_gunlock.i40_crit_edge, %if.end125.i.out_gunlock.i40_crit_edge, %if.then121.i.out_gunlock.i40_crit_edge, %sw.bb118.i, %if.end115.i.out_gunlock.i40_crit_edge, %if.else.i35.out_gunlock.i40_crit_edge, %if.end105.i.out_gunlock.i40_crit_edge, %if.then104.i, %if.end89.i.out_gunlock.i40_crit_edge, %gfs2_unlink_ok.exit137.out_gunlock.i40_crit_edge, %if.end35.i132.out_gunlock.i40_crit_edge, %if.end29.i129.out_gunlock.i40_crit_edge, %land.lhs.true26.i125.out_gunlock.i40_crit_edge, %if.then84.i.out_gunlock.i40_crit_edge, %gfs2_unlink_ok.exit167.out_gunlock.i40_crit_edge, %if.end35.i162.out_gunlock.i40_crit_edge, %if.end29.i159.out_gunlock.i40_crit_edge, %land.lhs.true26.i155.out_gunlock.i40_crit_edge, %if.end78.i.out_gunlock.i40_crit_edge, %if.end73.i.out_gunlock.i40_crit_edge, %gfs2_glock_nq_init.exit, %if.then64.i.out_gunlock.i40_crit_edge, %for.end.i29.out_gunlock.i40_crit_edge, %for.body.i26.3.out_gunlock.i40_crit_edge, %for.body.i26.2.out_gunlock.i40_crit_edge, %for.body.i26.1.out_gunlock.i40_crit_edge, %for.body.i26.out_gunlock.i40_crit_edge
  %x.0359.i = phi i32 [ %num_gh.1.i, %for.end.i29.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %gfs2_glock_nq_init.exit ], [ %num_gh.1.i, %if.end73.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %gfs2_unlink_ok.exit167.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %gfs2_unlink_ok.exit137.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.then104.i ], [ %num_gh.1.i, %if.then145.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.then154.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %cleanup.i ], [ %num_gh.1.i, %if.then208.i ], [ %num_gh.1.i, %out_gunlock_q.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.else179.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.else.i35.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.end115.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %sw.bb118.i ], [ %num_gh.1.i, %if.then64.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.end89.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.end105.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.then121.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.end125.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.end130.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %out_ipreserv.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.end78.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %land.lhs.true26.i155.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.end29.i159.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.end35.i162.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.then84.i.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %land.lhs.true26.i125.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.end29.i129.out_gunlock.i40_crit_edge ], [ %num_gh.1.i, %if.end35.i132.out_gunlock.i40_crit_edge ], [ 0, %for.body.i26.out_gunlock.i40_crit_edge ], [ 1, %for.body.i26.1.out_gunlock.i40_crit_edge ], [ 2, %for.body.i26.2.out_gunlock.i40_crit_edge ], [ 3, %for.body.i26.3.out_gunlock.i40_crit_edge ]
  %error.4.i = phi i32 [ %call59.i, %for.end.i29.out_gunlock.i40_crit_edge ], [ %call.i168, %gfs2_glock_nq_init.exit ], [ -2, %if.end73.i.out_gunlock.i40_crit_edge ], [ %call42.i163, %gfs2_unlink_ok.exit167.out_gunlock.i40_crit_edge ], [ %call42.i133, %gfs2_unlink_ok.exit137.out_gunlock.i40_crit_edge ], [ -5, %if.then104.i ], [ %call147.i, %if.then145.i.out_gunlock.i40_crit_edge ], [ %call156.i, %if.then154.i.out_gunlock.i40_crit_edge ], [ %retval.0.i106, %cleanup.i ], [ %error.3.ph.i, %if.then208.i ], [ %error.3.ph.i, %out_gunlock_q.i.out_gunlock.i40_crit_edge ], [ %call180.i, %if.else179.i.out_gunlock.i40_crit_edge ], [ %call112.i, %if.else.i35.out_gunlock.i40_crit_edge ], [ %call117.i, %if.end115.i.out_gunlock.i40_crit_edge ], [ -17, %sw.bb118.i ], [ -2, %if.then64.i.out_gunlock.i40_crit_edge ], [ -11, %if.end89.i.out_gunlock.i40_crit_edge ], [ -39, %if.end105.i.out_gunlock.i40_crit_edge ], [ -2, %if.then121.i.out_gunlock.i40_crit_edge ], [ -27, %if.end125.i.out_gunlock.i40_crit_edge ], [ -31, %if.end130.i.out_gunlock.i40_crit_edge ], [ %error.2.i39, %out_ipreserv.i.out_gunlock.i40_crit_edge ], [ -1, %if.end78.i.out_gunlock.i40_crit_edge ], [ -1, %land.lhs.true26.i155.out_gunlock.i40_crit_edge ], [ -1, %if.end29.i159.out_gunlock.i40_crit_edge ], [ %call37.i160, %if.end35.i162.out_gunlock.i40_crit_edge ], [ -1, %if.then84.i.out_gunlock.i40_crit_edge ], [ -1, %land.lhs.true26.i125.out_gunlock.i40_crit_edge ], [ -1, %if.end29.i129.out_gunlock.i40_crit_edge ], [ %call37.i130, %if.end35.i132.out_gunlock.i40_crit_edge ], [ %call53.i, %for.body.i26.out_gunlock.i40_crit_edge ], [ %call53.i.1, %for.body.i26.1.out_gunlock.i40_crit_edge ], [ %call53.i.2, %for.body.i26.2.out_gunlock.i40_crit_edge ], [ %call53.i.3, %for.body.i26.3.out_gunlock.i40_crit_edge ]
  %bh.i.i = getelementptr inbounds %struct.gfs2_diradd, ptr %da.i, i32 0, i32 2
  %237 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %bh.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %238, null
  br i1 %tobool.not.i.i.i, label %out_gunlock.i40.gfs2_dir_no_add.exit.i_crit_edge, label %if.then.i.i.i

out_gunlock.i40.gfs2_dir_no_add.exit.i_crit_edge: ; preds = %out_gunlock.i40
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_dir_no_add.exit.i

if.then.i.i.i:                                    ; preds = %out_gunlock.i40
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %238) #14
  br label %gfs2_dir_no_add.exit.i

gfs2_dir_no_add.exit.i:                           ; preds = %if.then.i.i.i, %out_gunlock.i40.gfs2_dir_no_add.exit.i_crit_edge
  %239 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr null, ptr %bh.i.i, align 4
  %240 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %113, align 4
  %tobool.i.not.i41 = icmp eq ptr %241, null
  br i1 %tobool.i.not.i41, label %gfs2_dir_no_add.exit.i.if.end212.i_crit_edge, label %if.then211.i

gfs2_dir_no_add.exit.i.if.end212.i_crit_edge:     ; preds = %gfs2_dir_no_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end212.i

if.then211.i:                                     ; preds = %gfs2_dir_no_add.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %rd_gh.i) #14
  br label %if.end212.i

if.end212.i:                                      ; preds = %if.then211.i, %gfs2_dir_no_add.exit.i.if.end212.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.0359.i)
  %tobool213.not362.i = icmp eq i32 %x.0359.i, 0
  br i1 %tobool213.not362.i, label %if.end212.i.out_gunlock_r.i43_crit_edge, label %while.body.i42

if.end212.i.out_gunlock_r.i43_crit_edge:          ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.i43

while.body.i42:                                   ; preds = %if.end212.i
  %dec363.i = add nsw i32 %x.0359.i, -1
  %add.ptr215.i = getelementptr %struct.gfs2_holder, ptr %ghs.i14, i32 %dec363.i
  %242 = ptrtoint ptr %add.ptr215.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile ptr, ptr %add.ptr215.i, align 4
  %cmp.i.i344.not.i = icmp eq ptr %243, %add.ptr215.i
  br i1 %cmp.i.i344.not.i, label %while.body.i42.if.end220.i_crit_edge, label %if.then217.i

while.body.i42.if.end220.i_crit_edge:             ; preds = %while.body.i42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i

if.then217.i:                                     ; preds = %while.body.i42
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq(ptr noundef %add.ptr215.i) #14
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.then217.i, %while.body.i42.if.end220.i_crit_edge
  call void @gfs2_holder_uninit(ptr noundef %add.ptr215.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec363.i)
  %tobool213.not.i = icmp eq i32 %dec363.i, 0
  br i1 %tobool213.not.i, label %if.end220.i.out_gunlock_r.i43_crit_edge, label %while.body.i42.1

if.end220.i.out_gunlock_r.i43_crit_edge:          ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.i43

while.body.i42.1:                                 ; preds = %if.end220.i
  %dec363.i.1 = add nsw i32 %x.0359.i, -2
  %add.ptr215.i.1 = getelementptr %struct.gfs2_holder, ptr %ghs.i14, i32 %dec363.i.1
  %244 = ptrtoint ptr %add.ptr215.i.1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load volatile ptr, ptr %add.ptr215.i.1, align 4
  %cmp.i.i344.not.i.1 = icmp eq ptr %245, %add.ptr215.i.1
  br i1 %cmp.i.i344.not.i.1, label %while.body.i42.1.if.end220.i.1_crit_edge, label %if.then217.i.1

while.body.i42.1.if.end220.i.1_crit_edge:         ; preds = %while.body.i42.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i.1

if.then217.i.1:                                   ; preds = %while.body.i42.1
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq(ptr noundef %add.ptr215.i.1) #14
  br label %if.end220.i.1

if.end220.i.1:                                    ; preds = %if.then217.i.1, %while.body.i42.1.if.end220.i.1_crit_edge
  call void @gfs2_holder_uninit(ptr noundef %add.ptr215.i.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec363.i.1)
  %tobool213.not.i.1 = icmp eq i32 %dec363.i.1, 0
  br i1 %tobool213.not.i.1, label %if.end220.i.1.out_gunlock_r.i43_crit_edge, label %while.body.i42.2

if.end220.i.1.out_gunlock_r.i43_crit_edge:        ; preds = %if.end220.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.i43

while.body.i42.2:                                 ; preds = %if.end220.i.1
  %dec363.i.2 = add nsw i32 %x.0359.i, -3
  %add.ptr215.i.2 = getelementptr %struct.gfs2_holder, ptr %ghs.i14, i32 %dec363.i.2
  %246 = ptrtoint ptr %add.ptr215.i.2 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile ptr, ptr %add.ptr215.i.2, align 4
  %cmp.i.i344.not.i.2 = icmp eq ptr %247, %add.ptr215.i.2
  br i1 %cmp.i.i344.not.i.2, label %while.body.i42.2.if.end220.i.2_crit_edge, label %if.then217.i.2

while.body.i42.2.if.end220.i.2_crit_edge:         ; preds = %while.body.i42.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i.2

if.then217.i.2:                                   ; preds = %while.body.i42.2
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq(ptr noundef %add.ptr215.i.2) #14
  br label %if.end220.i.2

if.end220.i.2:                                    ; preds = %if.then217.i.2, %while.body.i42.2.if.end220.i.2_crit_edge
  call void @gfs2_holder_uninit(ptr noundef %add.ptr215.i.2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec363.i.2)
  %tobool213.not.i.2 = icmp eq i32 %dec363.i.2, 0
  br i1 %tobool213.not.i.2, label %if.end220.i.2.out_gunlock_r.i43_crit_edge, label %while.body.i42.3

if.end220.i.2.out_gunlock_r.i43_crit_edge:        ; preds = %if.end220.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_gunlock_r.i43

while.body.i42.3:                                 ; preds = %if.end220.i.2
  %dec363.i.3 = add nsw i32 %x.0359.i, -4
  %add.ptr215.i.3 = getelementptr %struct.gfs2_holder, ptr %ghs.i14, i32 %dec363.i.3
  %248 = ptrtoint ptr %add.ptr215.i.3 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile ptr, ptr %add.ptr215.i.3, align 4
  %cmp.i.i344.not.i.3 = icmp eq ptr %249, %add.ptr215.i.3
  br i1 %cmp.i.i344.not.i.3, label %while.body.i42.3.if.end220.i.3_crit_edge, label %if.then217.i.3

while.body.i42.3.if.end220.i.3_crit_edge:         ; preds = %while.body.i42.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220.i.3

if.then217.i.3:                                   ; preds = %while.body.i42.3
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq(ptr noundef %add.ptr215.i.3) #14
  br label %if.end220.i.3

if.end220.i.3:                                    ; preds = %if.then217.i.3, %while.body.i42.3.if.end220.i.3_crit_edge
  call void @gfs2_holder_uninit(ptr noundef %add.ptr215.i.3) #14
  br label %out_gunlock_r.i43

out_gunlock_r.i43.sink.split:                     ; preds = %gfs2_ok_to_move.exit, %if.end12.i179.out_gunlock_r.i43.sink.split_crit_edge, %if.end5.i.out_gunlock_r.i43.sink.split_crit_edge, %if.then25.i.out_gunlock_r.i43.sink.split_crit_edge
  %dir.025.i.lcssa243.sink = phi ptr [ %dir.025.i, %gfs2_ok_to_move.exit ], [ %ndir, %if.then25.i.out_gunlock_r.i43.sink.split_crit_edge ], [ %1, %if.end12.i179.out_gunlock_r.i43.sink.split_crit_edge ], [ %dir.025.i, %if.end5.i.out_gunlock_r.i43.sink.split_crit_edge ]
  %error.5.i.ph = phi i32 [ %133, %gfs2_ok_to_move.exit ], [ -22, %if.then25.i.out_gunlock_r.i43.sink.split_crit_edge ], [ -22, %if.end12.i179.out_gunlock_r.i43.sink.split_crit_edge ], [ -2, %if.end5.i.out_gunlock_r.i43.sink.split_crit_edge ]
  call void @iput(ptr noundef %dir.025.i.lcssa243.sink) #14
  br label %out_gunlock_r.i43

out_gunlock_r.i43:                                ; preds = %out_gunlock_r.i43.sink.split, %if.end220.i.3, %if.end220.i.2.out_gunlock_r.i43_crit_edge, %if.end220.i.1.out_gunlock_r.i43_crit_edge, %if.end220.i.out_gunlock_r.i43_crit_edge, %if.end212.i.out_gunlock_r.i43_crit_edge
  %error.5.i = phi i32 [ %error.4.i, %if.end212.i.out_gunlock_r.i43_crit_edge ], [ %error.5.i.ph, %out_gunlock_r.i43.sink.split ], [ %error.4.i, %if.end220.i.3 ], [ %error.4.i, %if.end220.i.2.out_gunlock_r.i43_crit_edge ], [ %error.4.i, %if.end220.i.1.out_gunlock_r.i43_crit_edge ], [ %error.4.i, %if.end220.i.out_gunlock_r.i43_crit_edge ]
  %250 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %111, align 4
  %tobool.i346.not.i = icmp eq ptr %251, null
  br i1 %tobool.i346.not.i, label %out_gunlock_r.i43.out.i_crit_edge, label %if.then224.i

out_gunlock_r.i43.out.i_crit_edge:                ; preds = %out_gunlock_r.i43
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then224.i:                                     ; preds = %out_gunlock_r.i43
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %r_gh.i15) #14
  br label %out.i

out.i:                                            ; preds = %if.then224.i, %out_gunlock_r.i43.out.i_crit_edge, %gfs2_glock_nq_init.exit.i23
  %error.6.i = phi i32 [ %call.i.i21, %gfs2_glock_nq_init.exit.i23 ], [ %error.5.i, %if.then224.i ], [ %error.5.i, %out_gunlock_r.i43.out.i_crit_edge ]
  call void @gfs2_qa_put(ptr noundef %ndir) #14
  br label %gfs2_rename.exit

gfs2_rename.exit:                                 ; preds = %out.i, %if.end12.i.gfs2_rename.exit_crit_edge, %if.end9.i.gfs2_rename.exit_crit_edge, %if.end5.gfs2_rename.exit_crit_edge
  %retval.0.i44 = phi i32 [ %error.6.i, %out.i ], [ %call10.i, %if.end9.i.gfs2_rename.exit_crit_edge ], [ %call13.i, %if.end12.i.gfs2_rename.exit_crit_edge ], [ 0, %if.end5.gfs2_rename.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %da.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd_gh.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r_gh.i15) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ghs.i14) #14
  br label %return

return:                                           ; preds = %gfs2_rename.exit, %gfs2_exchange.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %gfs2_exchange.exit ], [ %retval.0.i44, %gfs2_rename.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_atomic_open(ptr noundef %dir, ptr noundef %dentry, ptr noundef %file, i32 noundef %flags, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %and.i = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.not, label %entry.skip_lookup_crit_edge, label %if.end

entry.skip_lookup_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_lookup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc ptr @__gfs2_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef %file)
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmp.not = icmp eq ptr %call3, null
  %spec.select = select i1 %cmp.not, ptr %dentry, ptr %call3
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %spec.select, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %cmp.i58.not = icmp eq ptr %4, null
  br i1 %cmp.i58.not, label %do.body, label %if.then11

if.then11:                                        ; preds = %if.end7
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %5 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_mode, align 8
  %and12 = and i32 %6, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = tail call i32 @finish_no_open(ptr noundef %file, ptr noundef %call3) #14
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dput(ptr noundef %call3) #14
  %7 = and i32 %flags, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %7)
  %.not = icmp eq i32 %7, 192
  %8 = select i1 %.not, i32 -17, i32 0
  br label %cleanup

do.body:                                          ; preds = %if.end7
  br i1 %cmp.not, label %do.body.skip_lookup_crit_edge, label %do.body26, !prof !40

do.body.skip_lookup_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_lookup

do.body26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1274, 0\0A.popsection", ""() #14, !srcloc !41
  unreachable

skip_lookup:                                      ; preds = %do.body.skip_lookup_crit_edge, %entry.skip_lookup_crit_edge
  %and33 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %skip_lookup.cleanup_crit_edge, label %if.end36

skip_lookup.cleanup_crit_edge:                    ; preds = %skip_lookup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end36:                                         ; preds = %skip_lookup
  call void @__sanitizer_cov_trace_pc() #16
  %9 = or i16 %mode, -32768
  %and = lshr i32 %flags, 7
  %and.lobit = and i32 %and, 1
  %call40 = tail call fastcc i32 @gfs2_create_inode(ptr noundef %dir, ptr noundef %dentry, ptr noundef %file, i16 noundef zeroext %9, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %and.lobit)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %skip_lookup.cleanup_crit_edge, %if.end16, %if.then14, %if.then5
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %8, %if.end16 ], [ %call15, %if.then14 ], [ %call40, %if.end36 ], [ -2, %skip_lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__gfs2_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #14
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %0 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %call = tail call ptr @gfs2_lookupi(ptr noundef %dir, ptr noundef %d_name, i32 noundef 0)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_add(ptr noundef %dentry, ptr noundef null) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_gl, align 4
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  call void @__gfs2_holder_init(ptr noundef %2, i32 noundef 3, i16 noundef zeroext 8, ptr noundef nonnull %gh, i32 noundef %4) #14
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #14
  call void @iput(ptr noundef nonnull %call) #14
  %5 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = call ptr @d_splice_alias(ptr noundef nonnull %call, ptr noundef %dentry) #14
  %cmp.i44 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %tobool14.not = icmp eq ptr %file, null
  br i1 %tobool14.not, label %if.end13.if.end19.thread_crit_edge, label %land.lhs.true

if.end13.if.end19.thread_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.thread

land.lhs.true:                                    ; preds = %if.end13
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %call, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp15 = icmp eq i16 %8, -32768
  br i1 %cmp15, label %if.end19, label %land.lhs.true.if.end19.thread_crit_edge

land.lhs.true.if.end19.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.thread

if.end19.thread:                                  ; preds = %land.lhs.true.if.end19.thread_crit_edge, %if.end13.if.end19.thread_crit_edge
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #14
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true
  %call18 = call i32 @finish_open(ptr noundef nonnull %file, ptr noundef %dentry, ptr noundef nonnull @gfs2_open_common) #14
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  call void @dput(ptr noundef %call10) #14
  %9 = inttoptr i32 %call18 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end19.cleanup_crit_edge, %if.end19.thread, %if.then12, %if.then7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %5, %if.then7 ], [ %call10, %if.then12 ], [ %9, %if.then21 ], [ %call10, %if.end19.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call10, %if.end19.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_open_common(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_create_inode(ptr noundef %dir, ptr noundef %dentry, ptr noundef %file, i16 noundef zeroext %mode, i32 noundef %dev, ptr nocapture noundef readonly %symname, i32 noundef %size, i32 noundef %excl) unnamed_addr #0 align 64 {
entry:
  %mode.addr = alloca i16, align 2
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  %ghs = alloca [2 x %struct.gfs2_holder], align 4
  %io_gl = alloca ptr, align 4
  %blocks = alloca i32, align 4
  %da = alloca %struct.gfs2_diradd, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %mode.addr, align 2
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #14
  %1 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #14
  %2 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ghs) #14
  %3 = call ptr @memset(ptr %ghs, i32 255, i32 64)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %io_gl) #14
  %8 = ptrtoint ptr %io_gl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %io_gl, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blocks) #14
  %9 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %blocks, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %da) #14
  %10 = call ptr @memcpy(ptr %da, ptr @__const.gfs2_link.da, i32 16)
  %11 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_name, align 8
  %13 = add i32 %12, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %13)
  %14 = icmp ult i32 %13, -255
  br i1 %14, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @gfs2_qa_get(ptr noundef %dir) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @gfs2_rindex_update(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.fail_crit_edge

if.end6.fail_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end10:                                         ; preds = %if.end6
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 6
  %15 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_gl, align 4
  %17 = tail call ptr @llvm.returnaddress(i32 0) #14
  %18 = ptrtoint ptr %17 to i32
  call void @__gfs2_holder_init(ptr noundef %16, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %ghs, i32 noundef %18) #14
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %ghs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end14, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %ghs) #14
  br label %fail

if.end14:                                         ; preds = %if.end10
  %add.ptr = getelementptr inbounds %struct.gfs2_holder, ptr %ghs, i32 1
  %gh_gl.i = getelementptr inbounds %struct.gfs2_holder, ptr %ghs, i32 1, i32 1
  %19 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %gh_gl.i, align 4
  %20 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mode.addr, align 2
  %call.i393 = call i32 @gfs2_permission(ptr undef, ptr noundef %dir, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i393)
  %tobool.not.i394 = icmp eq i32 %call.i393, 0
  br i1 %tobool.not.i394, label %if.end.i, label %if.end14.fail_gunlock_crit_edge

if.end14.fail_gunlock_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock

if.end.i:                                         ; preds = %if.end14
  %22 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 12
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.i = icmp eq i32 %24, 0
  br i1 %tobool2.not.i, label %if.end.i.fail_gunlock_crit_edge, label %if.end4.i

if.end.i.fail_gunlock_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock

if.end4.i:                                        ; preds = %if.end.i
  %i_entries.i = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 17
  %25 = ptrtoint ptr %i_entries.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i = icmp eq i32 %26, -1
  br i1 %cmp.i, label %if.end4.i.fail_gunlock_crit_edge, label %if.end6.i

if.end4.i.fail_gunlock_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock

if.end6.i:                                        ; preds = %if.end4.i
  %27 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %27)
  %cmp7.i = icmp eq i16 %27, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp10.i = icmp eq i32 %24, -1
  %or.cond.i = select i1 %cmp7.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %if.end6.i.fail_gunlock_crit_edge, label %if.end19

if.end6.i.fail_gunlock_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock

if.end19:                                         ; preds = %if.end6.i
  %28 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mode.addr, align 2
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %30)
  %cmp21 = icmp ne i16 %30, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %excl)
  %tobool23 = icmp ne i32 %excl, 0
  %spec.select = or i1 %tobool23, %cmp21
  %call24 = call ptr @gfs2_dir_search(ptr noundef %dir, ptr noundef %d_name, i1 noundef zeroext %spec.select) #14
  %31 = ptrtoint ptr %call24 to i32
  %cmp.i395 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i395, label %if.else48, label %if.then27

if.then27:                                        ; preds = %if.end19
  %32 = ptrtoint ptr %call24 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %call24, align 8
  %34 = and i16 %33, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %34)
  %cmp30 = icmp eq i16 %34, 16384
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef %call24) #14
  br label %fail_gunlock

if.end34:                                         ; preds = %if.then27
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call24) #14
  %tobool35.not = icmp eq ptr %file, null
  br i1 %tobool35.not, label %if.end34.if.end46_crit_edge, label %if.then36

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then36:                                        ; preds = %if.end34
  %35 = ptrtoint ptr %call24 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %call24, align 8
  %37 = and i16 %36, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %37)
  %cmp40 = icmp eq i16 %37, -32768
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = call i32 @finish_open(ptr noundef nonnull %file, ptr noundef %dentry, ptr noundef nonnull @gfs2_open_common) #14
  br label %if.end46

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  %call44 = call i32 @finish_no_open(ptr noundef nonnull %file, ptr noundef null) #14
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then42, %if.end34.if.end46_crit_edge
  %error.0 = phi i32 [ %call43, %if.then42 ], [ %call44, %if.else ], [ 0, %if.end34.if.end46_crit_edge ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %ghs) #14
  br label %fail

if.else48:                                        ; preds = %if.end19
  %cmp49.not = icmp eq ptr %call24, inttoptr (i32 -2 to ptr)
  br i1 %cmp49.not, label %if.end53, label %if.else48.fail_gunlock_crit_edge

if.else48.fail_gunlock_crit_edge:                 ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock

if.end53:                                         ; preds = %if.else48
  %call54 = call i32 @gfs2_diradd_alloc_required(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %da) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.fail_gunlock_crit_edge, label %if.end58

if.end53.fail_gunlock_crit_edge:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock

if.end58:                                         ; preds = %if.end53
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %7, align 8
  %call59 = call ptr @new_inode(ptr noundef %39) #14
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.end58.fail_gunlock_crit_edge, label %if.end62

if.end58.fail_gunlock_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock

if.end62:                                         ; preds = %if.end58
  %call63 = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef nonnull %mode.addr, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.fail_gunlock_crit_edge

if.end62.fail_gunlock_crit_edge:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock

if.end66:                                         ; preds = %if.end62
  %call68 = call i32 @gfs2_qa_get(ptr noundef nonnull %call59) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.fail_free_acls_crit_edge

if.end66.fail_free_acls_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_free_acls

if.end71:                                         ; preds = %if.end66
  %40 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mode.addr, align 2
  %42 = ptrtoint ptr %call59 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %call59, align 8
  %43 = load i16, ptr %mode.addr, align 2
  %44 = and i16 %43, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %44)
  %cmp75 = icmp eq i16 %44, 16384
  %cond = select i1 %cmp75, i32 2, i32 1
  call void @set_nlink(ptr noundef nonnull %call59, i32 noundef %cond) #14
  %i_rdev = getelementptr inbounds %struct.inode, ptr %call59, i32 0, i32 13
  %45 = ptrtoint ptr %i_rdev to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %dev, ptr %i_rdev, align 8
  %conv77 = zext i32 %size to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call59, i32 0, i32 14
  %46 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv77, ptr %i_size, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %call59, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call59, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call59, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call59) #14
  %47 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  %48 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %49 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  call fastcc void @munge_mode_uid_gid(ptr noundef %dir, ptr noundef nonnull %call59)
  call void @check_and_update_goal(ptr noundef %dir) #14
  %i_goal = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 11
  %50 = ptrtoint ptr %i_goal to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %i_goal, align 8
  %i_goal78 = getelementptr inbounds %struct.gfs2_inode, ptr %call59, i32 0, i32 11
  %52 = ptrtoint ptr %i_goal78 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %i_goal78, align 8
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %call59, i32 0, i32 18
  %i_eattr = getelementptr inbounds %struct.gfs2_inode, ptr %call59, i32 0, i32 4
  %53 = ptrtoint ptr %i_eattr to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %i_eattr, align 8
  %i_entries = getelementptr inbounds %struct.gfs2_inode, ptr %call59, i32 0, i32 17
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %call59, i32 0, i32 1
  %54 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %i_no_addr, align 8
  %55 = call ptr @memset(ptr %i_entries, i32 0, i32 10)
  %56 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %mode.addr, align 2
  %58 = and i16 %57, -4096
  %59 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %58, label %if.end71.sw.epilog_crit_edge [
    i16 -32768, label %sw.bb
    i16 16384, label %sw.bb91
  ]

if.end71.sw.epilog_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end71
  %i_diskflags81 = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 18
  %60 = ptrtoint ptr %i_diskflags81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_diskflags81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %tobool83.not = icmp sgt i32 %61, -1
  br i1 %tobool83.not, label %lor.lhs.false84, label %sw.bb.if.then88_crit_edge

sw.bb.if.then88_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

lor.lhs.false84:                                  ; preds = %sw.bb
  %sd_tune = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 22
  %gt_new_files_jdata = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 22, i32 6
  call void @_raw_spin_lock(ptr noundef %sd_tune) #14
  %62 = ptrtoint ptr %gt_new_files_jdata to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gt_new_files_jdata, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool87.not = icmp eq i32 %63, 0
  br i1 %tobool87.not, label %lor.lhs.false84.if.end90_crit_edge, label %lor.lhs.false84.if.then88_crit_edge

lor.lhs.false84.if.then88_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

lor.lhs.false84.if.end90_crit_edge:               ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then88:                                        ; preds = %lor.lhs.false84.if.then88_crit_edge, %sw.bb.if.then88_crit_edge
  %64 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_diskflags, align 4
  %or = or i32 %65, 1
  store i32 %or, ptr %i_diskflags, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %lor.lhs.false84.if.end90_crit_edge
  call void @gfs2_set_aops(ptr noundef nonnull %call59) #14
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %i_diskflags92 = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 18
  %66 = ptrtoint ptr %i_diskflags92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_diskflags92, align 4
  %and93 = and i32 %67, -2147483648
  %or97 = or i32 %and93, 1
  %68 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or97, ptr %i_diskflags, align 4
  %69 = ptrtoint ptr %i_entries to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %i_entries, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb91, %if.end90, %if.end71.sw.epilog_crit_edge
  %i_diskflags99 = getelementptr inbounds %struct.gfs2_inode, ptr %dir, i32 0, i32 18
  %70 = ptrtoint ptr %i_diskflags99 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_diskflags99, align 4
  %and100 = and i32 %71, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %sw.epilog.if.end105_crit_edge, label %if.then102

sw.epilog.if.end105_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then102:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_diskflags, align 4
  %or104 = or i32 %73, 512
  store i32 %or104, ptr %i_diskflags, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %sw.epilog.if.end105_crit_edge
  call void @gfs2_set_inode_flags(ptr noundef nonnull %call59) #14
  %sd_root_dir = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 35
  %74 = ptrtoint ptr %sd_root_dir to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sd_root_dir, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %d_inode.i, align 8
  %cmp108 = icmp eq ptr %77, %dir
  br i1 %cmp108, label %if.end105.if.then114_crit_edge, label %lor.lhs.false110

if.end105.if.then114_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then114

lor.lhs.false110:                                 ; preds = %if.end105
  %78 = ptrtoint ptr %i_diskflags99 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_diskflags99, align 4
  %and112 = and i32 %79, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %lor.lhs.false110.if.end116_crit_edge, label %lor.lhs.false110.if.then114_crit_edge

lor.lhs.false110.if.then114_crit_edge:            ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then114

lor.lhs.false110.if.end116_crit_edge:             ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end116

if.then114:                                       ; preds = %lor.lhs.false110.if.then114_crit_edge, %if.end105.if.then114_crit_edge
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %lor.lhs.false110.if.end116_crit_edge
  %aflags.0 = phi i32 [ 1, %if.then114 ], [ 0, %lor.lhs.false110.if.end116_crit_edge ]
  %80 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %default_acl, align 4
  %tobool117.not = icmp eq ptr %81, null
  br i1 %tobool117.not, label %lor.lhs.false118, label %if.end116.if.then120_crit_edge

if.end116.if.then120_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then120

lor.lhs.false118:                                 ; preds = %if.end116
  %82 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %acl, align 4
  %tobool119.not = icmp eq ptr %83, null
  br i1 %tobool119.not, label %lor.lhs.false118.if.end121_crit_edge, label %lor.lhs.false118.if.then120_crit_edge

lor.lhs.false118.if.then120_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then120

lor.lhs.false118.if.end121_crit_edge:             ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

if.then120:                                       ; preds = %lor.lhs.false118.if.then120_crit_edge, %if.end116.if.then120_crit_edge
  %84 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %blocks, align 4
  %inc = add i32 %85, 1
  store i32 %inc, ptr %blocks, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %lor.lhs.false118.if.end121_crit_edge
  %call122 = call fastcc i32 @alloc_dinode(ptr noundef nonnull %call59, i32 noundef %aflags.0, ptr noundef nonnull %blocks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end121.fail_free_inode_crit_edge

if.end121.fail_free_inode_crit_edge:              ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_free_inode

if.end125:                                        ; preds = %if.end121
  %86 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %blocks, align 4
  %conv126 = zext i32 %87 to i64
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call59, i32 0, i32 8
  %88 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 33
  %90 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_bsize_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %91, i32 0, i32 5, i32 5
  %92 = ptrtoint ptr %sb_bsize_shift.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sb_bsize_shift.i, align 4
  %sub.i = add i32 %93, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv126, %sh_prom.i
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %call59, i32 0, i32 22
  %94 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %shl.i, ptr %i_blocks.i, align 8
  %95 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %i_no_addr, align 8
  %i_gl128 = getelementptr inbounds %struct.gfs2_inode, ptr %call59, i32 0, i32 6
  %call129 = call i32 @gfs2_glock_get(ptr noundef %7, i64 noundef %96, ptr noundef nonnull @gfs2_inode_glops, i32 noundef 1, ptr noundef %i_gl128) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end125.fail_free_inode_crit_edge

if.end125.fail_free_inode_crit_edge:              ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_free_inode

if.end132:                                        ; preds = %if.end125
  %97 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %i_no_addr, align 8
  %call134 = call i32 @gfs2_glock_get(ptr noundef %7, i64 noundef %98, ptr noundef nonnull @gfs2_iopen_glops, i32 noundef 1, ptr noundef nonnull %io_gl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end132.fail_free_inode_crit_edge

if.end132.fail_free_inode_crit_edge:              ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_free_inode

if.end137:                                        ; preds = %if.end132
  %99 = ptrtoint ptr %io_gl to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io_gl, align 4
  call void @gfs2_cancel_delete_work(ptr noundef %100) #14
  %101 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %i_no_addr, align 8
  %conv139 = trunc i64 %102 to i32
  %call141 = call i32 @insert_inode_locked4(ptr noundef nonnull %call59, i32 noundef %conv139, ptr noundef nonnull @iget_test, ptr noundef %i_no_addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %do.end152, label %do.body146, !prof !40

do.body146:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !42
  unreachable

do.end152:                                        ; preds = %if.end137
  %103 = ptrtoint ptr %i_gl128 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i_gl128, align 4
  %call156 = call fastcc i32 @gfs2_glock_nq_init(ptr noundef %104, i32 noundef 1, i16 noundef zeroext 256, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end159, label %do.end152.fail_gunlock2_crit_edge

do.end152.fail_gunlock2_crit_edge:                ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock2

if.end159:                                        ; preds = %do.end152
  %105 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %blocks, align 4
  %call160 = call i32 @gfs2_trans_begin(ptr noundef %7, i32 noundef %106, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end159.fail_gunlock2_crit_edge

if.end159.fail_gunlock2_crit_edge:                ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock2

if.end163:                                        ; preds = %if.end159
  %107 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp164 = icmp ugt i32 %108, 1
  br i1 %cmp164, label %if.then166, label %if.end163.if.end169_crit_edge

if.end163.if.end169_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end169

if.then166:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  %109 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %i_no_addr, align 8
  %add = add i64 %110, 1
  %111 = ptrtoint ptr %i_eattr to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %add, ptr %i_eattr, align 8
  call fastcc void @gfs2_init_xattr(ptr noundef nonnull %call59)
  br label %if.end169

if.end169:                                        ; preds = %if.then166, %if.end163.if.end169_crit_edge
  call fastcc void @init_dinode(ptr noundef %dir, ptr noundef nonnull %call59, ptr noundef %symname)
  call void @gfs2_trans_end(ptr noundef %7) #14
  %112 = ptrtoint ptr %io_gl to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %io_gl, align 4
  %i_iopen_gh = getelementptr inbounds %struct.gfs2_inode, ptr %call59, i32 0, i32 7
  %call170 = call fastcc i32 @gfs2_glock_nq_init(ptr noundef %113, i32 noundef 3, i16 noundef zeroext 128, ptr noundef %i_iopen_gh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end173, label %if.end169.fail_gunlock2_crit_edge

if.end169.fail_gunlock2_crit_edge:                ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock2

if.end173:                                        ; preds = %if.end169
  %114 = ptrtoint ptr %i_gl128 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i_gl128, align 4
  call fastcc void @glock_set_object(ptr noundef %115, ptr noundef nonnull %call59)
  %116 = ptrtoint ptr %io_gl to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %io_gl, align 4
  call fastcc void @glock_set_object(ptr noundef %117, ptr noundef nonnull %call59)
  call fastcc void @gfs2_set_iop(ptr noundef nonnull %call59)
  %118 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %default_acl, align 4
  %tobool175.not = icmp eq ptr %119, null
  br i1 %tobool175.not, label %if.end173.if.end181_crit_edge, label %if.then176

if.end173.if.end181_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end181

if.then176:                                       ; preds = %if.end173
  %call177 = call i32 @__gfs2_set_acl(ptr noundef nonnull %call59, ptr noundef nonnull %119, i32 noundef 16384) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %if.then176.fail_gunlock3_crit_edge

if.then176.fail_gunlock3_crit_edge:               ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock3

if.end180:                                        ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %default_acl, align 4
  call fastcc void @posix_acl_release(ptr noundef %121)
  %122 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %default_acl, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.end173.if.end181_crit_edge
  %123 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %acl, align 4
  %tobool182.not = icmp eq ptr %124, null
  br i1 %tobool182.not, label %if.end181.if.end188_crit_edge, label %if.then183

if.end181.if.end188_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end188

if.then183:                                       ; preds = %if.end181
  %call184 = call i32 @__gfs2_set_acl(ptr noundef nonnull %call59, ptr noundef nonnull %124, i32 noundef 32768) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end187, label %if.then183.fail_gunlock3_crit_edge

if.then183.fail_gunlock3_crit_edge:               ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock3

if.end187:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #16
  %125 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %acl, align 4
  call fastcc void @posix_acl_release(ptr noundef %126)
  %127 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %acl, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.end181.if.end188_crit_edge
  %call191 = call i32 @security_inode_init_security(ptr noundef nonnull %call59, ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull @gfs2_initxattrs, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end194, label %if.end188.fail_gunlock3_crit_edge

if.end188.fail_gunlock3_crit_edge:                ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock3

if.end194:                                        ; preds = %if.end188
  %call195 = call fastcc i32 @link_dinode(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %call59, ptr noundef nonnull %da)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end198, label %if.end194.fail_gunlock3_crit_edge

if.end194.fail_gunlock3_crit_edge:                ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_gunlock3

if.end198:                                        ; preds = %if.end194
  call void @__mark_inode_dirty(ptr noundef nonnull %call59, i32 noundef 7) #14
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call59) #14
  %tobool199.not = icmp eq ptr %file, null
  br i1 %tobool199.not, label %if.end198.if.end203_crit_edge, label %if.then200

if.end198.if.end203_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end203

if.then200:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #16
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %128 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %f_mode, align 8
  %or201 = or i32 %129, 1048576
  store i32 %or201, ptr %f_mode, align 8
  %call202 = call i32 @finish_open(ptr noundef nonnull %file, ptr noundef %dentry, ptr noundef nonnull @gfs2_open_common) #14
  br label %if.end203

if.end203:                                        ; preds = %if.then200, %if.end198.if.end203_crit_edge
  %error.1 = phi i32 [ %call202, %if.then200 ], [ 0, %if.end198.if.end203_crit_edge ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %ghs) #14
  call void @gfs2_qa_put(ptr noundef nonnull %call59) #14
  call void @gfs2_glock_dq_uninit(ptr noundef %add.ptr) #14
  %130 = ptrtoint ptr %io_gl to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %io_gl, align 4
  call void @gfs2_glock_put(ptr noundef %131) #14
  call void @gfs2_qa_put(ptr noundef %dir) #14
  call void @unlock_new_inode(ptr noundef nonnull %call59) #14
  br label %cleanup

fail_gunlock3:                                    ; preds = %if.end194.fail_gunlock3_crit_edge, %if.end188.fail_gunlock3_crit_edge, %if.then183.fail_gunlock3_crit_edge, %if.then176.fail_gunlock3_crit_edge
  %error.2 = phi i32 [ %call177, %if.then176.fail_gunlock3_crit_edge ], [ %call184, %if.then183.fail_gunlock3_crit_edge ], [ %call191, %if.end188.fail_gunlock3_crit_edge ], [ %call195, %if.end194.fail_gunlock3_crit_edge ]
  %132 = ptrtoint ptr %i_gl128 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %i_gl128, align 4
  call fastcc void @glock_clear_object(ptr noundef %133, ptr noundef nonnull %call59)
  %134 = ptrtoint ptr %io_gl to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %io_gl, align 4
  call fastcc void @glock_clear_object(ptr noundef %135, ptr noundef nonnull %call59)
  call void @gfs2_glock_dq_uninit(ptr noundef %i_iopen_gh) #14
  br label %fail_gunlock2

fail_gunlock2:                                    ; preds = %fail_gunlock3, %if.end169.fail_gunlock2_crit_edge, %if.end159.fail_gunlock2_crit_edge, %do.end152.fail_gunlock2_crit_edge
  %error.3 = phi i32 [ %call156, %do.end152.fail_gunlock2_crit_edge ], [ %call160, %if.end159.fail_gunlock2_crit_edge ], [ %call170, %if.end169.fail_gunlock2_crit_edge ], [ %error.2, %fail_gunlock3 ]
  %free_vfs_inode.0 = phi i32 [ 1, %do.end152.fail_gunlock2_crit_edge ], [ 1, %if.end159.fail_gunlock2_crit_edge ], [ 1, %if.end169.fail_gunlock2_crit_edge ], [ 0, %fail_gunlock3 ]
  %136 = ptrtoint ptr %io_gl to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %io_gl, align 4
  call void @gfs2_glock_put(ptr noundef %137) #14
  br label %fail_free_inode

fail_free_inode:                                  ; preds = %fail_gunlock2, %if.end132.fail_free_inode_crit_edge, %if.end125.fail_free_inode_crit_edge, %if.end121.fail_free_inode_crit_edge
  %error.4 = phi i32 [ %call122, %if.end121.fail_free_inode_crit_edge ], [ %call129, %if.end125.fail_free_inode_crit_edge ], [ %call134, %if.end132.fail_free_inode_crit_edge ], [ %error.3, %fail_gunlock2 ]
  %free_vfs_inode.1 = phi i32 [ 1, %if.end121.fail_free_inode_crit_edge ], [ 1, %if.end125.fail_free_inode_crit_edge ], [ 1, %if.end132.fail_free_inode_crit_edge ], [ %free_vfs_inode.0, %fail_gunlock2 ]
  %i_gl209 = getelementptr inbounds %struct.gfs2_inode, ptr %call59, i32 0, i32 6
  %138 = ptrtoint ptr %i_gl209 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %i_gl209, align 4
  %tobool210.not = icmp eq ptr %139, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_vfs_inode.1)
  %tobool212.not = icmp eq i32 %free_vfs_inode.1, 0
  %or.cond392 = or i1 %tobool212.not, %tobool210.not
  br i1 %or.cond392, label %fail_free_inode.if.end216_crit_edge, label %if.then213

fail_free_inode.if.end216_crit_edge:              ; preds = %fail_free_inode
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end216

if.then213:                                       ; preds = %fail_free_inode
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_put(ptr noundef nonnull %139) #14
  br label %if.end216

if.end216:                                        ; preds = %if.then213, %fail_free_inode.if.end216_crit_edge
  call void @gfs2_rs_delete(ptr noundef nonnull %call59, ptr noundef null) #14
  call void @gfs2_qa_put(ptr noundef nonnull %call59) #14
  br label %fail_free_acls

fail_free_acls:                                   ; preds = %if.end216, %if.end66.fail_free_acls_crit_edge
  %error.5 = phi i32 [ %call68, %if.end66.fail_free_acls_crit_edge ], [ %error.4, %if.end216 ]
  %free_vfs_inode.2 = phi i32 [ 1, %if.end66.fail_free_acls_crit_edge ], [ %free_vfs_inode.1, %if.end216 ]
  %140 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %default_acl, align 4
  call fastcc void @posix_acl_release(ptr noundef %141)
  %142 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %acl, align 4
  call fastcc void @posix_acl_release(ptr noundef %143)
  br label %fail_gunlock

fail_gunlock:                                     ; preds = %fail_free_acls, %if.end62.fail_gunlock_crit_edge, %if.end58.fail_gunlock_crit_edge, %if.end53.fail_gunlock_crit_edge, %if.else48.fail_gunlock_crit_edge, %if.then32, %if.end6.i.fail_gunlock_crit_edge, %if.end4.i.fail_gunlock_crit_edge, %if.end.i.fail_gunlock_crit_edge, %if.end14.fail_gunlock_crit_edge
  %inode.0 = phi ptr [ %call24, %if.else48.fail_gunlock_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end53.fail_gunlock_crit_edge ], [ %call59, %if.end62.fail_gunlock_crit_edge ], [ %call59, %fail_free_acls ], [ null, %if.end58.fail_gunlock_crit_edge ], [ inttoptr (i32 -21 to ptr), %if.then32 ], [ null, %if.end14.fail_gunlock_crit_edge ], [ null, %if.end.i.fail_gunlock_crit_edge ], [ null, %if.end4.i.fail_gunlock_crit_edge ], [ null, %if.end6.i.fail_gunlock_crit_edge ]
  %error.6 = phi i32 [ %31, %if.else48.fail_gunlock_crit_edge ], [ %call54, %if.end53.fail_gunlock_crit_edge ], [ %call63, %if.end62.fail_gunlock_crit_edge ], [ %error.5, %fail_free_acls ], [ -12, %if.end58.fail_gunlock_crit_edge ], [ %31, %if.then32 ], [ %call.i393, %if.end14.fail_gunlock_crit_edge ], [ -2, %if.end.i.fail_gunlock_crit_edge ], [ -27, %if.end4.i.fail_gunlock_crit_edge ], [ -31, %if.end6.i.fail_gunlock_crit_edge ]
  %free_vfs_inode.3 = phi i32 [ 1, %if.else48.fail_gunlock_crit_edge ], [ 1, %if.end53.fail_gunlock_crit_edge ], [ 1, %if.end62.fail_gunlock_crit_edge ], [ %free_vfs_inode.2, %fail_free_acls ], [ 1, %if.end58.fail_gunlock_crit_edge ], [ 1, %if.then32 ], [ 1, %if.end14.fail_gunlock_crit_edge ], [ 1, %if.end.i.fail_gunlock_crit_edge ], [ 1, %if.end4.i.fail_gunlock_crit_edge ], [ 1, %if.end6.i.fail_gunlock_crit_edge ]
  %bh.i = getelementptr inbounds %struct.gfs2_diradd, ptr %da, i32 0, i32 2
  %144 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %145, null
  br i1 %tobool.not.i.i, label %fail_gunlock.gfs2_dir_no_add.exit_crit_edge, label %if.then.i.i

fail_gunlock.gfs2_dir_no_add.exit_crit_edge:      ; preds = %fail_gunlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %gfs2_dir_no_add.exit

if.then.i.i:                                      ; preds = %fail_gunlock
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %145) #14
  br label %gfs2_dir_no_add.exit

gfs2_dir_no_add.exit:                             ; preds = %if.then.i.i, %fail_gunlock.gfs2_dir_no_add.exit_crit_edge
  %146 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %bh.i, align 4
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %ghs) #14
  %tobool.not.i396 = icmp eq ptr %inode.0, null
  %cmp.i397 = icmp ugt ptr %inode.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i398 = or i1 %tobool.not.i396, %cmp.i397
  br i1 %spec.select.i398, label %gfs2_dir_no_add.exit.if.end231_crit_edge, label %if.then219

gfs2_dir_no_add.exit.if.end231_crit_edge:         ; preds = %gfs2_dir_no_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end231

if.then219:                                       ; preds = %gfs2_dir_no_add.exit
  call void @clear_nlink(ptr noundef nonnull %inode.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_vfs_inode.3)
  %tobool220.not = icmp eq i32 %free_vfs_inode.3, 0
  br i1 %tobool220.not, label %if.then221, label %if.then219.if.end222_crit_edge

if.then219.if.end222_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end222

if.then221:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #16
  call void @__mark_inode_dirty(ptr noundef nonnull %inode.0, i32 noundef 7) #14
  br label %if.end222

if.end222:                                        ; preds = %if.then221, %if.then219.if.end222_crit_edge
  %cond224 = phi i32 [ 2, %if.then221 ], [ 5, %if.then219.if.end222_crit_edge ]
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %inode.0, i32 0, i32 5
  call void @_set_bit(i32 noundef %cond224, ptr noundef %i_flags) #14
  %i_state = getelementptr inbounds %struct.inode, ptr %inode.0, i32 0, i32 24
  %147 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %i_state, align 8
  %and226 = and i32 %148, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %if.else229, label %if.then228

if.then228:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #16
  call void @iget_failed(ptr noundef nonnull %inode.0) #14
  br label %if.end231

if.else229:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef nonnull %inode.0) #14
  br label %if.end231

if.end231:                                        ; preds = %if.else229, %if.then228, %gfs2_dir_no_add.exit.if.end231_crit_edge
  %149 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %gh_gl.i, align 4
  %tobool.i.not = icmp eq ptr %150, null
  br i1 %tobool.i.not, label %if.end231.fail_crit_edge, label %if.then235

if.end231.fail_crit_edge:                         ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.then235:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_glock_dq_uninit(ptr noundef %add.ptr) #14
  br label %fail

fail:                                             ; preds = %if.then235, %if.end231.fail_crit_edge, %if.end46, %gfs2_glock_nq_init.exit, %if.end6.fail_crit_edge
  %error.7 = phi i32 [ %call7, %if.end6.fail_crit_edge ], [ %call.i, %gfs2_glock_nq_init.exit ], [ %error.6, %if.then235 ], [ %error.6, %if.end231.fail_crit_edge ], [ %error.0, %if.end46 ]
  call void @gfs2_qa_put(ptr noundef %dir) #14
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end203, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.7, %fail ], [ %error.1, %if.end203 ], [ -36, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %da) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blocks) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %io_gl) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ghs) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_no_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_diradd_alloc_required(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @munge_mode_uid_gid(ptr nocapture noundef readonly %dip, ptr nocapture noundef %inode) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %ar_suiddir = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %4 = ptrtoint ptr %ar_suiddir to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %ar_suiddir, align 4
  %5 = and i32 %bf.load, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.else30_crit_edge, label %land.lhs.true

entry.if.else30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else30

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %dip to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dip, align 8
  %8 = and i16 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else30_crit_edge, label %land.lhs.true3

land.lhs.true.if.else30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else30

land.lhs.true3:                                   ; preds = %land.lhs.true
  %i_uid = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 2
  %9 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %land.lhs.true3.if.else30_crit_edge, label %if.then

land.lhs.true3.if.else30_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else30

if.then:                                          ; preds = %land.lhs.true3
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inode, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp = icmp eq i16 %12, 16384
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i16 %11, 2048
  br label %if.end26.sink.split

if.else:                                          ; preds = %if.then
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %19)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i84 = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i84, label %if.else.if.end39_crit_edge, label %if.then21

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %20 = and i16 %11, -3658
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.then21, %if.then11
  %.sink = phi i16 [ %20, %if.then21 ], [ %or, %if.then11 ]
  %21 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %.sink, ptr %inode, align 8
  br label %if.end39

if.else30:                                        ; preds = %land.lhs.true3.if.else30_crit_edge, %land.lhs.true.if.else30_crit_edge, %entry.if.else30_crit_edge
  %22 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i85 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i85 to ptr
  %task36 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task36, align 8
  %cred37 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 99
  %26 = ptrtoint ptr %cred37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cred37, align 16
  %fsuid38 = getelementptr inbounds %struct.cred, ptr %27, i32 0, i32 10
  br label %if.end39

if.end39:                                         ; preds = %if.else30, %if.end26.sink.split, %if.else.if.end39_crit_edge
  %fsuid38.sink = phi ptr [ %fsuid38, %if.else30 ], [ %i_uid, %if.end26.sink.split ], [ %i_uid, %if.else.if.end39_crit_edge ]
  %i_uid31.sink = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %28 = ptrtoint ptr %fsuid38.sink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fsuid38.sink, align 4
  %30 = ptrtoint ptr %i_uid31.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %i_uid31.sink, align 4
  %31 = ptrtoint ptr %dip to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dip, align 8
  %33 = and i16 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool44.not = icmp eq i16 %33, 0
  br i1 %tobool44.not, label %if.else59, label %if.then45

if.then45:                                        ; preds = %if.end39
  %34 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %inode, align 8
  %36 = and i16 %35, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %36)
  %cmp49 = icmp eq i16 %36, 16384
  br i1 %cmp49, label %if.then51, label %if.then45.if.end56_crit_edge

if.then45.if.end56_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  %or54 = or i16 %35, 1024
  %37 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %or54, ptr %inode, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.then45.if.end56_crit_edge
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %i_gid58 = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 3
  %38 = ptrtoint ptr %i_gid58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_gid58, align 8
  %40 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %i_gid, align 8
  br label %if.end67

if.else59:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %i_gid60 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %41 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i86 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i86 to ptr
  %task65 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task65, align 8
  %cred66 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 99
  %45 = ptrtoint ptr %cred66 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cred66, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fsgid, align 4
  %49 = ptrtoint ptr %i_gid60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %i_gid60, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.else59, %if.end56
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_and_update_goal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_set_aops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_dinode(ptr noundef %ip, i32 noundef %flags, ptr noundef %dblocks) unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.gfs2_alloc_parms, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #14
  %4 = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 1
  %5 = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 2
  %6 = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 3
  %7 = ptrtoint ptr %dblocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dblocks, align 4
  %conv = zext i32 %8 to i64
  %9 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %ap, align 8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %5, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 4294967295, ptr %6, align 8
  %call1.i = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call1.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %ar_quota.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %13 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %ar_quota.i, align 4
  %14 = and i32 %bf.load.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @gfs2_quota_lock(ptr noundef %ip, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end7.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load10.i = load i32, ptr %ar_quota.i, align 4
  %16 = and i32 %bf.load10.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %16)
  %cmp13.not.i = icmp eq i32 %16, 134217728
  br i1 %cmp13.not.i, label %if.end15.i, label %if.end7.i.if.end_crit_edge

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end15.i:                                       ; preds = %if.end7.i
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %17 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %18 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %19 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack36.i = load i32, ptr %i_gid.i, align 8
  %20 = insertvalue [1 x i32] undef, i32 %.unpack36.i, 0
  %call20.i = call i32 @gfs2_quota_check(ptr noundef %ip, [1 x i32] %18, [1 x i32] %20, ptr noundef nonnull %ap) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end15.i.if.end_crit_edge, label %if.end15.i.out.sink.split_crit_edge

if.end15.i.out.sink.split_crit_edge:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.sink.split

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %if.end15.i.if.end_crit_edge, %if.end7.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = call i32 @gfs2_inplace_reserve(ptr noundef %ip, ptr noundef nonnull %ap) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out.sink.split_crit_edge

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.sink.split

if.end5:                                          ; preds = %if.end
  %21 = ptrtoint ptr %dblocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dblocks, align 4
  %mul = shl i32 %22, 1
  %add6 = add i32 %mul, 3
  %call7 = call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef %add6, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.out_ipreserv_crit_edge

if.end5.out_ipreserv_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_ipreserv

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %i_generation = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 3
  %call11 = call i32 @gfs2_alloc_blocks(ptr noundef %ip, ptr noundef %i_no_addr, ptr noundef %dblocks, i1 noundef zeroext true, ptr noundef %i_generation) #14
  %23 = ptrtoint ptr %i_generation to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_generation, align 8
  %i_no_formal_ino = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 2
  %25 = ptrtoint ptr %i_no_formal_ino to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %i_no_formal_ino, align 8
  %26 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_no_addr, align 8
  %conv14 = trunc i64 %27 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %28 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv14, ptr %i_ino, align 8
  %i_goal = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 11
  %29 = ptrtoint ptr %i_goal to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %27, ptr %i_goal, align 8
  call void @gfs2_trans_end(ptr noundef %3) #14
  br label %out_ipreserv

out_ipreserv:                                     ; preds = %if.end10, %if.end5.out_ipreserv_crit_edge
  %error.0 = phi i32 [ %call7, %if.end5.out_ipreserv_crit_edge ], [ %call11, %if.end10 ]
  call void @gfs2_inplace_release(ptr noundef %ip) #14
  br label %out.sink.split

out.sink.split:                                   ; preds = %out_ipreserv, %if.end.out.sink.split_crit_edge, %if.end15.i.out.sink.split_crit_edge
  %error.2.ph = phi i32 [ %call20.i, %if.end15.i.out.sink.split_crit_edge ], [ %call2, %if.end.out.sink.split_crit_edge ], [ %error.0, %out_ipreserv ]
  call void @gfs2_quota_unlock(ptr noundef %ip) #14
  br label %out

out:                                              ; preds = %out.sink.split, %if.end.i.out_crit_edge
  %error.2 = phi i32 [ %call5.i, %if.end.i.out_crit_edge ], [ %error.2.ph, %out.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #14
  ret i32 %error.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked4(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_init_xattr(ptr nocapture noundef readonly %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  %i_eattr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 4
  %6 = ptrtoint ptr %i_eattr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_eattr, align 8
  %call1 = tail call ptr @gfs2_meta_new(ptr noundef %5, i64 noundef %7) #14
  %8 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gl, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %9, ptr noundef %call1) #14
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %mh_type.i, align 4
  %mh_format.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %mh_format.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1600, ptr %mh_format.i, align 8
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 4
  %14 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %15)
  %cmp.i = icmp ult i32 %15, 24
  br i1 %cmp.i, label %do.body2.i, label %gfs2_buffer_clear_tail.exit, !prof !43

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #14, !srcloc !44
  unreachable

gfs2_buffer_clear_tail.exit:                      ; preds = %entry
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 24
  %sub.i = add i32 %15, -24
  %18 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %19 = load ptr, ptr %b_data.i, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 24
  %sd_jbsize = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %sd_jbsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sd_jbsize, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr, align 4
  %ea_type = getelementptr i8, ptr %19, i32 33
  %23 = ptrtoint ptr %ea_type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ea_type, align 1
  %ea_flags = getelementptr i8, ptr %19, i32 34
  %24 = ptrtoint ptr %ea_flags to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %ea_flags, align 2
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %gfs2_buffer_clear_tail.exit.brelse.exit_crit_edge, label %if.then.i

gfs2_buffer_clear_tail.exit.brelse.exit_crit_edge: ; preds = %gfs2_buffer_clear_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit

if.then.i:                                        ; preds = %gfs2_buffer_clear_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__brelse(ptr noundef nonnull %call1) #14
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %gfs2_buffer_clear_tail.exit.brelse.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_dinode(ptr nocapture noundef readonly %dip, ptr noundef %ip, ptr nocapture noundef readonly %symname) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %0 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_gl, align 4
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %2 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_no_addr, align 8
  %call = tail call ptr @gfs2_meta_new(ptr noundef %1, i64 noundef %3) #14
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %5, ptr noundef %call) #14
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  tail call void @gfs2_dinode_out(ptr noundef %ip, ptr noundef %7) #14
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 13
  %8 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_rdev.i, align 8
  %shr.i = lshr i32 %9, 20
  %di_major = getelementptr inbounds %struct.gfs2_dinode, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %di_major to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr.i, ptr %di_major, align 8
  %11 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %11, 1048575
  %di_minor = getelementptr inbounds %struct.gfs2_dinode, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %di_minor to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %di_minor, align 4
  %__pad1 = getelementptr inbounds %struct.gfs2_dinode, ptr %7, i32 0, i32 18
  %13 = ptrtoint ptr %__pad1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %__pad1, align 8
  %__pad2 = getelementptr inbounds %struct.gfs2_dinode, ptr %7, i32 0, i32 20
  %14 = ptrtoint ptr %__pad2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %__pad2, align 4
  %__pad3 = getelementptr inbounds %struct.gfs2_dinode, ptr %7, i32 0, i32 21
  %15 = ptrtoint ptr %__pad3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %__pad3, align 8
  %__pad4 = getelementptr inbounds %struct.gfs2_dinode, ptr %7, i32 0, i32 24
  %16 = call ptr @memset(ptr %__pad4, i32 0, i32 16)
  %di_reserved = getelementptr inbounds %struct.gfs2_dinode, ptr %7, i32 0, i32 29
  %17 = call ptr @memset(ptr %di_reserved, i32 0, i32 44)
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 4
  %18 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %b_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 232, i32 %19)
  %cmp.i = icmp ult i32 %19, 232
  br i1 %cmp.i, label %do.body2.i, label %gfs2_buffer_clear_tail.exit, !prof !43

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #14, !srcloc !44
  unreachable

gfs2_buffer_clear_tail.exit:                      ; preds = %entry
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 232
  %sub.i = add i32 %19, -232
  %22 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %23 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ip, align 8
  %25 = and i16 %24, -4096
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %25, label %gfs2_buffer_clear_tail.exit.sw.epilog_crit_edge [
    i16 16384, label %sw.bb
    i16 -24576, label %sw.bb6
  ]

gfs2_buffer_clear_tail.exit.sw.epilog_crit_edge:  ; preds = %gfs2_buffer_clear_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %gfs2_buffer_clear_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data, align 4
  %add.ptr.i32 = getelementptr %struct.gfs2_dinode, ptr %28, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qdot to i32))
  %29 = load i32, ptr @gfs2_qdot, align 8
  %30 = trunc i32 %29 to i16
  %31 = add i16 %30, 47
  %conv.i = and i16 %31, -8
  %32 = call ptr @memset(ptr %add.ptr.i32, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.anon.4, ptr @gfs2_qdot, i32 0, i32 1) to i32))
  %33 = load i32, ptr getelementptr inbounds (%struct.anon.4, ptr @gfs2_qdot, i32 0, i32 1), align 4
  %de_hash.i.i = getelementptr %struct.gfs2_dinode, ptr %28, i32 1, i32 0, i32 3
  %34 = ptrtoint ptr %de_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %de_hash.i.i, align 8
  %de_rec_len.i.i = getelementptr %struct.gfs2_dinode, ptr %28, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %de_rec_len.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %de_rec_len.i.i, align 4
  %36 = load i32, ptr @gfs2_qdot, align 8
  %conv.i.i = trunc i32 %36 to i16
  %de_name_len.i.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i32, i32 0, i32 3
  %37 = ptrtoint ptr %de_name_len.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i, ptr %de_name_len.i.i, align 2
  %de_type.i.i = getelementptr %struct.gfs2_dinode, ptr %28, i32 1, i32 1
  %38 = ptrtoint ptr %de_type.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %de_type.i.i, align 8
  %39 = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr.i32, i32 0, i32 6
  %40 = call ptr @memset(ptr %39, i32 0, i32 12)
  %add.ptr.i.i = getelementptr %struct.gfs2_dinode, ptr %28, i32 1, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qstr, ptr @gfs2_qdot, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.qstr, ptr @gfs2_qdot, i32 0, i32 1), align 8
  %42 = load i32, ptr @gfs2_qdot, align 8
  %43 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %41, i32 %42)
  %di_num.i = getelementptr inbounds %struct.gfs2_dinode, ptr %28, i32 0, i32 1
  %44 = call ptr @memcpy(ptr %add.ptr.i32, ptr %di_num.i, i32 16)
  store i16 4, ptr %de_type.i.i, align 8
  %add.ptr2.i = getelementptr %struct.gfs2_dinode, ptr %28, i32 1, i32 4
  %45 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %b_size.i, align 8
  %47 = trunc i32 %46 to i16
  %conv4.i = add i16 %47, -280
  %48 = call ptr @memset(ptr %add.ptr2.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.anon.4, ptr @gfs2_qdotdot, i32 0, i32 1) to i32))
  %49 = load i32, ptr getelementptr inbounds (%struct.anon.4, ptr @gfs2_qdotdot, i32 0, i32 1), align 4
  %de_hash.i14.i = getelementptr %struct.gfs2_dinode, ptr %28, i32 1, i32 7
  %50 = ptrtoint ptr %de_hash.i14.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %de_hash.i14.i, align 8
  %de_rec_len.i15.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr2.i, i32 0, i32 2
  %51 = ptrtoint ptr %de_rec_len.i15.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv4.i, ptr %de_rec_len.i15.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_qdotdot to i32))
  %52 = load i32, ptr @gfs2_qdotdot, align 8
  %conv.i16.i = trunc i32 %52 to i16
  %de_name_len.i17.i = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr2.i, i32 0, i32 3
  %53 = ptrtoint ptr %de_name_len.i17.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i16.i, ptr %de_name_len.i17.i, align 2
  %de_type.i18.i = getelementptr %struct.gfs2_dinode, ptr %28, i32 1, i32 8
  %54 = ptrtoint ptr %de_type.i18.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %de_type.i18.i, align 8
  %55 = getelementptr inbounds %struct.gfs2_dirent, ptr %add.ptr2.i, i32 0, i32 6
  %56 = call ptr @memset(ptr %55, i32 0, i32 12)
  %add.ptr.i19.i = getelementptr %struct.gfs2_dinode, ptr %28, i32 1, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.qstr, ptr @gfs2_qdotdot, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.qstr, ptr @gfs2_qdotdot, i32 0, i32 1), align 8
  %58 = load i32, ptr @gfs2_qdotdot, align 8
  %59 = call ptr @memcpy(ptr %add.ptr.i19.i, ptr %57, i32 %58)
  %i_no_formal_ino.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 2
  %60 = ptrtoint ptr %i_no_formal_ino.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %i_no_formal_ino.i.i, align 8
  %62 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %add.ptr2.i, align 8
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 1
  %63 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_no_addr.i.i, align 8
  %no_addr.i.i = getelementptr %struct.gfs2_dinode, ptr %28, i32 1, i32 6
  %65 = ptrtoint ptr %no_addr.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %no_addr.i.i, align 8
  store i16 4, ptr %de_type.i18.i, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %gfs2_buffer_clear_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %67, i32 232
  %i_size = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %68 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_size, align 8
  %conv9 = trunc i64 %69 to i32
  %70 = call ptr @memcpy(ptr %add.ptr, ptr %symname, i32 %conv9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %gfs2_buffer_clear_tail.exit.sw.epilog_crit_edge
  %71 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %call, align 4
  %and1.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog.set_buffer_uptodate.exit_crit_edge

sw.epilog.set_buffer_uptodate.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call) #14
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %sw.epilog.set_buffer_uptodate.exit_crit_edge
  %tobool.not.i34 = icmp eq ptr %call, null
  br i1 %tobool.not.i34, label %set_buffer_uptodate.exit.brelse.exit_crit_edge, label %if.then.i35

set_buffer_uptodate.exit.brelse.exit_crit_edge:   ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %brelse.exit

if.then.i35:                                      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__brelse(ptr noundef nonnull %call) #14
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i35, %set_buffer_uptodate.exit.brelse.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gfs2_set_acl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @posix_acl_release(ptr noundef %acl) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %acl, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !45
  tail call void @llvm.prefetch.p0(ptr nonnull %acl, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %acl, ptr nonnull %acl, i32 1, ptr nonnull elementtype(i32) %acl) #14, !srcloc !46
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i, !prof !40

if.end5.i.i.i.if.end6_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %acl, i32 noundef 3) #14
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !47
  %a_rcu = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %a_rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #14
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_initxattrs(ptr noundef %inode, ptr nocapture noundef readonly %xattr_array, ptr nocapture noundef readnone %fs_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xattr_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xattr_array, align 4
  %cmp.not8 = icmp eq ptr %1, null
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.xattr, ptr %xattr.09, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %3, %for.cond.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %xattr.09 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %xattr_array, %entry.for.body_crit_edge ]
  %value = getelementptr inbounds %struct.xattr, ptr %xattr.09, i32 0, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %value, align 4
  %value_len = getelementptr inbounds %struct.xattr, ptr %xattr.09, i32 0, i32 2
  %7 = ptrtoint ptr %value_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value_len, align 4
  %call = tail call i32 @__gfs2_xattr_set(ptr noundef %inode, ptr noundef nonnull %4, ptr noundef %6, i32 noundef %8, i32 noundef 0, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %err.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ %call, %for.cond.for.end_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @link_dinode(ptr noundef %dip, ptr noundef %name, ptr noundef %ip, ptr noundef %da) unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.gfs2_alloc_parms, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #14
  %4 = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 1
  %5 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %da, align 4
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %ap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %8 = call ptr @memset(ptr %4, i32 0, i32 16)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %9 = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4294967295, ptr %9, align 8
  %call1.i = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call1.i, label %if.then.if.end_crit_edge, label %lor.lhs.false.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %ar_quota.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %11 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %ar_quota.i, align 4
  %12 = and i32 %bf.load.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @gfs2_quota_lock(ptr noundef %dip, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.fail_quota_locks_crit_edge

if.end.i.fail_quota_locks_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_quota_locks

if.end7.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load10.i = load i32, ptr %ar_quota.i, align 4
  %14 = and i32 %bf.load10.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %14)
  %cmp13.not.i = icmp eq i32 %14, 134217728
  br i1 %cmp13.not.i, label %if.end15.i, label %if.end7.i.if.end_crit_edge

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end15.i:                                       ; preds = %if.end7.i
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 3
  %15 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %16 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %17 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack36.i = load i32, ptr %i_gid.i, align 8
  %18 = insertvalue [1 x i32] undef, i32 %.unpack36.i, 0
  %call20.i = call i32 @gfs2_quota_check(ptr noundef %dip, [1 x i32] %16, [1 x i32] %18, ptr noundef nonnull %ap) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end15.i.if.end_crit_edge, label %if.then22.i

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_quota_unlock(ptr noundef %dip) #14
  br label %fail_quota_locks

if.end:                                           ; preds = %if.end15.i.if.end_crit_edge, %if.end7.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %call5 = call i32 @gfs2_inplace_reserve(ptr noundef %dip, ptr noundef nonnull %ap) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.fail_quota_locks_crit_edge

if.end.fail_quota_locks_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_quota_locks

if.end8:                                          ; preds = %if.end
  %19 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %da, align 4
  %rs_rgd.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %dip, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %rs_rgd.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rs_rgd.i.i, align 4
  %rd_length.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %rd_length.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rd_length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %20)
  %cmp.i.i = icmp ugt i32 %24, %20
  %add.i.i = add i32 %20, 1
  %retval.0.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 %24
  %add2.i = add i32 %20, 5
  %add4.i = add i32 %add2.i, %retval.0.i.i
  %call10 = call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef %add4.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.if.end18_crit_edge, label %if.end8.fail_ipreserv_crit_edge

if.end8.fail_ipreserv_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_ipreserv

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.else:                                          ; preds = %entry
  %call14 = tail call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef 3, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else.if.end18_crit_edge, label %if.else.fail_quota_locks_crit_edge

if.else.fail_quota_locks_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_quota_locks

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.end8.if.end18_crit_edge
  %call20 = call i32 @gfs2_dir_add(ptr noundef %dip, ptr noundef %name, ptr noundef %ip, ptr noundef %da) #14
  call void @gfs2_trans_end(ptr noundef %3) #14
  br label %fail_ipreserv

fail_ipreserv:                                    ; preds = %if.end18, %if.end8.fail_ipreserv_crit_edge
  %error.0 = phi i32 [ %call10, %if.end8.fail_ipreserv_crit_edge ], [ %call20, %if.end18 ]
  call void @gfs2_inplace_release(ptr noundef %dip) #14
  br label %fail_quota_locks

fail_quota_locks:                                 ; preds = %fail_ipreserv, %if.else.fail_quota_locks_crit_edge, %if.end.fail_quota_locks_crit_edge, %if.then22.i, %if.end.i.fail_quota_locks_crit_edge
  %error.1 = phi i32 [ %call5, %if.end.fail_quota_locks_crit_edge ], [ %error.0, %fail_ipreserv ], [ %call14, %if.else.fail_quota_locks_crit_edge ], [ %call5.i, %if.end.i.fail_quota_locks_crit_edge ], [ %call20.i, %if.then22.i ]
  call void @gfs2_quota_unlock(ptr noundef %dip) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #14
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rs_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_quota_lock_check(ptr noundef %ip, ptr noundef %ap) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %allowed = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 3
  %4 = ptrtoint ptr %allowed to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 4294967295, ptr %allowed, align 8
  %call1 = tail call zeroext i1 @capable(i32 noundef 24) #14
  br i1 %call1, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ar_quota = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %5 = ptrtoint ptr %ar_quota to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %ar_quota, align 4
  %6 = and i32 %bf.load, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call i32 @gfs2_quota_lock(ptr noundef %ip, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %ar_quota to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load10 = load i32, ptr %ar_quota, align 4
  %8 = and i32 %bf.load10, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %8)
  %cmp13.not = icmp eq i32 %8, 134217728
  br i1 %cmp13.not, label %if.end15, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %i_uid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %9 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack = load i32, ptr %i_uid, align 4
  %10 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %11 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack36 = load i32, ptr %i_gid, align 8
  %12 = insertvalue [1 x i32] undef, i32 %.unpack36, 0
  %call20 = tail call i32 @gfs2_quota_check(ptr noundef %ip, [1 x i32] %10, [1 x i32] %12, ptr noundef %ap) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end15.cleanup_crit_edge, label %if.then22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @gfs2_quota_unlock(ptr noundef %ip) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call20, %if.then22 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_inplace_reserve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_alloc_blocks(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_inplace_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_meta_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dinode_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gfs2_xattr_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_dir_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_dir_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_blk2rgrpd(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_unlink_ok(ptr noundef %dip, ptr noundef %name, ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %2 = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dip to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dip, align 8
  %6 = and i16 %5, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool7.not = icmp eq i16 %6, 0
  br i1 %tobool7.not, label %if.end.if.end29_crit_edge, label %land.lhs.true

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %i_uid = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 2
  %7 = tail call i32 @llvm.read_register.i32(metadata !29) #14
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %14 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true11

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true11:                                  ; preds = %land.lhs.true
  %i_uid13 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %15 = ptrtoint ptr %i_uid13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack52 = load i32, ptr %i_uid13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack52, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i53 = icmp eq i32 %.unpack52, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i53, label %land.lhs.true11.if.end29_crit_edge, label %land.lhs.true26

land.lhs.true11.if.end29_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true26:                                  ; preds = %land.lhs.true11
  %call27 = tail call zeroext i1 @capable(i32 noundef 3) #14
  br i1 %call27, label %land.lhs.true26.if.end29_crit_edge, label %land.lhs.true26.cleanup_crit_edge

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true26.if.end29_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true26.if.end29_crit_edge, %land.lhs.true11.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %i_flags31 = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 4
  %16 = ptrtoint ptr %i_flags31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_flags31, align 4
  %and32 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %call37 = tail call i32 @gfs2_permission(ptr undef, ptr noundef %dip, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %call42 = tail call i32 @gfs2_dir_check(ptr noundef %dip, ptr noundef %name, ptr noundef %ip) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end35.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %land.lhs.true26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end40 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true26.cleanup_crit_edge ], [ -1, %if.end29.cleanup_crit_edge ], [ %call37, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_unlink_inode(ptr noundef %dip, ptr noundef %dentry) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call2 = tail call i32 @gfs2_dir_del(ptr noundef %dip, ptr noundef %dentry) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_entries = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %i_entries to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %i_entries, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #14
  %3 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @clear_nlink(ptr noundef %1) #14
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @drop_nlink(ptr noundef %1) #14
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #14
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_unlink_di(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_dir_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_unlink_di(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_async_wait(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_dir_mvino(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_consist_inode_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gfs2_get_link(ptr noundef readnone %dentry, ptr noundef %inode, ptr nocapture noundef writeonly %done) #0 align 64 {
entry:
  %i_gh = alloca %struct.gfs2_holder, align 4
  %dibh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #14
  %0 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh) #14
  %1 = ptrtoint ptr %dibh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh, align 4, !annotation !39
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  %4 = tail call ptr @llvm.returnaddress(i32 0) #14
  %5 = ptrtoint ptr %4 to i32
  call void @__gfs2_holder_init(ptr noundef %3, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %i_gh, i32 noundef %5) #14
  %call2 = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #14
  %6 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end6
  %7 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !48
  %and.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @trace_hardirqs_off() #14
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %5) #14
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %5) #14
  call void @trace_hardirqs_on() #14
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %5) #14
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %5) #14
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %8 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !49
  %and.i.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !43

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #14, !srcloc !50
  %9 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !51
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !52
  %11 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %12, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %10, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %12, %do.end.i.while.end.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !53
  %13 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size18.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !54
  %15 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %16, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %conv = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %out.thread, label %if.end11

out.thread:                                       ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @gfs2_consist_inode_i(ptr noundef %inode, ptr noundef nonnull @__func__.gfs2_get_link, ptr noundef nonnull @.str.7, i32 noundef 1796) #14
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #14
  br label %cleanup

if.end11:                                         ; preds = %i_size_read.exit
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %17 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_no_addr.i, align 8
  %call.i = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %18, ptr noundef nonnull %dibh) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end8.i.i, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %19 = inttoptr i32 %call.i to ptr
  br label %out

if.end8.i.i:                                      ; preds = %if.end11
  %add = add i32 %conv, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3392) #20
  %tobool18.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool18.not, label %if.end8.i.i.if.end21_crit_edge, label %if.else

if.end8.i.i.if.end21_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.else:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dibh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 232
  %24 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr, i32 %conv)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end8.i.i.if.end21_crit_edge
  %buf.0 = phi ptr [ %call9.i.i, %if.else ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.if.end21_crit_edge ]
  %25 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dibh, align 4
  %tobool.not.i43 = icmp eq ptr %26, null
  br i1 %tobool.not.i43, label %if.end21.out_crit_edge, label %if.then.i

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  call void @__brelse(ptr noundef nonnull %26) #14
  br label %out

out:                                              ; preds = %if.then.i, %if.end21.out_crit_edge, %if.then14
  %buf.1 = phi ptr [ %19, %if.then14 ], [ %buf.0, %if.end21.out_crit_edge ], [ %buf.0, %if.then.i ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #14
  %cmp.i = icmp ugt ptr %buf.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out.cleanup_crit_edge, label %if.then23

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kfree_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %28 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.1, ptr %arg2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %out.cleanup_crit_edge, %out.thread, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.then4 ], [ %buf.1, %if.then23 ], [ %buf.1, %out.cleanup_crit_edge ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %out.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #2

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

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/inode.c", i32 294, i32 44}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/gfs2/inode.c", i32 295, i32 44}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/gfs2/glock.h", i32 306, i32 6}
!6 = !{ptr @__func__.glock_set_object, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gfs2_file_iops, !9, !"gfs2_file_iops", i1 false, i1 false}
!9 = !{!"../fs/gfs2/inode.c", i32 2134, i32 38}
!10 = !{ptr @gfs2_dir_iops, !11, !"gfs2_dir_iops", i1 false, i1 false}
!11 = !{!"../fs/gfs2/inode.c", i32 2147, i32 38}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../fs/gfs2/inode.c", i32 363, i32 40}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../fs/gfs2/inode.c", i32 367, i32 18}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../fs/gfs2/inode.c", i32 374, i32 18}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../fs/gfs2/inode.c", i32 1052, i32 34}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../fs/gfs2/inode.c", i32 1053, i32 33}
!22 = !{ptr @__func__.gfs2_rename, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/gfs2/inode.c", i32 1475, i32 5}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gfs2_symlink_iops, !26, !"gfs2_symlink_iops", i1 false, i1 false}
!26 = !{!"../fs/gfs2/inode.c", i32 2170, i32 38}
!27 = !{ptr @__func__.gfs2_get_link, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/gfs2/inode.c", i32 1796, i32 3}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2154901172, i64 2154901653, i64 2154901209, i64 2154901265, i64 2154901299, i64 2154901323, i64 2154901364, i64 2154901385, i64 2154901413, i64 2154901447}
!42 = !{i64 2154896506, i64 2154896986, i64 2154896543, i64 2154896599, i64 2154896633, i64 2154896657, i64 2154896698, i64 2154896719, i64 2154896747, i64 2154896781}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2154875306, i64 2154875787, i64 2154875343, i64 2154875399, i64 2154875433, i64 2154875457, i64 2154875498, i64 2154875519, i64 2154875547, i64 2154875581}
!45 = !{i64 2148720804}
!46 = !{i64 2148635244, i64 2148635276, i64 2148635305, i64 2148635339, i64 2148635370, i64 2148635393}
!47 = !{i64 2149918577}
!48 = !{i64 1035929, i64 1035990}
!49 = !{i64 1038661}
!50 = !{i64 1038946}
!51 = !{i64 2152964579}
!52 = !{i64 2152964421}
!53 = !{i64 2152964749}
!54 = !{i64 2149810648}
