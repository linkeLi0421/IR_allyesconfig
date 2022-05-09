; ModuleID = '/llk/IR_all_yes/fs/hfs/inode.c_pt.bc'
source_filename = "../fs/hfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.timezone = type { i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.74, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
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
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.hfs_bnode = type { ptr, i32, i32, i32, i32, i16, i8, i8, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, i32, [0 x ptr] }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { ptr }
%union.anon.62 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.hfs_extent = type { i16, i16 }
%struct.hfs_iget_data = type { ptr, ptr }
%struct.hfs_cat_dir = type <{ i8, i8, i16, i16, i32, i32, i32, i32, %struct.hfs_dinfo, %struct.hfs_dxinfo, [16 x i8] }>
%struct.hfs_dinfo = type { %struct.hfs_rect, i16, %struct.hfs_point, i16 }
%struct.hfs_rect = type { i16, i16, i16, i16 }
%struct.hfs_point = type { i16, i16 }
%struct.hfs_dxinfo = type { %struct.hfs_point, i32, i16, i16, i32 }
%struct.hfs_cat_file = type <{ i8, i8, i8, i8, %struct.hfs_finfo, i32, i16, i32, i32, i16, i32, i32, i32, i32, i32, %struct.hfs_fxinfo, i16, [3 x %struct.hfs_extent], [3 x %struct.hfs_extent], i32 }>
%struct.hfs_finfo = type { i32, i32, i16, %struct.hfs_point, i16 }
%struct.hfs_fxinfo = type { i16, [8 x i8], i16, i32 }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.hfs_cat_rec = type { %struct.hfs_cat_file }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@hfs_btree_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @hfs_writepage, ptr @hfs_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @hfs_write_begin, ptr @generic_write_end, ptr @hfs_bmap, ptr null, ptr @hfs_releasepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @hfs_writepage, ptr @hfs_readpage, ptr @hfs_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @hfs_write_begin, ptr @generic_write_end, ptr @hfs_bmap, ptr null, ptr null, ptr null, ptr @hfs_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hfs_new_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&HFS_I(inode)->extents_lock\00", [36 x i8] zeroinitializer }, align 32
@hfs_new_inode.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&HFS_I(inode)->open_dir_lock\00", [35 x i8] zeroinitializer }, align 32
@hfs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@hfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@hfs_file_inode_operations = internal constant %struct.inode_operations { ptr @hfs_file_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hfs_inode_setattr, ptr null, ptr @generic_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@hfs_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_mmap, i32 0, ptr @hfs_file_open, ptr null, ptr @hfs_file_release, ptr @hfs_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/hfs/inode.c\00", [17 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@hfs_read_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hfs_read_inode.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rsrc\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"hfs_btree_aops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 161, i32 39 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"hfs_aops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 171, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 192, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 194, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"hfs_file_operations\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 683, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 465, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 324, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 326, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [18 x i8] c"../fs/hfs/inode.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 515, i32 54 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @hfs_btree_aops, ptr @hfs_aops, ptr @hfs_new_inode.__key, ptr @.str, ptr @hfs_new_inode.__key.1, ptr @.str.2, ptr @hfs_file_operations, ptr @.str.4, ptr @hfs_read_inode.__key, ptr @hfs_read_inode.__key.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_btree_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_new_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_new_inode.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_read_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_read_inode.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @hfs_get_block, ptr noundef %wbc) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @hfs_get_block) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pagep, align 4
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %phys_size = getelementptr i8, ptr %2, i32 -8
  %call = tail call i32 @cont_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata, ptr noundef nonnull @hfs_get_block, ptr noundef %phys_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !36

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @hfs_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @hfs_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @hfs_get_block) #9
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_releasepage(ptr noundef %page, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info, align 16
  %ext_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %10, i32 0, i32 5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %s_fs_info2 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info2, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %12, i32 0, i32 6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #9, !srcloc !37
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %tree.0.in = phi ptr [ %cat_tree, %sw.bb1 ], [ %ext_tree, %sw.bb ]
  %13 = ptrtoint ptr %tree.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %tree.0 = load ptr, ptr %tree.0.in, align 4
  %tobool.not = icmp eq ptr %tree.0, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %tree.0, i32 0, i32 11
  %14 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %15)
  %cmp = icmp ugt i32 %15, 4095
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %node_size_shift = getelementptr inbounds %struct.hfs_btree, ptr %tree.0, i32 0, i32 12
  %18 = ptrtoint ptr %node_size_shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node_size_shift, align 4
  br i1 %cmp, label %if.then6, label %if.else19

if.then6:                                         ; preds = %if.end
  %sub = add i32 %19, -12
  %shr = lshr i32 %17, %sub
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %tree.0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %hash_lock) #9
  %call = tail call ptr @hfs_bnode_findhash(ptr noundef nonnull %tree.0, i32 noundef %shr) #9
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.then6.cond.true_crit_edge, label %if.end13

if.then6.cond.true_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

if.end13:                                         ; preds = %if.then6
  %refcnt = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #9
  %20 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %if.then16, label %cleanup.critedge

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hfs_bnode_unhash(ptr noundef nonnull %call) #9
  tail call void @hfs_bnode_free(ptr noundef nonnull %call) #9
  br label %cond.true

if.else19:                                        ; preds = %if.end
  %sub22 = sub i32 12, %19
  %shl = shl i32 %17, %sub22
  %shl25 = shl nuw i32 1, %sub22
  %hash_lock26 = getelementptr inbounds %struct.hfs_btree, ptr %tree.0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %hash_lock26) #9
  %node_count = getelementptr inbounds %struct.hfs_btree, ptr %tree.0, i32 0, i32 8
  br label %do.body27

do.body27:                                        ; preds = %land.rhs.do.body27_crit_edge, %if.else19
  %nidx.0 = phi i32 [ %shl, %if.else19 ], [ %inc, %land.rhs.do.body27_crit_edge ]
  %i.0 = phi i32 [ %shl25, %if.else19 ], [ %dec, %land.rhs.do.body27_crit_edge ]
  %inc = add i32 %nidx.0, 1
  %call28 = tail call ptr @hfs_bnode_findhash(ptr noundef nonnull %tree.0, i32 noundef %nidx.0) #9
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %do.body27.do.cond37_crit_edge, label %if.end31

do.body27.do.cond37_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond37

if.end31:                                         ; preds = %do.body27
  %refcnt32 = getelementptr inbounds %struct.hfs_bnode, ptr %call28, i32 0, i32 11
  %call.i.i79 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt32, i32 noundef 4) #9
  %22 = ptrtoint ptr %refcnt32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %refcnt32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool34.not = icmp eq i32 %23, 0
  br i1 %tobool34.not, label %if.end36, label %if.end42

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hfs_bnode_unhash(ptr noundef nonnull %call28) #9
  tail call void @hfs_bnode_free(ptr noundef nonnull %call28) #9
  br label %do.cond37

do.cond37:                                        ; preds = %if.end36, %do.body27.do.cond37_crit_edge
  %dec = add i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool38.not = icmp eq i32 %dec, 0
  br i1 %tobool38.not, label %do.cond37.cond.true_crit_edge, label %land.rhs

do.cond37.cond.true_crit_edge:                    ; preds = %do.cond37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

land.rhs:                                         ; preds = %do.cond37
  %24 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node_count, align 4
  %cmp39 = icmp ult i32 %inc, %25
  br i1 %cmp39, label %land.rhs.do.body27_crit_edge, label %land.rhs.cond.true_crit_edge

land.rhs.cond.true_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

land.rhs.do.body27_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end42:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock26) #9
  br label %cleanup

cond.true:                                        ; preds = %land.rhs.cond.true_crit_edge, %do.cond37.cond.true_crit_edge, %if.then16, %if.then6.cond.true_crit_edge
  %hash_lock26.sink = phi ptr [ %hash_lock, %if.then16 ], [ %hash_lock, %if.then6.cond.true_crit_edge ], [ %hash_lock26, %land.rhs.cond.true_crit_edge ], [ %hash_lock26, %do.cond37.cond.true_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock26.sink) #9
  %call44 = tail call i32 @try_to_free_buffers(ptr noundef %page) #9
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %cond.true, %if.end42, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog.cleanup_crit_edge ], [ %call44, %cond.true ], [ 0, %if.end42 ], [ 0, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @hfs_get_block) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %11, ptr noundef %iter, ptr noundef nonnull @hfs_get_block, ptr noundef null, ptr noundef null, i32 noundef 3) #9
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %12 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_source.i, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp eq i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %spec.select, label %if.then, label %entry.if.end12_crit_edge, !prof !39

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  %call7 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %14 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ki_pos, align 8
  %conv8 = zext i32 %7 to i64
  %add = add i64 %15, %conv8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call7)
  %cmp9 = icmp sgt i64 %add, %call7
  br i1 %cmp9, label %if.then11, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @hfs_write_failed(ptr noundef %3, i64 noundef %add)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfs_new_inode(ptr nocapture noundef readonly %dir, ptr noundef %name, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %tmp27 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @new_inode(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %extents_lock = getelementptr i8, ptr %call, i32 -148
  tail call void @__mutex_init(ptr noundef %extents_lock, ptr noundef nonnull @.str, ptr noundef nonnull @hfs_new_inode.__key) #9
  %open_dir_list = getelementptr i8, ptr %call, i32 -204
  %2 = ptrtoint ptr %open_dir_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %open_dir_list, ptr %open_dir_list, align 4
  %prev.i = getelementptr i8, ptr %call, i32 -200
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %open_dir_list, ptr %prev.i, align 4
  %open_dir_lock = getelementptr i8, ptr %call, i32 -196
  tail call void @__raw_spin_lock_init(ptr noundef %open_dir_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hfs_new_inode.__key.1, i16 noundef signext 3) #9
  %cat_key = getelementptr i8, ptr %call, i32 -244
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call void @hfs_cat_build_key(ptr noundef %1, ptr noundef %cat_key, i32 noundef %5, ptr noundef %name) #9
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %next_id = getelementptr inbounds %struct.hfs_sb_info, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %next_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_id, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %next_id, align 4
  %i_ino14 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %i_ino14, align 8
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %mode, ptr %call, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %12 = tail call i32 @llvm.read_register.i32(metadata !26) #9
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
  %fsuid = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fsuid, align 4
  %20 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %21 = load ptr, ptr %task, align 8
  %cred26 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred26, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fsgid, align 4
  %26 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %i_gid, align 8
  tail call void @set_nlink(ptr noundef nonnull %call, i32 noundef 1) #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp27) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp27, ptr noundef nonnull %call) #9
  %27 = call ptr @memcpy(ptr %i_ctime, ptr %tmp27, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp27) #9
  %28 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %29 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %flags = getelementptr i8, ptr %call, i32 -252
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flags, align 4
  %rsrc_inode = getelementptr i8, ptr %call, i32 -152
  %31 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rsrc_inode, align 8
  %fs_blocks = getelementptr i8, ptr %call, i32 -48
  %32 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %fs_blocks, align 8
  %and = and i16 %mode, -4096
  %33 = zext i16 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %and, label %do.body.if.end122_crit_edge [
    i16 16384, label %if.then38
    i16 -32768, label %if.then62
  ]

do.body.if.end122_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then38:                                        ; preds = %do.body
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %34 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 2, ptr %i_size, align 8
  %35 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info, align 16
  %folder_count = getelementptr inbounds %struct.hfs_sb_info, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %folder_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %folder_count, align 4
  %inc40 = add i32 %38, 1
  store i32 %inc40, ptr %folder_count, align 4
  %39 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp42 = icmp eq i32 %40, 2
  br i1 %cmp42, label %if.then44, label %if.then38.if.end47_crit_edge

if.then38.if.end47_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info, align 16
  %root_dirs = getelementptr inbounds %struct.hfs_sb_info, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %root_dirs to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %root_dirs, align 2
  %inc46 = add i16 %44, 1
  store i16 %inc46, ptr %root_dirs, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.then38.if.end47_crit_edge
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %45 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @hfs_dir_inode_operations, ptr %i_op, align 8
  %46 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @hfs_dir_operations, ptr %46, align 8
  %48 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %call, align 8
  %50 = or i16 %49, 511
  store i16 %50, ptr %call, align 8
  %i_sb51 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %51 = ptrtoint ptr %i_sb51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb51, align 4
  %s_fs_info52 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 33
  %53 = ptrtoint ptr %s_fs_info52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info52, align 16
  %s_dir_umask = getelementptr inbounds %struct.hfs_sb_info, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %s_dir_umask to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %s_dir_umask, align 2
  %neg = xor i16 %56, -1
  %and56 = and i16 %50, %neg
  store i16 %and56, ptr %call, align 8
  br label %if.end122

if.then62:                                        ; preds = %do.body
  %57 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info, align 16
  %clumpablks = getelementptr inbounds %struct.hfs_sb_info, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %clumpablks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %clumpablks, align 4
  %conv64 = trunc i32 %60 to i16
  %clump_blocks = getelementptr i8, ptr %call, i32 -54
  %61 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv64, ptr %clump_blocks, align 2
  %62 = load ptr, ptr %s_fs_info, align 16
  %file_count = getelementptr inbounds %struct.hfs_sb_info, ptr %62, i32 0, i32 7
  %63 = ptrtoint ptr %file_count to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %file_count, align 4
  %inc69 = add i32 %64, 1
  store i32 %inc69, ptr %file_count, align 4
  %65 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp71 = icmp eq i32 %66, 2
  br i1 %cmp71, label %if.then73, label %if.then62.if.end76_crit_edge

if.then62.if.end76_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then73:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info, align 16
  %root_files = getelementptr inbounds %struct.hfs_sb_info, ptr %68, i32 0, i32 13
  %69 = ptrtoint ptr %root_files to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %root_files, align 4
  %inc75 = add i16 %70, 1
  store i16 %inc75, ptr %root_files, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.then62.if.end76_crit_edge
  %i_op77 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %71 = ptrtoint ptr %i_op77 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @hfs_file_inode_operations, ptr %i_op77, align 8
  %72 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @hfs_file_operations, ptr %72, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %74 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @hfs_aops, ptr %a_ops, align 4
  %77 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %call, align 8
  %79 = and i16 %mode, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool84.not = icmp eq i16 %79, 0
  %spec.select.v = select i1 %tobool84.not, i16 365, i16 511
  %spec.select = or i16 %78, %spec.select.v
  %80 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %spec.select, ptr %call, align 8
  %i_sb91 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %81 = ptrtoint ptr %i_sb91 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_sb91, align 4
  %s_fs_info92 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 33
  %83 = ptrtoint ptr %s_fs_info92 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %s_fs_info92, align 16
  %s_file_umask = getelementptr inbounds %struct.hfs_sb_info, ptr %84, i32 0, i32 21
  %85 = ptrtoint ptr %s_file_umask to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %s_file_umask, align 4
  %neg94 = xor i16 %86, -1
  %and97 = and i16 %spec.select, %neg94
  store i16 %and97, ptr %call, align 8
  %phys_size = getelementptr i8, ptr %call, i32 -8
  %87 = ptrtoint ptr %phys_size to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 0, ptr %phys_size, align 8
  %alloc_blocks = getelementptr i8, ptr %call, i32 -56
  %88 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %alloc_blocks, align 8
  %first_extents = getelementptr i8, ptr %call, i32 -40
  %89 = call ptr @memset(ptr %first_extents, i32 0, i32 30)
  br label %if.end122

if.end122:                                        ; preds = %if.end76, %if.end47, %do.body.if.end122_crit_edge
  %90 = ptrtoint ptr %i_ino14 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %i_ino14, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call, i32 noundef %91) #9
  call void @__mark_inode_dirty(ptr noundef nonnull %call, i32 noundef 7) #9
  %92 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info, align 16
  %flags124 = getelementptr inbounds %struct.hfs_sb_info, ptr %93, i32 0, i32 30
  call void @_set_bit(i32 noundef 1, ptr noundef %flags124) #9
  call void @hfs_mark_mdb_dirty(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_cat_build_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_mark_mdb_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_delete_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %folder_count = getelementptr inbounds %struct.hfs_sb_info, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %folder_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %folder_count, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %folder_count, align 4
  %ParID = getelementptr i8, ptr %inode, i32 -242
  %9 = ptrtoint ptr %ParID to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %ParID, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp2 = icmp eq i32 %10, 2
  br i1 %cmp2, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info, align 16
  %root_dirs = getelementptr inbounds %struct.hfs_sb_info, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %root_dirs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %root_dirs, align 2
  %dec6 = add i16 %14, -1
  store i16 %dec6, ptr %root_dirs, align 2
  br label %cleanup

if.end8:                                          ; preds = %entry
  %file_count = getelementptr inbounds %struct.hfs_sb_info, ptr %6, i32 0, i32 7
  %15 = ptrtoint ptr %file_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %file_count, align 4
  %dec10 = add i32 %16, -1
  store i32 %dec10, ptr %file_count, align 4
  %ParID15 = getelementptr i8, ptr %inode, i32 -242
  %17 = ptrtoint ptr %ParID15 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %ParID15, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp16 = icmp eq i32 %18, 2
  br i1 %cmp16, label %if.then18, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info, align 16
  %root_files = getelementptr inbounds %struct.hfs_sb_info, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %root_files to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %root_files, align 4
  %dec20 = add i16 %22, -1
  store i16 %dec20, ptr %root_files, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end8.if.end21_crit_edge
  %23 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %inode, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %25)
  %cmp25 = icmp eq i16 %25, -32768
  br i1 %cmp25, label %if.then27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %if.end21
  %26 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %if.then28, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %29 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %i_size, align 8
  tail call void @hfs_file_truncate(ptr noundef %inode) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.then27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then4, %if.then.cleanup_crit_edge
  %30 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info, align 16
  %flags32 = getelementptr inbounds %struct.hfs_sb_info, ptr %31, i32 0, i32 30
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags32) #9
  tail call void @hfs_mark_mdb_dirty(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_file_truncate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_inode_read_fork(ptr noundef %inode, ptr nocapture noundef readonly %ext, i32 noundef %__log_size, i32 noundef %phys_size, i32 noundef %clump_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %first_extents = getelementptr i8, ptr %inode, i32 -40
  %2 = call ptr @memcpy(ptr %first_extents, ptr %ext, i32 12)
  %count1 = getelementptr %struct.hfs_extent, ptr %ext, i32 0, i32 1
  %3 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count1, align 2
  %count1.1 = getelementptr %struct.hfs_extent, ptr %ext, i32 1, i32 1
  %5 = ptrtoint ptr %count1.1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %count1.1, align 2
  %add.1 = add i16 %6, %4
  %count1.2 = getelementptr %struct.hfs_extent, ptr %ext, i32 2, i32 1
  %7 = ptrtoint ptr %count1.2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %count1.2, align 2
  %add.2 = add i16 %8, %add.1
  %first_blocks = getelementptr i8, ptr %inode, i32 -28
  %9 = ptrtoint ptr %first_blocks to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %add.2, ptr %first_blocks, align 4
  %conv7 = zext i32 %__log_size to i64
  %phys_size11 = getelementptr i8, ptr %inode, i32 -8
  %10 = ptrtoint ptr %phys_size11 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv7, ptr %phys_size11, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %11 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv7, ptr %i_size, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize, align 16
  %add12 = add i32 %__log_size, -1
  %sub = add i32 %add12, %13
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits, align 4
  %conv13 = zext i8 %15 to i32
  %shr = lshr i32 %sub, %conv13
  %conv14 = zext i32 %shr to i64
  %fs_blocks = getelementptr i8, ptr %inode, i32 -48
  %16 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv14, ptr %fs_blocks, align 8
  %17 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %17 to i64
  %shl = shl i64 %conv14, %sh_prom
  tail call void @inode_set_bytes(ptr noundef %inode, i64 noundef %shl) #9
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info, align 16
  %alloc_blksz = getelementptr inbounds %struct.hfs_sb_info, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %alloc_blksz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %alloc_blksz, align 4
  %div = udiv i32 %phys_size, %21
  %conv24 = trunc i32 %div to i16
  %alloc_blocks = getelementptr i8, ptr %inode, i32 -56
  %22 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv24, ptr %alloc_blocks, align 8
  %23 = load ptr, ptr %s_fs_info, align 16
  %alloc_blksz29 = getelementptr inbounds %struct.hfs_sb_info, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %alloc_blksz29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %alloc_blksz29, align 4
  %div30 = udiv i32 %clump_size, %25
  %conv31 = trunc i32 %div30 to i16
  %clump_blocks = getelementptr i8, ptr %inode, i32 -54
  %26 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv31, ptr %clump_blocks, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv31)
  %tobool.not = icmp eq i16 %conv31, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info, align 16
  %clumpablks = getelementptr inbounds %struct.hfs_sb_info, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %clumpablks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clumpablks, align 4
  %conv40 = trunc i32 %30 to i16
  %31 = ptrtoint ptr %clump_blocks to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv40, ptr %clump_blocks, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfs_iget(ptr noundef %sb, ptr noundef %key, ptr noundef %rec) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.hfs_iget_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #9
  %0 = getelementptr inbounds %struct.hfs_iget_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %key, ptr %data, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rec, ptr %0, align 4
  %3 = ptrtoint ptr %rec to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rec, align 1
  %conv = sext i8 %4 to i32
  %5 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %conv, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %DirID = getelementptr inbounds %struct.hfs_cat_dir, ptr %rec, i32 0, i32 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %FlNum = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %cnid.0.in = phi ptr [ %FlNum, %sw.bb3 ], [ %DirID, %sw.bb ]
  %6 = ptrtoint ptr %cnid.0.in to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %cnid.0 = load i32, ptr %cnid.0.in, align 1
  %call = call ptr @iget5_locked(ptr noundef %sb, i32 noundef %cnid.0, ptr noundef nonnull @hfs_test_inode, ptr noundef nonnull @hfs_read_inode, ptr noundef nonnull %data) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %land.lhs.true

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.epilog
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %7 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_state, align 8
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @unlock_new_inode(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.then ], [ %call, %land.lhs.true.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_test_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rec1 = getelementptr inbounds %struct.hfs_iget_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %rec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rec1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = sext i8 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %conv, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %DirID = getelementptr inbounds %struct.hfs_cat_dir, ptr %1, i32 0, i32 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %FlNum = getelementptr inbounds %struct.hfs_cat_file, ptr %1, i32 0, i32 5
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #9, !srcloc !40
  unreachable

cleanup:                                          ; preds = %sw.bb3, %sw.bb
  %FlNum.sink = phi ptr [ %FlNum, %sw.bb3 ], [ %DirID, %sw.bb ]
  %.sink.in = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.sink = load i32, ptr %.sink.in, align 8
  %6 = ptrtoint ptr %FlNum.sink to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %FlNum.sink, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink, i32 %7)
  %cmp5 = icmp eq i32 %.sink, %7
  %retval.0 = zext i1 %cmp5 to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_read_inode(ptr noundef %inode, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %flags = getelementptr i8, ptr %inode, i32 -252
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flags, align 4
  %rsrc_inode = getelementptr i8, ptr %inode, i32 -152
  %5 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rsrc_inode, align 8
  %extents_lock = getelementptr i8, ptr %inode, i32 -148
  tail call void @__mutex_init(ptr noundef %extents_lock, ptr noundef nonnull @.str, ptr noundef nonnull @hfs_read_inode.__key) #9
  %open_dir_list = getelementptr i8, ptr %inode, i32 -204
  %6 = ptrtoint ptr %open_dir_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %open_dir_list, ptr %open_dir_list, align 4
  %prev.i = getelementptr i8, ptr %inode, i32 -200
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %open_dir_list, ptr %prev.i, align 4
  %open_dir_lock = getelementptr i8, ptr %inode, i32 -196
  tail call void @__raw_spin_lock_init(ptr noundef %open_dir_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hfs_read_inode.__key.5, i16 noundef signext 3) #9
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %s_uid = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 23
  %8 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_uid, align 4
  %10 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %s_gid = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 24
  %11 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_gid, align 4
  %13 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %i_gid, align 8
  tail call void @set_nlink(ptr noundef %inode, i32 noundef 1) #9
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cat_key = getelementptr i8, ptr %inode, i32 -244
  %16 = call ptr @memcpy(ptr %cat_key, ptr %15, i32 38)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or = or i32 %18, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %19 = load i32, ptr @sys_tz, align 4
  %mul = mul i32 %19, 60
  %tz_secondswest = getelementptr i8, ptr %inode, i32 -248
  %20 = ptrtoint ptr %tz_secondswest to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %tz_secondswest, align 8
  %rec27 = getelementptr inbounds %struct.hfs_iget_data, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %rec27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rec27, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv = sext i8 %24 to i32
  %25 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.end
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.then33, label %if.else35

if.then33:                                        ; preds = %sw.bb
  %ExtRec = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 17
  %LgLen = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 7
  %28 = ptrtoint ptr %LgLen to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %LgLen, align 1
  %PyLen = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 8
  %30 = ptrtoint ptr %PyLen to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %PyLen, align 1
  %ClpSize = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 16
  %32 = ptrtoint ptr %ClpSize to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %ClpSize, align 1
  %conv34 = zext i16 %33 to i32
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  %first_extents.i = getelementptr i8, ptr %inode, i32 -40
  %36 = call ptr @memcpy(ptr %first_extents.i, ptr %ExtRec, i32 12)
  %count1.i = getelementptr %struct.hfs_cat_file, ptr %22, i32 0, i32 17, i32 0, i32 1
  %37 = ptrtoint ptr %count1.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %count1.i, align 2
  %count1.1.i = getelementptr %struct.hfs_cat_file, ptr %22, i32 0, i32 17, i32 1, i32 1
  %39 = ptrtoint ptr %count1.1.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %count1.1.i, align 2
  %add.1.i = add i16 %40, %38
  %count1.2.i = getelementptr %struct.hfs_cat_file, ptr %22, i32 0, i32 17, i32 2, i32 1
  %41 = ptrtoint ptr %count1.2.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %count1.2.i, align 2
  %add.2.i = add i16 %add.1.i, %42
  %first_blocks.i = getelementptr i8, ptr %inode, i32 -28
  %43 = ptrtoint ptr %first_blocks.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %add.2.i, ptr %first_blocks.i, align 4
  %conv7.i = zext i32 %29 to i64
  %phys_size11.i = getelementptr i8, ptr %inode, i32 -8
  %44 = ptrtoint ptr %phys_size11.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv7.i, ptr %phys_size11.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv7.i, ptr %i_size.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 3
  %46 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_blocksize.i, align 16
  %add12.i = add i32 %29, -1
  %sub.i = add i32 %add12.i, %47
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 2
  %48 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv13.i = zext i8 %49 to i32
  %shr.i = lshr i32 %sub.i, %conv13.i
  %conv14.i = zext i32 %shr.i to i64
  %fs_blocks.i = getelementptr i8, ptr %inode, i32 -48
  %50 = ptrtoint ptr %fs_blocks.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv14.i, ptr %fs_blocks.i, align 8
  %51 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %51 to i64
  %shl.i = shl i64 %conv14.i, %sh_prom.i
  tail call void @inode_set_bytes(ptr noundef %inode, i64 noundef %shl.i) #9
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %alloc_blksz.i = getelementptr inbounds %struct.hfs_sb_info, ptr %53, i32 0, i32 17
  %54 = ptrtoint ptr %alloc_blksz.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %alloc_blksz.i, align 4
  %div.i = udiv i32 %31, %55
  %conv24.i = trunc i32 %div.i to i16
  %alloc_blocks.i = getelementptr i8, ptr %inode, i32 -56
  %56 = ptrtoint ptr %alloc_blocks.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv24.i, ptr %alloc_blocks.i, align 8
  %57 = load ptr, ptr %s_fs_info.i, align 16
  %alloc_blksz29.i = getelementptr inbounds %struct.hfs_sb_info, ptr %57, i32 0, i32 17
  %58 = ptrtoint ptr %alloc_blksz29.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %alloc_blksz29.i, align 4
  %div30.i = udiv i32 %conv34, %59
  %conv31.i = trunc i32 %div30.i to i16
  %clump_blocks.i = getelementptr i8, ptr %inode, i32 -54
  %60 = ptrtoint ptr %clump_blocks.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv31.i, ptr %clump_blocks.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv31.i)
  %tobool.not.i = icmp eq i16 %conv31.i, 0
  br i1 %tobool.not.i, label %if.then33.if.end39.sink.split_crit_edge, label %if.then33.if.end39_crit_edge

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then33.if.end39.sink.split_crit_edge:          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.sink.split

if.else35:                                        ; preds = %sw.bb
  %RExtRec = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 18
  %RLgLen = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 10
  %61 = ptrtoint ptr %RLgLen to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %RLgLen, align 1
  %RPyLen = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 11
  %63 = ptrtoint ptr %RPyLen to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %RPyLen, align 1
  %ClpSize37 = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 16
  %65 = ptrtoint ptr %ClpSize37 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %ClpSize37, align 1
  %conv38 = zext i16 %66 to i32
  %67 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb, align 4
  %first_extents.i136 = getelementptr i8, ptr %inode, i32 -40
  %69 = call ptr @memcpy(ptr %first_extents.i136, ptr %RExtRec, i32 12)
  %count1.i137 = getelementptr %struct.hfs_cat_file, ptr %22, i32 0, i32 18, i32 0, i32 1
  %70 = ptrtoint ptr %count1.i137 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %count1.i137, align 2
  %count1.1.i138 = getelementptr %struct.hfs_cat_file, ptr %22, i32 0, i32 18, i32 1, i32 1
  %72 = ptrtoint ptr %count1.1.i138 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %count1.1.i138, align 2
  %add.1.i139 = add i16 %73, %71
  %count1.2.i140 = getelementptr %struct.hfs_cat_file, ptr %22, i32 0, i32 18, i32 2, i32 1
  %74 = ptrtoint ptr %count1.2.i140 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %count1.2.i140, align 2
  %add.2.i141 = add i16 %add.1.i139, %75
  %first_blocks.i142 = getelementptr i8, ptr %inode, i32 -28
  %76 = ptrtoint ptr %first_blocks.i142 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %add.2.i141, ptr %first_blocks.i142, align 4
  %conv7.i143 = zext i32 %62 to i64
  %phys_size11.i144 = getelementptr i8, ptr %inode, i32 -8
  %77 = ptrtoint ptr %phys_size11.i144 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv7.i143, ptr %phys_size11.i144, align 8
  %i_size.i145 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %78 = ptrtoint ptr %i_size.i145 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv7.i143, ptr %i_size.i145, align 8
  %s_blocksize.i146 = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 3
  %79 = ptrtoint ptr %s_blocksize.i146 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_blocksize.i146, align 16
  %add12.i147 = add i32 %62, -1
  %sub.i148 = add i32 %add12.i147, %80
  %s_blocksize_bits.i149 = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 2
  %81 = ptrtoint ptr %s_blocksize_bits.i149 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %s_blocksize_bits.i149, align 4
  %conv13.i150 = zext i8 %82 to i32
  %shr.i151 = lshr i32 %sub.i148, %conv13.i150
  %conv14.i152 = zext i32 %shr.i151 to i64
  %fs_blocks.i153 = getelementptr i8, ptr %inode, i32 -48
  %83 = ptrtoint ptr %fs_blocks.i153 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv14.i152, ptr %fs_blocks.i153, align 8
  %84 = load i8, ptr %s_blocksize_bits.i149, align 4
  %sh_prom.i154 = zext i8 %84 to i64
  %shl.i155 = shl i64 %conv14.i152, %sh_prom.i154
  tail call void @inode_set_bytes(ptr noundef %inode, i64 noundef %shl.i155) #9
  %s_fs_info.i156 = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 33
  %85 = ptrtoint ptr %s_fs_info.i156 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i156, align 16
  %alloc_blksz.i157 = getelementptr inbounds %struct.hfs_sb_info, ptr %86, i32 0, i32 17
  %87 = ptrtoint ptr %alloc_blksz.i157 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %alloc_blksz.i157, align 4
  %div.i158 = udiv i32 %64, %88
  %conv24.i159 = trunc i32 %div.i158 to i16
  %alloc_blocks.i160 = getelementptr i8, ptr %inode, i32 -56
  %89 = ptrtoint ptr %alloc_blocks.i160 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv24.i159, ptr %alloc_blocks.i160, align 8
  %90 = load ptr, ptr %s_fs_info.i156, align 16
  %alloc_blksz29.i161 = getelementptr inbounds %struct.hfs_sb_info, ptr %90, i32 0, i32 17
  %91 = ptrtoint ptr %alloc_blksz29.i161 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %alloc_blksz29.i161, align 4
  %div30.i162 = udiv i32 %conv38, %92
  %conv31.i163 = trunc i32 %div30.i162 to i16
  %clump_blocks.i164 = getelementptr i8, ptr %inode, i32 -54
  %93 = ptrtoint ptr %clump_blocks.i164 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv31.i163, ptr %clump_blocks.i164, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv31.i163)
  %tobool.not.i165 = icmp eq i16 %conv31.i163, 0
  br i1 %tobool.not.i165, label %if.else35.if.end39.sink.split_crit_edge, label %if.else35.if.end39_crit_edge

if.else35.if.end39_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.else35.if.end39.sink.split_crit_edge:          ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.else35.if.end39.sink.split_crit_edge, %if.then33.if.end39.sink.split_crit_edge
  %s_fs_info.i156.sink = phi ptr [ %s_fs_info.i, %if.then33.if.end39.sink.split_crit_edge ], [ %s_fs_info.i156, %if.else35.if.end39.sink.split_crit_edge ]
  %clump_blocks.i164.sink = phi ptr [ %clump_blocks.i, %if.then33.if.end39.sink.split_crit_edge ], [ %clump_blocks.i164, %if.else35.if.end39.sink.split_crit_edge ]
  %94 = ptrtoint ptr %s_fs_info.i156.sink to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i156.sink, align 16
  %clumpablks.i166 = getelementptr inbounds %struct.hfs_sb_info, ptr %95, i32 0, i32 10
  %96 = ptrtoint ptr %clumpablks.i166 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %clumpablks.i166, align 4
  %conv40.i167 = trunc i32 %97 to i16
  %98 = ptrtoint ptr %clump_blocks.i164.sink to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv40.i167, ptr %clump_blocks.i164.sink, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.else35.if.end39_crit_edge, %if.then33.if.end39_crit_edge
  %FlNum = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 5
  %99 = ptrtoint ptr %FlNum to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %FlNum, align 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %101 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %i_ino, align 8
  %102 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 365, ptr %inode, align 8
  %Flags = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 2
  %103 = ptrtoint ptr %Flags to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %Flags, align 1
  %105 = and i8 %104, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool42.not = icmp eq i8 %105, 0
  %spec.store.select = select i1 %tobool42.not, i16 511, i16 365
  %106 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %spec.store.select, ptr %inode, align 8
  %s_file_umask = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 21
  %107 = ptrtoint ptr %s_file_umask to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %s_file_umask, align 4
  %neg = xor i16 %108, -1
  %and52 = and i16 %spec.store.select, %neg
  %109 = or i16 %and52, -32768
  store i16 %109, ptr %inode, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %MdDat = getelementptr inbounds %struct.hfs_cat_file, ptr %22, i32 0, i32 13
  %110 = ptrtoint ptr %MdDat to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %MdDat, align 1
  %sub.i170 = add i32 %111, -2082844800
  %conv.i = zext i32 %sub.i170 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %112 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %112, 60
  %conv1.i = sext i32 %mul.i to i64
  %add.i = add nsw i64 %conv1.i, %conv.i
  %113 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %add.i, ptr %i_mtime, align 8
  %.compoundliteral.sroa.2.0.i_mtime.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %114 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_mtime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %.compoundliteral.sroa.2.0.i_mtime.sroa_idx, align 8
  %115 = call ptr @memcpy(ptr %i_atime, ptr %i_mtime, i32 16)
  %116 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %117 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @hfs_file_inode_operations, ptr %i_op, align 8
  %118 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @hfs_file_operations, ptr %118, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %120 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %121, i32 0, i32 9
  %122 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @hfs_aops, ptr %a_ops, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %DirID = getelementptr inbounds %struct.hfs_cat_dir, ptr %22, i32 0, i32 4
  %123 = ptrtoint ptr %DirID to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %DirID, align 1
  %i_ino60 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %125 = ptrtoint ptr %i_ino60 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %i_ino60, align 8
  %Val = getelementptr inbounds %struct.hfs_cat_dir, ptr %22, i32 0, i32 3
  %126 = ptrtoint ptr %Val to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %Val, align 1
  %conv61 = zext i16 %127 to i32
  %add = add nuw nsw i32 %conv61, 2
  %128 = zext i32 %add to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %129 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %i_size, align 8
  %fs_blocks = getelementptr i8, ptr %inode, i32 -48
  %130 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 0, ptr %fs_blocks, align 8
  %s_dir_umask = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 22
  %131 = ptrtoint ptr %s_dir_umask to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %s_dir_umask, align 2
  %133 = and i16 %132, 511
  %134 = xor i16 %133, 16895
  %135 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %inode, align 8
  %i_ctime72 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_atime73 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %i_mtime74 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %MdDat77 = getelementptr inbounds %struct.hfs_cat_dir, ptr %22, i32 0, i32 6
  %136 = ptrtoint ptr %MdDat77 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %MdDat77, align 1
  %sub.i171 = add i32 %137, -2082844800
  %conv.i172 = zext i32 %sub.i171 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %138 = load i32, ptr @sys_tz, align 4
  %mul.i173 = mul i32 %138, 60
  %conv1.i174 = sext i32 %mul.i173 to i64
  %add.i175 = add nsw i64 %conv1.i174, %conv.i172
  %139 = ptrtoint ptr %i_mtime74 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %add.i175, ptr %i_mtime74, align 8
  %.compoundliteral75.sroa.2.0.i_mtime74.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %140 = ptrtoint ptr %.compoundliteral75.sroa.2.0.i_mtime74.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %.compoundliteral75.sroa.2.0.i_mtime74.sroa_idx, align 8
  %141 = call ptr @memcpy(ptr %i_atime73, ptr %i_mtime74, i32 16)
  %142 = call ptr @memcpy(ptr %i_ctime72, ptr %i_mtime74, i32 16)
  %i_op80 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %143 = ptrtoint ptr %i_op80 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @hfs_dir_inode_operations, ptr %i_op80, align 8
  %144 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @hfs_dir_operations, ptr %144, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @make_bad_inode(ptr noundef %inode) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb59, %if.end39
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hfs_inode_write_fork(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %ext, ptr noundef writeonly %log_size, ptr noundef writeonly %phys_size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %first_extents = getelementptr i8, ptr %inode, i32 -40
  %0 = call ptr @memcpy(ptr %ext, ptr %first_extents, i32 12)
  %tobool.not = icmp eq ptr %log_size, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %1 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %i_size, align 8
  %conv = trunc i64 %2 to i32
  %3 = ptrtoint ptr %log_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %log_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %phys_size, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %alloc_blocks = getelementptr i8, ptr %inode, i32 -56
  %4 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %alloc_blocks, align 8
  %conv6 = zext i16 %5 to i32
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  %alloc_blksz = getelementptr inbounds %struct.hfs_sb_info, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %alloc_blksz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_blksz, align 4
  %mul = mul i32 %11, %conv6
  %12 = ptrtoint ptr %phys_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %phys_size, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_write_inode(ptr noundef %inode, ptr nocapture noundef readnone %wbc) local_unnamed_addr #0 align 64 {
entry:
  %fd = alloca %struct.hfs_find_data, align 4
  %rec = alloca %union.hfs_cat_rec, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #9
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %rec) #9
  %1 = call ptr @memset(ptr %rec, i32 255, i32 102)
  %call = tail call i32 @hfs_ext_write_extent(ptr noundef %inode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ult i32 %3, 16
  br i1 %cmp, label %if.then1, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then1:                                         ; preds = %if.end
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %do.body6 [
    i32 2, label %if.then1.if.end12_crit_edge
    i32 3, label %sw.bb
    i32 4, label %sw.bb3
  ]

if.then1.if.end12_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

sw.bb:                                            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %ext_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %ext_tree to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext_tree, align 4
  tail call void @hfs_btree_write(ptr noundef %10) #9
  br label %cleanup

sw.bb3:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb4, align 4
  %s_fs_info5 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info5, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cat_tree, align 4
  tail call void @hfs_btree_write(ptr noundef %16) #9
  br label %cleanup

do.body6:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 444, 0\0A.popsection", ""() #9, !srcloc !41
  unreachable

if.end12:                                         ; preds = %if.then1.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %flags = getelementptr i8, ptr %inode, i32 -252
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.if.end18_crit_edge, label %if.then14

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %rsrc_inode = getelementptr i8, ptr %inode, i32 -152
  %19 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rsrc_inode, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end12.if.end18_crit_edge
  %main_inode.0 = phi ptr [ %20, %if.then14 ], [ %inode, %if.end12.if.end18_crit_edge ]
  %21 = getelementptr inbounds %struct.inode, ptr %main_inode.0, i32 0, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool19.not = icmp eq i32 %23, 0
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %i_sb22 = getelementptr inbounds %struct.inode, ptr %main_inode.0, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb22, align 4
  %s_fs_info23 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info23, align 16
  %cat_tree24 = getelementptr inbounds %struct.hfs_sb_info, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %cat_tree24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cat_tree24, align 4
  %call25 = call i32 @hfs_find_init(ptr noundef %29, ptr noundef nonnull %fd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %30 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %search_key, align 4
  %cat_key = getelementptr i8, ptr %main_inode.0, i32 -244
  %32 = call ptr @memcpy(ptr %31, ptr %cat_key, i32 38)
  %call32 = call i32 @hfs_brec_find(ptr noundef nonnull %fd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end35:                                         ; preds = %if.end28
  %33 = ptrtoint ptr %main_inode.0 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %main_inode.0, align 8
  %35 = and i16 %34, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %35)
  %cmp37 = icmp eq i16 %35, 16384
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end35
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %36 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %37)
  %cmp40 = icmp ult i32 %37, 70
  br i1 %cmp40, label %do.end53, label %if.then39.if.end59_crit_edge, !prof !39

if.then39.if.end59_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

do.end53:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 465, i32 noundef 9, ptr noundef null) #9
  br label %if.end59

if.end59:                                         ; preds = %do.end53, %if.then39.if.end59_crit_edge
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %38 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %40 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %entryoffset, align 4
  call void @hfs_bnode_read(ptr noundef %39, ptr noundef nonnull %rec, i32 noundef %41, i32 noundef 70) #9
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %42 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_mtime, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %44 = load i32, ptr @sys_tz, align 4
  %mul.neg.i = mul i32 %44, -60
  %45 = trunc i64 %43 to i32
  %conv1.i = add i32 %45, 2082844800
  %add.i = add i32 %conv1.i, %mul.neg.i
  %MdDat = getelementptr inbounds %struct.hfs_cat_dir, ptr %rec, i32 0, i32 6
  %46 = ptrtoint ptr %MdDat to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %add.i, ptr %MdDat, align 1
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %47 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_size, align 8
  %49 = trunc i64 %48 to i16
  %conv76 = add i16 %49, -2
  %Val = getelementptr inbounds %struct.hfs_cat_dir, ptr %rec, i32 0, i32 3
  %50 = ptrtoint ptr %Val to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %conv76, ptr %Val, align 1
  br label %out.sink.split

if.else:                                          ; preds = %if.end35
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %and83 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else90, label %if.then85

if.then85:                                        ; preds = %if.else
  %bnode86 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %53 = ptrtoint ptr %bnode86 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bnode86, align 4
  %entryoffset87 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %55 = ptrtoint ptr %entryoffset87 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %entryoffset87, align 4
  call void @hfs_bnode_read(ptr noundef %54, ptr noundef nonnull %rec, i32 noundef %56, i32 noundef 102) #9
  %RExtRec = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 18
  %RLgLen = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 10
  %RPyLen = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 11
  %first_extents.i = getelementptr i8, ptr %inode, i32 -40
  %57 = call ptr @memcpy(ptr %RExtRec, ptr %first_extents.i, i32 12)
  %tobool.not.i = icmp eq ptr %RLgLen, null
  br i1 %tobool.not.i, label %if.then85.if.end.i_crit_edge, label %if.then.i

if.then85.if.end.i_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %58 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_size.i, align 8
  %conv.i = trunc i64 %59 to i32
  %60 = ptrtoint ptr %RLgLen to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv.i, ptr %RLgLen, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then85.if.end.i_crit_edge
  %tobool1.not.i = icmp eq ptr %RPyLen, null
  br i1 %tobool1.not.i, label %if.end.i.out.sink.split_crit_edge, label %if.then2.i

if.end.i.out.sink.split_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %alloc_blocks.i = getelementptr i8, ptr %inode, i32 -56
  %61 = ptrtoint ptr %alloc_blocks.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %alloc_blocks.i, align 8
  %conv6.i = zext i16 %62 to i32
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %63 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 33
  %65 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i, align 16
  %alloc_blksz.i = getelementptr inbounds %struct.hfs_sb_info, ptr %66, i32 0, i32 17
  %67 = ptrtoint ptr %alloc_blksz.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %alloc_blksz.i, align 4
  %mul.i = mul i32 %68, %conv6.i
  %69 = ptrtoint ptr %RPyLen to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul.i, ptr %RPyLen, align 4
  br label %out.sink.split

if.else90:                                        ; preds = %if.else
  %entrylength92 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %70 = ptrtoint ptr %entrylength92 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %entrylength92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %71)
  %cmp93 = icmp ult i32 %71, 102
  br i1 %cmp93, label %do.end110, label %if.else90.if.end116_crit_edge, !prof !39

if.else90.if.end116_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

do.end110:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 485, i32 noundef 9, ptr noundef null) #9
  br label %if.end116

if.end116:                                        ; preds = %do.end110, %if.else90.if.end116_crit_edge
  %bnode124 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %72 = ptrtoint ptr %bnode124 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bnode124, align 4
  %entryoffset125 = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %74 = ptrtoint ptr %entryoffset125 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %entryoffset125, align 4
  call void @hfs_bnode_read(ptr noundef %73, ptr noundef nonnull %rec, i32 noundef %75, i32 noundef 102) #9
  %76 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %inode, align 8
  %Flags144 = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 2
  %78 = ptrtoint ptr %Flags144 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %Flags144, align 1
  %80 = and i8 %79, -2
  %81 = trunc i16 %77 to i8
  %82 = xor i8 %81, -1
  %83 = lshr i8 %82, 7
  %.sink = or i8 %80, %83
  store i8 %.sink, ptr %Flags144, align 1
  %ExtRec = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 17
  %LgLen = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 7
  %PyLen = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 8
  %first_extents.i180 = getelementptr i8, ptr %inode, i32 -40
  %84 = call ptr @memcpy(ptr %ExtRec, ptr %first_extents.i180, i32 12)
  %tobool.not.i181 = icmp eq ptr %LgLen, null
  br i1 %tobool.not.i181, label %if.end116.if.end.i186_crit_edge, label %if.then.i184

if.end116.if.end.i186_crit_edge:                  ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i186

if.then.i184:                                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %i_size.i182 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %85 = ptrtoint ptr %i_size.i182 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %i_size.i182, align 8
  %conv.i183 = trunc i64 %86 to i32
  %87 = ptrtoint ptr %LgLen to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv.i183, ptr %LgLen, align 4
  br label %if.end.i186

if.end.i186:                                      ; preds = %if.then.i184, %if.end116.if.end.i186_crit_edge
  %tobool1.not.i185 = icmp eq ptr %PyLen, null
  br i1 %tobool1.not.i185, label %if.end.i186.hfs_inode_write_fork.exit194_crit_edge, label %if.then2.i193

if.end.i186.hfs_inode_write_fork.exit194_crit_edge: ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #11
  br label %hfs_inode_write_fork.exit194

if.then2.i193:                                    ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #11
  %alloc_blocks.i187 = getelementptr i8, ptr %inode, i32 -56
  %88 = ptrtoint ptr %alloc_blocks.i187 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %alloc_blocks.i187, align 8
  %conv6.i188 = zext i16 %89 to i32
  %i_sb.i189 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %90 = ptrtoint ptr %i_sb.i189 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb.i189, align 4
  %s_fs_info.i190 = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 33
  %92 = ptrtoint ptr %s_fs_info.i190 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i190, align 16
  %alloc_blksz.i191 = getelementptr inbounds %struct.hfs_sb_info, ptr %93, i32 0, i32 17
  %94 = ptrtoint ptr %alloc_blksz.i191 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %alloc_blksz.i191, align 4
  %mul.i192 = mul i32 %95, %conv6.i188
  %96 = ptrtoint ptr %PyLen to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %mul.i192, ptr %PyLen, align 4
  br label %hfs_inode_write_fork.exit194

hfs_inode_write_fork.exit194:                     ; preds = %if.then2.i193, %if.end.i186.hfs_inode_write_fork.exit194_crit_edge
  %i_mtime149 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %97 = ptrtoint ptr %i_mtime149 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %i_mtime149, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %99 = load i32, ptr @sys_tz, align 4
  %mul.neg.i195 = mul i32 %99, -60
  %100 = trunc i64 %98 to i32
  %conv1.i196 = add i32 %100, 2082844800
  %add.i197 = add i32 %conv1.i196, %mul.neg.i195
  %MdDat152 = getelementptr inbounds %struct.hfs_cat_file, ptr %rec, i32 0, i32 13
  %101 = ptrtoint ptr %MdDat152 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %add.i197, ptr %MdDat152, align 1
  br label %out.sink.split

out.sink.split:                                   ; preds = %hfs_inode_write_fork.exit194, %if.then2.i, %if.end.i.out.sink.split_crit_edge, %if.end59
  %bnode.sink = phi ptr [ %bnode, %if.end59 ], [ %bnode124, %hfs_inode_write_fork.exit194 ], [ %bnode86, %if.end.i.out.sink.split_crit_edge ], [ %bnode86, %if.then2.i ]
  %entryoffset.sink = phi ptr [ %entryoffset, %if.end59 ], [ %entryoffset125, %hfs_inode_write_fork.exit194 ], [ %entryoffset87, %if.end.i.out.sink.split_crit_edge ], [ %entryoffset87, %if.then2.i ]
  %.sink200 = phi i32 [ 70, %if.end59 ], [ 102, %hfs_inode_write_fork.exit194 ], [ 102, %if.end.i.out.sink.split_crit_edge ], [ 102, %if.then2.i ]
  %102 = ptrtoint ptr %bnode.sink to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bnode.sink, align 4
  %104 = ptrtoint ptr %entryoffset.sink to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %entryoffset.sink, align 4
  call void @hfs_bnode_write(ptr noundef %103, ptr noundef nonnull %rec, i32 noundef %105, i32 noundef %.sink200) #9
  br label %out

out:                                              ; preds = %out.sink.split, %if.end28.out_crit_edge
  call void @hfs_find_exit(ptr noundef nonnull %fd) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end21.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ 0, %out ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ -5, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %rec) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_ext_write_extent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_btree_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_find(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_find_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #9
  tail call void @clear_inode(ptr noundef %inode) #9
  %flags = getelementptr i8, ptr %inode, i32 -252
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rsrc_inode = getelementptr i8, ptr %inode, i32 -152
  %2 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsrc_inode, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %rsrc_inode12 = getelementptr i8, ptr %3, i32 -152
  %4 = ptrtoint ptr %rsrc_inode12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rsrc_inode12, align 8
  %5 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rsrc_inode, align 8
  tail call void @iput(ptr noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_inode_setattr(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %call1 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %s_uid = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 23
  %8 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack129 = load i32, ptr %ia_uid, align 8
  %9 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack130 = load i32, ptr %s_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack129, i32 %.unpack130)
  %cmp.i = icmp eq i32 %.unpack129, %.unpack130
  br i1 %cmp.i, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %and6 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false.lor.lhs.false12_crit_edge, label %land.lhs.true8

lor.lhs.false.lor.lhs.false12_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false12

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %s_gid = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 24
  %10 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %ia_gid, align 4
  %11 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack128 = load i32, ptr %s_gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack128)
  %cmp.i131 = icmp eq i32 %.unpack, %.unpack128
  br i1 %cmp.i131, label %land.lhs.true8.lor.lhs.false12_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true8.lor.lhs.false12_crit_edge:         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %land.lhs.true8.lor.lhs.false12_crit_edge, %lor.lhs.false.lor.lhs.false12_crit_edge
  %and14 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false12.if.end68_crit_edge, label %land.lhs.true16

lor.lhs.false12.if.end68_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true16:                                  ; preds = %lor.lhs.false12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %14)
  %cmp = icmp eq i16 %14, 16384
  br i1 %cmp, label %land.lhs.true19, label %land.lhs.true16.lor.lhs.false25_crit_edge

land.lhs.true16.lor.lhs.false25_crit_edge:        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false25

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %15 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ia_mode, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %13)
  %cmp23.not = icmp eq i16 %16, %13
  br i1 %cmp23.not, label %land.lhs.true19.lor.lhs.false25_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true19.lor.lhs.false25_crit_edge:        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true19.lor.lhs.false25_crit_edge, %land.lhs.true16.lor.lhs.false25_crit_edge
  %ia_mode26 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %17 = ptrtoint ptr %ia_mode26 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ia_mode26, align 4
  %19 = and i16 %18, 15872
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool29.not = icmp eq i16 %19, 0
  br i1 %tobool29.not, label %if.then36, label %lor.lhs.false25.cleanup_crit_edge

lor.lhs.false25.cleanup_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %ia_mode26 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ia_mode26, align 4
  %22 = and i16 %21, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool40.not = icmp eq i16 %22, 0
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 8
  %25 = and i16 %24, -147
  %masksel = select i1 %tobool40.not, i16 0, i16 146
  %storemerge = or i16 %25, %masksel
  %26 = ptrtoint ptr %ia_mode26 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge, ptr %ia_mode26, align 4
  %27 = load i16, ptr %1, align 8
  %28 = and i16 %27, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %28)
  %cmp55 = icmp eq i16 %28, 16384
  %s_dir_umask = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 22
  %s_file_umask = getelementptr inbounds %struct.hfs_sb_info, ptr %5, i32 0, i32 21
  %cond63.in.in.in = select i1 %cmp55, ptr %s_dir_umask, ptr %s_file_umask
  %29 = ptrtoint ptr %cond63.in.in.in to i32
  call void @__asan_load2_noabort(i32 %29)
  %cond63.in.in = load i16, ptr %cond63.in.in.in, align 2
  %cond63 = xor i16 %cond63.in.in, -1
  %and66 = and i16 %storemerge, %cond63
  %30 = ptrtoint ptr %ia_mode26 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %and66, ptr %ia_mode26, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then36, %lor.lhs.false12.if.end68_crit_edge
  %and70 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end68.if.end83_crit_edge, label %land.lhs.true72

if.end68.if.end83_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

land.lhs.true72:                                  ; preds = %if.end68
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %31 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ia_size, align 8
  %call73 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %call73)
  %cmp74.not = icmp eq i64 %32, %call73
  br i1 %cmp74.not, label %land.lhs.true72.if.end83_crit_edge, label %if.then76

land.lhs.true72.if.end83_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then76:                                        ; preds = %land.lhs.true72
  tail call void @inode_dio_wait(ptr noundef %1) #9
  %33 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ia_size, align 8
  %call78 = tail call i32 @inode_newsize_ok(ptr noundef %1, i64 noundef %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.then76.cleanup_crit_edge

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end81:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ia_size, align 8
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %36) #9
  tail call void @hfs_file_truncate(ptr noundef %1) #9
  %i_atime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #9
  %37 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %38 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %39 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  br label %if.end83

if.end83:                                         ; preds = %if.end81, %land.lhs.true72.if.end83_crit_edge, %if.end68.if.end83_crit_edge
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #9
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then76.cleanup_crit_edge, %lor.lhs.false25.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end83 ], [ %call1, %entry.cleanup_crit_edge ], [ %call78, %if.then76.cleanup_crit_edge ], [ 0, %lor.lhs.false25.cleanup_crit_edge ], [ 0, %land.lhs.true19.cleanup_crit_edge ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !42
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !43
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !39

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !44
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !46
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cont_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfs_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %to)
  %cmp = icmp slt i64 %3, %to
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #9
  tail call void @hfs_file_truncate(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfs_bnode_findhash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_unhash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_file_open(ptr noundef %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %inode, i32 -252
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rsrc_inode = getelementptr i8, ptr %inode, i32 -152
  %2 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsrc_inode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inode.addr.0 = phi ptr [ %3, %if.then ], [ %inode, %entry.if.end_crit_edge ]
  %add.ptr6 = getelementptr i8, ptr %inode.addr.0, i32 -256
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr6, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %add.ptr6, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr6, ptr %add.ptr6, i32 1, ptr elementtype(i32) %add.ptr6) #9, !srcloc !49
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_file_release(ptr noundef %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %inode, i32 -252
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rsrc_inode = getelementptr i8, ptr %inode, i32 -152
  %2 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsrc_inode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inode.addr.0 = phi ptr [ %3, %if.then ], [ %inode, %entry.if.end_crit_edge ]
  %add.ptr6 = getelementptr i8, ptr %inode.addr.0, i32 -256
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr6, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %add.ptr6, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr6, ptr %add.ptr6, i32 1, ptr elementtype(i32) %add.ptr6) #9, !srcloc !51
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode.addr.0, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  tail call void @hfs_file_truncate(ptr noundef %inode.addr.0) #9
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_file_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @file_write_and_wait_range(ptr noundef %filp, i64 noundef %start, i64 noundef %end) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %call1 = tail call i32 @write_inode_now(ptr noundef %3, i32 noundef 0) #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %mdb_work = getelementptr inbounds %struct.hfs_sb_info, ptr %7, i32 0, i32 35
  %call2 = tail call zeroext i1 @flush_delayed_work(ptr noundef %mdb_work) #9
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev, align 4
  %call3 = tail call i32 @sync_blockdev(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool4.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool4.not, i32 %call3, i32 %call1
  tail call void @up_write(ptr noundef %i_rwsem.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hfs_file_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %rec = alloca %union.hfs_cat_rec, align 1
  %fd = alloca %struct.hfs_find_data, align 4
  %idata = alloca %struct.hfs_iget_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %rec) #9
  %0 = call ptr @memset(ptr %rec, i32 255, i32 102)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #9
  %1 = call ptr @memset(ptr %fd, i32 255, i32 36)
  %flags1 = getelementptr i8, ptr %dir, i32 -252
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %call = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(5) @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %rsrc_inode = getelementptr i8, ptr %dir, i32 -152
  %6 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rsrc_inode, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %call9 = tail call ptr @new_inode(ptr noundef %9) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cat_tree, align 4
  %call15 = call i32 @hfs_find_init(ptr noundef %15, ptr noundef nonnull %fd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @iput(ptr noundef nonnull %call9) #9
  %16 = inttoptr i32 %call15 to ptr
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %17 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %search_key, align 4
  %cat_key = getelementptr i8, ptr %dir, i32 -244
  %19 = call ptr @memcpy(ptr %18, ptr %cat_key, i32 38)
  %call23 = call i32 @hfs_brec_read(ptr noundef nonnull %fd, ptr noundef nonnull %rec, i32 noundef 102) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.then30.critedge

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %idata) #9
  %20 = getelementptr inbounds %struct.hfs_iget_data, ptr %idata, i32 0, i32 1
  %21 = ptrtoint ptr %idata to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %idata, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rec, ptr %20, align 4
  %call27 = call i32 @hfs_read_inode(ptr noundef nonnull %call9, ptr noundef nonnull %idata)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %idata) #9
  call void @hfs_find_exit(ptr noundef nonnull %fd) #9
  %rsrc_inode36 = getelementptr i8, ptr %call9, i32 -152
  %23 = ptrtoint ptr %rsrc_inode36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dir, ptr %rsrc_inode36, align 8
  %24 = ptrtoint ptr %rsrc_inode to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9, ptr %rsrc_inode, align 8
  %call41 = call ptr @igrab(ptr noundef %dir) #9
  %i_hash.i = getelementptr inbounds %struct.inode, ptr %call9, i32 0, i32 28
  %pprev.i.i = getelementptr inbounds %struct.inode, ptr %call9, i32 0, i32 28, i32 1
  %25 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %i_hash.i, ptr %pprev.i.i, align 4
  call void @__mark_inode_dirty(ptr noundef nonnull %call9, i32 noundef 7) #9
  call fastcc void @dont_mount(ptr noundef %dentry)
  br label %out

if.then30.critedge:                               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @hfs_find_exit(ptr noundef nonnull %fd) #9
  call void @iput(ptr noundef nonnull %call9) #9
  %26 = inttoptr i32 %call23 to ptr
  br label %cleanup

out:                                              ; preds = %if.then25, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %inode.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ %7, %if.end.out_crit_edge ], [ %call9, %if.then25 ]
  %call42 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then30.critedge, %if.then17, %if.end8.cleanup_crit_edge
  %retval.0 = phi ptr [ %call42, %out ], [ %16, %if.then17 ], [ %26, %if.then30.critedge ], [ inttoptr (i32 -12 to ptr), %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #9
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %rec) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_listxattr(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dont_mount(ptr noundef %dentry) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #9
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %or = or i32 %1, 256
  store i32 %or, ptr %dentry, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @hfs_btree_aops, !1, !"hfs_btree_aops", i1 false, i1 false}
!1 = !{!"../fs/hfs/inode.c", i32 161, i32 39}
!2 = !{ptr @hfs_aops, !3, !"hfs_aops", i1 false, i1 false}
!3 = !{!"../fs/hfs/inode.c", i32 171, i32 39}
!4 = !{ptr @hfs_new_inode.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../fs/hfs/inode.c", i32 192, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @hfs_new_inode.__key.1, !8, !"__key", i1 false, i1 false}
!8 = !{!"../fs/hfs/inode.c", i32 194, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../fs/hfs/inode.c", i32 198, i32 17}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../fs/hfs/inode.c", i32 199, i32 17}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/hfs/inode.c", i32 465, i32 3}
!16 = !{ptr @hfs_read_inode.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../fs/hfs/inode.c", i32 324, i32 2}
!18 = !{ptr @hfs_read_inode.__key.5, !19, !"__key", i1 false, i1 false}
!19 = !{!"../fs/hfs/inode.c", i32 326, i32 2}
!20 = !{ptr @hfs_file_operations, !21, !"hfs_file_operations", i1 false, i1 false}
!21 = !{!"../fs/hfs/inode.c", i32 683, i32 37}
!22 = !{ptr @hfs_file_inode_operations, !23, !"hfs_file_inode_operations", i1 false, i1 false}
!23 = !{!"../fs/hfs/inode.c", i32 694, i32 38}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/hfs/inode.c", i32 515, i32 54}
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
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2154448091, i64 2154448569, i64 2154448128, i64 2154448184, i64 2154448218, i64 2154448242, i64 2154448283, i64 2154448304, i64 2154448332, i64 2154448366}
!38 = !{i8 0, i8 2}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2154494491, i64 2154494970, i64 2154494528, i64 2154494584, i64 2154494618, i64 2154494642, i64 2154494683, i64 2154494704, i64 2154494732, i64 2154494766}
!41 = !{i64 2154520225, i64 2154520704, i64 2154520262, i64 2154520318, i64 2154520352, i64 2154520376, i64 2154520417, i64 2154520438, i64 2154520466, i64 2154520500}
!42 = !{i64 1125695, i64 1125756}
!43 = !{i64 1128427}
!44 = !{i64 1128712}
!45 = !{i64 2153111597}
!46 = !{i64 2153111439}
!47 = !{i64 2153111767}
!48 = !{i64 2149898876}
!49 = !{i64 2148721015, i64 2148721041, i64 2148721070, i64 2148721104, i64 2148721135, i64 2148721158}
!50 = !{i64 2148809491}
!51 = !{i64 2148724200, i64 2148724232, i64 2148724261, i64 2148724295, i64 2148724326, i64 2148724349}
!52 = !{i64 2148809720}
