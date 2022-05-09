; ModuleID = '/llk/IR_all_yes/fs/ext2/inode.c_pt.bc'
source_filename = "../fs/ext2/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iomap_ops = type { ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.80 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ext2_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, %struct.spinlock, i32, i32, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.spinlock, %struct.rb_root, %struct.ext2_reserve_window_node, %struct.spinlock, ptr, ptr, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ext2_reserve_window_node = type { %struct.rb_node, i32, i32, %struct.ext2_reserve_window }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext2_reserve_window = type { i32, i32 }
%struct.ext2_inode = type { i16, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, %union.anon.83, [15 x i32], i32, i32, i32, i32, %union.anon.87 }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i32 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i8, i8, i16, i16, i16, i32 }
%struct.ext2_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, [190 x i32] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.Indirect = type { ptr, i32, ptr }
%struct.ext2_block_alloc_info = type { %struct.ext2_reserve_window_node, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.65 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.21, %union.anon.22 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.ext2_group_desc = type { i32, i32, i32, i16, i16, i16, i16, [3 x i32] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@ext2_iomap_ops = dso_local constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @ext2_iomap_begin, ptr @ext2_iomap_end }, [24 x i8] zeroinitializer }, align 32
@ext2_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ext2_writepage, ptr @ext2_readpage, ptr @ext2_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @ext2_readahead, ptr @ext2_write_begin, ptr @ext2_write_end, ptr @ext2_bmap, ptr null, ptr null, ptr null, ptr @ext2_direct_IO, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ext2_nobh_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ext2_nobh_writepage, ptr @ext2_readpage, ptr @ext2_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @ext2_readahead, ptr @ext2_nobh_write_begin, ptr @nobh_write_end, ptr @ext2_bmap, ptr null, ptr null, ptr null, ptr @ext2_direct_IO, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ext2_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ext2_file_operations = external dso_local constant %struct.file_operations, align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ext2_iget\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bad extended attribute block %u\00", [32 x i8] zeroinitializer }, align 32
@ext2_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ext2_dir_operations = external dso_local constant %struct.file_operations, align 4
@ext2_fast_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ext2_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ext2_special_inode_operations = external dso_local constant %struct.inode_operations, align 128
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"warning: %s: block < 0\00", [41 x i8] zeroinitializer }, align 32
@__func__.ext2_block_to_path = private unnamed_addr constant [19 x i8] c"ext2_block_to_path\00", align 1
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"warning: %s: block is too big\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ext2_free_branches\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Read failure, inode=%ld, block=%ld\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ext2_get_inode\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad inode number: %lu\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unable to read inode block - inode=%lu, block=%lu\00", [46 x i8] zeroinitializer }, align 32
@fs_overflowuid = external dso_local local_unnamed_addr global i32, align 4
@fs_overflowgid = external dso_local local_unnamed_addr global i32, align 4
@__ext2_write_inode._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 1635, ptr null, ptr null }, align 1
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IO error syncing ext2 inode [%s:%08lx]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__ext2_write_inode\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ext2/inode.c\00", [16 x i8] zeroinitializer }, align 32
@__ext2_write_inode._entry_ptr = internal global ptr @__ext2_write_inode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 13, i64 14]
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"ext2_iomap_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 855, i32 24 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"ext2_aops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 969, i32 39 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"ext2_nobh_aops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 984, i32 39 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1471, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1471, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 49, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 34, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 176, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 177, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 198, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 366, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1169, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1170, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1365, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1365, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1370, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [19 x i8] c"../fs/ext2/inode.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1634, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ext2_write_inode._entry, ptr @__ext2_write_inode._entry_ptr, ptr @ext2_iomap_ops, ptr @ext2_aops, ptr @ext2_nobh_aops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_iomap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_nobh_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end.thread_crit_edge

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #10
  br i1 %call, label %land.lhs.true.if.end.thread_crit_edge, label %if.then3

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread

if.end.thread:                                    ; preds = %land.lhs.true.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  tail call void @dquot_drop(ptr noundef %inode) #10
  %i_data71 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data71) #10
  br label %if.end11

if.then3:                                         ; preds = %land.lhs.true
  %call1 = tail call i32 @dquot_initialize(ptr noundef %inode) #10
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %4, i32 0, i32 32, i32 2, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 49) #10
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %4, i32 0, i32 32, i32 2, i32 2, i32 5
  %5 = tail call ptr @llvm.returnaddress(i32 0) #10
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %6) #10
  %7 = tail call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.then3.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.then3.rcu_sync_is_idle.exit.i.i.i_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then3
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 35, ptr noundef nonnull @.str.4) #10
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.then3.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %11 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !55

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !56
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %4, i32 0, i32 32, i32 2, i32 2, i32 1
  %14 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_count.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %22, %16
  %23 = inttoptr i32 %add.i.i.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add21.i.i.i = add i32 %25, 1
  store i32 %add21.i.i.i, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !57
  %and.i.i.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !58

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #10, !srcloc !59
  br label %sb_start_intwrite.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #10
  br label %sb_start_intwrite.exit

sb_start_intwrite.exit:                           ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !60
  %27 = tail call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i.i.i58.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  %call4 = tail call i64 @ktime_get_real_seconds() #10
  %conv = trunc i64 %call4 to i32
  %i_dtime = getelementptr i8, ptr %inode, i32 -248
  %31 = ptrtoint ptr %i_dtime to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %i_dtime, align 8
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  %call6 = tail call i32 @inode_needs_sync(ptr noundef %inode) #10
  %call7 = tail call fastcc i32 @__ext2_write_inode(ptr noundef %inode, i32 noundef %call6)
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %32 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %i_size, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %33 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool8.not = icmp eq i64 %34, 0
  br i1 %tobool8.not, label %sb_start_intwrite.exit.if.end10_crit_edge, label %if.then9

sb_start_intwrite.exit.if.end10_crit_edge:        ; preds = %sb_start_intwrite.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %sb_start_intwrite.exit
  %35 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %inode, align 8
  %37 = and i16 %36, -4096
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i16 %37, label %if.then9.if.end10_crit_edge [
    i16 -32768, label %if.then9.if.end.i_crit_edge
    i16 16384, label %if.then9.if.end.i_crit_edge73
    i16 -24576, label %if.then9.if.end.i_crit_edge74
  ]

if.then9.if.end.i_crit_edge74:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then9.if.end.i_crit_edge73:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end.i:                                         ; preds = %if.then9.if.end.i_crit_edge, %if.then9.if.end.i_crit_edge73, %if.then9.if.end.i_crit_edge74
  %i_file_acl.i.i = getelementptr i8, ptr %inode, i32 -256
  %39 = ptrtoint ptr %i_file_acl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_file_acl.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.end.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end.i.cond.end.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_blocksize.i.i, align 16
  %shr.i.i = lshr i32 %44, 9
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %shr.i.i, %cond.true.i.i ], [ 0, %if.end.i.cond.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %37)
  %cmp.i.i = icmp eq i16 %37, -24576
  %45 = zext i32 %cond.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %45)
  %cmp3.i.not.i = icmp eq i64 %34, %45
  %or.cond = select i1 %cmp.i.i, i1 %cmp3.i.not.i, i1 false
  br i1 %or.cond, label %cond.end.i.i.if.end10_crit_edge, label %if.end14.i

cond.end.i.i.if.end10_crit_edge:                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end14.i:                                       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %46 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i.i = getelementptr inbounds %struct.address_space, ptr %47, i32 0, i32 2
  tail call void @down_write(ptr noundef %invalidate_lock.i.i) #10
  tail call fastcc void @__ext2_truncate_blocks(ptr noundef %inode, i64 noundef 0) #10
  %48 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i22.i = getelementptr inbounds %struct.address_space, ptr %49, i32 0, i32 2
  tail call void @up_write(ptr noundef %invalidate_lock.i22.i) #10
  br label %if.end10

if.end10:                                         ; preds = %if.end14.i, %cond.end.i.i.if.end10_crit_edge, %if.then9.if.end10_crit_edge, %sb_start_intwrite.exit.if.end10_crit_edge
  tail call void @ext2_xattr_delete_inode(ptr noundef %inode) #10
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end.thread
  %tobool2.not72 = phi i1 [ true, %if.end.thread ], [ false, %if.end10 ]
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #10
  tail call void @clear_inode(ptr noundef %inode) #10
  tail call void @ext2_discard_reservation(ptr noundef %inode) #10
  %i_block_alloc_info = getelementptr i8, ptr %inode, i32 -240
  %50 = ptrtoint ptr %i_block_alloc_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_block_alloc_info, align 8
  store ptr null, ptr %i_block_alloc_info, align 8
  %tobool15.not = icmp eq ptr %51, null
  br i1 %tobool15.not, label %if.end11.if.end19_crit_edge, label %if.then18, !prof !55

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %51) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end11.if.end19_crit_edge
  br i1 %tobool2.not72, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  tail call void @ext2_free_inode(ptr noundef %inode) #10
  %i_sb22 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %52 = ptrtoint ptr %i_sb22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb22, align 4
  %add.ptr1.i.i48 = getelementptr %struct.super_block, ptr %53, i32 0, i32 32, i32 2, i32 2
  %dep_map.i.i.i49 = getelementptr %struct.super_block, ptr %53, i32 0, i32 32, i32 2, i32 2, i32 5
  %54 = tail call ptr @llvm.returnaddress(i32 0) #10
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i49, i32 noundef %55) #10
  %56 = tail call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i.i.i.i.i.i50 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i.i51, align 4
  %add.i.i.i.i52 = add i32 %59, 1
  store volatile i32 %add.i.i.i.i52, ptr %preempt_count.i.i.i.i.i51, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  %call.i.i.i.i53 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i53)
  %tobool.not.i.i.i.i54 = icmp eq i32 %call.i.i.i.i53, 0
  br i1 %tobool.not.i.i.i.i54, label %land.lhs.true.i.i.i.i57, label %if.then21.rcu_sync_is_idle.exit.i.i.i62_crit_edge

if.then21.rcu_sync_is_idle.exit.i.i.i62_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_sync_is_idle.exit.i.i.i62

land.lhs.true.i.i.i.i57:                          ; preds = %if.then21
  %call1.i.i.i.i55 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i55)
  %tobool2.not.i.i.i.i56 = icmp eq i32 %call1.i.i.i.i55, 0
  br i1 %tobool2.not.i.i.i.i56, label %land.lhs.true.i.i.i.i57.rcu_sync_is_idle.exit.i.i.i62_crit_edge, label %land.lhs.true3.i.i.i.i59

land.lhs.true.i.i.i.i57.rcu_sync_is_idle.exit.i.i.i62_crit_edge: ; preds = %land.lhs.true.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_sync_is_idle.exit.i.i.i62

land.lhs.true3.i.i.i.i59:                         ; preds = %land.lhs.true.i.i.i.i57
  %.b8.i.i.i.i58 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i58, label %land.lhs.true3.i.i.i.i59.rcu_sync_is_idle.exit.i.i.i62_crit_edge, label %if.then.i.i.i.i60

land.lhs.true3.i.i.i.i59.rcu_sync_is_idle.exit.i.i.i62_crit_edge: ; preds = %land.lhs.true3.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_sync_is_idle.exit.i.i.i62

if.then.i.i.i.i60:                                ; preds = %land.lhs.true3.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 35, ptr noundef nonnull @.str.4) #10
  br label %rcu_sync_is_idle.exit.i.i.i62

rcu_sync_is_idle.exit.i.i.i62:                    ; preds = %if.then.i.i.i.i60, %land.lhs.true3.i.i.i.i59.rcu_sync_is_idle.exit.i.i.i62_crit_edge, %land.lhs.true.i.i.i.i57.rcu_sync_is_idle.exit.i.i.i62_crit_edge, %if.then21.rcu_sync_is_idle.exit.i.i.i62_crit_edge
  %60 = ptrtoint ptr %add.ptr1.i.i48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %add.ptr1.i.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool7.not.i.i.i.i61 = icmp eq i32 %61, 0
  br i1 %tobool7.not.i.i.i.i61, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !55

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i62
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !56
  %read_count.i.i.i63 = getelementptr %struct.super_block, ptr %53, i32 0, i32 32, i32 2, i32 2, i32 1
  %63 = ptrtoint ptr %read_count.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read_count.i.i.i63, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = tail call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i.i.i.i64 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i64 to ptr
  %cpu.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %cpu.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu.i.i.i65, align 4
  %arrayidx.i.i.i66 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i.i66, align 4
  %add.i.i.i67 = add i32 %71, %65
  %72 = inttoptr i32 %add.i.i.i67 to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %add17.i.i.i = add i32 %74, -1
  store i32 %add17.i.i.i, ptr %72, align 4
  %75 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !57
  %and.i.i.i.i.i68 = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i68)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i68, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !58

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #10, !srcloc !59
  br label %sb_end_intwrite.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  %76 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !56
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %53, i32 0, i32 32, i32 2, i32 2, i32 1
  %77 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %read_count75.i.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i122.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %85, %79
  %86 = inttoptr i32 %add80.i.i.i to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %add81.i.i.i = add i32 %88, -1
  store i32 %add81.i.i.i, ptr %86, align 4
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !57
  %and.i.i123.i.i.i = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !58

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %76) #10, !srcloc !59
  %writer.i.i.i = getelementptr %struct.super_block, ptr %53, i32 0, i32 32, i32 2, i32 2, i32 2
  %call111.i.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #10
  br label %sb_end_intwrite.exit

sb_end_intwrite.exit:                             ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  %90 = tail call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i.i.i120.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i69 = add i32 %93, -1
  store volatile i32 %sub.i.i.i.i69, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %sb_end_intwrite.exit, %if.end19.if.end23_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ext2_write_inode(ptr nocapture noundef %inode, i32 noundef %do_sync) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %4 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %6 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %7 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %5, [1 x i32] %7) #10
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i258 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %s_user_ns.i.i258 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_user_ns.i.i258, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %12 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack.i259 = load i32, ptr %i_gid.i, align 8
  %13 = insertvalue [1 x i32] undef, i32 %.unpack.i259, 0
  %call1.i260 = tail call i32 @from_kgid(ptr noundef %11, [1 x i32] %13) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #10
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !64
  %call3 = call fastcc ptr @ext2_get_inode(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %bh)
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr i8, ptr %inode, i32 -258
  %15 = ptrtoint ptr %i_state to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %i_state, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_inode_size = getelementptr inbounds %struct.ext2_sb_info, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_inode_size, align 8
  %22 = call ptr @memset(ptr %call3, i32 0, i32 %21)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %23 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %inode, align 8
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %26 = ptrtoint ptr %call3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %call3, align 4
  %s_fs_info.i261 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i261 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i261, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_mount_opt, align 4
  %and10 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else30

if.then12:                                        ; preds = %if.end7
  %conv14 = trunc i32 %call1.i to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv14)
  %i_uid = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 1
  %32 = ptrtoint ptr %i_uid to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %i_uid, align 2
  %conv16 = trunc i32 %call1.i260 to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %i_gid = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 7
  %34 = ptrtoint ptr %i_gid to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %i_gid, align 4
  %i_dtime = getelementptr i8, ptr %inode, i32 -248
  %35 = ptrtoint ptr %i_dtime to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_dtime, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool17.not = icmp eq i32 %36, 0
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %call1.i, 16
  %conv20 = trunc i32 %shr to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %l_i_uid_high = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 17, i32 0, i32 3
  %38 = ptrtoint ptr %l_i_uid_high to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %l_i_uid_high, align 4
  %shr22 = lshr i32 %call1.i260, 16
  %conv23 = trunc i32 %shr22 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv23)
  br label %if.end55

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %l_i_uid_high26 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 17, i32 0, i32 3
  %40 = ptrtoint ptr %l_i_uid_high26 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %l_i_uid_high26, align 4
  br label %if.end55

if.else30:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1.i)
  %tobool32.not = icmp ult i32 %call1.i, 65536
  br i1 %tobool32.not, label %if.else30.cond.end_crit_edge, label %cond.true

if.else30.cond.end_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_overflowuid to i32))
  %41 = load i32, ptr @fs_overflowuid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.else30.cond.end_crit_edge
  %cond.in = phi i32 [ %41, %cond.true ], [ %call1.i, %if.else30.cond.end_crit_edge ]
  %conv37 = trunc i32 %cond.in to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv37)
  %i_uid38 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 1
  %43 = ptrtoint ptr %i_uid38 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %i_uid38, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call1.i260)
  %tobool40.not = icmp ult i32 %call1.i260, 65536
  br i1 %tobool40.not, label %cond.end.cond.end47_crit_edge, label %cond.true41

cond.end.cond.end47_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end47

cond.true41:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_overflowgid to i32))
  %44 = load i32, ptr @fs_overflowgid, align 4
  br label %cond.end47

cond.end47:                                       ; preds = %cond.true41, %cond.end.cond.end47_crit_edge
  %cond48.in = phi i32 [ %44, %cond.true41 ], [ %call1.i260, %cond.end.cond.end47_crit_edge ]
  %conv49 = trunc i32 %cond48.in to i16
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv49)
  %i_gid50 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 7
  %46 = ptrtoint ptr %i_gid50 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %i_gid50, align 4
  %l_i_uid_high52 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 17, i32 0, i32 3
  %47 = ptrtoint ptr %l_i_uid_high52 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %l_i_uid_high52, align 4
  br label %if.end55

if.end55:                                         ; preds = %cond.end47, %if.else, %if.then18
  %.sink = phi i16 [ %39, %if.then18 ], [ 0, %if.else ], [ 0, %cond.end47 ]
  %l_i_gid_high = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 17, i32 0, i32 4
  %48 = ptrtoint ptr %l_i_gid_high to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %.sink, ptr %l_i_gid_high, align 2
  %49 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %conv56 = trunc i32 %51 to i16
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv56)
  %i_links_count = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 8
  %53 = ptrtoint ptr %i_links_count to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %i_links_count, align 2
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %54 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_size, align 8
  %conv57 = trunc i64 %55 to i32
  %56 = tail call i32 @llvm.bswap.i32(i32 %conv57)
  %i_size58 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 2
  %57 = ptrtoint ptr %i_size58 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %i_size58, align 4
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %58 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_atime, align 8
  %conv59 = trunc i64 %59 to i32
  %60 = tail call i32 @llvm.bswap.i32(i32 %conv59)
  %i_atime60 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 3
  %61 = ptrtoint ptr %i_atime60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %i_atime60, align 4
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %62 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %i_ctime, align 8
  %conv62 = trunc i64 %63 to i32
  %64 = tail call i32 @llvm.bswap.i32(i32 %conv62)
  %i_ctime63 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 4
  %65 = ptrtoint ptr %i_ctime63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %i_ctime63, align 4
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %66 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %i_mtime, align 8
  %conv65 = trunc i64 %67 to i32
  %68 = tail call i32 @llvm.bswap.i32(i32 %conv65)
  %i_mtime66 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 5
  %69 = ptrtoint ptr %i_mtime66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %i_mtime66, align 4
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %70 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %i_blocks, align 8
  %conv67 = trunc i64 %71 to i32
  %72 = tail call i32 @llvm.bswap.i32(i32 %conv67)
  %i_blocks68 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 9
  %73 = ptrtoint ptr %i_blocks68 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %i_blocks68, align 4
  %i_dtime69 = getelementptr i8, ptr %inode, i32 -248
  %74 = ptrtoint ptr %i_dtime69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_dtime69, align 8
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %i_dtime70 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 6
  %77 = ptrtoint ptr %i_dtime70 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %i_dtime70, align 4
  %i_flags = getelementptr i8, ptr %inode, i32 -268
  %78 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_flags, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %i_flags71 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 10
  %81 = ptrtoint ptr %i_flags71 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %i_flags71, align 4
  %i_faddr = getelementptr i8, ptr %inode, i32 -264
  %82 = ptrtoint ptr %i_faddr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_faddr, align 8
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %i_faddr72 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 16
  %85 = ptrtoint ptr %i_faddr72 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %i_faddr72, align 4
  %i_frag_no = getelementptr i8, ptr %inode, i32 -260
  %86 = ptrtoint ptr %i_frag_no to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %i_frag_no, align 4
  %osd273 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 17
  %88 = ptrtoint ptr %osd273 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %osd273, align 4
  %i_frag_size = getelementptr i8, ptr %inode, i32 -259
  %89 = ptrtoint ptr %i_frag_size to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %i_frag_size, align 1
  %l_i_fsize = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 17, i32 0, i32 1
  %91 = ptrtoint ptr %l_i_fsize to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %l_i_fsize, align 1
  %i_file_acl = getelementptr i8, ptr %inode, i32 -256
  %92 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %i_file_acl, align 8
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %i_file_acl75 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 14
  %95 = ptrtoint ptr %i_file_acl75 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %i_file_acl75, align 4
  %96 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %inode, align 8
  %98 = and i16 %97, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %98)
  %cmp = icmp eq i16 %98, -32768
  br i1 %cmp, label %if.else82, label %if.then80

if.then80:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %i_dir_acl = getelementptr i8, ptr %inode, i32 -252
  %99 = ptrtoint ptr %i_dir_acl to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %i_dir_acl, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %i_dir_acl81 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 15
  %102 = ptrtoint ptr %i_dir_acl81 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %i_dir_acl81, align 4
  br label %if.end109

if.else82:                                        ; preds = %if.end55
  %103 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %i_size, align 8
  %105 = lshr i64 %104, 32
  %conv85 = trunc i64 %105 to i32
  %106 = tail call i32 @llvm.bswap.i32(i32 %conv85)
  %i_dir_acl86 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 15
  %107 = ptrtoint ptr %i_dir_acl86 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %i_dir_acl86, align 4
  %108 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %109)
  %cmp88 = icmp ugt i64 %109, 2147483647
  br i1 %cmp88, label %if.then90, label %if.else82.if.end109_crit_edge

if.else82.if.end109_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then90:                                        ; preds = %if.else82
  %110 = ptrtoint ptr %s_fs_info.i261 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_fs_info.i261, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %111, i32 0, i32 13
  %112 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %s_es, align 4
  %s_feature_ro_compat = getelementptr inbounds %struct.ext2_super_block, ptr %113, i32 0, i32 30
  %114 = ptrtoint ptr %s_feature_ro_compat to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_feature_ro_compat, align 4
  %and92 = and i32 %115, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.then90.if.then98_crit_edge, label %lor.lhs.false

if.then90.if.then98_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98

lor.lhs.false:                                    ; preds = %if.then90
  %s_rev_level = getelementptr inbounds %struct.ext2_super_block, ptr %113, i32 0, i32 22
  %116 = ptrtoint ptr %s_rev_level to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_rev_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp96 = icmp eq i32 %117, 0
  br i1 %cmp96, label %lor.lhs.false.if.then98_crit_edge, label %lor.lhs.false.if.end109_crit_edge

lor.lhs.false.if.end109_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

lor.lhs.false.if.then98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false.if.then98_crit_edge, %if.then90.if.then98_crit_edge
  %s_lock = getelementptr inbounds %struct.ext2_sb_info, ptr %111, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %s_lock) #10
  tail call void @ext2_update_dynamic_rev(ptr noundef %1) #10
  %118 = ptrtoint ptr %s_fs_info.i261 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_fs_info.i261, align 16
  %s_es101 = getelementptr inbounds %struct.ext2_sb_info, ptr %119, i32 0, i32 13
  %120 = ptrtoint ptr %s_es101 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %s_es101, align 4
  %s_feature_ro_compat102 = getelementptr inbounds %struct.ext2_super_block, ptr %121, i32 0, i32 30
  %122 = ptrtoint ptr %s_feature_ro_compat102 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_feature_ro_compat102, align 4
  %or = or i32 %123, 33554432
  store i32 %or, ptr %s_feature_ro_compat102, align 4
  %124 = load ptr, ptr %s_fs_info.i261, align 16
  %s_lock104 = getelementptr inbounds %struct.ext2_sb_info, ptr %124, i32 0, i32 36
  tail call void @_raw_spin_unlock(ptr noundef %s_lock104) #10
  %125 = ptrtoint ptr %s_fs_info.i261 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %s_fs_info.i261, align 16
  %s_es106 = getelementptr inbounds %struct.ext2_sb_info, ptr %126, i32 0, i32 13
  %127 = ptrtoint ptr %s_es106 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %s_es106, align 4
  tail call void @ext2_sync_super(ptr noundef %1, ptr noundef %128, i32 noundef 1) #10
  br label %if.end109

if.end109:                                        ; preds = %if.then98, %lor.lhs.false.if.end109_crit_edge, %if.else82.if.end109_crit_edge, %if.then80
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %129 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %i_generation, align 8
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %i_generation110 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 13
  %132 = ptrtoint ptr %i_generation110 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %i_generation110, align 4
  %133 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %inode, align 8
  %135 = and i16 %134, -4096
  %136 = zext i16 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %135, label %for.body.preheader [
    i16 8192, label %if.end109.if.then122_crit_edge
    i16 24576, label %if.end109.if.then122_crit_edge269
  ]

if.end109.if.then122_crit_edge269:                ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then122

if.end109.if.then122_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then122

for.body.preheader:                               ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %add.ptr.i, align 4
  %arrayidx145 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 0
  %139 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx145, align 4
  %arrayidx143.1 = getelementptr i8, ptr %inode, i32 -324
  %140 = ptrtoint ptr %arrayidx143.1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx143.1, align 4
  %arrayidx145.1 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 1
  %142 = ptrtoint ptr %arrayidx145.1 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %arrayidx145.1, align 4
  %arrayidx143.2 = getelementptr i8, ptr %inode, i32 -320
  %143 = ptrtoint ptr %arrayidx143.2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx143.2, align 4
  %arrayidx145.2 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 2
  %145 = ptrtoint ptr %arrayidx145.2 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx145.2, align 4
  %arrayidx143.3 = getelementptr i8, ptr %inode, i32 -316
  %146 = ptrtoint ptr %arrayidx143.3 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx143.3, align 4
  %arrayidx145.3 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 3
  %148 = ptrtoint ptr %arrayidx145.3 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx145.3, align 4
  %arrayidx143.4 = getelementptr i8, ptr %inode, i32 -312
  %149 = ptrtoint ptr %arrayidx143.4 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx143.4, align 4
  %arrayidx145.4 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 4
  %151 = ptrtoint ptr %arrayidx145.4 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx145.4, align 4
  %arrayidx143.5 = getelementptr i8, ptr %inode, i32 -308
  %152 = ptrtoint ptr %arrayidx143.5 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx143.5, align 4
  %arrayidx145.5 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 5
  %154 = ptrtoint ptr %arrayidx145.5 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx145.5, align 4
  %arrayidx143.6 = getelementptr i8, ptr %inode, i32 -304
  %155 = ptrtoint ptr %arrayidx143.6 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx143.6, align 4
  %arrayidx145.6 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 6
  %157 = ptrtoint ptr %arrayidx145.6 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %arrayidx145.6, align 4
  %arrayidx143.7 = getelementptr i8, ptr %inode, i32 -300
  %158 = ptrtoint ptr %arrayidx143.7 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx143.7, align 4
  %arrayidx145.7 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 7
  %160 = ptrtoint ptr %arrayidx145.7 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx145.7, align 4
  %arrayidx143.8 = getelementptr i8, ptr %inode, i32 -296
  %161 = ptrtoint ptr %arrayidx143.8 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx143.8, align 4
  %arrayidx145.8 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 8
  %163 = ptrtoint ptr %arrayidx145.8 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx145.8, align 4
  %arrayidx143.9 = getelementptr i8, ptr %inode, i32 -292
  %164 = ptrtoint ptr %arrayidx143.9 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx143.9, align 4
  %arrayidx145.9 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 9
  %166 = ptrtoint ptr %arrayidx145.9 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %arrayidx145.9, align 4
  %arrayidx143.10 = getelementptr i8, ptr %inode, i32 -288
  %167 = ptrtoint ptr %arrayidx143.10 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx143.10, align 4
  %arrayidx145.10 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 10
  %169 = ptrtoint ptr %arrayidx145.10 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %arrayidx145.10, align 4
  %arrayidx143.11 = getelementptr i8, ptr %inode, i32 -284
  %170 = ptrtoint ptr %arrayidx143.11 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx143.11, align 4
  %arrayidx145.11 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 11
  %172 = ptrtoint ptr %arrayidx145.11 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx145.11, align 4
  %arrayidx143.12 = getelementptr i8, ptr %inode, i32 -280
  %173 = ptrtoint ptr %arrayidx143.12 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx143.12, align 4
  %arrayidx145.12 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 12
  %175 = ptrtoint ptr %arrayidx145.12 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx145.12, align 4
  %arrayidx143.13 = getelementptr i8, ptr %inode, i32 -276
  %176 = ptrtoint ptr %arrayidx143.13 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx143.13, align 4
  %arrayidx145.13 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 13
  %178 = ptrtoint ptr %arrayidx145.13 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %arrayidx145.13, align 4
  %arrayidx143.14 = getelementptr i8, ptr %inode, i32 -272
  %179 = ptrtoint ptr %arrayidx143.14 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx143.14, align 4
  %arrayidx145.14 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 14
  %181 = ptrtoint ptr %arrayidx145.14 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %arrayidx145.14, align 4
  br label %if.end146

if.then122:                                       ; preds = %if.end109.if.then122_crit_edge, %if.end109.if.then122_crit_edge269
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %182 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %i_rdev, align 8
  %184 = and i32 %183, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %if.then124, label %if.else130

if.then124:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  %186 = lshr i32 %183, 12
  %shl.i = and i32 %186, 65280
  %.masked = and i32 %183, 65535
  %conv127 = or i32 %shl.i, %.masked
  %187 = tail call i32 @llvm.bswap.i32(i32 %conv127)
  %i_block = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 12
  %188 = ptrtoint ptr %i_block to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %i_block, align 4
  %arrayidx129 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 1
  %189 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %arrayidx129, align 4
  br label %if.end146

if.else130:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  %i_block131 = getelementptr inbounds %struct.ext2_inode, ptr %call3, i32 0, i32 12
  %190 = ptrtoint ptr %i_block131 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %i_block131, align 4
  %191 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %i_rdev, align 8
  %and1.i = and i32 %192, 255
  %193 = lshr i32 %192, 12
  %shl.i254 = and i32 %193, 1048320
  %or.i255 = or i32 %shl.i254, %and1.i
  %and2.i = shl i32 %192, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i255, %shl3.i
  %194 = tail call i32 @llvm.bswap.i32(i32 %or4.i)
  %arrayidx136 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 1
  %195 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %arrayidx136, align 4
  %arrayidx138 = getelementptr %struct.ext2_inode, ptr %call3, i32 0, i32 12, i32 2
  %196 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %arrayidx138, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.else130, %if.then124, %for.body.preheader
  %197 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %bh, align 4
  tail call void @mark_buffer_dirty(ptr noundef %198) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_sync)
  %tobool147.not = icmp eq i32 %do_sync, 0
  br i1 %tobool147.not, label %if.end146.if.end157_crit_edge, label %if.then148

if.end146.if.end157_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

if.then148:                                       ; preds = %if.end146
  %call149 = tail call i32 @sync_dirty_buffer(ptr noundef %198) #10
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %198, align 4
  %201 = and i32 %200, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool151.not = icmp eq i32 %201, 0
  br i1 %tobool151.not, label %if.then148.if.end157_crit_edge, label %land.lhs.true

if.then148.if.end157_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

land.lhs.true:                                    ; preds = %if.then148
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %198, align 4
  %and1.i.i256 = and i32 %203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i256)
  %tobool153.not = icmp eq i32 %and1.i.i256, 0
  br i1 %tobool153.not, label %do.end, label %land.lhs.true.if.end157_crit_edge

land.lhs.true.if.end157_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %s_id = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %s_id, i32 noundef %3) #13
  br label %if.end157

if.end157:                                        ; preds = %do.end, %land.lhs.true.if.end157_crit_edge, %if.then148.if.end157_crit_edge, %if.end146.if.end157_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true.if.end157_crit_edge ], [ -5, %do.end ], [ 0, %if.then148.if.end157_crit_edge ], [ 0, %if.end146.if.end157_crit_edge ]
  %204 = ptrtoint ptr %i_state to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %i_state, align 2
  %206 = and i16 %205, -2
  store i16 %206, ptr %i_state, align 2
  %tobool.not.i = icmp eq ptr %198, null
  br i1 %tobool.not.i, label %if.end157.cleanup_crit_edge, label %if.then.i

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %198) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end157.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %err.0, %if.end157.cleanup_crit_edge ], [ %err.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_xattr_delete_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_discard_reservation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_free_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %new = alloca i8, align 1
  %boundary = alloca i8, align 1
  %bno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %0 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_size, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %1, %conv
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new) #10
  %4 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %new, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %boundary) #10
  %5 = ptrtoint ptr %boundary to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %boundary, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bno) #10
  %6 = ptrtoint ptr %bno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %bno, align 4, !annotation !64
  %call = call fastcc i32 @ext2_get_blocks(ptr noundef %inode, i64 noundef %iblock, i32 noundef %shr, ptr noundef nonnull %bno, ptr noundef nonnull %new, ptr noundef nonnull %boundary, i32 noundef %create)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %9 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bno, align 4
  %conv2 = zext i32 %10 to i64
  %11 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bh_result, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.map_bh.exit_crit_edge

if.end.map_bh.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #10
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.end.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %16 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %17 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv2, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize.i, align 16
  %20 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %b_size, align 8
  %21 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i_blkbits, align 2
  %conv4 = zext i8 %22 to i32
  %shl = shl i32 %call, %conv4
  store i32 %shl, ptr %b_size, align 8
  %23 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %new, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %map_bh.exit.if.end7_crit_edge, label %if.then6

map_bh.exit.if.end7_crit_edge:                    ; preds = %map_bh.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %map_bh.exit
  %25 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %bh_result, align 4
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then6.if.end7_crit_edge

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then6.if.end7_crit_edge, %map_bh.exit.if.end7_crit_edge
  %28 = ptrtoint ptr %boundary to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %boundary, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool8.not = icmp eq i8 %29, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %30 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %bh_result, align 4
  %32 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i24 = icmp eq i32 %32, 0
  br i1 %tobool.not.i24, label %if.then.i25, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i25:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 9, ptr noundef %bh_result) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i25, %if.then9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.then.i25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bno) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %boundary) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext2_get_blocks(ptr noundef %inode, i64 noundef %iblock, i32 noundef %maxblocks, ptr nocapture noundef writeonly %bno, ptr nocapture noundef writeonly %new, ptr nocapture noundef writeonly %boundary, i32 noundef %create) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %count.i.i = alloca i32, align 4
  %err.i = alloca i32, align 4
  %new_blocks.i = alloca [4 x i32], align 4
  %err = alloca i32, align 4
  %offsets = alloca [4 x i32], align 4
  %chain = alloca [4 x %struct.Indirect], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #10
  %1 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 3
  %4 = call ptr @memset(ptr %offsets, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %chain) #10
  %5 = call ptr @memset(ptr %chain, i32 255, i32 48)
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxblocks)
  %cmp = icmp eq i32 %maxblocks, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !58

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 638, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

do.end7:                                          ; preds = %entry
  %conv = trunc i64 %iblock to i32
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %div105.i = lshr i32 %9, 2
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_addr_per_block_bits.i = getelementptr inbounds %struct.ext2_sb_info, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %s_addr_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_addr_per_block_bits.i, align 8
  %mul.i = shl i32 %13, 1
  %shl.i = shl nuw i32 1, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp.i = icmp slt i32 %conv, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ext2_block_to_path) #10
  br label %cleanup145

if.else.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv)
  %cmp3.i = icmp ult i32 %conv, 12
  br i1 %cmp3.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %offsets, align 4
  br label %if.end12

if.else5.i:                                       ; preds = %if.else.i
  %sub.i = add nsw i32 %conv, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div105.i)
  %cmp6.i = icmp ult i32 %sub.i, %div105.i
  br i1 %cmp6.i, label %if.then7.i, label %if.else12.i

if.then7.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12, ptr %offsets, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i, ptr %1, align 4
  br label %if.end12

if.else12.i:                                      ; preds = %if.else5.i
  %sub13.i = sub nsw i32 %sub.i, %div105.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13.i, i32 %shl.i)
  %cmp14.i = icmp slt i32 %sub13.i, %shl.i
  br i1 %cmp14.i, label %if.then15.i, label %if.else23.i

if.then15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 13, ptr %offsets, align 4
  %shr.i = ashr i32 %sub13.i, %13
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr.i, ptr %1, align 4
  %sub20.i = add nsw i32 %div105.i, -1
  %and.i = and i32 %sub13.i, %sub20.i
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i, ptr %2, align 4
  br label %if.end12

if.else23.i:                                      ; preds = %if.else12.i
  %sub24.i = sub i32 %sub13.i, %shl.i
  %shr26.i = ashr i32 %sub24.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr26.i, i32 %div105.i)
  %cmp27.i = icmp slt i32 %shr26.i, %div105.i
  br i1 %cmp27.i, label %if.then28.i, label %if.else44.i

if.then28.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 14, ptr %offsets, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr26.i, ptr %1, align 4
  %shr35.i = ashr i32 %sub24.i, %13
  %sub36.i = add nsw i32 %div105.i, -1
  %and37.i = and i32 %shr35.i, %sub36.i
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and37.i, ptr %2, align 4
  %and41.i = and i32 %sub24.i, %sub36.i
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and41.i, ptr %3, align 4
  br label %if.end12

if.else44.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ext2_block_to_path) #10
  br label %cleanup145

if.end12:                                         ; preds = %if.then28.i, %if.then15.i, %if.then7.i, %if.then4.i
  %i_block.addr.0.i.ph = phi i32 [ %sub24.i, %if.then28.i ], [ %sub13.i, %if.then15.i ], [ %sub.i, %if.then7.i ], [ %conv, %if.then4.i ]
  %n.0.i.ph = phi i32 [ 4, %if.then28.i ], [ 3, %if.then15.i ], [ 2, %if.then7.i ], [ 1, %if.then4.i ]
  %final.0.i.ph = phi i32 [ %div105.i, %if.then28.i ], [ %div105.i, %if.then15.i ], [ %div105.i, %if.then7.i ], [ 12, %if.then4.i ]
  %sub52.i270 = add nsw i32 %div105.i, -1
  %and53.i271 = and i32 %i_block.addr.0.i.ph, %sub52.i270
  %24 = xor i32 %and53.i271, -1
  %sub54.i272 = add i32 %final.0.i.ph, %24
  %call15 = call fastcc ptr @ext2_get_branch(ptr noundef %inode, i32 noundef %n.0.i.ph, ptr noundef nonnull %offsets, ptr noundef nonnull %chain, ptr noundef nonnull %err)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end12.if.end44_crit_edge

if.end12.if.end44_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then17:                                        ; preds = %if.end12
  %sub = add nsw i32 %n.0.i.ph, -1
  %arrayidx = getelementptr [4 x %struct.Indirect], ptr %chain, i32 0, i32 %sub
  %key = getelementptr [4 x %struct.Indirect], ptr %chain, i32 0, i32 %sub, i32 1
  %25 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %maxblocks)
  %cmp18301 = icmp ult i32 %maxblocks, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub54.i272)
  %cmp20.not302 = icmp slt i32 %sub54.i272, 1
  %or.cond303 = select i1 %cmp18301, i1 true, i1 %cmp20.not302
  br i1 %or.cond303, label %if.then17.while.end_crit_edge, label %while.body.lr.ph

if.then17.while.end_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then17
  %add.ptr = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i.ph
  %add.ptr24 = getelementptr %struct.Indirect, ptr %add.ptr, i32 -1
  %cmp.not8.i = icmp ugt ptr %chain, %add.ptr24
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %count.0304 = phi i32 [ 1, %while.body.lr.ph ], [ %inc38, %cleanup.while.body_crit_edge ]
  br i1 %cmp.not8.i, label %while.body.if.end31_crit_edge, label %while.body.land.rhs.i_crit_edge

while.body.land.rhs.i_crit_edge:                  ; preds = %while.body
  br label %land.rhs.i

while.body.if.end31_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %while.body.land.rhs.i_crit_edge
  %from.addr.09.i = phi ptr [ %incdec.ptr.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %chain, %while.body.land.rhs.i_crit_edge ]
  %key.i = getelementptr inbounds %struct.Indirect, ptr %from.addr.09.i, i32 0, i32 1
  %28 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key.i, align 4
  %30 = ptrtoint ptr %from.addr.09.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %from.addr.09.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %33)
  %cmp1.i = icmp eq i32 %29, %33
  %incdec.ptr.i = getelementptr %struct.Indirect, ptr %from.addr.09.i, i32 1
  %cmp.not.i = icmp ule ptr %incdec.ptr.i, %add.ptr24
  %34 = and i1 %cmp.not.i, %cmp1.i
  br i1 %34, label %land.rhs.i.land.rhs.i_crit_edge, label %verify_chain.exit

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

verify_chain.exit:                                ; preds = %land.rhs.i
  br i1 %cmp1.i, label %verify_chain.exit.if.end31_crit_edge, label %while.end.thread

verify_chain.exit.if.end31_crit_edge:             ; preds = %verify_chain.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

while.end.thread:                                 ; preds = %verify_chain.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -11, ptr %err, align 4
  br label %if.end44

if.end31:                                         ; preds = %verify_chain.exit.if.end31_crit_edge, %while.body.if.end31_crit_edge
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %add.ptr34 = getelementptr i32, ptr %37, i32 %count.0304
  %38 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr34, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %add = add i32 %count.0304, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add)
  %cmp35 = icmp eq i32 %40, %add
  br i1 %cmp35, label %cleanup, label %if.end31.while.end_crit_edge

if.end31.while.end_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup:                                          ; preds = %if.end31
  %inc38 = add nuw i32 %count.0304, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc38, i32 %maxblocks)
  %cmp18 = icmp uge i32 %inc38, %maxblocks
  call void @__sanitizer_cov_trace_cmp4(i32 %inc38, i32 %sub54.i272)
  %cmp20.not = icmp sgt i32 %inc38, %sub54.i272
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end31.while.end_crit_edge, %if.then17.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 1, %if.then17.while.end_crit_edge ], [ %count.0304, %if.end31.while.end_crit_edge ], [ %inc38, %cleanup.while.end_crit_edge ]
  %41 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %.pr)
  %cmp40.not = icmp eq i32 %.pr, -11
  br i1 %cmp40.not, label %while.end.if.end44_crit_edge, label %while.end.got_it_crit_edge

while.end.got_it_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %got_it

while.end.if.end44_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end44:                                         ; preds = %while.end.if.end44_crit_edge, %while.end.thread, %if.end12.if.end44_crit_edge
  %count.3 = phi i32 [ %count.0.lcssa, %while.end.if.end44_crit_edge ], [ 0, %if.end12.if.end44_crit_edge ], [ 0, %while.end.thread ]
  %partial.3 = phi ptr [ null, %while.end.if.end44_crit_edge ], [ %call15, %if.end12.if.end44_crit_edge ], [ %add.ptr24, %while.end.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool45.not = icmp eq i32 %create, 0
  br i1 %tobool45.not, label %if.end44.cleanup129_crit_edge, label %lor.lhs.false

if.end44.cleanup129_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

lor.lhs.false:                                    ; preds = %if.end44
  %42 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %43)
  %cmp46 = icmp eq i32 %43, -5
  br i1 %cmp46, label %lor.lhs.false.cleanup129_crit_edge, label %if.end49

lor.lhs.false.cleanup129_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end49:                                         ; preds = %lor.lhs.false
  %truncate_mutex = getelementptr i8, ptr %inode, i32 -92
  call void @mutex_lock_nested(ptr noundef %truncate_mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %43)
  %cmp50 = icmp eq i32 %43, -11
  br i1 %cmp50, label %if.end49.if.then56_crit_edge, label %lor.lhs.false52

if.end49.if.then56_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false52:                                  ; preds = %if.end49
  %cmp.not8.i204 = icmp ugt ptr %chain, %partial.3
  br i1 %cmp.not8.i204, label %lor.lhs.false52.if.end75_crit_edge, label %lor.lhs.false52.land.rhs.i210_crit_edge

lor.lhs.false52.land.rhs.i210_crit_edge:          ; preds = %lor.lhs.false52
  br label %land.rhs.i210

lor.lhs.false52.if.end75_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.rhs.i210:                                    ; preds = %land.rhs.i210.land.rhs.i210_crit_edge, %lor.lhs.false52.land.rhs.i210_crit_edge
  %from.addr.09.i205 = phi ptr [ %incdec.ptr.i208, %land.rhs.i210.land.rhs.i210_crit_edge ], [ %chain, %lor.lhs.false52.land.rhs.i210_crit_edge ]
  %key.i206 = getelementptr inbounds %struct.Indirect, ptr %from.addr.09.i205, i32 0, i32 1
  %44 = ptrtoint ptr %key.i206 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %key.i206, align 4
  %46 = ptrtoint ptr %from.addr.09.i205 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %from.addr.09.i205, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %49)
  %cmp1.i207 = icmp eq i32 %45, %49
  %incdec.ptr.i208 = getelementptr %struct.Indirect, ptr %from.addr.09.i205, i32 1
  %cmp.not.i209 = icmp ule ptr %incdec.ptr.i208, %partial.3
  %50 = and i1 %cmp.not.i209, %cmp1.i207
  br i1 %50, label %land.rhs.i210.land.rhs.i210_crit_edge, label %verify_chain.exit214

land.rhs.i210.land.rhs.i210_crit_edge:            ; preds = %land.rhs.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i210

verify_chain.exit214:                             ; preds = %land.rhs.i210
  br i1 %cmp1.i207, label %verify_chain.exit214.if.end75_crit_edge, label %verify_chain.exit214.if.then56_crit_edge

verify_chain.exit214.if.then56_crit_edge:         ; preds = %verify_chain.exit214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

verify_chain.exit214.if.end75_crit_edge:          ; preds = %verify_chain.exit214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then56:                                        ; preds = %verify_chain.exit214.if.then56_crit_edge, %if.end49.if.then56_crit_edge
  %cmp59306 = icmp ugt ptr %partial.3, %chain
  br i1 %cmp59306, label %if.then56.while.body61_crit_edge, label %if.then56.while.end62_crit_edge

if.then56.while.end62_crit_edge:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end62

if.then56.while.body61_crit_edge:                 ; preds = %if.then56
  br label %while.body61

while.body61:                                     ; preds = %brelse.exit.while.body61_crit_edge, %if.then56.while.body61_crit_edge
  %partial.4307 = phi ptr [ %incdec.ptr, %brelse.exit.while.body61_crit_edge ], [ %partial.3, %if.then56.while.body61_crit_edge ]
  %bh = getelementptr inbounds %struct.Indirect, ptr %partial.4307, i32 0, i32 2
  %51 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %while.body61.brelse.exit_crit_edge, label %if.then.i215

while.body61.brelse.exit_crit_edge:               ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i215:                                     ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %52) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i215, %while.body61.brelse.exit_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %partial.4307, i32 -1
  %cmp59 = icmp ugt ptr %incdec.ptr, %chain
  br i1 %cmp59, label %brelse.exit.while.body61_crit_edge, label %brelse.exit.while.end62_crit_edge

brelse.exit.while.end62_crit_edge:                ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end62

brelse.exit.while.body61_crit_edge:               ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body61

while.end62:                                      ; preds = %brelse.exit.while.end62_crit_edge, %if.then56.while.end62_crit_edge
  %call65 = call fastcc ptr @ext2_get_branch(ptr noundef %inode, i32 noundef %n.0.i.ph, ptr noundef nonnull %offsets, ptr noundef nonnull %chain, ptr noundef nonnull %err)
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.then67, label %if.end70

if.then67:                                        ; preds = %while.end62
  call void @__sanitizer_cov_trace_pc() #12
  %inc68 = add i32 %count.3, 1
  br label %got_it.sink.split

if.end70:                                         ; preds = %while.end62
  %53 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool71.not = icmp eq i32 %54, 0
  br i1 %tobool71.not, label %if.end70.if.end75_crit_edge, label %if.then72

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %truncate_mutex) #10
  br label %cleanup129

if.end75:                                         ; preds = %if.end70.if.end75_crit_edge, %verify_chain.exit214.if.end75_crit_edge, %lor.lhs.false52.if.end75_crit_edge
  %partial.5 = phi ptr [ %call65, %if.end70.if.end75_crit_edge ], [ %partial.3, %verify_chain.exit214.if.end75_crit_edge ], [ %partial.3, %lor.lhs.false52.if.end75_crit_edge ]
  %55 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %inode, align 8
  %57 = and i16 %56, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %57)
  %cmp77 = icmp eq i16 %57, -32768
  br i1 %cmp77, label %land.lhs.true, label %if.end75.if.end81_crit_edge

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end75
  %i_block_alloc_info = getelementptr i8, ptr %inode, i32 -240
  %58 = ptrtoint ptr %i_block_alloc_info to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_block_alloc_info, align 8
  %tobool79.not = icmp eq ptr %59, null
  br i1 %tobool79.not, label %if.then80, label %land.lhs.true.if.end81_crit_edge

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then80:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @ext2_init_block_alloc_info(ptr noundef %inode) #10
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %land.lhs.true.if.end81_crit_edge, %if.end75.if.end81_crit_edge
  %i_block_alloc_info.i = getelementptr i8, ptr %inode, i32 -240
  %60 = ptrtoint ptr %i_block_alloc_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_block_alloc_info.i, align 8
  %tobool.not.i216 = icmp eq ptr %61, null
  br i1 %tobool.not.i216, label %if.end81.if.end.i_crit_edge, label %land.lhs.true.i

if.end81.if.end.i_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end81
  %last_alloc_logical_block.i = getelementptr inbounds %struct.ext2_block_alloc_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %last_alloc_logical_block.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %last_alloc_logical_block.i, align 4
  %add.i = add i32 %63, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv)
  %cmp.i217 = icmp eq i32 %add.i, %conv
  br i1 %cmp.i217, label %land.lhs.true1.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %last_alloc_physical_block.i = getelementptr inbounds %struct.ext2_block_alloc_info, ptr %61, i32 0, i32 2
  %64 = ptrtoint ptr %last_alloc_physical_block.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %last_alloc_physical_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp2.not.i = icmp eq i32 %65, 0
  br i1 %cmp2.not.i, label %land.lhs.true1.i.if.end.i_crit_edge, label %if.then.i218

land.lhs.true1.i.if.end.i_crit_edge:              ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i218:                                     ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #12
  %add4.i = add i32 %65, 1
  br label %ext2_find_goal.exit

if.end.i:                                         ; preds = %land.lhs.true1.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end81.if.end.i_crit_edge
  %bh.i.i = getelementptr inbounds %struct.Indirect, ptr %partial.5, i32 0, i32 2
  %66 = ptrtoint ptr %bh.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i, label %if.end.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end.i.cond.end.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_data.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %69, %cond.true.i.i ], [ %add.ptr.i, %if.end.i.cond.end.i.i_crit_edge ]
  %70 = ptrtoint ptr %partial.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %partial.5, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %cond.end.i.i
  %.pn.i.i = phi ptr [ %71, %cond.end.i.i ], [ %p.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %p.0.i.i = getelementptr i32, ptr %.pn.i.i, i32 -1
  %cmp.not.i.i = icmp ult ptr %p.0.i.i, %cond.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %72 = ptrtoint ptr %p.0.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %p.0.i.i, align 4
  %tobool3.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool3.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = call i32 @llvm.bswap.i32(i32 %73) #10
  br label %ext2_find_goal.exit

for.end.i.i:                                      ; preds = %for.cond.i.i
  br i1 %tobool.not.i.i, label %if.end8.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 3
  %75 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %b_blocknr.i.i, align 8
  %conv.i.i = trunc i64 %76 to i32
  br label %ext2_find_goal.exit

if.end8.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_sb.i, align 4
  %i_block_group.i.i = getelementptr i8, ptr %inode, i32 -244
  %79 = ptrtoint ptr %i_block_group.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_block_group.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 33
  %81 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_blocks_per_group.i.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %s_blocks_per_group.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_blocks_per_group.i.i.i, align 8
  %mul.i.i.i = mul i32 %84, %80
  %s_es.i.i.i = getelementptr inbounds %struct.ext2_sb_info, ptr %82, i32 0, i32 13
  %85 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_es.i.i.i, align 4
  %s_first_data_block.i.i.i = getelementptr inbounds %struct.ext2_super_block, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %s_first_data_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_first_data_block.i.i.i, align 4
  %89 = call i32 @llvm.bswap.i32(i32 %88) #10
  %add.i.i.i = add i32 %89, %mul.i.i.i
  %90 = call i32 @llvm.read_register.i32(metadata !44) #10
  %and.i.i.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 68
  %94 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pid.i.i, align 8
  %rem.i.i = srem i32 %95, 16
  %div29.i.i = lshr i32 %84, 4
  %mul.i.i = mul i32 %rem.i.i, %div29.i.i
  %add.i.i = add i32 %add.i.i.i, %mul.i.i
  br label %ext2_find_goal.exit

ext2_find_goal.exit:                              ; preds = %if.end8.i.i, %if.then6.i.i, %if.then.i.i, %if.then.i218
  %retval.0.i = phi i32 [ %add4.i, %if.then.i218 ], [ %74, %if.then.i.i ], [ %conv.i.i, %if.then6.i.i ], [ %add.i.i, %if.end8.i.i ]
  %add.ptr85 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i.ph
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr85 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %partial.5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv i32 %sub.ptr.sub, 12
  %sub86 = add nsw i32 %sub.ptr.div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.ptr.sub)
  %cmp.i219 = icmp sgt i32 %sub.ptr.sub, 12
  br i1 %cmp.i219, label %if.then.i221, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %ext2_find_goal.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %maxblocks)
  %cmp724.i = icmp ult i32 %maxblocks, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub54.i272)
  %cmp8.not25.i = icmp eq i32 %sub54.i272, 0
  %or.cond26.i = or i1 %cmp724.i, %cmp8.not25.i
  br i1 %or.cond26.i, label %while.cond.preheader.i.ext2_blks_to_allocate.exit_crit_edge, label %land.rhs.lr.ph.i

while.cond.preheader.i.ext2_blks_to_allocate.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_blks_to_allocate.exit

land.rhs.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %96 = ptrtoint ptr %partial.5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %partial.5, align 4
  %98 = add i32 %sub54.i272, -1
  %99 = add i32 %maxblocks, -2
  %umin.i = call i32 @llvm.umin.i32(i32 %98, i32 %99) #10
  %100 = add nuw i32 %umin.i, 2
  br label %land.rhs.i223

if.then.i221:                                     ; preds = %ext2_find_goal.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.i220 = sub i32 %final.0.i.ph, %and53.i271
  %101 = call i32 @llvm.umin.i32(i32 %add.i220, i32 %maxblocks) #10
  br label %ext2_blks_to_allocate.exit

land.rhs.i223:                                    ; preds = %while.body.i.land.rhs.i223_crit_edge, %land.rhs.lr.ph.i
  %count.127.i = phi i32 [ 1, %land.rhs.lr.ph.i ], [ %inc10.i, %while.body.i.land.rhs.i223_crit_edge ]
  %add.ptr.i222 = getelementptr i32, ptr %97, i32 %count.127.i
  %102 = ptrtoint ptr %add.ptr.i222 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i222, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp9.i = icmp eq i32 %103, 0
  br i1 %cmp9.i, label %while.body.i, label %land.rhs.i223.ext2_blks_to_allocate.exit_crit_edge

land.rhs.i223.ext2_blks_to_allocate.exit_crit_edge: ; preds = %land.rhs.i223
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_blks_to_allocate.exit

while.body.i:                                     ; preds = %land.rhs.i223
  %inc10.i = add nuw i32 %count.127.i, 1
  %exitcond.i = icmp eq i32 %inc10.i, %100
  br i1 %exitcond.i, label %while.body.i.ext2_blks_to_allocate.exit_crit_edge, label %while.body.i.land.rhs.i223_crit_edge

while.body.i.land.rhs.i223_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i223

while.body.i.ext2_blks_to_allocate.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_blks_to_allocate.exit

ext2_blks_to_allocate.exit:                       ; preds = %while.body.i.ext2_blks_to_allocate.exit_crit_edge, %land.rhs.i223.ext2_blks_to_allocate.exit_crit_edge, %if.then.i221, %while.cond.preheader.i.ext2_blks_to_allocate.exit_crit_edge
  %retval.0.i224 = phi i32 [ %101, %if.then.i221 ], [ 1, %while.cond.preheader.i.ext2_blks_to_allocate.exit_crit_edge ], [ %count.127.i, %land.rhs.i223.ext2_blks_to_allocate.exit_crit_edge ], [ %100, %while.body.i.ext2_blks_to_allocate.exit_crit_edge ]
  %sub.ptr.rhs.cast91 = ptrtoint ptr %chain to i32
  %sub.ptr.sub92 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast91
  %sub.ptr.div93 = sdiv exact i32 %sub.ptr.sub92, 12
  %add.ptr94 = getelementptr i32, ptr %offsets, i32 %sub.ptr.div93
  %104 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i226 = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %s_blocksize.i226 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_blocksize.i226, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #10
  %108 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %err.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_blocks.i) #10
  %109 = call ptr @memset(ptr %new_blocks.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i.i) #10
  %add.i.i227 = add i32 %retval.0.i224, %sub86
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.end.i.i.while.cond.i.i_crit_edge, %ext2_blks_to_allocate.exit
  %target.0.i.i = phi i32 [ %add.i.i227, %ext2_blks_to_allocate.exit ], [ %sub.i.i, %while.end.i.i.while.cond.i.i_crit_edge ]
  %index.0.i.i = phi i32 [ 0, %ext2_blks_to_allocate.exit ], [ %index.140.i.i, %while.end.i.i.while.cond.i.i_crit_edge ]
  %110 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %target.0.i.i, ptr %count.i.i, align 4
  %call.i.i = call i32 @ext2_new_blocks(ptr noundef %inode, i32 noundef %retval.0.i, ptr noundef nonnull %count.i.i, ptr noundef nonnull %err.i) #10
  %111 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i126.i = icmp eq i32 %112, 0
  br i1 %tobool.not.i126.i, label %if.end.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.0.i.i)
  %cmp1048.i.i = icmp sgt i32 %index.0.i.i, 0
  br i1 %cmp1048.i.i, label %for.cond.preheader.i.i.for.body.i.i228_crit_edge, label %for.cond.preheader.i.i.for.end.i.i229_crit_edge

for.cond.preheader.i.i.for.end.i.i229_crit_edge:  ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i229

for.cond.preheader.i.i.for.body.i.i228_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i228

if.end.i.i:                                       ; preds = %while.cond.i.i
  %113 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %count.i.i, align 4
  %sub.i.i = sub i32 %target.0.i.i, %114
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.i.i, i32 %sub86)
  %cmp43.i.i = icmp slt i32 %index.0.i.i, %sub86
  br i1 %cmp43.i.i, label %if.end.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.while.endthread-pre-split.i.i_crit_edge

if.end.i.i.while.endthread-pre-split.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.endthread-pre-split.i.i

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body3.i.i.land.rhs.i.i_crit_edge, %if.end.i.i.land.rhs.i.i_crit_edge
  %current_block.046.i.i = phi i32 [ %inc.i.i, %while.body3.i.i.land.rhs.i.i_crit_edge ], [ %call.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ]
  %index.145.i.i = phi i32 [ %inc4.i.i, %while.body3.i.i.land.rhs.i.i_crit_edge ], [ %index.0.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ]
  %dec4244.i.i = phi i32 [ %dec.i.i, %while.body3.i.i.land.rhs.i.i_crit_edge ], [ %114, %if.end.i.i.land.rhs.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec4244.i.i)
  %tobool2.not.i.i = icmp eq i32 %dec4244.i.i, 0
  br i1 %tobool2.not.i.i, label %land.rhs.i.i.while.end.i.i_crit_edge, label %while.body3.i.i

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body3.i.i:                                  ; preds = %land.rhs.i.i
  %inc.i.i = add i32 %current_block.046.i.i, 1
  %inc4.i.i = add i32 %index.145.i.i, 1
  %arrayidx.i.i = getelementptr i32, ptr %new_blocks.i, i32 %index.145.i.i
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %current_block.046.i.i, ptr %arrayidx.i.i, align 4
  %dec.i.i = add i32 %dec4244.i.i, -1
  %116 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %dec.i.i, ptr %count.i.i, align 4
  %exitcond.not.i.i = icmp eq i32 %inc4.i.i, %sub86
  br i1 %exitcond.not.i.i, label %while.body3.i.i.while.endthread-pre-split.i.i_crit_edge, label %while.body3.i.i.land.rhs.i.i_crit_edge

while.body3.i.i.land.rhs.i.i_crit_edge:           ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

while.body3.i.i.while.endthread-pre-split.i.i_crit_edge: ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.endthread-pre-split.i.i

while.endthread-pre-split.i.i:                    ; preds = %while.body3.i.i.while.endthread-pre-split.i.i_crit_edge, %if.end.i.i.while.endthread-pre-split.i.i_crit_edge
  %index.1.lcssa.i.i = phi i32 [ %index.0.i.i, %if.end.i.i.while.endthread-pre-split.i.i_crit_edge ], [ %sub86, %while.body3.i.i.while.endthread-pre-split.i.i_crit_edge ]
  %current_block.0.lcssa.i.i = phi i32 [ %call.i.i, %if.end.i.i.while.endthread-pre-split.i.i_crit_edge ], [ %inc.i.i, %while.body3.i.i.while.endthread-pre-split.i.i_crit_edge ]
  %117 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr.i.i = load i32, ptr %count.i.i, align 4
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.endthread-pre-split.i.i, %land.rhs.i.i.while.end.i.i_crit_edge
  %index.140.i.i = phi i32 [ %index.1.lcssa.i.i, %while.endthread-pre-split.i.i ], [ %index.145.i.i, %land.rhs.i.i.while.end.i.i_crit_edge ]
  %current_block.038.i.i = phi i32 [ %current_block.0.lcssa.i.i, %while.endthread-pre-split.i.i ], [ %current_block.046.i.i, %land.rhs.i.i.while.end.i.i_crit_edge ]
  %118 = phi i32 [ %.pr.i.i, %while.endthread-pre-split.i.i ], [ 0, %land.rhs.i.i.while.end.i.i_crit_edge ]
  %cmp5.not.i.i = icmp eq i32 %118, 0
  br i1 %cmp5.not.i.i, label %while.end.i.i.while.cond.i.i_crit_edge, label %ext2_alloc_blocks.exit.thread.i

while.end.i.i.while.cond.i.i_crit_edge:           ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

ext2_alloc_blocks.exit.thread.i:                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9.i.i = getelementptr i32, ptr %new_blocks.i, i32 %index.140.i.i
  %119 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %current_block.038.i.i, ptr %arrayidx9.i.i, align 4
  %120 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %err.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #10
  br label %if.end.i232

for.body.i.i228:                                  ; preds = %for.body.i.i228.for.body.i.i228_crit_edge, %for.cond.preheader.i.i.for.body.i.i228_crit_edge
  %i.049.i.i = phi i32 [ %inc12.i.i, %for.body.i.i228.for.body.i.i228_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i228_crit_edge ]
  %arrayidx11.i.i = getelementptr i32, ptr %new_blocks.i, i32 %i.049.i.i
  %121 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx11.i.i, align 4
  call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %122, i32 noundef 1) #10
  %inc12.i.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond53.not.i.i = icmp eq i32 %inc12.i.i, %index.0.i.i
  br i1 %exitcond53.not.i.i, label %for.body.i.i228.for.end.i.i229_crit_edge, label %for.body.i.i228.for.body.i.i228_crit_edge

for.body.i.i228.for.body.i.i228_crit_edge:        ; preds = %for.body.i.i228
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i228

for.body.i.i228.for.end.i.i229_crit_edge:         ; preds = %for.body.i.i228
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i229

for.end.i.i229:                                   ; preds = %for.body.i.i228.for.end.i.i229_crit_edge, %for.cond.preheader.i.i.for.end.i.i229_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.0.i.i)
  %tobool13.not.i.i = icmp eq i32 %index.0.i.i, 0
  br i1 %tobool13.not.i.i, label %for.end.i.i229.ext2_alloc_blocks.exit.i_crit_edge, label %if.then14.i.i

for.end.i.i229.ext2_alloc_blocks.exit.i_crit_edge: ; preds = %for.end.i.i229
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_alloc_blocks.exit.i

if.then14.i.i:                                    ; preds = %for.end.i.i229
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %ext2_alloc_blocks.exit.i

ext2_alloc_blocks.exit.i:                         ; preds = %if.then14.i.i, %for.end.i.i229.ext2_alloc_blocks.exit.i_crit_edge
  %123 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr.i = load i32, ptr %err.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i230 = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i230, label %ext2_alloc_blocks.exit.i.if.end.i232_crit_edge, label %ext2_alloc_branch.exit.thread

ext2_alloc_blocks.exit.i.if.end.i232_crit_edge:   ; preds = %ext2_alloc_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i232

ext2_alloc_branch.exit.thread:                    ; preds = %ext2_alloc_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_blocks.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #10
  %124 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.pr.i, ptr %err, align 4
  br label %if.then97

if.end.i232:                                      ; preds = %ext2_alloc_blocks.exit.i.if.end.i232_crit_edge, %ext2_alloc_blocks.exit.thread.i
  %retval.0.i135.i = phi i32 [ %118, %ext2_alloc_blocks.exit.thread.i ], [ 0, %ext2_alloc_blocks.exit.i.if.end.i232_crit_edge ]
  %125 = ptrtoint ptr %new_blocks.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %new_blocks.i, align 4
  %127 = call i32 @llvm.bswap.i32(i32 %126) #10
  %key.i231 = getelementptr inbounds %struct.Indirect, ptr %partial.5, i32 0, i32 1
  %128 = ptrtoint ptr %key.i231 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %key.i231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub)
  %cmp.not144.i = icmp slt i32 %sub.ptr.sub, 24
  br i1 %cmp.not144.i, label %if.end.i232.ext2_alloc_branch.exit_crit_edge, label %for.body.lr.ph.i

if.end.i232.ext2_alloc_branch.exit_crit_edge:     ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_alloc_branch.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i135.i)
  %cmp28141.i = icmp slt i32 %retval.0.i135.i, 2
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %smax = call i32 @llvm.smax.i32(i32 %sub.ptr.div, i32 2)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc47.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.0145.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc48.i, %for.inc47.i.for.body.i_crit_edge ]
  %129 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %i_sb.i, align 4
  %sub.i233 = add nsw i32 %n.0145.i, -1
  %arrayidx3.i = getelementptr [4 x i32], ptr %new_blocks.i, i32 0, i32 %sub.i233
  %131 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx3.i, align 4
  %conv.i = zext i32 %132 to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %130, i32 0, i32 26
  %133 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %130, i32 0, i32 3
  %135 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i127.i = call ptr @__getblk_gfp(ptr noundef %134, i64 noundef %conv.i, i32 noundef %136, i32 noundef 8) #10
  %tobool5.not.i = icmp eq ptr %call.i127.i, null
  br i1 %tobool5.not.i, label %if.then9.i, label %if.end10.i, !prof !58

if.then9.i:                                       ; preds = %for.body.i
  %137 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -12, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.0145.i)
  %cmp51146.i = icmp ugt i32 %n.0145.i, 1
  br i1 %cmp51146.i, label %if.then9.i.for.body53.i_crit_edge, label %if.then9.i.for.cond59.preheader.i_crit_edge

if.then9.i.for.cond59.preheader.i_crit_edge:      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond59.preheader.i

if.then9.i.for.body53.i_crit_edge:                ; preds = %if.then9.i
  br label %for.body53.i

if.end10.i:                                       ; preds = %for.body.i
  %arrayidx11.i234 = getelementptr %struct.Indirect, ptr %partial.5, i32 %n.0145.i
  %bh12.i = getelementptr %struct.Indirect, ptr %partial.5, i32 %n.0145.i, i32 2
  %138 = ptrtoint ptr %bh12.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call.i127.i, ptr %bh12.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 366) #10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i127.i, i32 noundef 4) #10
  %139 = ptrtoint ptr %call.i127.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %call.i127.i, align 4
  %and.i.i.i.i.i = and i32 %140, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.end10.i.if.then.i128.i_crit_edge

if.end10.i.if.then.i128.i_crit_edge:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i128.i

trylock_buffer.exit.i.i:                          ; preds = %if.end10.i
  call void @llvm.prefetch.p0(ptr nonnull %call.i127.i, i32 1, i32 3, i32 1) #10
  %141 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i127.i, ptr nonnull %call.i127.i, i32 4, ptr nonnull elementtype(i32) %call.i127.i) #10, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %141, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  %142 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not.not.i.i = icmp eq i32 %142, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i128.i_crit_edge

trylock_buffer.exit.i.i.if.then.i128.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i128.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_buffer.exit.i

if.then.i128.i:                                   ; preds = %trylock_buffer.exit.i.i.if.then.i128.i_crit_edge, %if.end10.i.if.then.i128.i_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call.i127.i) #10
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i128.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i127.i, i32 0, i32 5
  %143 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %b_data.i, align 4
  %145 = call ptr @memset(ptr %144, i32 0, i32 %107)
  %146 = load ptr, ptr %b_data.i, align 4
  %arrayidx14.i = getelementptr i32, ptr %add.ptr94, i32 %n.0145.i
  %147 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx14.i, align 4
  %add.ptr.i235 = getelementptr i32, ptr %146, i32 %148
  %149 = ptrtoint ptr %arrayidx11.i234 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr.i235, ptr %arrayidx11.i234, align 4
  %arrayidx16.i = getelementptr [4 x i32], ptr %new_blocks.i, i32 0, i32 %n.0145.i
  %150 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx16.i, align 4
  %152 = call i32 @llvm.bswap.i32(i32 %151) #10
  %key18.i = getelementptr %struct.Indirect, ptr %partial.5, i32 %n.0145.i, i32 1
  %153 = ptrtoint ptr %key18.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %key18.i, align 4
  %154 = ptrtoint ptr %add.ptr.i235 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %152, ptr %add.ptr.i235, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0145.i, i32 %sub86)
  %cmp23.i = icmp ne i32 %n.0145.i, %sub86
  %brmerge.i = select i1 %cmp23.i, i1 true, i1 %cmp28141.i
  br i1 %brmerge.i, label %lock_buffer.exit.i.if.end35.i_crit_edge, label %lock_buffer.exit.i.for.body30.i_crit_edge

lock_buffer.exit.i.for.body30.i_crit_edge:        ; preds = %lock_buffer.exit.i
  br label %for.body30.i

lock_buffer.exit.i.if.end35.i_crit_edge:          ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

for.body30.i:                                     ; preds = %for.body30.i.for.body30.i_crit_edge, %lock_buffer.exit.i.for.body30.i_crit_edge
  %current_block.0143.i = phi i32 [ %inc.i, %for.body30.i.for.body30.i_crit_edge ], [ %151, %lock_buffer.exit.i.for.body30.i_crit_edge ]
  %i.0142.i = phi i32 [ %inc34.i, %for.body30.i.for.body30.i_crit_edge ], [ 1, %lock_buffer.exit.i.for.body30.i_crit_edge ]
  %inc.i = add i32 %current_block.0143.i, 1
  %155 = call i32 @llvm.bswap.i32(i32 %inc.i) #10
  %156 = ptrtoint ptr %arrayidx11.i234 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx11.i234, align 4
  %add.ptr33.i = getelementptr i32, ptr %157, i32 %i.0142.i
  %158 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %155, ptr %add.ptr33.i, align 4
  %inc34.i = add nuw nsw i32 %i.0142.i, 1
  %exitcond.not.i = icmp eq i32 %inc34.i, %retval.0.i135.i
  br i1 %exitcond.not.i, label %for.body30.i.if.end35.i_crit_edge, label %for.body30.i.for.body30.i_crit_edge

for.body30.i.for.body30.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30.i

for.body30.i.if.end35.i_crit_edge:                ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.end35.i:                                       ; preds = %for.body30.i.if.end35.i_crit_edge, %lock_buffer.exit.i.if.end35.i_crit_edge
  %159 = ptrtoint ptr %call.i127.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %call.i127.i, align 4
  %and1.i.i.i = and i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i236 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i236, label %if.then.i.i237, label %if.end35.i.set_buffer_uptodate.exit.i_crit_edge

if.end35.i.set_buffer_uptodate.exit.i_crit_edge:  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_buffer_uptodate.exit.i

if.then.i.i237:                                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i127.i) #10
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i.i237, %if.end35.i.set_buffer_uptodate.exit.i_crit_edge
  call void @unlock_buffer(ptr noundef nonnull %call.i127.i) #10
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %call.i127.i, ptr noundef %inode) #10
  %161 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %inode, align 8
  %163 = and i16 %162, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %163)
  %cmp37.i = icmp eq i16 %163, 16384
  br i1 %cmp37.i, label %land.lhs.true.i238, label %set_buffer_uptodate.exit.i.for.inc47.i_crit_edge

set_buffer_uptodate.exit.i.for.inc47.i_crit_edge: ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc47.i

land.lhs.true.i238:                               ; preds = %set_buffer_uptodate.exit.i
  %164 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %165, i32 0, i32 10
  %166 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %s_flags.i, align 4
  %and40.i = and i32 %167, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %lor.lhs.false.i, label %land.lhs.true.i238.if.then44.i_crit_edge

land.lhs.true.i238.if.then44.i_crit_edge:         ; preds = %land.lhs.true.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i238
  %168 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %i_flags.i, align 4
  %and42.i = and i32 %169, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %lor.lhs.false.i.for.inc47.i_crit_edge, label %lor.lhs.false.i.if.then44.i_crit_edge

lor.lhs.false.i.if.then44.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44.i

lor.lhs.false.i.for.inc47.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc47.i

if.then44.i:                                      ; preds = %lor.lhs.false.i.if.then44.i_crit_edge, %land.lhs.true.i238.if.then44.i_crit_edge
  %call45.i = call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i127.i) #10
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %if.then44.i, %lor.lhs.false.i.for.inc47.i_crit_edge, %set_buffer_uptodate.exit.i.for.inc47.i_crit_edge
  %inc48.i = add nuw nsw i32 %n.0145.i, 1
  %exitcond.not = icmp eq i32 %inc48.i, %smax
  br i1 %exitcond.not, label %for.inc47.i.ext2_alloc_branch.exit_crit_edge, label %for.inc47.i.for.body.i_crit_edge

for.inc47.i.for.body.i_crit_edge:                 ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc47.i.ext2_alloc_branch.exit_crit_edge:     ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_alloc_branch.exit

for.cond59.preheader.i:                           ; preds = %bforget.exit.i.for.cond59.preheader.i_crit_edge, %if.then9.i.for.cond59.preheader.i_crit_edge
  br i1 %cmp.i219, label %for.cond59.preheader.i.for.body62.i_crit_edge, label %for.cond59.preheader.i.for.end66.i_crit_edge

for.cond59.preheader.i.for.end66.i_crit_edge:     ; preds = %for.cond59.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end66.i

for.cond59.preheader.i.for.body62.i_crit_edge:    ; preds = %for.cond59.preheader.i
  br label %for.body62.i

for.body53.i:                                     ; preds = %bforget.exit.i.for.body53.i_crit_edge, %if.then9.i.for.body53.i_crit_edge
  %i.1147.i = phi i32 [ %inc57.i, %bforget.exit.i.for.body53.i_crit_edge ], [ 1, %if.then9.i.for.body53.i_crit_edge ]
  %bh55.i = getelementptr %struct.Indirect, ptr %partial.5, i32 %i.1147.i, i32 2
  %170 = ptrtoint ptr %bh55.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bh55.i, align 4
  %tobool.not.i130.i = icmp eq ptr %171, null
  br i1 %tobool.not.i130.i, label %for.body53.i.bforget.exit.i_crit_edge, label %if.then.i131.i

for.body53.i.bforget.exit.i_crit_edge:            ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bforget.exit.i

if.then.i131.i:                                   ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__bforget(ptr noundef nonnull %171) #10
  br label %bforget.exit.i

bforget.exit.i:                                   ; preds = %if.then.i131.i, %for.body53.i.bforget.exit.i_crit_edge
  %inc57.i = add nuw nsw i32 %i.1147.i, 1
  %exitcond154.not.i = icmp eq i32 %inc57.i, %n.0145.i
  br i1 %exitcond154.not.i, label %bforget.exit.i.for.cond59.preheader.i_crit_edge, label %bforget.exit.i.for.body53.i_crit_edge

bforget.exit.i.for.body53.i_crit_edge:            ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53.i

bforget.exit.i.for.cond59.preheader.i_crit_edge:  ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond59.preheader.i

for.body62.i:                                     ; preds = %for.body62.i.for.body62.i_crit_edge, %for.cond59.preheader.i.for.body62.i_crit_edge
  %i.2149.i = phi i32 [ %inc65.i, %for.body62.i.for.body62.i_crit_edge ], [ 0, %for.cond59.preheader.i.for.body62.i_crit_edge ]
  %arrayidx63.i = getelementptr [4 x i32], ptr %new_blocks.i, i32 0, i32 %i.2149.i
  %172 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx63.i, align 4
  call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %173, i32 noundef 1) #10
  %inc65.i = add nuw nsw i32 %i.2149.i, 1
  %exitcond155.not.i = icmp eq i32 %inc65.i, %sub86
  br i1 %exitcond155.not.i, label %for.body62.i.for.end66.i_crit_edge, label %for.body62.i.for.body62.i_crit_edge

for.body62.i.for.body62.i_crit_edge:              ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body62.i

for.body62.i.for.end66.i_crit_edge:               ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end66.i

for.end66.i:                                      ; preds = %for.body62.i.for.end66.i_crit_edge, %for.cond59.preheader.i.for.end66.i_crit_edge
  %i.2.lcssa.i = phi i32 [ 0, %for.cond59.preheader.i.for.end66.i_crit_edge ], [ %sub86, %for.body62.i.for.end66.i_crit_edge ]
  %arrayidx67.i = getelementptr [4 x i32], ptr %new_blocks.i, i32 0, i32 %i.2.lcssa.i
  %174 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx67.i, align 4
  call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %175, i32 noundef %retval.0.i135.i) #10
  br label %ext2_alloc_branch.exit

ext2_alloc_branch.exit:                           ; preds = %for.end66.i, %for.inc47.i.ext2_alloc_branch.exit_crit_edge, %if.end.i232.ext2_alloc_branch.exit_crit_edge
  %count.4 = phi i32 [ %retval.0.i224, %for.end66.i ], [ %retval.0.i135.i, %if.end.i232.ext2_alloc_branch.exit_crit_edge ], [ %retval.0.i135.i, %for.inc47.i.ext2_alloc_branch.exit_crit_edge ]
  %176 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %retval.0.i240 = load i32, ptr %err.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_blocks.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #10
  %177 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %retval.0.i240, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i240)
  %tobool96.not = icmp eq i32 %retval.0.i240, 0
  br i1 %tobool96.not, label %if.end119, label %ext2_alloc_branch.exit.if.then97_crit_edge

ext2_alloc_branch.exit.if.then97_crit_edge:       ; preds = %ext2_alloc_branch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then97

if.then97:                                        ; preds = %ext2_alloc_branch.exit.if.then97_crit_edge, %ext2_alloc_branch.exit.thread
  call void @mutex_unlock(ptr noundef %truncate_mutex) #10
  br label %cleanup129

if.end119:                                        ; preds = %ext2_alloc_branch.exit
  %178 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %new, align 1
  %179 = ptrtoint ptr %i_block_alloc_info.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %i_block_alloc_info.i, align 8
  %181 = ptrtoint ptr %key.i231 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %key.i231, align 4
  %183 = ptrtoint ptr %partial.5 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %partial.5, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %182, ptr %184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub86)
  %cmp.i243 = icmp eq i32 %sub86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.4)
  %cmp1.i244 = icmp sgt i32 %count.4, 1
  %or.cond.i = and i1 %cmp.i243, %cmp1.i244
  br i1 %or.cond.i, label %if.then.i245, label %if.end119.if.end.i250_crit_edge

if.end119.if.end.i250_crit_edge:                  ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i250

if.then.i245:                                     ; preds = %if.end119
  %186 = ptrtoint ptr %key.i231 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %key.i231, align 4
  %188 = call i32 @llvm.bswap.i32(i32 %187) #10
  br label %for.body.i248

for.body.i248:                                    ; preds = %for.body.i248.for.body.i248_crit_edge, %if.then.i245
  %current_block.0.in37.i = phi i32 [ %188, %if.then.i245 ], [ %current_block.0.i, %for.body.i248.for.body.i248_crit_edge ]
  %i.036.i = phi i32 [ 1, %if.then.i245 ], [ %inc5.i, %for.body.i248.for.body.i248_crit_edge ]
  %current_block.0.i = add i32 %current_block.0.in37.i, 1
  %189 = call i32 @llvm.bswap.i32(i32 %current_block.0.i) #10
  %190 = ptrtoint ptr %partial.5 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %partial.5, align 4
  %add.ptr.i246 = getelementptr i32, ptr %191, i32 %i.036.i
  %192 = ptrtoint ptr %add.ptr.i246 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %189, ptr %add.ptr.i246, align 4
  %inc5.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i247 = icmp eq i32 %inc5.i, %count.4
  br i1 %exitcond.not.i247, label %for.body.i248.if.end.i250_crit_edge, label %for.body.i248.for.body.i248_crit_edge

for.body.i248.for.body.i248_crit_edge:            ; preds = %for.body.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i248

for.body.i248.if.end.i250_crit_edge:              ; preds = %for.body.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i250

if.end.i250:                                      ; preds = %for.body.i248.if.end.i250_crit_edge, %if.end119.if.end.i250_crit_edge
  %tobool.not.i249 = icmp eq ptr %180, null
  br i1 %tobool.not.i249, label %if.end.i250.if.end11.i_crit_edge, label %if.then6.i

if.end.i250.if.end11.i_crit_edge:                 ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #12
  %add7.i = add i32 %count.4, -1
  %sub.i251 = add i32 %add7.i, %conv
  %last_alloc_logical_block.i252 = getelementptr inbounds %struct.ext2_block_alloc_info, ptr %180, i32 0, i32 1
  %193 = ptrtoint ptr %last_alloc_logical_block.i252 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %sub.i251, ptr %last_alloc_logical_block.i252, align 4
  %key8.i = getelementptr %struct.Indirect, ptr %partial.5, i32 %sub86, i32 1
  %194 = ptrtoint ptr %key8.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %key8.i, align 4
  %196 = call i32 @llvm.bswap.i32(i32 %195) #10
  %sub10.i = add i32 %196, %add7.i
  %last_alloc_physical_block.i253 = getelementptr inbounds %struct.ext2_block_alloc_info, ptr %180, i32 0, i32 2
  %197 = ptrtoint ptr %last_alloc_physical_block.i253 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %sub10.i, ptr %last_alloc_physical_block.i253, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end.i250.if.end11.i_crit_edge
  %bh.i = getelementptr inbounds %struct.Indirect, ptr %partial.5, i32 0, i32 2
  %198 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %bh.i, align 4
  %tobool12.not.i = icmp eq ptr %199, null
  br i1 %tobool12.not.i, label %if.end11.i.ext2_splice_branch.exit_crit_edge, label %if.then13.i

if.end11.i.ext2_splice_branch.exit_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_splice_branch.exit

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %199, ptr noundef %inode) #10
  br label %ext2_splice_branch.exit

ext2_splice_branch.exit:                          ; preds = %if.then13.i, %if.end11.i.ext2_splice_branch.exit_crit_edge
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #10
  %200 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %got_it.sink.split

got_it.sink.split:                                ; preds = %ext2_splice_branch.exit, %if.then67
  %count.5.ph = phi i32 [ %count.4, %ext2_splice_branch.exit ], [ %inc68, %if.then67 ]
  call void @mutex_unlock(ptr noundef %truncate_mutex) #10
  br label %got_it

got_it:                                           ; preds = %got_it.sink.split, %while.end.got_it_crit_edge
  %count.5 = phi i32 [ %count.0.lcssa, %while.end.got_it_crit_edge ], [ %count.5.ph, %got_it.sink.split ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.5, i32 %sub54.i272)
  %cmp122 = icmp sgt i32 %count.5, %sub54.i272
  br i1 %cmp122, label %if.then124, label %got_it.if.end125_crit_edge

got_it.if.end125_crit_edge:                       ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.then124:                                       ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %boundary to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 1, ptr %boundary, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %got_it.if.end125_crit_edge
  %202 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %count.5, ptr %err, align 4
  %add.ptr127 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i.ph
  %add.ptr128 = getelementptr %struct.Indirect, ptr %add.ptr127, i32 -1
  br label %cleanup129

cleanup129:                                       ; preds = %if.end125, %if.then97, %if.then72, %lor.lhs.false.cleanup129_crit_edge, %if.end44.cleanup129_crit_edge
  %partial.6 = phi ptr [ %partial.3, %lor.lhs.false.cleanup129_crit_edge ], [ %call65, %if.then72 ], [ %partial.5, %if.then97 ], [ %add.ptr128, %if.end125 ], [ %partial.3, %if.end44.cleanup129_crit_edge ]
  %cmp132308 = icmp ugt ptr %partial.6, %chain
  br i1 %cmp132308, label %cleanup129.while.body134_crit_edge, label %cleanup129.while.end137_crit_edge

cleanup129.while.end137_crit_edge:                ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end137

cleanup129.while.body134_crit_edge:               ; preds = %cleanup129
  br label %while.body134

while.body134:                                    ; preds = %brelse.exit257.while.body134_crit_edge, %cleanup129.while.body134_crit_edge
  %partial.7309 = phi ptr [ %incdec.ptr136, %brelse.exit257.while.body134_crit_edge ], [ %partial.6, %cleanup129.while.body134_crit_edge ]
  %bh135 = getelementptr inbounds %struct.Indirect, ptr %partial.7309, i32 0, i32 2
  %203 = ptrtoint ptr %bh135 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bh135, align 4
  %tobool.not.i254 = icmp eq ptr %204, null
  br i1 %tobool.not.i254, label %while.body134.brelse.exit257_crit_edge, label %if.then.i255

while.body134.brelse.exit257_crit_edge:           ; preds = %while.body134
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit257

if.then.i255:                                     ; preds = %while.body134
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %204) #10
  br label %brelse.exit257

brelse.exit257:                                   ; preds = %if.then.i255, %while.body134.brelse.exit257_crit_edge
  %incdec.ptr136 = getelementptr %struct.Indirect, ptr %partial.7309, i32 -1
  %cmp132 = icmp ugt ptr %incdec.ptr136, %chain
  br i1 %cmp132, label %brelse.exit257.while.body134_crit_edge, label %brelse.exit257.while.end137_crit_edge

brelse.exit257.while.end137_crit_edge:            ; preds = %brelse.exit257
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end137

brelse.exit257.while.body134_crit_edge:           ; preds = %brelse.exit257
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body134

while.end137:                                     ; preds = %brelse.exit257.while.end137_crit_edge, %cleanup129.while.end137_crit_edge
  %205 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp138 = icmp sgt i32 %206, 0
  br i1 %cmp138, label %if.then140, label %while.end137.cleanup145_crit_edge

while.end137.cleanup145_crit_edge:                ; preds = %while.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup145

if.then140:                                       ; preds = %while.end137
  call void @__sanitizer_cov_trace_pc() #12
  %sub141 = add nsw i32 %n.0.i.ph, -1
  %key143 = getelementptr [4 x %struct.Indirect], ptr %chain, i32 0, i32 %sub141, i32 1
  %207 = ptrtoint ptr %key143 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %key143, align 4
  %209 = call i32 @llvm.bswap.i32(i32 %208)
  %210 = ptrtoint ptr %bno to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %bno, align 4
  br label %cleanup145

cleanup145:                                       ; preds = %if.then140, %while.end137.cleanup145_crit_edge, %if.else44.i, %if.then.i
  %retval.0 = phi i32 [ %206, %if.then140 ], [ %206, %while.end137.cleanup145_crit_edge ], [ -5, %if.then.i ], [ -5, %if.else44.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %chain) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %flags, ptr nocapture noundef %iomap, ptr nocapture noundef readnone %srcmap) #0 align 64 {
entry:
  %new = alloca i8, align 1
  %boundary = alloca i8, align 1
  %bno = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %sh_prom = zext i8 %1 to i64
  %shr = ashr i64 %offset, %sh_prom
  %shl = shl nuw i32 1, %conv
  %conv2 = sext i32 %shl to i64
  %add = add i64 %length, -1
  %sub = add i64 %add, %conv2
  %shr4 = ashr i64 %sub, %sh_prom
  %conv5 = trunc i64 %shr4 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new) #10
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %new, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %boundary) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bno) #10
  %3 = ptrtoint ptr %bno to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bno, align 4, !annotation !64
  %conv6 = and i64 %shr, 4294967295
  %and = and i32 %flags, 1
  %call7 = call fastcc i32 @ext2_get_blocks(ptr noundef %inode, i64 noundef %conv6, i32 noundef %conv5, ptr noundef nonnull %bno, ptr noundef nonnull %new, ptr noundef nonnull %boundary, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %flags9 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %4 = ptrtoint ptr %flags9 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags9, align 2
  %shl12 = shl i64 %conv6, %sh_prom
  %offset13 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %5 = ptrtoint ptr %offset13 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %shl12, ptr %offset13, align 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev, align 4
  %bdev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 5
  %10 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %bdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp18 = icmp eq i32 %call7, 0
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  br i1 %cmp18, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %type, align 8
  %12 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %iomap, align 8
  br label %if.end43

if.else24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %type, align 8
  %14 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bno, align 4
  %conv26 = zext i32 %15 to i64
  %shl28 = shl i64 %conv26, %sh_prom
  %16 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shl28, ptr %iomap, align 8
  %conv3686 = zext i32 %call7 to i64
  %shl38 = shl i64 %conv3686, %sh_prom
  %17 = ptrtoint ptr %flags9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8, ptr %flags9, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.else24, %if.then20
  %shl38.sink = phi i64 [ %conv2, %if.then20 ], [ %shl38, %if.else24 ]
  %18 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shl38.sink, ptr %18, align 8
  %20 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %new, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool44.not = icmp eq i8 %21, 0
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %flags9 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags9, align 2
  %24 = or i16 %23, 1
  store i16 %24, ptr %flags9, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %entry.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bno) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %boundary) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_iomap_end(ptr nocapture noundef readonly %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %written, i32 noundef %flags, ptr nocapture noundef readonly %iomap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp ne i16 %1, 2
  %conv2 = sext i32 %written to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv2, i64 %length)
  %cmp3 = icmp sge i64 %conv2, %length
  %or.cond.not = or i1 %cmp3, %cmp
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond7 = or i1 %tobool.not, %or.cond.not
  br i1 %or.cond7, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %add = add i64 %length, %offset
  tail call fastcc void @ext2_write_failed(ptr noundef %3, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %0 = tail call i64 @llvm.umin.i64(i64 %call, i64 %len)
  %call1 = tail call i32 @iomap_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %0, ptr noundef nonnull @ext2_iomap_ops) #10
  tail call void @up_write(ptr noundef %i_rwsem.i) #10
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !56
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !57
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !58

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !59
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !70
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @ext2_get_block, ptr noundef %wbc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @ext2_get_block) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @ext2_get_block) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext2_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @ext2_get_block) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef nonnull @ext2_get_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @ext2_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %len)
  %cmp = icmp ult i32 %call, %len
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @ext2_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ext2_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @ext2_get_block) #10
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %8 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %13, ptr noundef %iter, ptr noundef nonnull @ext2_get_block, ptr noundef null, ptr noundef null, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %14 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data_source.i, align 2, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp3 = icmp eq i8 %15, 1
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv5 = zext i32 %7 to i64
  %add = add i64 %9, %conv5
  tail call fastcc void @ext2_write_failed(ptr noundef %3, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @buffer_migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_is_partially_uptodate(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_nobh_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nobh_writepage(ptr noundef %page, ptr noundef nonnull @ext2_get_block, ptr noundef %wbc) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_nobh_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nobh_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata, ptr noundef nonnull @ext2_get_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @ext2_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nobh_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ext2_set_inode_flags(ptr nocapture noundef %inode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr i8, ptr %inode, i32 -268
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %i_flags1 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags1, align 4
  %and = and i32 %3, -80
  %and2 = lshr i32 %1, 3
  %4 = and i32 %and2, 1
  %5 = or i32 %4, %and
  %6 = and i32 %and2, 4
  %7 = or i32 %6, %5
  store i32 %7, ptr %i_flags1, align 4
  %and10 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %entry.if.end15_crit_edge, label %if.then12

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %i_flags1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags1, align 4
  %or14 = or i32 %9, 8
  store i32 %or14, ptr %i_flags1, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %entry.if.end15_crit_edge
  %and16 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %i_flags1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags1, align 4
  %or20 = or i32 %11, 2
  store i32 %or20, ptr %i_flags1, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %and22 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %i_flags1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags1, align 4
  %or26 = or i32 %13, 64
  store i32 %or26, ptr %i_flags1, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ext2_set_file_ops(ptr nocapture noundef %inode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %0 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ext2_file_inode_operations, ptr %i_op, align 8
  %1 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ext2_file_operations, ptr %1, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_mount_opt, align 4
  %and1 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %i_mapping7 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %9 = ptrtoint ptr %i_mapping7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_mapping7, align 8
  %a_ops8 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 9
  %ext2_aops.ext2_nobh_aops = select i1 %tobool2.not, ptr @ext2_aops, ptr @ext2_nobh_aops
  %11 = ptrtoint ptr %a_ops8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ext2_aops.ext2_nobh_aops, ptr %a_ops8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext2_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #10
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bh, align 4
  %call = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %1 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_state, align 8
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call, i32 -328
  %i_block_alloc_info = getelementptr i8, ptr %call, i32 -240
  %3 = ptrtoint ptr %i_block_alloc_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %i_block_alloc_info, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call6 = call fastcc ptr @ext2_get_inode(ptr noundef %5, i32 noundef %ino, ptr noundef nonnull %bh)
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.bad_inode_crit_edge, label %if.end10

if.end4.bad_inode_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_inode

if.end10:                                         ; preds = %if.end4
  %6 = ptrtoint ptr %call6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %call6, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %call, align 8
  %i_uid12 = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 1
  %10 = ptrtoint ptr %i_uid12 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %i_uid12, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %i_gid13 = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 7
  %13 = ptrtoint ptr %i_gid13 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %i_gid13, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv14 = zext i16 %15 to i32
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext2_sb_info, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_mount_opt, align 4
  %and17 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end10.if.end25_crit_edge

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %l_i_uid_high = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 17, i32 0, i32 3
  %22 = ptrtoint ptr %l_i_uid_high to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %l_i_uid_high, align 4
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv20 = zext i16 %24 to i32
  %shl = shl nuw i32 %conv20, 16
  %or = or i32 %shl, %conv
  %l_i_gid_high = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 17, i32 0, i32 4
  %25 = ptrtoint ptr %l_i_gid_high to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %l_i_gid_high, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv22 = zext i16 %27 to i32
  %shl23 = shl nuw i32 %conv22, 16
  %or24 = or i32 %shl23, %conv14
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end10.if.end25_crit_edge
  %i_uid.0 = phi i32 [ %conv, %if.end10.if.end25_crit_edge ], [ %or, %if.then19 ]
  %i_gid.0 = phi i32 [ %conv14, %if.end10.if.end25_crit_edge ], [ %or24, %if.then19 ]
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 53
  %28 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %29, i32 noundef %i_uid.0) #10
  %30 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i285 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 53
  %33 = ptrtoint ptr %s_user_ns.i.i285 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_user_ns.i.i285, align 8
  %call1.i286 = tail call i32 @make_kgid(ptr noundef %34, i32 noundef %i_gid.0) #10
  %35 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call1.i286, ptr %i_gid.i, align 8
  %i_links_count = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 8
  %36 = ptrtoint ptr %i_links_count to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %i_links_count, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv26 = zext i16 %38 to i32
  tail call void @set_nlink(ptr noundef nonnull %call, i32 noundef %conv26) #10
  %i_size = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 2
  %39 = ptrtoint ptr %i_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_size, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %conv27 = zext i32 %41 to i64
  %i_size28 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %42 = ptrtoint ptr %i_size28 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv27, ptr %i_size28, align 8
  %i_atime = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 3
  %43 = ptrtoint ptr %i_atime to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_atime, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %conv29 = sext i32 %45 to i64
  %i_atime30 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %46 = ptrtoint ptr %i_atime30 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv29, ptr %i_atime30, align 8
  %i_ctime = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 4
  %47 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_ctime, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %conv31 = sext i32 %49 to i64
  %i_ctime32 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %50 = ptrtoint ptr %i_ctime32 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv31, ptr %i_ctime32, align 8
  %i_mtime = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 5
  %51 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_mtime, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %conv34 = sext i32 %53 to i64
  %i_mtime35 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %54 = ptrtoint ptr %i_mtime35 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv34, ptr %i_mtime35, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17, i32 1
  %55 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec39 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16, i32 1
  %56 = ptrtoint ptr %tv_nsec39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %tv_nsec39, align 8
  %tv_nsec41 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15, i32 1
  %57 = ptrtoint ptr %tv_nsec41 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %tv_nsec41, align 8
  %i_dtime = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 6
  %58 = ptrtoint ptr %i_dtime to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_dtime, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %i_dtime42 = getelementptr i8, ptr %call, i32 -248
  %61 = ptrtoint ptr %i_dtime42 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %i_dtime42, align 8
  %62 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 12
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp = icmp eq i32 %64, 0
  br i1 %cmp, label %land.lhs.true, label %if.end25.if.end51_crit_edge

if.end25.if.end51_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end25
  %65 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %call, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp46 = icmp ne i16 %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool49.not = icmp eq i32 %59, 0
  %or.cond = select i1 %cmp46, i1 %tobool49.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end51_crit_edge, label %land.lhs.true.bad_inode_crit_edge

land.lhs.true.bad_inode_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_inode

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true.if.end51_crit_edge, %if.end25.if.end51_crit_edge
  %i_blocks = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 9
  %67 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_blocks, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %conv52 = zext i32 %69 to i64
  %i_blocks53 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %70 = ptrtoint ptr %i_blocks53 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv52, ptr %i_blocks53, align 8
  %i_flags = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 10
  %71 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i_flags, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %i_flags54 = getelementptr i8, ptr %call, i32 -268
  %74 = ptrtoint ptr %i_flags54 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %i_flags54, align 4
  %i_flags1.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 4
  %75 = ptrtoint ptr %i_flags1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %i_flags1.i, align 4
  %and.i = and i32 %76, -80
  %and2.i287 = lshr i32 %73, 3
  %77 = and i32 %and2.i287, 1
  %78 = or i32 %77, %and.i
  %79 = and i32 %and2.i287, 4
  %80 = or i32 %78, %79
  %and10.i = lshr i32 %73, 1
  %81 = and i32 %and10.i, 8
  %82 = or i32 %81, %80
  store i32 %82, ptr %i_flags1.i, align 4
  %and16.i = and i32 %73, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end51.if.end21.i_crit_edge, label %if.then18.i

if.end51.if.end21.i_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %i_flags1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i_flags1.i, align 4
  %or20.i = or i32 %84, 2
  store i32 %or20.i, ptr %i_flags1.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end51.if.end21.i_crit_edge
  %and22.i = and i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.ext2_set_inode_flags.exit_crit_edge, label %if.then24.i

if.end21.i.ext2_set_inode_flags.exit_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_set_inode_flags.exit

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %i_flags1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %i_flags1.i, align 4
  %or26.i = or i32 %86, 64
  store i32 %or26.i, ptr %i_flags1.i, align 4
  br label %ext2_set_inode_flags.exit

ext2_set_inode_flags.exit:                        ; preds = %if.then24.i, %if.end21.i.ext2_set_inode_flags.exit_crit_edge
  %i_faddr = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 16
  %87 = ptrtoint ptr %i_faddr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %i_faddr, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %i_faddr55 = getelementptr i8, ptr %call, i32 -264
  %90 = ptrtoint ptr %i_faddr55 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %i_faddr55, align 8
  %osd256 = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 17
  %91 = ptrtoint ptr %osd256 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %osd256, align 4
  %i_frag_no = getelementptr i8, ptr %call, i32 -260
  %93 = ptrtoint ptr %i_frag_no to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %i_frag_no, align 4
  %l_i_fsize = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 17, i32 0, i32 1
  %94 = ptrtoint ptr %l_i_fsize to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %l_i_fsize, align 1
  %i_frag_size = getelementptr i8, ptr %call, i32 -259
  %96 = ptrtoint ptr %i_frag_size to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %i_frag_size, align 1
  %i_file_acl = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 14
  %97 = ptrtoint ptr %i_file_acl to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %i_file_acl, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %i_file_acl58 = getelementptr i8, ptr %call, i32 -256
  %100 = ptrtoint ptr %i_file_acl58 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %i_file_acl58, align 8
  %i_dir_acl = getelementptr i8, ptr %call, i32 -252
  %101 = ptrtoint ptr %i_dir_acl to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %i_dir_acl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool60.not = icmp eq i32 %98, 0
  br i1 %tobool60.not, label %ext2_set_inode_flags.exit.if.end68_crit_edge, label %land.lhs.true61

ext2_set_inode_flags.exit.if.end68_crit_edge:     ; preds = %ext2_set_inode_flags.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true61:                                  ; preds = %ext2_set_inode_flags.exit
  %s_fs_info.i288 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %102 = ptrtoint ptr %s_fs_info.i288 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_fs_info.i288, align 16
  %call64 = tail call i32 @ext2_data_block_valid(ptr noundef %103, i32 noundef %99, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then66, label %land.lhs.true61.if.end68_crit_edge

land.lhs.true61.if.end68_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then66:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %i_file_acl58 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %i_file_acl58, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %105) #10
  br label %bad_inode

if.end68:                                         ; preds = %land.lhs.true61.if.end68_crit_edge, %ext2_set_inode_flags.exit.if.end68_crit_edge
  %106 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %call, align 8
  %108 = and i16 %107, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %108)
  %cmp72 = icmp eq i16 %108, -32768
  %i_dir_acl75 = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 15
  %109 = ptrtoint ptr %i_dir_acl75 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %i_dir_acl75, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  br i1 %cmp72, label %if.then74, label %if.else

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %conv76 = zext i32 %111 to i64
  %shl77 = shl nuw i64 %conv76, 32
  %112 = ptrtoint ptr %i_size28 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %i_size28, align 8
  %or79 = or i64 %shl77, %113
  store i64 %or79, ptr %i_size28, align 8
  br label %if.end82

if.else:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %i_dir_acl to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %111, ptr %i_dir_acl, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then74
  %call83 = tail call fastcc i64 @i_size_read(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call83)
  %cmp84 = icmp slt i64 %call83, 0
  br i1 %cmp84, label %if.end82.bad_inode_crit_edge, label %if.end87

if.end82.bad_inode_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_inode

if.end87:                                         ; preds = %if.end82
  %115 = ptrtoint ptr %i_dtime42 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %i_dtime42, align 8
  %i_generation = getelementptr inbounds %struct.ext2_inode, ptr %call6, i32 0, i32 13
  %116 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %i_generation, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  %i_generation89 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 49
  %119 = ptrtoint ptr %i_generation89 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %i_generation89, align 8
  %i_state90 = getelementptr i8, ptr %call, i32 -258
  %120 = ptrtoint ptr %i_state90 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %i_state90, align 2
  %sub = add i32 %ino, -1
  %121 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i289 = getelementptr inbounds %struct.super_block, ptr %122, i32 0, i32 33
  %123 = ptrtoint ptr %s_fs_info.i289 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %s_fs_info.i289, align 16
  %s_inodes_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s_inodes_per_group, align 4
  %div = udiv i32 %sub, %126
  %i_block_group = getelementptr i8, ptr %call, i32 -244
  %127 = ptrtoint ptr %i_block_group to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %div, ptr %i_block_group, align 4
  %i_dir_start_lookup = getelementptr i8, ptr %call, i32 -236
  %128 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %i_dir_start_lookup, align 4
  %arrayidx = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 0
  %129 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx, align 4
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %add.ptr.i, align 4
  %arrayidx.1 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 1
  %132 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.1, align 4
  %arrayidx95.1 = getelementptr i8, ptr %call, i32 -324
  %134 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx95.1, align 4
  %arrayidx.2 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 2
  %135 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.2, align 4
  %arrayidx95.2 = getelementptr i8, ptr %call, i32 -320
  %137 = ptrtoint ptr %arrayidx95.2 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %arrayidx95.2, align 4
  %arrayidx.3 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 3
  %138 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.3, align 4
  %arrayidx95.3 = getelementptr i8, ptr %call, i32 -316
  %140 = ptrtoint ptr %arrayidx95.3 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %arrayidx95.3, align 4
  %arrayidx.4 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 4
  %141 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx.4, align 4
  %arrayidx95.4 = getelementptr i8, ptr %call, i32 -312
  %143 = ptrtoint ptr %arrayidx95.4 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %arrayidx95.4, align 4
  %arrayidx.5 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 5
  %144 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.5, align 4
  %arrayidx95.5 = getelementptr i8, ptr %call, i32 -308
  %146 = ptrtoint ptr %arrayidx95.5 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %arrayidx95.5, align 4
  %arrayidx.6 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 6
  %147 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.6, align 4
  %arrayidx95.6 = getelementptr i8, ptr %call, i32 -304
  %149 = ptrtoint ptr %arrayidx95.6 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %arrayidx95.6, align 4
  %arrayidx.7 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 7
  %150 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.7, align 4
  %arrayidx95.7 = getelementptr i8, ptr %call, i32 -300
  %152 = ptrtoint ptr %arrayidx95.7 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx95.7, align 4
  %arrayidx.8 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 8
  %153 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.8, align 4
  %arrayidx95.8 = getelementptr i8, ptr %call, i32 -296
  %155 = ptrtoint ptr %arrayidx95.8 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx95.8, align 4
  %arrayidx.9 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 9
  %156 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.9, align 4
  %arrayidx95.9 = getelementptr i8, ptr %call, i32 -292
  %158 = ptrtoint ptr %arrayidx95.9 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx95.9, align 4
  %arrayidx.10 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 10
  %159 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.10, align 4
  %arrayidx95.10 = getelementptr i8, ptr %call, i32 -288
  %161 = ptrtoint ptr %arrayidx95.10 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %arrayidx95.10, align 4
  %arrayidx.11 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 11
  %162 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.11, align 4
  %arrayidx95.11 = getelementptr i8, ptr %call, i32 -284
  %164 = ptrtoint ptr %arrayidx95.11 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx95.11, align 4
  %arrayidx.12 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 12
  %165 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.12, align 4
  %arrayidx95.12 = getelementptr i8, ptr %call, i32 -280
  %167 = ptrtoint ptr %arrayidx95.12 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx95.12, align 4
  %arrayidx.13 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 13
  %168 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.13, align 4
  %arrayidx95.13 = getelementptr i8, ptr %call, i32 -276
  %170 = ptrtoint ptr %arrayidx95.13 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx95.13, align 4
  %arrayidx.14 = getelementptr %struct.ext2_inode, ptr %call6, i32 0, i32 12, i32 14
  %171 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.14, align 4
  %arrayidx95.14 = getelementptr i8, ptr %call, i32 -272
  %173 = ptrtoint ptr %arrayidx95.14 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %arrayidx95.14, align 4
  %174 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %call, align 8
  %176 = and i16 %175, -4096
  %177 = zext i16 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %176, label %if.else150 [
    i16 -32768, label %if.then101
    i16 16384, label %if.then108
    i16 -24576, label %if.then125
  ]

if.then101:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %178 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @ext2_file_inode_operations, ptr %i_op.i, align 8
  %179 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @ext2_file_operations, ptr %179, align 8
  %181 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %182, i32 0, i32 33
  %183 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ext2_sb_info, ptr %184, i32 0, i32 15
  %185 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %s_mount_opt.i, align 4
  %and1.i290 = and i32 %186, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i290)
  %tobool2.not.i = icmp eq i32 %and1.i290, 0
  %i_mapping7.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %187 = ptrtoint ptr %i_mapping7.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %i_mapping7.i, align 8
  %a_ops8.i = getelementptr inbounds %struct.address_space, ptr %188, i32 0, i32 9
  %ext2_aops.ext2_nobh_aops.i = select i1 %tobool2.not.i, ptr @ext2_aops, ptr @ext2_nobh_aops
  %189 = ptrtoint ptr %a_ops8.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %ext2_aops.ext2_nobh_aops.i, ptr %a_ops8.i, align 4
  br label %if.end169

if.then108:                                       ; preds = %if.end87
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %190 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @ext2_dir_inode_operations, ptr %i_op, align 8
  %191 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @ext2_dir_operations, ptr %191, align 8
  %193 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i291 = getelementptr inbounds %struct.super_block, ptr %194, i32 0, i32 33
  %195 = ptrtoint ptr %s_fs_info.i291 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %s_fs_info.i291, align 16
  %s_mount_opt111 = getelementptr inbounds %struct.ext2_sb_info, ptr %196, i32 0, i32 15
  %197 = ptrtoint ptr %s_mount_opt111 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %s_mount_opt111, align 4
  %and112 = and i32 %198, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  %i_mapping116 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %199 = ptrtoint ptr %i_mapping116 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %i_mapping116, align 8
  %a_ops117 = getelementptr inbounds %struct.address_space, ptr %200, i32 0, i32 9
  br i1 %tobool113.not, label %if.else115, label %if.then114

if.then114:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %a_ops117 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @ext2_nobh_aops, ptr %a_ops117, align 4
  br label %if.end169

if.else115:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %202 = ptrtoint ptr %a_ops117 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @ext2_aops, ptr %a_ops117, align 4
  br label %if.end169

if.then125:                                       ; preds = %if.end87
  %203 = ptrtoint ptr %i_file_acl58 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %i_file_acl58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not.i = icmp eq i32 %204, 0
  br i1 %tobool.not.i, label %if.then125.ext2_inode_is_fast_symlink.exit_crit_edge, label %cond.true.i

if.then125.ext2_inode_is_fast_symlink.exit_crit_edge: ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_inode_is_fast_symlink.exit

cond.true.i:                                      ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  %205 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %i_sb, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %206, i32 0, i32 3
  %207 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %s_blocksize.i, align 16
  %shr.i = lshr i32 %208, 9
  br label %ext2_inode_is_fast_symlink.exit

ext2_inode_is_fast_symlink.exit:                  ; preds = %cond.true.i, %if.then125.ext2_inode_is_fast_symlink.exit_crit_edge
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ 0, %if.then125.ext2_inode_is_fast_symlink.exit_crit_edge ]
  %209 = ptrtoint ptr %i_blocks53 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %i_blocks53, align 8
  %211 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %210, i64 %211)
  %cmp3.i.not = icmp eq i64 %210, %211
  br i1 %cmp3.i.not, label %if.then128, label %if.else135

if.then128:                                       ; preds = %ext2_inode_is_fast_symlink.exit
  call void @__sanitizer_cov_trace_pc() #12
  %212 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 48
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %add.ptr.i, ptr %212, align 4
  %i_op130 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %214 = ptrtoint ptr %i_op130 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @ext2_fast_symlink_inode_operations, ptr %i_op130, align 8
  %215 = ptrtoint ptr %i_size28 to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %i_size28, align 8
  %conv134 = trunc i64 %216 to i32
  %217 = tail call i32 @llvm.umin.i32(i32 %conv134, i32 59) #10
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i, i32 %217
  %218 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %arrayidx.i, align 1
  br label %if.end169

if.else135:                                       ; preds = %ext2_inode_is_fast_symlink.exit
  %i_op136 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %219 = ptrtoint ptr %i_op136 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @ext2_symlink_inode_operations, ptr %i_op136, align 8
  tail call void @inode_nohighmem(ptr noundef nonnull %call) #10
  %220 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i294 = getelementptr inbounds %struct.super_block, ptr %221, i32 0, i32 33
  %222 = ptrtoint ptr %s_fs_info.i294 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %s_fs_info.i294, align 16
  %s_mount_opt139 = getelementptr inbounds %struct.ext2_sb_info, ptr %223, i32 0, i32 15
  %224 = ptrtoint ptr %s_mount_opt139 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %s_mount_opt139, align 4
  %and140 = and i32 %225, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  %i_mapping146 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %226 = ptrtoint ptr %i_mapping146 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %i_mapping146, align 8
  %a_ops147 = getelementptr inbounds %struct.address_space, ptr %227, i32 0, i32 9
  br i1 %tobool141.not, label %if.else145, label %if.then142

if.then142:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #12
  %228 = ptrtoint ptr %a_ops147 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @ext2_nobh_aops, ptr %a_ops147, align 4
  br label %if.end169

if.else145:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %a_ops147 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @ext2_aops, ptr %a_ops147, align 4
  br label %if.end169

if.else150:                                       ; preds = %if.end87
  %i_op151 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %230 = ptrtoint ptr %i_op151 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @ext2_special_inode_operations, ptr %i_op151, align 8
  %231 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool154.not = icmp eq i32 %232, 0
  br i1 %tobool154.not, label %if.else161, label %if.then155

if.then155:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #12
  %233 = and i32 %232, -65536
  %234 = tail call i32 @llvm.bswap.i32(i32 %233)
  %235 = shl nuw nsw i32 %234, 12
  %shl.i = and i32 %235, 267386880
  %and2.i = and i32 %234, 255
  %or.i = or i32 %shl.i, %and2.i
  tail call void @init_special_inode(ptr noundef nonnull %call, i16 noundef zeroext %175, i32 noundef %or.i) #10
  br label %if.end169

if.else161:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #12
  %236 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx.1, align 4
  %238 = tail call i32 @llvm.bswap.i32(i32 %237)
  %and1.i = and i32 %238, 255
  %shr2.i = lshr i32 %238, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i282 = or i32 %and3.i, %and1.i
  %239 = shl i32 %238, 12
  %shl.i283 = and i32 %239, -1048576
  %or4.i = or i32 %or.i282, %shl.i283
  tail call void @init_special_inode(ptr noundef nonnull %call, i16 noundef zeroext %175, i32 noundef %or4.i) #10
  br label %if.end169

if.end169:                                        ; preds = %if.else161, %if.then155, %if.else145, %if.then142, %if.then128, %if.else115, %if.then114, %if.then101
  %240 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %bh, align 4
  %tobool.not.i295 = icmp eq ptr %241, null
  br i1 %tobool.not.i295, label %if.end169.brelse.exit_crit_edge, label %if.then.i

if.end169.brelse.exit_crit_edge:                  ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %241) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end169.brelse.exit_crit_edge
  tail call void @unlock_new_inode(ptr noundef nonnull %call) #10
  br label %cleanup

bad_inode:                                        ; preds = %if.end82.bad_inode_crit_edge, %if.then66, %land.lhs.true.bad_inode_crit_edge, %if.end4.bad_inode_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -117 to ptr), %if.then66 ], [ inttoptr (i32 -116 to ptr), %land.lhs.true.bad_inode_crit_edge ], [ inttoptr (i32 -117 to ptr), %if.end82.bad_inode_crit_edge ], [ %call6, %if.end4.bad_inode_crit_edge ]
  %242 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %bh, align 4
  %tobool.not.i296 = icmp eq ptr %243, null
  br i1 %tobool.not.i296, label %bad_inode.brelse.exit298_crit_edge, label %if.then.i297

bad_inode.brelse.exit298_crit_edge:               ; preds = %bad_inode
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit298

if.then.i297:                                     ; preds = %bad_inode
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %243) #10
  br label %brelse.exit298

brelse.exit298:                                   ; preds = %if.then.i297, %bad_inode.brelse.exit298_crit_edge
  tail call void @iget_failed(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit298, %brelse.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %brelse.exit298 ], [ %call, %brelse.exit ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext2_get_inode(ptr noundef %sb, i32 noundef %ino, ptr nocapture noundef writeonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ino)
  %cmp.not = icmp eq i32 %ino, 2
  br i1 %cmp.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %s_first_ino = getelementptr inbounds %struct.ext2_sb_info, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_first_ino, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %ino)
  %cmp1 = icmp ugt i32 %4, %ino
  br i1 %cmp1, label %land.lhs.true.Einval_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true.Einval_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %Einval

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %s_fs_info.i46 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i46 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i46, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_es, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %ino)
  %cmp3 = icmp ult i32 %11, %ino
  br i1 %cmp3, label %lor.lhs.false.Einval_crit_edge, label %if.end

lor.lhs.false.Einval_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %Einval

if.end:                                           ; preds = %lor.lhs.false
  %sub = add i32 %ino, -1
  %s_inodes_per_group = getelementptr inbounds %struct.ext2_sb_info, ptr %6, i32 0, i32 5
  %12 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_inodes_per_group, align 4
  %div = udiv i32 %sub, %13
  %call5 = tail call ptr @ext2_get_group_desc(ptr noundef %sb, i32 noundef %div, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %14 = ptrtoint ptr %s_fs_info.i46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i46, align 16
  %s_inodes_per_group10 = getelementptr inbounds %struct.ext2_sb_info, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %s_inodes_per_group10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_inodes_per_group10, align 4
  %rem = urem i32 %sub, %17
  %s_inode_size = getelementptr inbounds %struct.ext2_sb_info, ptr %15, i32 0, i32 23
  %18 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_inode_size, align 8
  %mul = mul i32 %19, %rem
  %bg_inode_table = getelementptr inbounds %struct.ext2_group_desc, ptr %call5, i32 0, i32 2
  %20 = ptrtoint ptr %bg_inode_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bg_inode_table, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %23 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %24 to i32
  %shr = lshr i32 %mul, %conv
  %add = add i32 %shr, %22
  %conv12 = zext i32 %add to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %25 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %27 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %26, i64 noundef %conv12, i32 noundef %28, i32 noundef 8) #10
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %Eio, label %if.end16

if.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %p, align 4
  %30 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize.i, align 16
  %sub17 = add i32 %31, -1
  %and = and i32 %sub17, %mul
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 %and
  br label %cleanup

Einval:                                           ; preds = %lor.lhs.false.Einval_crit_edge, %land.lhs.true.Einval_crit_edge
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %sb, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %ino) #10
  br label %cleanup

Eio:                                              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %sb, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, i32 noundef %ino, i32 noundef %add) #10
  br label %cleanup

cleanup:                                          ; preds = %Eio, %Einval, %if.end16, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %Einval ], [ %add.ptr, %if.end16 ], [ inttoptr (i32 -5 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %Eio ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_data_block_valid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_write_inode(ptr nocapture noundef %inode, ptr nocapture noundef readonly %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %0 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @__ext2_write_inode(ptr noundef %inode, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr i8, ptr %3, i32 -268
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and2 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %6 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %attributes, align 8
  %or = or i64 %7, 32
  store i64 %or, ptr %attributes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %attributes6 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %8 = ptrtoint ptr %attributes6 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %attributes6, align 8
  %or7 = or i64 %9, 4
  store i64 %or7, ptr %attributes6, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %and9 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %attributes12 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %10 = ptrtoint ptr %attributes12 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %attributes12, align 8
  %or13 = or i64 %11, 16
  store i64 %or13, ptr %attributes12, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %and15 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %attributes18 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %12 = ptrtoint ptr %attributes18 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %attributes18, align 8
  %or19 = or i64 %13, 64
  store i64 %or19, ptr %attributes18, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %14 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %attributes_mask, align 8
  %or21 = or i64 %15, 2164
  store i64 %or21, ptr %attributes_mask, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %iattr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iattr, align 8
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false.i:                                  ; preds = %if.end
  %and2.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %ia_uid.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ia_uid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack17.i = load i32, ptr %ia_uid.i, align 8
  %5 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack18.i = load i32, ptr %i_uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack17.i, i32 %.unpack18.i)
  %cmp.i.i = icmp eq i32 %.unpack17.i, %.unpack18.i
  br i1 %cmp.i.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.then3_crit_edge

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %and6.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %lor.rhs.i.if.end8_crit_edge, label %is_quota_modification.exit

lor.rhs.i.if.end8_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

is_quota_modification.exit:                       ; preds = %lor.rhs.i
  %ia_gid.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ia_gid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack.i = load i32, ptr %ia_gid.i, align 4
  %7 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack16.i = load i32, ptr %i_gid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack16.i)
  %cmp.i19.i.not = icmp eq i32 %.unpack.i, %.unpack16.i
  br i1 %cmp.i19.i.not, label %is_quota_modification.exit.if.end8_crit_edge, label %is_quota_modification.exit.if.then3_crit_edge

is_quota_modification.exit.if.then3_crit_edge:    ; preds = %is_quota_modification.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

is_quota_modification.exit.if.end8_crit_edge:     ; preds = %is_quota_modification.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %is_quota_modification.exit.if.then3_crit_edge, %land.lhs.true.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %call4 = tail call i32 @dquot_initialize(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %is_quota_modification.exit.if.end8_crit_edge, %lor.rhs.i.if.end8_crit_edge
  %8 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iattr, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.lor.lhs.false_crit_edge, label %land.lhs.true

if.end8.lor.lhs.false_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end8
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %i_uid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack74 = load i32, ptr %ia_uid, align 8
  %11 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack75 = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack74, i32 %.unpack75)
  %cmp.i = icmp eq i32 %.unpack74, %.unpack75
  br i1 %cmp.i, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then19_crit_edge

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end8.lor.lhs.false_crit_edge
  %and13 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %lor.lhs.false.if.end24_crit_edge, label %land.lhs.true15

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true15:                                  ; preds = %lor.lhs.false
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %i_gid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %ia_gid, align 4
  %13 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack73 = load i32, ptr %i_gid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack73)
  %cmp.i76 = icmp eq i32 %.unpack, %.unpack73
  br i1 %cmp.i76, label %land.lhs.true15.if.end24_crit_edge, label %land.lhs.true15.if.then19_crit_edge

land.lhs.true15.if.then19_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

land.lhs.true15.if.end24_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then19:                                        ; preds = %land.lhs.true15.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  %call20 = tail call i32 @dquot_transfer(ptr noundef %1, ptr noundef %iattr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %land.lhs.true15.if.end24_crit_edge, %lor.lhs.false.if.end24_crit_edge
  %14 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iattr, align 8
  %and26 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end35_crit_edge, label %land.lhs.true28

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true28:                                  ; preds = %if.end24
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %16 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ia_size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp.not = icmp eq i64 %17, %19
  br i1 %cmp.not, label %land.lhs.true28.if.end35_crit_edge, label %if.then29

land.lhs.true28.if.end35_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then29:                                        ; preds = %land.lhs.true28
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 8
  %22 = and i16 %21, -4096
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %22, label %if.then29.cleanup_crit_edge [
    i16 -32768, label %if.then29.if.end.i_crit_edge
    i16 16384, label %if.then29.if.end.i_crit_edge81
    i16 -24576, label %if.then29.if.end.i_crit_edge82
  ]

if.then29.if.end.i_crit_edge82:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then29.if.end.i_crit_edge81:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then29.if.end.i_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then29.if.end.i_crit_edge, %if.then29.if.end.i_crit_edge81, %if.then29.if.end.i_crit_edge82
  %i_file_acl.i.i = getelementptr i8, ptr %1, i32 -256
  %24 = ptrtoint ptr %i_file_acl.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_file_acl.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.end.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end.i.cond.end.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize.i.i, align 16
  %shr.i.i = lshr i32 %29, 9
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %shr.i.i, %cond.true.i.i ], [ 0, %if.end.i.cond.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %22)
  %cmp.i.i77 = icmp eq i16 %22, -24576
  br i1 %cmp.i.i77, label %ext2_inode_is_fast_symlink.exit.i, label %cond.end.i.i.if.end14.i_crit_edge

cond.end.i.i.if.end14.i_crit_edge:                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

ext2_inode_is_fast_symlink.exit.i:                ; preds = %cond.end.i.i
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %30 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_blocks.i.i, align 8
  %32 = zext i32 %cond.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %32)
  %cmp3.i.not.i = icmp eq i64 %31, %32
  br i1 %cmp3.i.not.i, label %ext2_inode_is_fast_symlink.exit.i.cleanup_crit_edge, label %ext2_inode_is_fast_symlink.exit.i.if.end14.i_crit_edge

ext2_inode_is_fast_symlink.exit.i.if.end14.i_crit_edge: ; preds = %ext2_inode_is_fast_symlink.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

ext2_inode_is_fast_symlink.exit.i.cleanup_crit_edge: ; preds = %ext2_inode_is_fast_symlink.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14.i:                                       ; preds = %ext2_inode_is_fast_symlink.exit.i.if.end14.i_crit_edge, %cond.end.i.i.if.end14.i_crit_edge
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_flags.i, align 4
  %35 = and i32 %34, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %if.end22.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22.i:                                       ; preds = %if.end14.i
  tail call void @inode_dio_wait(ptr noundef %1) #10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ext2_sb_info, ptr %40, i32 0, i32 15
  %41 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_mount_opt.i, align 4
  %and30.i = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %i_mapping35.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %i_mapping35.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_mapping35.i, align 8
  br i1 %tobool31.not.i, label %if.else34.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i = tail call i32 @nobh_truncate_page(ptr noundef %44, i64 noundef %17, ptr noundef nonnull @ext2_get_block) #10
  br label %if.end38.i

if.else34.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %call36.i = tail call i32 @block_truncate_page(ptr noundef %44, i64 noundef %17, ptr noundef nonnull @ext2_get_block) #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else34.i, %if.then32.i
  %error.0.i = phi i32 [ %call33.i, %if.then32.i ], [ %call36.i, %if.else34.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool39.not.i = icmp eq i32 %error.0.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end38.i.cleanup_crit_edge

if.end38.i.cleanup_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41.i:                                       ; preds = %if.end38.i
  %45 = ptrtoint ptr %i_mapping35.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_mapping35.i, align 8
  %invalidate_lock.i.i = getelementptr inbounds %struct.address_space, ptr %46, i32 0, i32 2
  tail call void @down_write(ptr noundef %invalidate_lock.i.i) #10
  tail call void @truncate_setsize(ptr noundef %1, i64 noundef %17) #10
  tail call fastcc void @__ext2_truncate_blocks(ptr noundef %1, i64 noundef %17) #10
  %47 = ptrtoint ptr %i_mapping35.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_mapping35.i, align 8
  %invalidate_lock.i81.i = getelementptr inbounds %struct.address_space, ptr %48, i32 0, i32 2
  tail call void @up_write(ptr noundef %invalidate_lock.i81.i) #10
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %1) #10
  %49 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  %50 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %call44.i = call i32 @inode_needs_sync(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.else50.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %i_mapping35.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_mapping35.i, align 8
  %call48.i = call i32 @sync_mapping_buffers(ptr noundef %52) #10
  %call49.i = call i32 @sync_inode_metadata(ptr noundef %1, i32 noundef 1) #10
  br label %if.end35

if.else50.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #10
  br label %if.end35

if.end35:                                         ; preds = %if.else50.i, %if.then46.i, %land.lhs.true28.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %iattr) #10
  %53 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iattr, align 8
  %and37 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end41_crit_edge, label %if.then39

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %1, align 8
  %call40 = call i32 @posix_acl_chmod(ptr noundef nonnull @init_user_ns, ptr noundef %1, i16 noundef zeroext %56) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end35.if.end41_crit_edge
  %error.3 = phi i32 [ %call40, %if.then39 ], [ 0, %if.end35.if.end41_crit_edge ]
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end38.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %ext2_inode_is_fast_symlink.exit.i.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %if.end41 ], [ %call1, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ %call20, %if.then19.cleanup_crit_edge ], [ %error.0.i, %if.end38.i.cleanup_crit_edge ], [ -1, %if.end14.i.cleanup_crit_edge ], [ -22, %ext2_inode_is_fast_symlink.exit.i.cleanup_crit_edge ], [ -22, %if.then29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext2_get_branch(ptr noundef %inode, i32 noundef %depth, ptr nocapture noundef readonly %offsets, ptr noundef %chain, ptr nocapture noundef writeonly %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  %3 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offsets, align 4
  %add.ptr = getelementptr i32, ptr %add.ptr.i, i32 %4
  %5 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %chain, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %key.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 1
  %8 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %key.i, align 4
  %bh2.i = getelementptr inbounds %struct.Indirect, ptr %chain, i32 0, i32 2
  %9 = ptrtoint ptr %bh2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bh2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %i_meta_lock = getelementptr i8, ptr %inode, i32 -136
  br label %while.cond

while.cond:                                       ; preds = %if.end11.while.cond_crit_edge, %while.cond.preheader
  %offsets.addr.0 = phi ptr [ %incdec.ptr12, %if.end11.while.cond_crit_edge ], [ %offsets, %while.cond.preheader ]
  %depth.addr.0 = phi i32 [ %dec, %if.end11.while.cond_crit_edge ], [ %depth, %while.cond.preheader ]
  %p.0 = phi ptr [ %incdec.ptr, %if.end11.while.cond_crit_edge ], [ %chain, %while.cond.preheader ]
  %dec = add i32 %depth.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %key2 = getelementptr inbounds %struct.Indirect, ptr %p.0, i32 0, i32 1
  %10 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key2, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %conv = zext i32 %12 to i64
  %13 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev.i, align 4
  %15 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %14, i64 noundef %conv, i32 noundef %16, i32 noundef 8) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %while.body.cleanup.sink.split_crit_edge, label %if.end6

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end6:                                          ; preds = %while.body
  tail call void @_raw_read_lock(ptr noundef %i_meta_lock) #10
  %cmp.not8.i = icmp ult ptr %p.0, %chain
  br i1 %cmp.not8.i, label %if.end6.if.end11_crit_edge, label %if.end6.land.rhs.i_crit_edge

if.end6.land.rhs.i_crit_edge:                     ; preds = %if.end6
  br label %land.rhs.i

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %if.end6.land.rhs.i_crit_edge
  %from.addr.09.i = phi ptr [ %incdec.ptr.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %chain, %if.end6.land.rhs.i_crit_edge ]
  %key.i42 = getelementptr inbounds %struct.Indirect, ptr %from.addr.09.i, i32 0, i32 1
  %17 = ptrtoint ptr %key.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key.i42, align 4
  %19 = ptrtoint ptr %from.addr.09.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %from.addr.09.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp1.i = icmp eq i32 %18, %22
  %incdec.ptr.i = getelementptr %struct.Indirect, ptr %from.addr.09.i, i32 1
  %cmp.not.i = icmp ule ptr %incdec.ptr.i, %p.0
  %23 = and i1 %cmp.not.i, %cmp1.i
  br i1 %23, label %land.rhs.i.land.rhs.i_crit_edge, label %verify_chain.exit

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

verify_chain.exit:                                ; preds = %land.rhs.i
  br i1 %cmp1.i, label %verify_chain.exit.if.end11_crit_edge, label %brelse.exit

verify_chain.exit.if.end11_crit_edge:             ; preds = %verify_chain.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %verify_chain.exit.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %p.0, i32 1
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data, align 4
  %incdec.ptr12 = getelementptr i32, ptr %offsets.addr.0, i32 1
  %26 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr12, align 4
  %add.ptr13 = getelementptr i32, ptr %25, i32 %27
  %28 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr13, ptr %incdec.ptr, align 4
  %29 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr13, align 4
  %key.i43 = getelementptr %struct.Indirect, ptr %p.0, i32 1, i32 1
  %31 = ptrtoint ptr %key.i43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %key.i43, align 4
  %bh2.i44 = getelementptr %struct.Indirect, ptr %p.0, i32 1, i32 2
  %32 = ptrtoint ptr %bh2.i44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %bh2.i44, align 4
  tail call void @_raw_read_unlock(ptr noundef %i_meta_lock) #10
  %33 = ptrtoint ptr %key.i43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key.i43, align 4
  %tobool17.not = icmp eq i32 %34, 0
  br i1 %tobool17.not, label %if.end11.cleanup_crit_edge, label %if.end11.while.cond_crit_edge

if.end11.while.cond_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

brelse.exit:                                      ; preds = %verify_chain.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock(ptr noundef %i_meta_lock) #10
  tail call void @__brelse(ptr noundef nonnull %call.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %brelse.exit, %while.body.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ -11, %brelse.exit ], [ -5, %while.body.cleanup.sink.split_crit_edge ]
  %35 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %chain, %entry.cleanup_crit_edge ], [ %p.0, %cleanup.sink.split ], [ %incdec.ptr, %if.end11.cleanup_crit_edge ], [ null, %while.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_init_block_alloc_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_free_blocks(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_new_blocks(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext2_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #10
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 8
  %8 = and i16 %7, -4096
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %8, label %if.then.if.end_crit_edge [
    i16 -32768, label %if.then.if.end.i_crit_edge
    i16 16384, label %if.then.if.end.i_crit_edge7
    i16 -24576, label %if.then.if.end.i_crit_edge8
  ]

if.then.if.end.i_crit_edge8:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.if.end.i_crit_edge7:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then.if.end.i_crit_edge, %if.then.if.end.i_crit_edge7, %if.then.if.end.i_crit_edge8
  %i_file_acl.i.i = getelementptr i8, ptr %1, i32 -256
  %10 = ptrtoint ptr %i_file_acl.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_file_acl.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end.i.cond.end.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize.i.i, align 16
  %shr.i.i = lshr i32 %15, 9
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %shr.i.i, %cond.true.i.i ], [ 0, %if.end.i.cond.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %8)
  %cmp.i.i = icmp eq i16 %8, -24576
  br i1 %cmp.i.i, label %ext2_inode_is_fast_symlink.exit.i, label %cond.end.i.i.if.end14.i_crit_edge

cond.end.i.i.if.end14.i_crit_edge:                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

ext2_inode_is_fast_symlink.exit.i:                ; preds = %cond.end.i.i
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_blocks.i.i, align 8
  %18 = zext i32 %cond.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %18)
  %cmp3.i.not.i = icmp eq i64 %17, %18
  br i1 %cmp3.i.not.i, label %ext2_inode_is_fast_symlink.exit.i.if.end_crit_edge, label %ext2_inode_is_fast_symlink.exit.i.if.end14.i_crit_edge

ext2_inode_is_fast_symlink.exit.i.if.end14.i_crit_edge: ; preds = %ext2_inode_is_fast_symlink.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

ext2_inode_is_fast_symlink.exit.i.if.end_crit_edge: ; preds = %ext2_inode_is_fast_symlink.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end14.i:                                       ; preds = %ext2_inode_is_fast_symlink.exit.i.if.end14.i_crit_edge, %cond.end.i.i.if.end14.i_crit_edge
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i.i = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 2
  tail call void @down_write(ptr noundef %invalidate_lock.i.i) #10
  tail call fastcc void @__ext2_truncate_blocks(ptr noundef %1, i64 noundef %5) #10
  %21 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_mapping.i, align 8
  %invalidate_lock.i22.i = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 2
  tail call void @up_write(ptr noundef %invalidate_lock.i22.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end14.i, %ext2_inode_is_fast_symlink.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nobh_writepage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nobh_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ext2_truncate_blocks(ptr noundef %inode, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  %offsets = alloca [4 x i32], align 4
  %chain = alloca [4 x %struct.Indirect], align 4
  %nr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -328
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %div116 = lshr i32 %3, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #10
  %4 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 3
  %7 = call ptr @memset(ptr %offsets, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %chain) #10
  %8 = call ptr @memset(ptr %chain, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #10
  %9 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nr, align 4
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %conv = zext i32 %11 to i64
  %add = add i64 %offset, -1
  %sub = add i64 %add, %conv
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %13 to i64
  %shr = ashr i64 %sub, %sh_prom
  %conv7 = trunc i64 %shr to i32
  %div105.i = lshr i32 %11, 2
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_addr_per_block_bits.i = getelementptr inbounds %struct.ext2_sb_info, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %s_addr_per_block_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_addr_per_block_bits.i, align 8
  %mul.i = shl i32 %17, 1
  %shl.i = shl nuw i32 1, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7)
  %cmp.i = icmp slt i32 %conv7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ext2_block_to_path) #10
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv7)
  %cmp3.i = icmp ult i32 %conv7, 12
  br i1 %cmp3.i, label %if.then13, label %if.else5.i

if.else5.i:                                       ; preds = %if.else.i
  %sub.i = add nsw i32 %conv7, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div105.i)
  %cmp6.i = icmp ult i32 %sub.i, %div105.i
  br i1 %cmp6.i, label %if.then7.i, label %if.else12.i

if.then7.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %offsets, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i, ptr %4, align 4
  br label %if.end15

if.else12.i:                                      ; preds = %if.else5.i
  %sub13.i = sub nsw i32 %sub.i, %div105.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13.i, i32 %shl.i)
  %cmp14.i = icmp slt i32 %sub13.i, %shl.i
  br i1 %cmp14.i, label %if.then15.i, label %if.else23.i

if.then15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 13, ptr %offsets, align 4
  %shr.i = ashr i32 %sub13.i, %17
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i, ptr %4, align 4
  %sub20.i = add nsw i32 %div105.i, -1
  %and.i = and i32 %sub13.i, %sub20.i
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %5, align 4
  br label %if.end15

if.else23.i:                                      ; preds = %if.else12.i
  %sub24.i = sub i32 %sub13.i, %shl.i
  %shr26.i = ashr i32 %sub24.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr26.i, i32 %div105.i)
  %cmp27.i = icmp slt i32 %shr26.i, %div105.i
  br i1 %cmp27.i, label %if.then28.i, label %if.else44.i

if.then28.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 14, ptr %offsets, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr26.i, ptr %4, align 4
  %shr35.i = ashr i32 %sub24.i, %17
  %sub36.i = add nsw i32 %div105.i, -1
  %and37.i = and i32 %shr35.i, %sub36.i
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and37.i, ptr %5, align 4
  %and41.i = and i32 %sub24.i, %sub36.i
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and41.i, ptr %6, align 4
  br label %if.end15

if.else44.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ext2_msg(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ext2_block_to_path) #10
  br label %cleanup

if.then13:                                        ; preds = %if.else.i
  %27 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv7, ptr %offsets, align 4
  %truncate_mutex = getelementptr i8, ptr %inode, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %truncate_mutex, i32 noundef 0) #10
  %add.ptr = getelementptr i32, ptr %add.ptr.i, i32 %conv7
  %add.ptr14 = getelementptr i8, ptr %inode, i32 -280
  %cmp26.i = icmp ult ptr %add.ptr, %add.ptr14
  br i1 %cmp26.i, label %if.then13.for.body.i_crit_edge, label %if.then13.do_indirects_crit_edge

if.then13.do_indirects_crit_edge:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirects

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %count.030.i = phi i32 [ %count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then13.for.body.i_crit_edge ]
  %block_to_free.029.i = phi i32 [ %block_to_free.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then13.for.body.i_crit_edge ]
  %p.addr.027.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr, %if.then13.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %p.addr.027.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p.addr.027.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i118

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i118:                                     ; preds = %for.body.i
  %31 = ptrtoint ptr %p.addr.027.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %p.addr.027.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.030.i)
  %cmp1.i = icmp eq i32 %count.030.i, 0
  br i1 %cmp1.i, label %if.then.i118.for.inc.i_crit_edge, label %if.else.i121

if.then.i118.for.inc.i_crit_edge:                 ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else.i121:                                     ; preds = %if.then.i118
  %sub.i119 = sub i32 %30, %count.030.i
  call void @__sanitizer_cov_trace_cmp4(i32 %block_to_free.029.i, i32 %sub.i119)
  %cmp3.i120 = icmp eq i32 %block_to_free.029.i, %sub.i119
  br i1 %cmp3.i120, label %if.then4.i122, label %if.else5.i123

if.then4.i122:                                    ; preds = %if.else.i121
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %count.030.i, 1
  br label %for.inc.i

if.else5.i123:                                    ; preds = %if.else.i121
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %block_to_free.029.i, i32 noundef %count.030.i) #10
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else5.i123, %if.then4.i122, %if.then.i118.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %block_to_free.1.i = phi i32 [ %block_to_free.029.i, %if.then4.i122 ], [ %block_to_free.029.i, %for.body.i.for.inc.i_crit_edge ], [ %30, %if.then.i118.for.inc.i_crit_edge ], [ %30, %if.else5.i123 ]
  %count.1.i = phi i32 [ %inc.i, %if.then4.i122 ], [ %count.030.i, %for.body.i.for.inc.i_crit_edge ], [ 1, %if.then.i118.for.inc.i_crit_edge ], [ 1, %if.else5.i123 ]
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.027.i, i32 1
  %cmp.i124 = icmp ult ptr %incdec.ptr.i, %add.ptr14
  br i1 %cmp.i124, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %cmp8.not.i = icmp eq i32 %count.1.i, 0
  br i1 %cmp8.not.i, label %for.end.i.do_indirectsthread-pre-split_crit_edge, label %if.then9.i

for.end.i.do_indirectsthread-pre-split_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirectsthread-pre-split

if.then9.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %block_to_free.1.i, i32 noundef %count.1.i) #10
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %do_indirectsthread-pre-split

if.end15:                                         ; preds = %if.then28.i, %if.then15.i, %if.then7.i
  %cmp.i125.2 = phi i1 [ true, %if.then28.i ], [ false, %if.then15.i ], [ false, %if.then7.i ]
  %n.0.i.ph.ph = phi i32 [ 4, %if.then28.i ], [ 3, %if.then15.i ], [ 2, %if.then7.i ]
  %truncate_mutex140 = getelementptr i8, ptr %inode, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %truncate_mutex140, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #10
  %32 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %err.i, align 4, !annotation !64
  %33 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %nr, align 4
  %sub.i126 = add nsw i32 %n.0.i.ph.ph, -1
  %arrayidx.i = getelementptr i32, ptr %offsets, i32 %sub.i126
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i127 = icmp eq i32 %35, 0
  %tobool.not.i127.not = xor i1 %tobool.not.i127, true
  %brmerge = select i1 %tobool.not.i127.not, i1 true, i1 %cmp6.i
  %n.0.i.ph.ph.mux = select i1 %tobool.not.i127.not, i32 %n.0.i.ph.ph, i32 1
  br i1 %brmerge, label %if.end15.for.end.i129_crit_edge, label %land.rhs.i.1

if.end15.for.end.i129_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i129

land.rhs.i.1:                                     ; preds = %if.end15
  %sub.i126.1 = add nsw i32 %n.0.i.ph.ph, -2
  %arrayidx.i.1 = getelementptr i32, ptr %offsets, i32 %sub.i126.1
  %36 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i127.1 = icmp eq i32 %37, 0
  %tobool.not.i127.1.not = xor i1 %tobool.not.i127.1, true
  %cmp.i125.2.not = xor i1 %cmp.i125.2, true
  %brmerge153 = or i1 %tobool.not.i127.1.not, %cmp.i125.2.not
  %sub.i126.mux = select i1 %tobool.not.i127.1.not, i32 %sub.i126, i32 1
  br i1 %brmerge153, label %land.rhs.i.1.for.end.i129_crit_edge, label %land.rhs.i.2

land.rhs.i.1.for.end.i129_crit_edge:              ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i129

land.rhs.i.2:                                     ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i126.2 = add nsw i32 %n.0.i.ph.ph, -3
  %arrayidx.i.2 = getelementptr i32, ptr %offsets, i32 %sub.i126.2
  %38 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i127.2 = icmp eq i32 %39, 0
  %spec.select = select i1 %tobool.not.i127.2, i32 1, i32 %sub.i126.1
  br label %for.end.i129

for.end.i129:                                     ; preds = %land.rhs.i.2, %land.rhs.i.1.for.end.i129_crit_edge, %if.end15.for.end.i129_crit_edge
  %k.0.lcssa.i = phi i32 [ %n.0.i.ph.ph.mux, %if.end15.for.end.i129_crit_edge ], [ %sub.i126.mux, %land.rhs.i.1.for.end.i129_crit_edge ], [ %spec.select, %land.rhs.i.2 ]
  %call.i = call fastcc ptr @ext2_get_branch(ptr noundef %inode, i32 noundef %k.0.lcssa.i, ptr noundef nonnull %offsets, ptr noundef nonnull %chain, ptr noundef nonnull %err.i) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  %add.ptr.i128 = getelementptr %struct.Indirect, ptr %chain, i32 %k.0.lcssa.i
  %add.ptr2.i = getelementptr %struct.Indirect, ptr %add.ptr.i128, i32 -1
  %partial.0.i = select i1 %tobool1.not.i, ptr %add.ptr2.i, ptr %call.i
  %i_meta_lock.i = getelementptr i8, ptr %inode, i32 -136
  call void @_raw_write_lock(ptr noundef %i_meta_lock.i) #10
  %add.ptr2.i.sroa.gep = getelementptr inbounds %struct.Indirect, ptr %add.ptr2.i, i32 0, i32 1
  %call.i.sroa.gep = getelementptr inbounds %struct.Indirect, ptr %call.i, i32 0, i32 1
  %partial.0.i.sroa.sel = select i1 %tobool1.not.i, ptr %add.ptr2.i.sroa.gep, ptr %call.i.sroa.gep
  %40 = ptrtoint ptr %partial.0.i.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %partial.0.i.sroa.sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool4.not.i = icmp eq i32 %41, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %for.end.i129.if.end10.i_crit_edge

for.end.i129.if.end10.i_crit_edge:                ; preds = %for.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %for.end.i129
  %42 = ptrtoint ptr %partial.0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %partial.0.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool6.not.i = icmp eq i32 %45, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %if.then7.i130

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then7.i130:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_write_unlock(ptr noundef %i_meta_lock.i) #10
  br label %ext2_find_shared.exit

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %for.end.i129.if.end10.i_crit_edge
  %cmp1280.i = icmp ugt ptr %partial.0.i, %chain
  br i1 %cmp1280.i, label %if.end10.i.land.rhs13.i_crit_edge, label %if.end10.i.if.else.i132_crit_edge

if.end10.i.if.else.i132_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i132

if.end10.i.land.rhs13.i_crit_edge:                ; preds = %if.end10.i
  br label %land.rhs13.i

land.rhs13.i:                                     ; preds = %for.inc19.i.land.rhs13.i_crit_edge, %if.end10.i.land.rhs13.i_crit_edge
  %p.081.i = phi ptr [ %incdec.ptr.i131, %for.inc19.i.land.rhs13.i_crit_edge ], [ %partial.0.i, %if.end10.i.land.rhs13.i_crit_edge ]
  %bh.i = getelementptr inbounds %struct.Indirect, ptr %p.081.i, i32 0, i32 2
  %46 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data.i, align 4
  %50 = ptrtoint ptr %p.081.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p.081.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %land.rhs13.i
  %p.addr.0.i.i = phi ptr [ %49, %land.rhs13.i ], [ %incdec.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %cmp.i.i = icmp ult ptr %p.addr.0.i.i, %51
  br i1 %cmp.i.i, label %while.body.i.i, label %for.inc19.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %p.addr.0.i.i, i32 1
  %52 = ptrtoint ptr %p.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %p.addr.0.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %for.end20.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

for.inc19.i:                                      ; preds = %while.cond.i.i
  %incdec.ptr.i131 = getelementptr %struct.Indirect, ptr %p.081.i, i32 -1
  %cmp12.i = icmp ugt ptr %incdec.ptr.i131, %chain
  br i1 %cmp12.i, label %for.inc19.i.land.rhs13.i_crit_edge, label %for.inc19.i.if.else.i132_crit_edge

for.inc19.i.if.else.i132_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i132

for.inc19.i.land.rhs13.i_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs13.i

for.end20.i:                                      ; preds = %while.body.i.i
  %cmp23.i = icmp eq ptr %p.081.i, %add.ptr2.i
  br i1 %cmp23.i, label %if.then26.i, label %for.end20.i.if.else.i132_crit_edge

for.end20.i.if.else.i132_crit_edge:               ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i132

if.then26.i:                                      ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr2.i, align 4
  %incdec.ptr28.i = getelementptr i32, ptr %55, i32 -1
  store ptr %incdec.ptr28.i, ptr %add.ptr2.i, align 4
  br label %if.end31.i

if.else.i132:                                     ; preds = %for.end20.i.if.else.i132_crit_edge, %for.inc19.i.if.else.i132_crit_edge, %if.end10.i.if.else.i132_crit_edge
  %p.078.i = phi ptr [ %p.081.i, %for.end20.i.if.else.i132_crit_edge ], [ %partial.0.i, %if.end10.i.if.else.i132_crit_edge ], [ %incdec.ptr.i131, %for.inc19.i.if.else.i132_crit_edge ]
  %56 = ptrtoint ptr %p.078.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %p.078.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %60 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %nr, align 4
  %61 = load ptr, ptr %p.078.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %61, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i132, %if.then26.i
  %p.079.i = phi ptr [ %p.078.i, %if.else.i132 ], [ %add.ptr2.i, %if.then26.i ]
  call void @_raw_write_unlock(ptr noundef %i_meta_lock.i) #10
  %cmp3483.i = icmp ugt ptr %partial.0.i, %p.079.i
  br i1 %cmp3483.i, label %if.end31.i.while.body.i_crit_edge, label %if.end31.i.ext2_find_shared.exit_crit_edge

if.end31.i.ext2_find_shared.exit_crit_edge:       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_find_shared.exit

if.end31.i.while.body.i_crit_edge:                ; preds = %if.end31.i
  br label %while.body.i

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %if.end31.i.while.body.i_crit_edge
  %partial.184.i = phi ptr [ %incdec.ptr36.i, %brelse.exit.i.while.body.i_crit_edge ], [ %partial.0.i, %if.end31.i.while.body.i_crit_edge ]
  %bh35.i = getelementptr inbounds %struct.Indirect, ptr %partial.184.i, i32 0, i32 2
  %63 = ptrtoint ptr %bh35.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bh35.i, align 4
  %tobool.not.i69.i = icmp eq ptr %64, null
  br i1 %tobool.not.i69.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %64) #10
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %while.body.i.brelse.exit.i_crit_edge
  %incdec.ptr36.i = getelementptr %struct.Indirect, ptr %partial.184.i, i32 -1
  %cmp34.i = icmp ugt ptr %incdec.ptr36.i, %p.079.i
  br i1 %cmp34.i, label %brelse.exit.i.while.body.i_crit_edge, label %brelse.exit.i.ext2_find_shared.exit_crit_edge

brelse.exit.i.ext2_find_shared.exit_crit_edge:    ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_find_shared.exit

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

ext2_find_shared.exit:                            ; preds = %brelse.exit.i.ext2_find_shared.exit_crit_edge, %if.end31.i.ext2_find_shared.exit_crit_edge, %if.then7.i130
  %partial.2.i = phi ptr [ %partial.0.i, %if.then7.i130 ], [ %partial.0.i, %if.end31.i.ext2_find_shared.exit_crit_edge ], [ %incdec.ptr36.i, %brelse.exit.i.ext2_find_shared.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #10
  %65 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not = icmp eq i32 %66, 0
  br i1 %tobool.not, label %ext2_find_shared.exit.if.end29_crit_edge, label %if.then19

ext2_find_shared.exit.if.end29_crit_edge:         ; preds = %ext2_find_shared.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then19:                                        ; preds = %ext2_find_shared.exit
  %cmp21 = icmp eq ptr %partial.2.i, %chain
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %if.end24

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %bh = getelementptr inbounds %struct.Indirect, ptr %partial.2.i, i32 0, i32 2
  %67 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %68, ptr noundef %inode) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  %add.ptr25 = getelementptr inbounds i32, ptr %nr, i32 1
  %add.ptr27 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i.ph.ph
  %add.ptr28 = getelementptr %struct.Indirect, ptr %add.ptr27, i32 -1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr28 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %partial.2.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  call fastcc void @ext2_free_branches(ptr noundef %inode, ptr noundef nonnull %nr, ptr noundef %add.ptr25, i32 noundef %sub.ptr.div)
  br label %if.end29

if.end29:                                         ; preds = %if.end24, %ext2_find_shared.exit.if.end29_crit_edge
  %cmp31146 = icmp ugt ptr %partial.2.i, %chain
  br i1 %cmp31146, label %while.body.lr.ph, label %if.end29.do_indirectsthread-pre-split_crit_edge

if.end29.do_indirectsthread-pre-split_crit_edge:  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirectsthread-pre-split

while.body.lr.ph:                                 ; preds = %if.end29
  %add.ptr37 = getelementptr %struct.Indirect, ptr %chain, i32 %n.0.i.ph.ph
  %add.ptr38 = getelementptr %struct.Indirect, ptr %add.ptr37, i32 -1
  %sub.ptr.lhs.cast39 = ptrtoint ptr %add.ptr38 to i32
  br label %while.body

while.body:                                       ; preds = %brelse.exit.while.body_crit_edge, %while.body.lr.ph
  %partial.0147 = phi ptr [ %partial.2.i, %while.body.lr.ph ], [ %incdec.ptr, %brelse.exit.while.body_crit_edge ]
  %69 = ptrtoint ptr %partial.0147 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %partial.0147, align 4
  %add.ptr33 = getelementptr i32, ptr %70, i32 1
  %bh34 = getelementptr inbounds %struct.Indirect, ptr %partial.0147, i32 0, i32 2
  %71 = ptrtoint ptr %bh34 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bh34, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %b_data, align 4
  %add.ptr35 = getelementptr i32, ptr %74, i32 %div116
  %sub.ptr.rhs.cast40 = ptrtoint ptr %partial.0147 to i32
  %sub.ptr.sub41 = sub i32 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %sub.ptr.div42 = sdiv exact i32 %sub.ptr.sub41, 12
  call fastcc void @ext2_free_branches(ptr noundef %inode, ptr noundef %add.ptr33, ptr noundef %add.ptr35, i32 noundef %sub.ptr.div42)
  %75 = ptrtoint ptr %bh34 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bh34, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %76, ptr noundef %inode) #10
  %77 = ptrtoint ptr %bh34 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bh34, align 4
  %tobool.not.i133 = icmp eq ptr %78, null
  br i1 %tobool.not.i133, label %while.body.brelse.exit_crit_edge, label %if.then.i134

while.body.brelse.exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i134:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %78) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i134, %while.body.brelse.exit_crit_edge
  %incdec.ptr = getelementptr %struct.Indirect, ptr %partial.0147, i32 -1
  %cmp31 = icmp ugt ptr %incdec.ptr, %chain
  br i1 %cmp31, label %brelse.exit.while.body_crit_edge, label %brelse.exit.do_indirectsthread-pre-split_crit_edge

brelse.exit.do_indirectsthread-pre-split_crit_edge: ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_indirectsthread-pre-split

brelse.exit.while.body_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do_indirectsthread-pre-split:                     ; preds = %brelse.exit.do_indirectsthread-pre-split_crit_edge, %if.end29.do_indirectsthread-pre-split_crit_edge, %if.then9.i, %for.end.i.do_indirectsthread-pre-split_crit_edge
  %truncate_mutex143.ph = phi ptr [ %truncate_mutex, %if.then9.i ], [ %truncate_mutex, %for.end.i.do_indirectsthread-pre-split_crit_edge ], [ %truncate_mutex140, %if.end29.do_indirectsthread-pre-split_crit_edge ], [ %truncate_mutex140, %brelse.exit.do_indirectsthread-pre-split_crit_edge ]
  %79 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr = load i32, ptr %offsets, align 4
  br label %do_indirects

do_indirects:                                     ; preds = %do_indirectsthread-pre-split, %if.then13.do_indirects_crit_edge
  %80 = phi i32 [ %.pr, %do_indirectsthread-pre-split ], [ %conv7, %if.then13.do_indirects_crit_edge ]
  %truncate_mutex143 = phi ptr [ %truncate_mutex143.ph, %do_indirectsthread-pre-split ], [ %truncate_mutex, %if.then13.do_indirects_crit_edge ]
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %80, label %sw.default [
    i32 12, label %do_indirects.sw.bb_crit_edge
    i32 13, label %do_indirects.sw.bb58_crit_edge
    i32 14, label %do_indirects.sw.epilog_crit_edge
  ]

do_indirects.sw.epilog_crit_edge:                 ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do_indirects.sw.bb58_crit_edge:                   ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb58

do_indirects.sw.bb_crit_edge:                     ; preds = %do_indirects
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.default:                                       ; preds = %do_indirects
  %arrayidx46 = getelementptr i8, ptr %inode, i32 -280
  %82 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx46, align 4
  %84 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool47.not = icmp eq i32 %83, 0
  br i1 %tobool47.not, label %sw.default.sw.bb_crit_edge, label %if.then48

sw.default.sw.bb_crit_edge:                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then48:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx46, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  %add.ptr50 = getelementptr inbounds i32, ptr %nr, i32 1
  call fastcc void @ext2_free_branches(ptr noundef %inode, ptr noundef nonnull %nr, ptr noundef %add.ptr50, i32 noundef 1)
  br label %sw.bb

sw.bb:                                            ; preds = %if.then48, %sw.default.sw.bb_crit_edge, %do_indirects.sw.bb_crit_edge
  %arrayidx52 = getelementptr i8, ptr %inode, i32 -276
  %86 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx52, align 4
  %88 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool53.not = icmp eq i32 %87, 0
  br i1 %tobool53.not, label %sw.bb.sw.bb58_crit_edge, label %if.then54

sw.bb.sw.bb58_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb58

if.then54:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %arrayidx52, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  %add.ptr56 = getelementptr inbounds i32, ptr %nr, i32 1
  call fastcc void @ext2_free_branches(ptr noundef %inode, ptr noundef nonnull %nr, ptr noundef %add.ptr56, i32 noundef 2)
  br label %sw.bb58

sw.bb58:                                          ; preds = %if.then54, %sw.bb.sw.bb58_crit_edge, %do_indirects.sw.bb58_crit_edge
  %arrayidx59 = getelementptr i8, ptr %inode, i32 -272
  %90 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx59, align 4
  %92 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool60.not = icmp eq i32 %91, 0
  br i1 %tobool60.not, label %sw.bb58.sw.epilog_crit_edge, label %if.then61

sw.bb58.sw.epilog_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then61:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %arrayidx59, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  %add.ptr63 = getelementptr inbounds i32, ptr %nr, i32 1
  call fastcc void @ext2_free_branches(ptr noundef %inode, ptr noundef nonnull %nr, ptr noundef %add.ptr63, i32 noundef 3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then61, %sw.bb58.sw.epilog_crit_edge, %do_indirects.sw.epilog_crit_edge
  call void @ext2_discard_reservation(ptr noundef %inode) #10
  call void @mutex_unlock(ptr noundef %truncate_mutex143) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.else44.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %chain) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext2_free_branches(ptr noundef %inode, ptr noundef %p, ptr noundef readnone %q, i32 noundef %depth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dec = add i32 %depth, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %tobool.not = icmp eq i32 %depth, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %div29 = lshr i32 %3, 2
  %cmp32 = icmp ult ptr %p, %q
  br i1 %cmp32, label %for.body.lr.ph, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.body.lr.ph:                                   ; preds = %if.then
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.addr.033 = phi ptr [ %p, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %p.addr.033 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p.addr.033, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %p.addr.033 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %p.addr.033, align 4
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %conv = zext i32 %6 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %11, i64 noundef %conv, i32 noundef %13, i32 noundef 8) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then5, label %bforget.exit

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %17, i32 noundef %6) #10
  br label %for.inc

bforget.exit:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i32, ptr %19, i32 %div29
  tail call fastcc void @ext2_free_branches(ptr noundef %inode, ptr noundef %19, ptr noundef %add.ptr, i32 noundef %dec)
  tail call void @__bforget(ptr noundef nonnull %call.i) #10
  tail call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %6, i32 noundef 1) #10
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %for.inc

for.inc:                                          ; preds = %bforget.exit, %if.then5, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr i32, ptr %p.addr.033, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %q
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end9_crit_edge

for.inc.if.end9_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.else:                                          ; preds = %entry
  %cmp26.i = icmp ult ptr %p, %q
  br i1 %cmp26.i, label %if.else.for.body.i_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %count.030.i = phi i32 [ %count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %block_to_free.029.i = phi i32 [ %block_to_free.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %p.addr.027.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %p, %if.else.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %p.addr.027.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p.addr.027.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i30 = icmp eq i32 %21, 0
  br i1 %tobool.not.i30, label %for.body.i.for.inc.i_crit_edge, label %if.then.i31

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i31:                                      ; preds = %for.body.i
  %23 = ptrtoint ptr %p.addr.027.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %p.addr.027.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.030.i)
  %cmp1.i = icmp eq i32 %count.030.i, 0
  br i1 %cmp1.i, label %if.then.i31.for.inc.i_crit_edge, label %if.else.i

if.then.i31.for.inc.i_crit_edge:                  ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i31
  %sub.i = sub i32 %22, %count.030.i
  call void @__sanitizer_cov_trace_cmp4(i32 %block_to_free.029.i, i32 %sub.i)
  %cmp3.i = icmp eq i32 %block_to_free.029.i, %sub.i
  br i1 %cmp3.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %count.030.i, 1
  br label %for.inc.i

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %block_to_free.029.i, i32 noundef %count.030.i) #10
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else5.i, %if.then4.i, %if.then.i31.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %block_to_free.1.i = phi i32 [ %block_to_free.029.i, %if.then4.i ], [ %block_to_free.029.i, %for.body.i.for.inc.i_crit_edge ], [ %22, %if.then.i31.for.inc.i_crit_edge ], [ %22, %if.else5.i ]
  %count.1.i = phi i32 [ %inc.i, %if.then4.i ], [ %count.030.i, %for.body.i.for.inc.i_crit_edge ], [ 1, %if.then.i31.for.inc.i_crit_edge ], [ 1, %if.else5.i ]
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.027.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %q
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %cmp8.not.i = icmp eq i32 %count.1.i, 0
  br i1 %cmp8.not.i, label %for.end.i.if.end9_crit_edge, label %if.then9.i

for.end.i.if.end9_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then9.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ext2_free_blocks(ptr noundef %inode, i32 noundef %block_to_free.1.i, i32 noundef %count.1.i) #10
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then9.i, %for.end.i.if.end9_crit_edge, %if.else.if.end9_crit_edge, %for.inc.if.end9_crit_edge, %if.then.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext2_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_update_dynamic_rev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_sync_super(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nobh_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_mapping_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @ext2_iomap_ops, !1, !"ext2_iomap_ops", i1 false, i1 false}
!1 = !{!"../fs/ext2/inode.c", i32 855, i32 24}
!2 = !{ptr @ext2_aops, !3, !"ext2_aops", i1 false, i1 false}
!3 = !{!"../fs/ext2/inode.c", i32 969, i32 39}
!4 = !{ptr @ext2_nobh_aops, !5, !"ext2_nobh_aops", i1 false, i1 false}
!5 = !{!"../fs/ext2/inode.c", i32 984, i32 39}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ext2/inode.c", i32 1471, i32 18}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ext2/inode.c", i32 1471, i32 31}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ext2/inode.c", i32 176, i32 25}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ext2/inode.c", i32 177, i32 4}
!20 = !{ptr @__func__.ext2_block_to_path, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ext2/inode.c", i32 177, i32 30}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ext2/inode.c", i32 198, i32 4}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ext2/inode.c", i32 1169, i32 29}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ext2/inode.c", i32 1170, i32 6}
!30 = distinct !{null, !31, !"ext2_dax_aops", i1 false, i1 false}
!31 = !{!"../fs/ext2/inode.c", i32 998, i32 46}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ext2/inode.c", i32 1365, i32 17}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ext2/inode.c", i32 1365, i32 35}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ext2/inode.c", i32 1370, i32 6}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ext2/inode.c", i32 1634, i32 4}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__ext2_write_inode._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @__ext2_write_inode._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2152982346}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 640731, i64 640792}
!57 = !{i64 643463}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 643748}
!60 = !{i64 2152991196}
!61 = !{i64 2153001150}
!62 = !{i64 2153010645}
!63 = !{i64 2153020122}
!64 = !{!"auto-init"}
!65 = !{i8 0, i8 2}
!66 = !{i64 2154956125, i64 2154956605, i64 2154956162, i64 2154956218, i64 2154956252, i64 2154956276, i64 2154956317, i64 2154956338, i64 2154956366, i64 2154956400}
!67 = !{i64 2148256311, i64 2148256343, i64 2148256372, i64 2148256406, i64 2148256437, i64 2148256460}
!68 = !{i64 2148345392}
!69 = !{i64 2153142035}
!70 = !{i64 2153141877}
!71 = !{i64 2153142205}
!72 = !{i64 2149956160}
