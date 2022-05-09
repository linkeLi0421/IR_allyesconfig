; ModuleID = '/llk/IR_all_yes/fs/nilfs2/inode.c_pt.bc'
source_filename = "../fs/nilfs2/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.nilfs_root = type { i64, %struct.rb_node, %struct.refcount_struct, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.kobject, %struct.completion }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nilfs_transaction_info = type { i32, ptr, i16, i16 }
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
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nilfs_iget_args = type { i64, i64, ptr, i32 }
%struct.nilfs_inode = type { i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i32, [7 x i64], i64, i32, i32 }
%struct.nilfs_mdt_info = type { %struct.rw_semaphore, ptr, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.nilfs_inode_info = type { i32, i32, ptr, %struct.nilfs_bmap, i64, i32, i64, %struct.address_space, %struct.list_head, ptr, ptr, %struct.inode }
%struct.nilfs_bmap = type { %union.anon.82, %struct.rw_semaphore, ptr, ptr, i64, i64, i32, i32, i16 }
%union.anon.82 = type { [7 x i64] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@.str = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014%s (ino=%lu): a race condition while inserting a data block at offset=%llu\00", [51 x i8] zeroinitializer }, align 32
@__func__.nilfs_get_block = private unnamed_addr constant [16 x i8] c"nilfs_get_block\00", align 1
@nilfs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @nilfs_writepage, ptr @nilfs_readpage, ptr @nilfs_writepages, ptr @nilfs_set_page_dirty, ptr null, ptr @nilfs_readahead, ptr @nilfs_write_begin, ptr @nilfs_write_end, ptr null, ptr @block_invalidatepage, ptr null, ptr null, ptr @nilfs_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014cannot set file dirty (ino=%lu): the file is being freed\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014cannot mark inode dirty (ino=%lu): error %d loading inode block\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014tried to mark bad_inode dirty. ignored.\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/nilfs2/inode.c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@nilfs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@nilfs_file_operations = external dso_local constant %struct.file_operations, align 4
@nilfs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@nilfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@nilfs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@nilfs_special_inode_operations = external dso_local constant %struct.inode_operations, align 128
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014error %d truncating bmap (ino=%lu)\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 107, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"nilfs_aops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 298, i32 39 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 924, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 947, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 975, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1109, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 452, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 44, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [21 x i8] c"../fs/nilfs2/inode.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 710, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @nilfs_aops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_inode_add_blocks(ptr noundef %inode, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_root = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_root, align 8
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %3 to i32
  %mul = shl i32 %n, %conv.i
  %conv = zext i32 %mul to i64
  tail call void @inode_add_bytes(ptr noundef %inode, i64 noundef %conv) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv2 = sext i32 %n to i64
  %blocks_count = getelementptr inbounds %struct.nilfs_root, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %blocks_count, i32 noundef 8) #10
  tail call void @generic_atomic64_add(i64 noundef %conv2, ptr noundef %blocks_count) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_inode_sub_blocks(ptr noundef %inode, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_root = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_root, align 8
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %3 to i32
  %mul = shl i32 %n, %conv.i
  %conv = zext i32 %mul to i64
  tail call void @inode_sub_bytes(ptr noundef %inode, i64 noundef %conv) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv2 = sext i32 %n to i64
  %blocks_count = getelementptr inbounds %struct.nilfs_root, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %blocks_count, i32 noundef 8) #10
  tail call void @generic_atomic64_sub(i64 noundef %conv2, ptr noundef %blocks_count) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_sub_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_get_block(ptr noundef %inode, i64 noundef %blkoff, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %blknum = alloca i64, align 8
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blknum) #10
  %4 = ptrtoint ptr %blknum to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %blknum, align 8
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %5 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b_size, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %7 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %8 to i32
  %shr = lshr i32 %6, %conv
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 29
  %9 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ns_dat, align 4
  %i_private.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_private.i, align 4
  tail call void @down_read(ptr noundef %12) #10
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %13 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_bmap, align 8
  %call2 = call i32 @nilfs_bmap_lookup_contig(ptr noundef %14, i64 noundef %blkoff, ptr noundef nonnull %blknum, i32 noundef %shr) #10
  %15 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ns_dat, align 4
  %i_private.i91 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 54
  %17 = ptrtoint ptr %i_private.i91 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_private.i91, align 4
  call void @up_read(ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %21 = ptrtoint ptr %blknum to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %blknum, align 8
  %23 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %bh_result, align 4
  %25 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.map_bh.exit_crit_edge

if.then.map_bh.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #10
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 26
  %26 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %28 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %29 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %22, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 3
  %30 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize.i, align 16
  %32 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %b_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp8.not = icmp eq i32 %call2, 0
  br i1 %cmp8.not, label %map_bh.exit.cleanup53_crit_edge, label %if.then10

map_bh.exit.cleanup53_crit_edge:                  ; preds = %map_bh.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.then10:                                        ; preds = %map_bh.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i_blkbits, align 2
  %conv12 = zext i8 %34 to i32
  %shl = shl i32 %call2, %conv12
  %35 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl, ptr %b_size, align 8
  br label %cleanup53

if.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call2)
  %cmp15 = icmp eq i32 %call2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp ne i32 %create, 0
  %36 = and i1 %tobool.not, %cmp15
  br i1 %36, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #10
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %37 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %38 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %b_blocknr, align 8
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %call19 = call i32 @nilfs_transaction_begin(ptr noundef %40, ptr noundef nonnull %ti, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end24, label %if.then17.cleanup_crit_edge, !prof !29

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.then17
  %41 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_bmap, align 8
  %43 = ptrtoint ptr %bh_result to i32
  %call26 = call i32 @nilfs_bmap_insert(ptr noundef %42, i64 noundef %blkoff, i32 noundef %43) #10
  %44 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call26, label %if.end24.if.end40_crit_edge [
    i32 0, label %if.end42
    i32 -17, label %if.then38
  ], !prof !30

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %47 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %46, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nilfs_get_block, i32 noundef %48, i64 noundef %blkoff) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end24.if.end40_crit_edge
  %err.0 = phi i32 [ 0, %if.then38 ], [ %call26, %if.end24.if.end40_crit_edge ]
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  call void @nilfs_transaction_abort(ptr noundef %50) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end24
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #10
  %51 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb, align 4
  %call45 = call i32 @nilfs_transaction_commit(ptr noundef %52) #10
  %53 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %bh_result, align 4
  %55 = and i32 %54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end42.set_buffer_new.exit_crit_edge

if.end42.set_buffer_new.exit_crit_edge:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_buffer_new.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #10
  br label %set_buffer_new.exit

set_buffer_new.exit:                              ; preds = %if.then.i, %if.end42.set_buffer_new.exit_crit_edge
  %56 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %bh_result, align 4
  %58 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i89 = icmp eq i32 %58, 0
  br i1 %tobool.not.i89, label %if.then.i90, label %set_buffer_new.exit.set_buffer_delay.exit_crit_edge

set_buffer_new.exit.set_buffer_delay.exit_crit_edge: ; preds = %set_buffer_new.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_buffer_delay.exit

if.then.i90:                                      ; preds = %set_buffer_new.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 8, ptr noundef %bh_result) #10
  br label %set_buffer_delay.exit

set_buffer_delay.exit:                            ; preds = %if.then.i90, %set_buffer_new.exit.set_buffer_delay.exit_crit_edge
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  %61 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %bh_result, align 4
  %63 = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i.i92 = icmp eq i32 %63, 0
  br i1 %tobool.not.i.i92, label %if.then.i.i93, label %set_buffer_delay.exit.map_bh.exit99_crit_edge

set_buffer_delay.exit.map_bh.exit99_crit_edge:    ; preds = %set_buffer_delay.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %map_bh.exit99

if.then.i.i93:                                    ; preds = %set_buffer_delay.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #10
  br label %map_bh.exit99

map_bh.exit99:                                    ; preds = %if.then.i.i93, %set_buffer_delay.exit.map_bh.exit99_crit_edge
  %s_bdev.i94 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 26
  %64 = ptrtoint ptr %s_bdev.i94 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_bdev.i94, align 4
  %b_bdev.i95 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %66 = ptrtoint ptr %b_bdev.i95 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %b_bdev.i95, align 8
  %67 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %b_blocknr, align 8
  %s_blocksize.i97 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 3
  %68 = ptrtoint ptr %s_blocksize.i97 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_blocksize.i97, align 16
  %70 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %b_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %map_bh.exit99, %if.end40, %if.then17.cleanup_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end40 ], [ 0, %map_bh.exit99 ], [ %call19, %if.then17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #10
  br label %cleanup53

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select = select i1 %cmp15, i32 0, i32 %call2
  br label %cleanup53

cleanup53:                                        ; preds = %if.else, %cleanup, %if.then10, %map_bh.exit.cleanup53_crit_edge
  %err.2 = phi i32 [ 0, %if.then10 ], [ 0, %map_bh.exit.cleanup53_crit_edge ], [ %err.1, %cleanup ], [ %spec.select, %if.else ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blknum) #10
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_lookup_contig(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_transaction_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_insert(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_transaction_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_transaction_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #10
  tail call void @nilfs_truncate(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_truncate(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -592
  %i_state = getelementptr i8, ptr %inode, i32 -588
  %3 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %i_state, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %8 = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size, align 8
  %conv = zext i32 %11 to i64
  %add = add nsw i64 %conv, -1
  %sub = add i64 %add, %13
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 2
  %14 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %15 to i64
  %shr = ashr i64 %sub, %sh_prom
  %conv9 = trunc i64 %shr to i32
  %call10 = call i32 @nilfs_transaction_begin(ptr noundef %2, ptr noundef nonnull %ti, i32 noundef 0) #10
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %16 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping, align 8
  %18 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size, align 8
  %call12 = call i32 @block_truncate_page(ptr noundef %17, i64 noundef %19, ptr noundef nonnull @nilfs_get_block) #10
  call fastcc void @nilfs_truncate_bmap(ptr noundef %add.ptr.i, i32 noundef %conv9)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #10
  %20 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %21 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_flags, align 4
  %and14 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %if.end7.if.then20_crit_edge

if.end7.if.then20_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false16:                                  ; preds = %if.end7
  %26 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_flags, align 4
  %and18 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false16.if.end21_crit_edge, label %lor.lhs.false16.if.then20_crit_edge

lor.lhs.false16.if.then20_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false16.if.end21_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %lor.lhs.false16.if.then20_crit_edge, %if.end7.if.then20_crit_edge
  %28 = call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 146
  %32 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %journal_info.i, align 4
  %ti_flags.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %ti_flags.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ti_flags.i, align 4
  %36 = or i16 %35, 2
  store i16 %36, ptr %ti_flags.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %lor.lhs.false16.if.end21_crit_edge
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  %call23 = call i32 @nilfs_set_file_dirty(ptr noundef %inode, i32 noundef 0)
  %call24 = call i32 @nilfs_transaction_commit(ptr noundef %2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nilfs_clear_dirty_page(ptr noundef %page, i1 noundef zeroext false) #10
  tail call void @unlock_page(ptr noundef %page) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #10
  tail call void @unlock_page(ptr noundef %page) #10
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %8 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call4 = tail call i32 @nilfs_construct_segment(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then2.if.end13_crit_edge, label %if.then2.cleanup_crit_edge, !prof !29

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.else:                                          ; preds = %if.end
  %for_reclaim = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %12 = ptrtoint ptr %for_reclaim to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %for_reclaim, align 4
  %13 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not = icmp eq i16 %13, 0
  br i1 %tobool9.not, label %if.else.if.end13_crit_edge, label %if.then10

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  tail call void @nilfs_flush_segment(ptr noundef %15, i32 noundef %17) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else.if.end13_crit_edge, %if.then2.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then2.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -30, %if.then ], [ 0, %if.end13 ], [ %call4, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @nilfs_get_block) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_writepages(ptr noundef %mapping, ptr nocapture noundef readonly %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nilfs_clear_dirty_pages(ptr noundef %mapping, i1 noundef zeroext false) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %6 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %range_start = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 2
  %8 = ptrtoint ptr %range_start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %range_start, align 8
  %range_end = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 3
  %10 = ptrtoint ptr %range_end to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %range_end, align 8
  %call3 = tail call i32 @nilfs_construct_dsync_segment(ptr noundef %3, ptr noundef %1, i64 noundef %9, i64 noundef %11) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -30, %if.then ], [ %call3, %if.then1 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_set_page_dirty(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @__set_page_dirty_nobuffers(ptr noundef %page) #10
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !31

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.5) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !32
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %page, align 4
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %PagePrivate.exit
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i46 = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i46, label %if.then.i47, label %PagePrivate.exit50, !prof !31

if.then.i47:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.5) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !32
  unreachable

PagePrivate.exit50:                               ; preds = %if.then
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %page, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %do.body8, label %do.end13, !prof !31

do.body8:                                         ; preds = %PagePrivate.exit50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #10, !srcloc !33
  unreachable

do.end13:                                         ; preds = %PagePrivate.exit50
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %private, align 4
  %16 = inttoptr i32 %15 to ptr
  br label %do.body14

do.body14:                                        ; preds = %do.cond21.do.body14_crit_edge, %do.end13
  %nr_dirty.0 = phi i32 [ 0, %do.end13 ], [ %nr_dirty.1, %do.cond21.do.body14_crit_edge ]
  %bh.0 = phi ptr [ %16, %do.end13 ], [ %27, %do.cond21.do.body14_crit_edge ]
  %17 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %bh.0, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not = icmp eq i32 %19, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %do.body14.do.cond21_crit_edge

do.body14.do.cond21_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond21

lor.lhs.false:                                    ; preds = %do.body14
  %20 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %bh.0, align 4
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not = icmp eq i32 %22, 0
  br i1 %tobool18.not, label %lor.lhs.false.do.cond21_crit_edge, label %if.end20

lor.lhs.false.do.cond21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond21

if.end20:                                         ; preds = %lor.lhs.false
  %23 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %bh.0, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.then.i55, label %if.end20.set_buffer_dirty.exit_crit_edge

if.end20.set_buffer_dirty.exit_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_buffer_dirty.exit

if.then.i55:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %bh.0) #10
  br label %set_buffer_dirty.exit

set_buffer_dirty.exit:                            ; preds = %if.then.i55, %if.end20.set_buffer_dirty.exit_crit_edge
  %inc = add i32 %nr_dirty.0, 1
  br label %do.cond21

do.cond21:                                        ; preds = %set_buffer_dirty.exit, %lor.lhs.false.do.cond21_crit_edge, %do.body14.do.cond21_crit_edge
  %nr_dirty.1 = phi i32 [ %nr_dirty.0, %do.body14.do.cond21_crit_edge ], [ %inc, %set_buffer_dirty.exit ], [ %nr_dirty.0, %lor.lhs.false.do.cond21_crit_edge ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %26 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp eq ptr %27, %16
  br i1 %cmp.not, label %do.end22, label %do.cond21.do.body14_crit_edge

do.cond21.do.body14_crit_edge:                    ; preds = %do.cond21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

do.end22:                                         ; preds = %do.cond21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_dirty.1)
  %tobool23.not = icmp eq i32 %nr_dirty.1, 0
  br i1 %tobool23.not, label %do.end22.if.end32_crit_edge, label %do.end22.if.end32.sink.split_crit_edge

do.end22.if.end32.sink.split_crit_edge:           ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.sink.split

do.end22.if.end32_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else:                                          ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool27.not = icmp eq i32 %call, 0
  br i1 %tobool27.not, label %if.else.if.end32_crit_edge, label %if.then28

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %28 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %29 to i32
  %sub = sub nsw i32 12, %conv
  %shl = shl nuw nsw i32 1, %sub
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %if.then28, %do.end22.if.end32.sink.split_crit_edge
  %nr_dirty.1.lcssa.sink = phi i32 [ %shl, %if.then28 ], [ %nr_dirty.1, %do.end22.if.end32.sink.split_crit_edge ]
  %call25 = tail call i32 @nilfs_set_file_dirty(ptr noundef %3, i32 noundef %nr_dirty.1.lcssa.sink)
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %if.else.if.end32_crit_edge, %do.end22.if.end32_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @nilfs_get_block) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @nilfs_transaction_begin(ptr noundef %3, ptr noundef null, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !29

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @block_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef nonnull @nilfs_get_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then11, !prof !29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call void @nilfs_write_failed(ptr noundef %mapping, i64 noundef %add)
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  tail call void @nilfs_transaction_abort(ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = trunc i64 %pos to i32
  %conv = and i32 %2, 4095
  %add = add i32 %conv, %copied
  %call = tail call i32 @nilfs_page_count_clean_buffers(ptr noundef %page, i32 noundef %conv, i32 noundef %add) #10
  %call1 = tail call i32 @generic_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #10
  %call2 = tail call i32 @nilfs_set_file_dirty(ptr noundef %1, i32 noundef %call)
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %call3 = tail call i32 @nilfs_transaction_commit(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool.not, i32 %call1, i32 %call3
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @block_invalidatepage(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %0 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_source.i, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %9, ptr noundef %iter, ptr noundef nonnull @nilfs_get_block, ptr noundef null, ptr noundef null, i32 noundef 3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_is_partially_uptodate(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.nilfs_iget_args, align 8
  %ino = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #10
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ino, align 4, !annotation !35
  %call = tail call ptr @new_inode(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.failed_crit_edge, label %if.end, !prof !31

entry.failed_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end:                                           ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gfp_mask.i.i, align 4
  %and.i = and i32 %8, -129
  store i32 %and.i, ptr %gfp_mask.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -592
  %i_root = getelementptr i8, ptr %dir, i32 -8
  %9 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_root, align 8
  %add.ptr.i112 = getelementptr i8, ptr %call, i32 -592
  %i_state = getelementptr i8, ptr %call, i32 -588
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %i_state, align 4
  %i_root8 = getelementptr i8, ptr %call, i32 -8
  %12 = ptrtoint ptr %i_root8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %i_root8, align 8
  %ifile = getelementptr inbounds %struct.nilfs_root, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %ifile to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ifile, align 4
  %i_bh = getelementptr i8, ptr %call, i32 -12
  %call9 = call i32 @nilfs_ifile_create_inode(ptr noundef %14, ptr noundef nonnull %ino, ptr noundef %i_bh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end18, label %failed_ifile_create_inode, !prof !29

if.end18:                                         ; preds = %if.end
  %inodes_count = getelementptr inbounds %struct.nilfs_root, ptr %10, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inodes_count, i32 noundef 8) #10
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %inodes_count) #10
  call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call, ptr noundef %dir, i16 noundef zeroext %mode) #10
  %15 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ino, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call) #10
  %18 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %19 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %20 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %21 = and i16 %mode, -4096
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %21, label %if.end18.if.end36_crit_edge [
    i16 -32768, label %if.end18.if.then29_crit_edge
    i16 16384, label %if.end18.if.then29_crit_edge116
    i16 -24576, label %if.end18.if.then29_crit_edge117
  ]

if.end18.if.then29_crit_edge117:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.end18.if.then29_crit_edge116:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.end18.if.then29_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then29:                                        ; preds = %if.end18.if.then29_crit_edge, %if.end18.if.then29_crit_edge116, %if.end18.if.then29_crit_edge117
  %i_bmap = getelementptr i8, ptr %call, i32 -584
  %23 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_bmap, align 8
  %call30 = call i32 @nilfs_bmap_read(ptr noundef %24, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then29.failed_after_creation_crit_edge, label %if.end34

if.then29.failed_after_creation_crit_edge:        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_after_creation

if.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 7, ptr noundef %i_state) #10
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end18.if.end36_crit_edge
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 8
  %and38 = and i32 %26, 100095
  %27 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %21, label %if.else8.i [
    i16 16384, label %if.end36.nilfs_mask_flags.exit_crit_edge
    i16 -32768, label %if.then6.i
  ]

if.end36.nilfs_mask_flags.exit_crit_edge:         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_mask_flags.exit

if.then6.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %and7.i = and i32 %26, 34559
  br label %nilfs_mask_flags.exit

if.else8.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %and9.i = and i32 %26, 192
  br label %nilfs_mask_flags.exit

nilfs_mask_flags.exit:                            ; preds = %if.else8.i, %if.then6.i, %if.end36.nilfs_mask_flags.exit_crit_edge
  %retval.0.i = phi i32 [ %and7.i, %if.then6.i ], [ %and9.i, %if.else8.i ], [ %and38, %if.end36.nilfs_mask_flags.exit_crit_edge ]
  %28 = ptrtoint ptr %add.ptr.i112 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i, ptr %add.ptr.i112, align 8
  %i_dir_start_lookup = getelementptr i8, ptr %call, i32 -376
  %29 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %i_dir_start_lookup, align 8
  %and.i114 = lshr i32 %retval.0.i, 3
  %30 = and i32 %and.i114, 5
  %and6.i = lshr i32 %retval.0.i, 1
  %31 = and i32 %and6.i, 8
  %32 = or i32 %30, %31
  %and11.i = lshr i32 %retval.0.i, 6
  %33 = and i32 %and11.i, 2
  %34 = or i32 %32, %33
  %and16.i = lshr i32 %retval.0.i, 10
  %35 = and i32 %and16.i, 64
  %36 = or i32 %34, %35
  call void @inode_set_flags(ptr noundef nonnull %call, i32 noundef %36, i32 noundef 79) #10
  %ns_next_gen_lock = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 38
  call void @_raw_spin_lock(ptr noundef %ns_next_gen_lock) #10
  %ns_next_generation = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 37
  %37 = ptrtoint ptr %ns_next_generation to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ns_next_generation, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %ns_next_generation, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 49
  %39 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %i_generation, align 8
  call void @_raw_spin_unlock(ptr noundef %ns_next_gen_lock) #10
  %40 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ino, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #10
  %42 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args.i, i32 0, i32 2
  %44 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args.i, i32 0, i32 3
  %conv.i = zext i32 %41 to i64
  %45 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv.i, ptr %args.i, align 8
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %42, align 8
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %10, ptr %43, align 8
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %44, align 4
  %call.i = call i32 @insert_inode_locked4(ptr noundef nonnull %call, i32 noundef %41, ptr noundef nonnull @nilfs_iget_test, ptr noundef nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp43 = icmp slt i32 %call.i, 0
  br i1 %cmp43, label %nilfs_mask_flags.exit.failed_after_creation_crit_edge, label %if.end46

nilfs_mask_flags.exit.failed_after_creation_crit_edge: ; preds = %nilfs_mask_flags.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_after_creation

if.end46:                                         ; preds = %nilfs_mask_flags.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i115 = call i32 @current_umask() #10
  %49 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %call, align 8
  %51 = trunc i32 %call.i115 to i16
  %52 = xor i16 %51, -1
  %conv1.i = and i16 %50, %52
  store i16 %conv1.i, ptr %call, align 8
  br label %cleanup

failed_after_creation:                            ; preds = %nilfs_mask_flags.exit.failed_after_creation_crit_edge, %if.then29.failed_after_creation_crit_edge
  %err.0 = phi i32 [ %call30, %if.then29.failed_after_creation_crit_edge ], [ -5, %nilfs_mask_flags.exit.failed_after_creation_crit_edge ]
  call void @clear_nlink(ptr noundef nonnull %call) #10
  %i_state57 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %53 = ptrtoint ptr %i_state57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_state57, align 8
  %and58 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %failed_after_creation.failed.sink.split_crit_edge, label %if.then60

failed_after_creation.failed.sink.split_crit_edge: ; preds = %failed_after_creation
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.sink.split

if.then60:                                        ; preds = %failed_after_creation
  call void @__sanitizer_cov_trace_pc() #12
  call void @unlock_new_inode(ptr noundef nonnull %call) #10
  br label %failed.sink.split

failed_ifile_create_inode:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @make_bad_inode(ptr noundef nonnull %call) #10
  br label %failed.sink.split

failed.sink.split:                                ; preds = %failed_ifile_create_inode, %if.then60, %failed_after_creation.failed.sink.split_crit_edge
  %err.1.ph = phi i32 [ %call9, %failed_ifile_create_inode ], [ %err.0, %if.then60 ], [ %err.0, %failed_after_creation.failed.sink.split_crit_edge ]
  call void @iput(ptr noundef nonnull %call) #10
  br label %failed

failed:                                           ; preds = %failed.sink.split, %entry.failed_crit_edge
  %err.1 = phi i32 [ -12, %entry.failed_crit_edge ], [ %err.1.ph, %failed.sink.split ]
  %55 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end46
  %retval.0 = phi ptr [ %55, %failed ], [ %call, %if.end46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_ifile_create_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_set_inode_flags(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -592
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  %and = lshr i32 %1, 3
  %2 = and i32 %and, 5
  %and6 = lshr i32 %1, 1
  %3 = and i32 %and6, 8
  %4 = or i32 %2, %3
  %and11 = lshr i32 %1, 6
  %5 = and i32 %and11, 2
  %6 = or i32 %4, %5
  %and16 = lshr i32 %1, 10
  %7 = and i32 %and16, 64
  %8 = or i32 %6, %7
  tail call void @inode_set_flags(ptr noundef %inode, i32 noundef %8, i32 noundef 79) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_read_inode_common(ptr noundef %inode, ptr noundef %raw_inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mode = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_mode, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %inode, align 8
  %i_uid = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 6
  %4 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_uid, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 53
  %9 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %10, i32 noundef %6) #10
  %11 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %i_gid = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 7
  %12 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_gid, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %15 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i77 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %s_user_ns.i.i77 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_user_ns.i.i77, align 8
  %call1.i78 = tail call i32 @make_kgid(ptr noundef %18, i32 noundef %14) #10
  %19 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call1.i78, ptr %i_gid.i, align 8
  %i_links_count = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 9
  %20 = ptrtoint ptr %i_links_count to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %i_links_count, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv = zext i16 %22 to i32
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %conv) #10
  %i_size = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 1
  %23 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %i_size2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %26 = ptrtoint ptr %i_size2 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %i_size2, align 8
  %i_mtime = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 3
  %27 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_mtime, align 8
  %29 = tail call i64 @llvm.bswap.i64(i64 %28)
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %30 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %i_atime, align 8
  %i_ctime = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 2
  %31 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_ctime, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32)
  %i_ctime3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %34 = ptrtoint ptr %i_ctime3 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %i_ctime3, align 8
  %35 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_mtime, align 8
  %37 = tail call i64 @llvm.bswap.i64(i64 %36)
  %i_mtime6 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %38 = ptrtoint ptr %i_mtime6 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %i_mtime6, align 8
  %i_mtime_nsec = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 5
  %39 = ptrtoint ptr %i_mtime_nsec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_mtime_nsec, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %42 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tv_nsec, align 8
  %i_ctime_nsec = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 4
  %43 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_ctime_nsec, align 8
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %tv_nsec10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %46 = ptrtoint ptr %tv_nsec10 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tv_nsec10, align 8
  %47 = ptrtoint ptr %i_mtime_nsec to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_mtime_nsec, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %tv_nsec13 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %50 = ptrtoint ptr %tv_nsec13 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tv_nsec13, align 8
  %51 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp = icmp eq i32 %53, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -592
  %54 = ptrtoint ptr %raw_inode to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %raw_inode, align 8
  %56 = tail call i64 @llvm.bswap.i64(i64 %55)
  %i_blocks15 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %57 = ptrtoint ptr %i_blocks15 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %i_blocks15, align 8
  %i_flags = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 10
  %58 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_flags, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %add.ptr.i, align 8
  %i_dir_start_lookup = getelementptr i8, ptr %inode, i32 -376
  %62 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %i_dir_start_lookup, align 8
  %i_generation = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 13
  %63 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_generation, align 8
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %i_generation17 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %66 = ptrtoint ptr %i_generation17 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %i_generation17, align 8
  %67 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %inode, align 8
  %69 = and i16 %68, -4096
  %70 = zext i16 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %69, label %if.end.cleanup_crit_edge [
    i16 -32768, label %if.end.if.then33_crit_edge
    i16 16384, label %if.end.if.then33_crit_edge79
    i16 -24576, label %if.end.if.then33_crit_edge80
  ]

if.end.if.then33_crit_edge80:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.end.if.then33_crit_edge79:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.end.if.then33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33:                                        ; preds = %if.end.if.then33_crit_edge, %if.end.if.then33_crit_edge79, %if.end.if.then33_crit_edge80
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %71 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_bmap, align 8
  %call34 = tail call i32 @nilfs_bmap_read(ptr noundef %72, ptr noundef %raw_inode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then33.cleanup_crit_edge, label %if.end38

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %i_state = getelementptr i8, ptr %inode, i32 -588
  tail call void @_set_bit(i32 noundef 7, ptr noundef %i_state) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -116, %entry.cleanup_crit_edge ], [ %call34, %if.then33.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_ilookup(ptr noundef %sb, ptr noundef %root, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nilfs_iget_args, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %0 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args, i32 0, i32 3
  %conv = zext i32 %ino to i64
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %args, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %0, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %root, ptr %1, align 8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  %call = call ptr @ilookup5(ptr noundef %sb, i32 noundef %ino, ptr noundef nonnull @nilfs_iget_test, ptr noundef nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nilfs_iget_test(ptr noundef %inode, ptr nocapture noundef readonly %opaque) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opaque to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %opaque, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv)
  %cmp.not = icmp eq i64 %1, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %root = getelementptr inbounds %struct.nilfs_iget_args, ptr %opaque, i32 0, i32 2
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 8
  %i_root = getelementptr i8, ptr %inode, i32 -8
  %6 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_root, align 8
  %cmp2.not = icmp eq ptr %5, %7
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i_state = getelementptr i8, ptr %inode, i32 -588
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_state, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %for_gc = getelementptr inbounds %struct.nilfs_iget_args, ptr %opaque, i32 0, i32 3
  %11 = ptrtoint ptr %for_gc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %for_gc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool7.not
  %tobool7.not.mux = select i1 %tobool.not, i1 %tobool7.not, i1 false
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %land.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cno = getelementptr inbounds %struct.nilfs_iget_args, ptr %opaque, i32 0, i32 1
  %13 = ptrtoint ptr %cno to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cno, align 8
  %i_cno = getelementptr i8, ptr %inode, i32 -368
  %15 = ptrtoint ptr %i_cno to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_cno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp11 = icmp eq i64 %14, %16
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ %cmp11, %land.rhs ], [ %tobool7.not.mux, %if.end.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_iget_locked(ptr noundef %sb, ptr noundef %root, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nilfs_iget_args, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %0 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args, i32 0, i32 3
  %conv = zext i32 %ino to i64
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %args, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %0, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %root, ptr %1, align 8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  %call = call ptr @iget5_locked(ptr noundef %sb, i32 noundef %ino, ptr noundef nonnull @nilfs_iget_test, ptr noundef nonnull @nilfs_iget_set, ptr noundef nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_iget_set(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %opaque) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opaque to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %opaque, align 8
  %conv = trunc i64 %1 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %i_ino, align 8
  %for_gc = getelementptr inbounds %struct.nilfs_iget_args, ptr %opaque, i32 0, i32 3
  %3 = ptrtoint ptr %for_gc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %for_gc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_state = getelementptr i8, ptr %inode, i32 -588
  %5 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %i_state, align 4
  %cno = getelementptr inbounds %struct.nilfs_iget_args, ptr %opaque, i32 0, i32 1
  %6 = ptrtoint ptr %cno to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cno, align 8
  %i_cno = getelementptr i8, ptr %inode, i32 -368
  %8 = ptrtoint ptr %i_cno to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %i_cno, align 8
  br label %if.end11

if.else:                                          ; preds = %entry
  %root = getelementptr inbounds %struct.nilfs_iget_args, ptr %opaque, i32 0, i32 2
  %9 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root, align 8
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.else.if.end_crit_edge, label %land.lhs.true

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %if.else
  %11 = ptrtoint ptr %opaque to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %opaque, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %12)
  %cmp = icmp eq i64 %12, 2
  br i1 %cmp, label %if.then6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then6:                                         ; preds = %land.lhs.true
  %count.i = getelementptr inbounds %struct.nilfs_root, ptr %10, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !36
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then6.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !31

if.then6.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then6
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !29

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then6.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then6.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.else.if.end_crit_edge
  %15 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %root, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %.sink = phi ptr [ %16, %if.end ], [ null, %if.then ]
  %i_root10 = getelementptr i8, ptr %inode, i32 -8
  %17 = ptrtoint ptr %i_root10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.sink, ptr %i_root10, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_iget(ptr noundef %sb, ptr noundef %root, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %args.i = alloca %struct.nilfs_iget_args, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #10
  %0 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args.i, i32 0, i32 3
  %conv.i = zext i32 %ino to i64
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv.i, ptr %args.i, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %0, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %root, ptr %1, align 8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  %call.i = call ptr @iget5_locked(ptr noundef %sb, i32 noundef %ino, ptr noundef nonnull @nilfs_iget_test, ptr noundef nonnull @nilfs_iget_set, ptr noundef nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !31

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 24
  %7 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_state, align 8
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #10
  %11 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !35
  %ns_dat.i = getelementptr inbounds %struct.the_nilfs, ptr %10, i32 0, i32 29
  %12 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns_dat.i, align 4
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 54
  %14 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_private.i.i, align 4
  call void @down_read(ptr noundef %15) #10
  %ifile.i = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 4
  %16 = ptrtoint ptr %ifile.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ifile.i, align 4
  %call1.i = call i32 @nilfs_ifile_get_inode_block(ptr noundef %17, i32 noundef %ino, ptr noundef nonnull %bh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.if.then16_crit_edge, !prof !29

if.end7.if.then16_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end.i:                                         ; preds = %if.end7
  %18 = ptrtoint ptr %ifile.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ifile.i, align 4
  %20 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bh.i, align 4
  %b_page.i.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %b_page.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_page.i.i, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 44) #10
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %shr.i.i.i.i = lshr i32 %25, 30
  %26 = zext i32 %shr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %shr.i.i.i.i, label %if.end.i.if.then.i.i.i_crit_edge [
    i32 2, label %if.end.i.if.else.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i
  ]

if.end.i.if.else.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

is_highmem_idx.exit.i.i.i:                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %27 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp2.i.not.i.i.i = icmp eq i32 %27, 2
  br i1 %cmp2.i.not.i.i.i, label %is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.if.then.i.i.i_crit_edge

is_highmem_idx.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %is_highmem_idx.exit.i.i.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %call5.i.i.i = call ptr @page_address(ptr noundef %23) #10
  br label %nilfs_ifile_map_inode.exit.i

if.else.i.i.i:                                    ; preds = %is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge, %if.end.i.if.else.i.i.i_crit_edge
  %call6.i.i.i = call ptr @kmap_high(ptr noundef %23) #10
  br label %nilfs_ifile_map_inode.exit.i

nilfs_ifile_map_inode.exit.i:                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %addr.0.i.i.i = phi ptr [ %call6.i.i.i, %if.else.i.i.i ], [ %call5.i.i.i, %if.then.i.i.i ]
  %call1.i.i = call ptr @nilfs_palloc_block_get_entry(ptr noundef %19, i64 noundef %conv.i, ptr noundef %21, ptr noundef %addr.0.i.i.i) #10
  %call6.i = call i32 @nilfs_read_inode_common(ptr noundef nonnull %call.i, ptr noundef %call1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %failed_unmap.i

if.end9.i:                                        ; preds = %nilfs_ifile_map_inode.exit.i
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call.i, align 8
  %30 = and i16 %29, -4096
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %30, label %if.else31.i [
    i16 -32768, label %if.then11.i
    i16 16384, label %if.then17.i
    i16 -24576, label %if.then27.i
  ]

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %32 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @nilfs_file_inode_operations, ptr %i_op.i, align 8
  %33 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @nilfs_file_operations, ptr %33, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nilfs_aops, ptr %a_ops.i, align 4
  br label %if.end37.i

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_op18.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %i_op18.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @nilfs_dir_inode_operations, ptr %i_op18.i, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @nilfs_dir_operations, ptr %39, align 8
  %i_mapping19.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 9
  %41 = ptrtoint ptr %i_mapping19.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_mapping19.i, align 8
  %a_ops20.i = getelementptr inbounds %struct.address_space, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %a_ops20.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @nilfs_aops, ptr %a_ops20.i, align 4
  br label %if.end37.i

if.then27.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_op28.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %44 = ptrtoint ptr %i_op28.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @nilfs_symlink_inode_operations, ptr %i_op28.i, align 8
  call void @inode_nohighmem(ptr noundef nonnull %call.i) #10
  %i_mapping29.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 9
  %45 = ptrtoint ptr %i_mapping29.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_mapping29.i, align 8
  %a_ops30.i = getelementptr inbounds %struct.address_space, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %a_ops30.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @nilfs_aops, ptr %a_ops30.i, align 4
  br label %if.end37.i

if.else31.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_op32.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %i_op32.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @nilfs_special_inode_operations, ptr %i_op32.i, align 8
  %i_bmap.i = getelementptr inbounds %struct.nilfs_inode, ptr %call1.i.i, i32 0, i32 11
  %49 = ptrtoint ptr %i_bmap.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_bmap.i, align 8
  %51 = call i64 @llvm.bswap.i64(i64 %50) #10
  %conv.i.i = trunc i64 %51 to i32
  %and1.i.i.i = and i32 %conv.i.i, 255
  %shr2.i.i.i = lshr i32 %conv.i.i, 12
  %and3.i.i.i = and i32 %shr2.i.i.i, 1048320
  %or.i.i.i = or i32 %and3.i.i.i, %and1.i.i.i
  %52 = shl i32 %conv.i.i, 12
  %shl.i.i.i = and i32 %52, -1048576
  %or4.i.i.i = or i32 %or.i.i.i, %shl.i.i.i
  call void @init_special_inode(ptr noundef nonnull %call.i, i16 noundef zeroext %29, i32 noundef %or4.i.i.i) #10
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else31.i, %if.then27.i, %if.then17.i, %if.then11.i
  %53 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bh.i, align 4
  %b_page.i82.i = getelementptr inbounds %struct.buffer_head, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %b_page.i82.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_page.i82.i, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 55) #10
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %shr.i.i.i83.i = lshr i32 %58, 30
  %59 = zext i32 %shr.i.i.i83.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i.i.i83.i, label %if.end37.i.nilfs_ifile_unmap_inode.exit.i_crit_edge [
    i32 2, label %if.end37.i.if.end.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i85.i
  ]

if.end37.i.if.end.i.i.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end37.i.nilfs_ifile_unmap_inode.exit.i_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_ifile_unmap_inode.exit.i

is_highmem_idx.exit.i.i85.i:                      ; preds = %if.end37.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %60 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp2.i.not.i.i84.i = icmp eq i32 %60, 2
  br i1 %cmp2.i.not.i.i84.i, label %is_highmem_idx.exit.i.i85.i.if.end.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i85.i.nilfs_ifile_unmap_inode.exit.i_crit_edge

is_highmem_idx.exit.i.i85.i.nilfs_ifile_unmap_inode.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_ifile_unmap_inode.exit.i

is_highmem_idx.exit.i.i85.i.if.end.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %is_highmem_idx.exit.i.i85.i.if.end.i.i.i_crit_edge, %if.end37.i.if.end.i.i.i_crit_edge
  call void @kunmap_high(ptr noundef %56) #10
  br label %nilfs_ifile_unmap_inode.exit.i

nilfs_ifile_unmap_inode.exit.i:                   ; preds = %if.end.i.i.i, %is_highmem_idx.exit.i.i85.i.nilfs_ifile_unmap_inode.exit.i_crit_edge, %if.end37.i.nilfs_ifile_unmap_inode.exit.i_crit_edge
  %61 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %nilfs_ifile_unmap_inode.exit.i.if.end18_crit_edge, label %if.then.i.i

nilfs_ifile_unmap_inode.exit.i.if.end18_crit_edge: ; preds = %nilfs_ifile_unmap_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then.i.i:                                      ; preds = %nilfs_ifile_unmap_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %62) #10
  br label %if.end18

failed_unmap.i:                                   ; preds = %nilfs_ifile_map_inode.exit.i
  %63 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bh.i, align 4
  %b_page.i88.i = getelementptr inbounds %struct.buffer_head, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %b_page.i88.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_page.i88.i, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 55) #10
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %shr.i.i.i89.i = lshr i32 %68, 30
  %69 = zext i32 %shr.i.i.i89.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i.i.i89.i, label %failed_unmap.i.nilfs_ifile_unmap_inode.exit93.i_crit_edge [
    i32 2, label %failed_unmap.i.if.end.i.i92.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i91.i
  ]

failed_unmap.i.if.end.i.i92.i_crit_edge:          ; preds = %failed_unmap.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i92.i

failed_unmap.i.nilfs_ifile_unmap_inode.exit93.i_crit_edge: ; preds = %failed_unmap.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_ifile_unmap_inode.exit93.i

is_highmem_idx.exit.i.i91.i:                      ; preds = %failed_unmap.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %70 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp2.i.not.i.i90.i = icmp eq i32 %70, 2
  br i1 %cmp2.i.not.i.i90.i, label %is_highmem_idx.exit.i.i91.i.if.end.i.i92.i_crit_edge, label %is_highmem_idx.exit.i.i91.i.nilfs_ifile_unmap_inode.exit93.i_crit_edge

is_highmem_idx.exit.i.i91.i.nilfs_ifile_unmap_inode.exit93.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_ifile_unmap_inode.exit93.i

is_highmem_idx.exit.i.i91.i.if.end.i.i92.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i92.i

if.end.i.i92.i:                                   ; preds = %is_highmem_idx.exit.i.i91.i.if.end.i.i92.i_crit_edge, %failed_unmap.i.if.end.i.i92.i_crit_edge
  call void @kunmap_high(ptr noundef %66) #10
  br label %nilfs_ifile_unmap_inode.exit93.i

nilfs_ifile_unmap_inode.exit93.i:                 ; preds = %if.end.i.i92.i, %is_highmem_idx.exit.i.i91.i.nilfs_ifile_unmap_inode.exit93.i_crit_edge, %failed_unmap.i.nilfs_ifile_unmap_inode.exit93.i_crit_edge
  %71 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bh.i, align 4
  %tobool.not.i94.i = icmp eq ptr %72, null
  br i1 %tobool.not.i94.i, label %nilfs_ifile_unmap_inode.exit93.i.if.then16_crit_edge, label %if.then.i95.i

nilfs_ifile_unmap_inode.exit93.i.if.then16_crit_edge: ; preds = %nilfs_ifile_unmap_inode.exit93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then.i95.i:                                    ; preds = %nilfs_ifile_unmap_inode.exit93.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %72) #10
  br label %if.then16

if.then16:                                        ; preds = %if.then.i95.i, %nilfs_ifile_unmap_inode.exit93.i.if.then16_crit_edge, %if.end7.if.then16_crit_edge
  %err.0.i = phi i32 [ %call1.i, %if.end7.if.then16_crit_edge ], [ %call6.i, %nilfs_ifile_unmap_inode.exit93.i.if.then16_crit_edge ], [ %call6.i, %if.then.i95.i ]
  %73 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ns_dat.i, align 4
  %i_private.i97.i = getelementptr inbounds %struct.inode, ptr %74, i32 0, i32 54
  %75 = ptrtoint ptr %i_private.i97.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_private.i97.i, align 4
  call void @up_read(ptr noundef %76) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #10
  call void @iget_failed(ptr noundef nonnull %call.i) #10
  %77 = inttoptr i32 %err.0.i to ptr
  br label %cleanup

if.end18:                                         ; preds = %if.then.i.i, %nilfs_ifile_unmap_inode.exit.i.if.end18_crit_edge
  %78 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ns_dat.i, align 4
  %i_private.i86.i = getelementptr inbounds %struct.inode, ptr %79, i32 0, i32 54
  %80 = ptrtoint ptr %i_private.i86.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_private.i86.i, align 4
  call void @up_read(ptr noundef %81) #10
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i, i32 -592
  %82 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i.i, align 8
  %and.i.i = lshr i32 %83, 3
  %84 = and i32 %and.i.i, 5
  %and6.i.i = lshr i32 %83, 1
  %85 = and i32 %and6.i.i, 8
  %86 = or i32 %84, %85
  %and11.i.i = lshr i32 %83, 6
  %87 = and i32 %and11.i.i, 2
  %88 = or i32 %86, %87
  %and16.i.i = lshr i32 %83, 10
  %89 = and i32 %and16.i.i, 64
  %90 = or i32 %88, %89
  call void @inode_set_flags(ptr noundef nonnull %call.i, i32 noundef %90, i32 noundef 79) #10
  %i_mapping42.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 9
  %91 = ptrtoint ptr %i_mapping42.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_mapping42.i, align 8
  %gfp_mask.i.i.i = getelementptr inbounds %struct.address_space, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %gfp_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %gfp_mask.i.i.i, align 4
  %and.i87.i = and i32 %94, -129
  store i32 %and.i87.i, ptr %gfp_mask.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #10
  call void @unlock_new_inode(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %77, %if.then16 ], [ %call.i, %if.end18 ], [ %call.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_iget_for_gc(ptr noundef %sb, i32 noundef %ino, i64 noundef %cno) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nilfs_iget_args, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %0 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nilfs_iget_args, ptr %args, i32 0, i32 3
  %conv = zext i32 %ino to i64
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %args, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %cno, ptr %0, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %1, align 8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %2, align 4
  %call = call ptr @iget5_locked(ptr noundef %sb, i32 noundef %ino, ptr noundef nonnull @nilfs_iget_test, ptr noundef nonnull @nilfs_iget_set, ptr noundef nonnull %args) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !31

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %7 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_state, align 8
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @nilfs_init_gcinode(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end20, label %if.then18, !prof !29

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @iget_failed(ptr noundef nonnull %call) #10
  %9 = inttoptr i32 %call10 to ptr
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @unlock_new_inode(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.then18 ], [ %call, %if.end20 ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_init_gcinode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_write_inode_common(ptr nocapture noundef readonly %inode, ptr noundef %raw_inode, i32 noundef %has_bmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -592
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %i_mode1 = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_mode1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %i_mode1, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %8 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %7, [1 x i32] %9) #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %call1.i)
  %i_uid = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 6
  %11 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %i_uid, align 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i68 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %s_user_ns.i.i68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_user_ns.i.i68, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %16 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i69 = load i32, ptr %i_gid.i, align 8
  %17 = insertvalue [1 x i32] undef, i32 %.unpack.i69, 0
  %call1.i70 = tail call i32 @from_kgid(ptr noundef %15, [1 x i32] %17) #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %call1.i70)
  %i_gid = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 7
  %19 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %i_gid, align 4
  %20 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %conv = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %i_links_count = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 9
  %24 = ptrtoint ptr %i_links_count to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %i_links_count, align 2
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %25 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_size, align 8
  %27 = tail call i64 @llvm.bswap.i64(i64 %26)
  %i_size4 = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 1
  %28 = ptrtoint ptr %i_size4 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %i_size4, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %29 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_ctime, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %30)
  %i_ctime5 = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 2
  %32 = ptrtoint ptr %i_ctime5 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %i_ctime5, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %33 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_mtime, align 8
  %35 = tail call i64 @llvm.bswap.i64(i64 %34)
  %i_mtime7 = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 3
  %36 = ptrtoint ptr %i_mtime7 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %i_mtime7, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %37 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tv_nsec, align 8
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %i_ctime_nsec = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 4
  %40 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %i_ctime_nsec, align 8
  %tv_nsec10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %41 = ptrtoint ptr %tv_nsec10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tv_nsec10, align 8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %i_mtime_nsec = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 5
  %44 = ptrtoint ptr %i_mtime_nsec to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %i_mtime_nsec, align 4
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %45 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_blocks, align 8
  %47 = tail call i64 @llvm.bswap.i64(i64 %46)
  %48 = ptrtoint ptr %raw_inode to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %raw_inode, align 8
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %i_flags12 = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 10
  %52 = ptrtoint ptr %i_flags12 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %i_flags12, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %53 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_generation, align 8
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %i_generation13 = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 13
  %56 = ptrtoint ptr %i_generation13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %i_generation13, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %57 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_ino, align 8
  %59 = add i32 %58, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info, align 16
  %i_xattr = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 12
  %65 = ptrtoint ptr %i_xattr to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %i_xattr, align 8
  %i_pad = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 14
  %66 = ptrtoint ptr %i_pad to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %i_pad, align 4
  %add.ptr = getelementptr i8, ptr %raw_inode, i32 128
  %ns_inode_size = getelementptr inbounds %struct.the_nilfs, ptr %64, i32 0, i32 51
  %67 = ptrtoint ptr %ns_inode_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ns_inode_size, align 4
  %sub = add i32 %68, -128
  %69 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %has_bmap)
  %tobool.not = icmp eq i32 %has_bmap, 0
  br i1 %tobool.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %70 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_bmap, align 8
  tail call void @nilfs_bmap_write(ptr noundef %71, ptr noundef %raw_inode) #10
  br label %if.end32

if.else:                                          ; preds = %if.end
  %72 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %inode, align 8
  %74 = and i16 %73, -4096
  %75 = zext i16 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %74, label %if.else.if.end32_crit_edge [
    i16 8192, label %if.else.if.then28_crit_edge
    i16 24576, label %if.else.if.then28_crit_edge71
  ]

if.else.if.then28_crit_edge71:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.else.if.then28_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then28:                                        ; preds = %if.else.if.then28_crit_edge, %if.else.if.then28_crit_edge71
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %76 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i_rdev, align 8
  %and1.i.i = and i32 %77, 255
  %78 = lshr i32 %77, 12
  %shl.i.i = and i32 %78, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %77, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %conv.i = zext i32 %or4.i.i to i64
  %79 = tail call i64 @llvm.bswap.i64(i64 %conv.i)
  %i_bmap30 = getelementptr inbounds %struct.nilfs_inode, ptr %raw_inode, i32 0, i32 11
  %80 = ptrtoint ptr %i_bmap30 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %i_bmap30, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.else.if.end32_crit_edge, %if.then18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_bmap_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_update_inode(ptr noundef %inode, ptr noundef %ibh, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %i_root = getelementptr i8, ptr %inode, i32 -8
  %2 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_root, align 8
  %ifile1 = getelementptr inbounds %struct.nilfs_root, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ifile1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ifile1, align 4
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %ibh, i32 0, i32 2
  %6 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_page.i, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 44) #10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %shr.i.i.i = lshr i32 %9, 30
  %10 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr.i.i.i, label %entry.if.then.i.i_crit_edge [
    i32 2, label %entry.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

entry.if.else.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %11 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.i.not.i.i = icmp eq i32 %11, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %7) #10
  br label %nilfs_ifile_map_inode.exit

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %entry.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %7) #10
  br label %nilfs_ifile_map_inode.exit

nilfs_ifile_map_inode.exit:                       ; preds = %if.else.i.i, %if.then.i.i
  %addr.0.i.i = phi ptr [ %call6.i.i, %if.else.i.i ], [ %call5.i.i, %if.then.i.i ]
  %conv.i = zext i32 %1 to i64
  %call1.i = tail call ptr @nilfs_palloc_block_get_entry(ptr noundef %5, i64 noundef %conv.i, ptr noundef %ibh, ptr noundef %addr.0.i.i) #10
  %i_state = getelementptr i8, ptr %inode, i32 -588
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %i_state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %nilfs_ifile_map_inode.exit.if.end_crit_edge, label %if.then

nilfs_ifile_map_inode.exit.if.end_crit_edge:      ; preds = %nilfs_ifile_map_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %nilfs_ifile_map_inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %i_private.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54
  %12 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_private.i, align 4
  %mi_entry_size = getelementptr inbounds %struct.nilfs_mdt_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %mi_entry_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mi_entry_size, align 4
  %16 = call ptr @memset(ptr %call1.i, i32 0, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %nilfs_ifile_map_inode.exit.if.end_crit_edge
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 6, ptr noundef %i_state) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  tail call void @nilfs_write_inode_common(ptr noundef %inode, ptr noundef %call1.i, i32 noundef 0)
  %17 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_page.i, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 55) #10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %shr.i.i.i19 = lshr i32 %20, 30
  %21 = zext i32 %shr.i.i.i19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i.i.i19, label %if.end8.nilfs_ifile_unmap_inode.exit_crit_edge [
    i32 2, label %if.end8.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i21
  ]

if.end8.if.end.i.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end8.nilfs_ifile_unmap_inode.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_ifile_unmap_inode.exit

is_highmem_idx.exit.i.i21:                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %22 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp2.i.not.i.i20 = icmp eq i32 %22, 2
  br i1 %cmp2.i.not.i.i20, label %is_highmem_idx.exit.i.i21.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i.i21.nilfs_ifile_unmap_inode.exit_crit_edge

is_highmem_idx.exit.i.i21.nilfs_ifile_unmap_inode.exit_crit_edge: ; preds = %is_highmem_idx.exit.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_ifile_unmap_inode.exit

is_highmem_idx.exit.i.i21.if.end.i.i_crit_edge:   ; preds = %is_highmem_idx.exit.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i.i21.if.end.i.i_crit_edge, %if.end8.if.end.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %18) #10
  br label %nilfs_ifile_unmap_inode.exit

nilfs_ifile_unmap_inode.exit:                     ; preds = %if.end.i.i, %is_highmem_idx.exit.i.i21.nilfs_ifile_unmap_inode.exit_crit_edge, %if.end8.nilfs_ifile_unmap_inode.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_truncate_bmap(ptr noundef %ii, i32 noundef %from) unnamed_addr #0 align 64 {
entry:
  %b = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #10
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %b, align 8, !annotation !35
  %i_state = getelementptr inbounds %struct.nilfs_inode_info, ptr %ii, i32 0, i32 1
  %1 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %i_state, align 4
  %3 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %repeat.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

repeat.preheader:                                 ; preds = %entry
  %i_bmap = getelementptr inbounds %struct.nilfs_inode_info, ptr %ii, i32 0, i32 2
  %4 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_bmap, align 8
  %call143 = call i32 @nilfs_bmap_last_key(ptr noundef %5, ptr noundef nonnull %b) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call143)
  %cmp44 = icmp eq i32 %call143, -2
  br i1 %cmp44, label %repeat.preheader.cleanup_crit_edge, label %if.else.lr.ph

repeat.preheader.cleanup_crit_edge:               ; preds = %repeat.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.lr.ph:                                    ; preds = %repeat.preheader
  %conv = zext i32 %from to i64
  %i_sb = getelementptr inbounds %struct.nilfs_inode_info, ptr %ii, i32 0, i32 11, i32 8
  br label %if.else

if.else:                                          ; preds = %if.then24.if.else_crit_edge, %if.else.lr.ph
  %call145 = phi i32 [ %call143, %if.else.lr.ph ], [ %call1, %if.then24.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp3 = icmp slt i32 %call145, 0
  br i1 %cmp3, label %if.else.failed_crit_edge, label %if.end6

if.else.failed_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end6:                                          ; preds = %if.else
  %6 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %b, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp7 = icmp ult i64 %7, %conv
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %sub = sub i64 %7, %conv
  %8 = call i64 @llvm.umin.i64(i64 %sub, i64 16384)
  %sub14 = sub i64 %7, %8
  %9 = ptrtoint ptr %b to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %sub14, ptr %b, align 8
  %10 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_bmap, align 8
  %call16 = call i32 @nilfs_bmap_truncate(ptr noundef %11, i64 noundef %sub14) #10
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  call void @nilfs_relax_pressure_in_lock(ptr noundef %13) #10
  %14 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call16, label %if.end10.failed_crit_edge [
    i32 0, label %if.end10.if.then24_crit_edge
    i32 -12, label %land.lhs.true
  ]

if.end10.if.then24_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end10.failed_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

land.lhs.true:                                    ; preds = %if.end10
  %15 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_bmap, align 8
  %17 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b, align 8
  %call21 = call i32 @nilfs_bmap_truncate(ptr noundef %16, i64 noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true.if.then24_crit_edge, label %land.lhs.true.failed_crit_edge

land.lhs.true.failed_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then24:                                        ; preds = %land.lhs.true.if.then24_crit_edge, %if.end10.if.then24_crit_edge
  %19 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_bmap, align 8
  %call1 = call i32 @nilfs_bmap_last_key(ptr noundef %20, ptr noundef nonnull %b) #10
  %cmp = icmp eq i32 %call1, -2
  br i1 %cmp, label %if.then24.cleanup_crit_edge, label %if.then24.if.else_crit_edge

if.then24.if.else_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

failed:                                           ; preds = %land.lhs.true.failed_crit_edge, %if.end10.failed_crit_edge, %if.else.failed_crit_edge
  %ret.0 = phi i32 [ %call145, %if.else.failed_crit_edge ], [ -12, %land.lhs.true.failed_crit_edge ], [ %call16, %if.end10.failed_crit_edge ]
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.nilfs_inode_info, ptr %ii, i32 0, i32 11, i32 11
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %22, ptr noundef nonnull @.str.7, i32 noundef %ret.0, i32 noundef %24) #10
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.then24.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %repeat.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_set_file_dirty(ptr noundef %inode, i32 noundef %nr_dirty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %ns_ndirtyblks = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ns_ndirtyblks, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %ns_ndirtyblks, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ns_ndirtyblks, ptr %ns_ndirtyblks, i32 %nr_dirty, ptr elementtype(i32) %ns_ndirtyblks) #10, !srcloc !37
  %i_state = getelementptr i8, ptr %inode, i32 -588
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %i_state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ns_inode_lock = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %ns_inode_lock) #10
  %5 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_state, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_state, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then8:                                         ; preds = %land.lhs.true
  %i_dirty = getelementptr i8, ptr %inode, i32 -20
  %11 = ptrtoint ptr %i_dirty to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %i_dirty, align 4
  %cmp.i.not = icmp eq ptr %12, %i_dirty
  br i1 %cmp.i.not, label %land.lhs.true11, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true11:                                  ; preds = %if.then8
  %call12 = tail call ptr @igrab(ptr noundef %inode) #10
  %cmp = icmp eq ptr %call12, null
  br i1 %cmp, label %if.then13, label %land.lhs.true11.if.end16_crit_edge

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %16) #10
  br label %cleanup.sink.split

if.end16:                                         ; preds = %land.lhs.true11.if.end16_crit_edge, %if.then8.if.end16_crit_edge
  %ns_dirty_files = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 34
  %call.i.i37 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_dirty) #10
  br i1 %call.i.i37, label %if.end.i.i, label %if.end16.__list_del_entry.exit.i_crit_edge

if.end16.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr i8, ptr %inode, i32 -16
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %i_dirty to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_dirty, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end16.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 34, i32 1
  %23 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_dirty, ptr noundef %24, ptr noundef %ns_dirty_files) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %i_dirty, ptr %prev.i2.i, align 4
  %26 = ptrtoint ptr %i_dirty to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ns_dirty_files, ptr %i_dirty, align 4
  %prev3.i.i.i = getelementptr i8, ptr %inode, i32 -16
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %i_dirty, ptr %24, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef %i_state) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %list_move_tail.exit, %if.then13, %land.lhs.true.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.then13 ], [ 0, %list_move_tail.exit ], [ 0, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -592
  %3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %i_root = getelementptr i8, ptr %inode, i32 -8
  %6 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_root, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #10
  br i1 %call3, label %lor.lhs.false2.if.then_crit_edge, label %if.end, !prof !31

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #10
  tail call void @clear_inode(ptr noundef %inode) #10
  tail call fastcc void @nilfs_clear_inode(ptr noundef %inode)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %call6 = call i32 @nilfs_transaction_begin(ptr noundef %2, ptr noundef nonnull %ti, i32 noundef 0) #10
  %i_data7 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  call void @truncate_inode_pages_final(ptr noundef %i_data7) #10
  call fastcc void @nilfs_truncate_bmap(ptr noundef %add.ptr.i, i32 noundef 0)
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #10
  call void @clear_inode(ptr noundef %inode) #10
  %8 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_root, align 8
  %ifile = getelementptr inbounds %struct.nilfs_root, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ifile to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ifile, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %call10 = call i32 @nilfs_ifile_delete_inode(ptr noundef %11, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_root, align 8
  %inodes_count = getelementptr inbounds %struct.nilfs_root, ptr %15, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inodes_count, i32 noundef 8) #10
  call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %inodes_count) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  call fastcc void @nilfs_clear_inode(ptr noundef %inode)
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_flags, align 4
  %and = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %if.end14.if.then20_crit_edge

if.end14.if.then20_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false17:                                  ; preds = %if.end14
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags, align 4
  %and18 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false17.if.end21_crit_edge, label %lor.lhs.false17.if.then20_crit_edge

lor.lhs.false17.if.then20_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false17.if.end21_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %lor.lhs.false17.if.then20_crit_edge, %if.end14.if.then20_crit_edge
  %22 = call i32 @llvm.read_register.i32(metadata !19) #10
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 146
  %26 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %journal_info.i, align 4
  %ti_flags.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ti_flags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ti_flags.i, align 4
  %30 = or i16 %29, 2
  store i16 %30, ptr %ti_flags.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %lor.lhs.false17.if.end21_crit_edge
  %call22 = call i32 @nilfs_transaction_commit(ptr noundef %2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_clear_inode(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dirty = getelementptr i8, ptr %inode, i32 -20
  %0 = ptrtoint ptr %i_dirty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %i_dirty, align 4
  %cmp.i.not = icmp eq ptr %1, %i_dirty
  br i1 %cmp.i.not, label %do.end10, label %do.body5, !prof !29

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 755, 0\0A.popsection", ""() #10, !srcloc !38
  unreachable

do.end10:                                         ; preds = %entry
  %i_bh = getelementptr i8, ptr %inode, i32 -12
  %2 = ptrtoint ptr %i_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_bh, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end10.brelse.exit_crit_edge, label %if.then.i

do.end10.brelse.exit_crit_edge:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %3) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %do.end10.brelse.exit_crit_edge
  %4 = ptrtoint ptr %i_bh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %i_bh, align 4
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %5 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_private.i, align 4
  %cmp.i34.not = icmp eq ptr %6, null
  br i1 %cmp.i34.not, label %brelse.exit.if.end15_crit_edge, label %if.then14

brelse.exit.if.end15_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nilfs_mdt_clear(ptr noundef %inode) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %brelse.exit.if.end15_crit_edge
  %i_state = getelementptr i8, ptr %inode, i32 -588
  %7 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_state, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %10 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_bmap, align 8
  tail call void @nilfs_bmap_clear(ptr noundef %11) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %i_btnode_cache = getelementptr i8, ptr %inode, i32 -360
  tail call void @nilfs_btnode_cache_clear(ptr noundef %i_btnode_cache) #10
  %i_root = getelementptr i8, ptr %inode, i32 -8
  %12 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_root, align 8
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %land.lhs.true

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end19
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp eq i32 %15, 2
  br i1 %cmp, label %if.then21, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nilfs_put_root(ptr noundef nonnull %13) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_ifile_delete_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) local_unnamed_addr #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #10
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %call1 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %iattr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @nilfs_transaction_begin(ptr noundef %4, ptr noundef nonnull %ti, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %if.end.cleanup_crit_edge, !prof !29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iattr, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %land.lhs.true

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %7 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ia_size, align 8
  %call9 = call fastcc i64 @i_size_read(ptr noundef %2)
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %call9)
  %cmp.not = icmp eq i64 %8, %call9
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @inode_dio_wait(ptr noundef %2) #10
  %9 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ia_size, align 8
  call void @truncate_setsize(ptr noundef %2, i64 noundef %10) #10
  call void @nilfs_truncate(ptr noundef %2)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %2, ptr noundef %iattr) #10
  call void @__mark_inode_dirty(ptr noundef %2, i32 noundef 7) #10
  %call28 = call i32 @nilfs_transaction_commit(ptr noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end12 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !39
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !40
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !31

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !41
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !43
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !44
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !45
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
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_permission(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_root = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_root, align 8
  %and = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %land.lhs.true2.if.end_crit_edge, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -30, %land.lhs.true2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_load_inode_block(ptr nocapture noundef %inode, ptr noundef %pbh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %ns_inode_lock = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %ns_inode_lock) #10
  %i_bh = getelementptr i8, ptr %inode, i32 -12
  %4 = ptrtoint ptr %i_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_bh, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #10
  %i_root = getelementptr i8, ptr %inode, i32 -8
  %6 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_root, align 8
  %ifile = getelementptr inbounds %struct.nilfs_root, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ifile to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ifile, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  %call2 = tail call i32 @nilfs_ifile_get_inode_block(ptr noundef %9, i32 noundef %11, ptr noundef %pbh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge, !prof !29

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @_raw_spin_lock(ptr noundef %ns_inode_lock) #10
  %12 = ptrtoint ptr %i_bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_bh, align 4
  %cmp8 = icmp eq ptr %13, null
  %14 = ptrtoint ptr %pbh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pbh, align 4
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %i_bh to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %i_bh, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.brelse.exit_crit_edge, label %if.then.i

if.else.brelse.exit_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %15) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.else.brelse.exit_crit_edge
  %17 = ptrtoint ptr %i_bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_bh, align 4
  %19 = ptrtoint ptr %pbh to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %pbh, align 4
  br label %if.end15

if.else13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %pbh to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %5, ptr %pbh, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %brelse.exit, %if.then9
  %21 = ptrtoint ptr %pbh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pbh, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #10, !srcloc !37
  tail call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_ifile_get_inode_block(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_inode_dirty(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %i_dirty = getelementptr i8, ptr %inode, i32 -20
  %4 = ptrtoint ptr %i_dirty to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %i_dirty, align 4
  %cmp.i.not = icmp eq ptr %5, %i_dirty
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %ns_inode_lock = getelementptr inbounds %struct.the_nilfs, ptr %3, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %ns_inode_lock) #10
  %i_state = getelementptr i8, ptr %inode, i32 -588
  %6 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_state, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %lor.rhs, label %if.then.lor.end_crit_edge

if.then.lor.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %i_state, align 4
  %11 = lshr i32 %10, 3
  %.lobit = and i32 %11, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.lor.end_crit_edge
  %12 = phi i32 [ 1, %if.then.lor.end_crit_edge ], [ %.lobit, %lor.rhs ]
  tail call void @_raw_spin_unlock(ptr noundef %ns_inode_lock) #10
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %12, %lor.end ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nilfs_mark_inode_dirty(ptr noundef %inode, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %ibh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibh) #10
  %0 = ptrtoint ptr %ibh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ibh, align 4, !annotation !35
  %call = call i32 @nilfs_load_inode_block(ptr noundef %inode, ptr noundef nonnull %ibh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !29

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %4, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ibh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibh, align 4
  call void @nilfs_update_inode(ptr noundef %inode, ptr noundef %6, i32 noundef %flags)
  %7 = ptrtoint ptr %ibh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ibh, align 4
  call void @mark_buffer_dirty(ptr noundef %8) #10
  %i_root = getelementptr i8, ptr %inode, i32 -8
  %9 = ptrtoint ptr %i_root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_root, align 8
  %ifile = getelementptr inbounds %struct.nilfs_root, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ifile to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ifile, align 4
  %i_state.i = getelementptr i8, ptr %12, i32 -588
  %13 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %i_state.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.nilfs_mdt_mark_dirty.exit_crit_edge

if.end.nilfs_mdt_mark_dirty.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_mdt_mark_dirty.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #10
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i, %if.end.nilfs_mdt_mark_dirty.exit_crit_edge
  %16 = ptrtoint ptr %ibh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ibh, align 4
  %tobool.not.i11 = icmp eq ptr %17, null
  br i1 %tobool.not.i11, label %nilfs_mdt_mark_dirty.exit.cleanup_crit_edge, label %if.then.i12

nilfs_mdt_mark_dirty.exit.cleanup_crit_edge:      ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i12:                                      ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %17) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i12, %nilfs_mdt_mark_dirty.exit.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibh) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_dirty_inode(ptr noundef %inode, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #10
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %1 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private.i, align 4
  %call1 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #10
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %4, ptr noundef nonnull @.str.3) #10
  tail call void @dump_stack() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %i_state.i = getelementptr i8, ptr %inode, i32 -588
  %5 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_state.i, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb4, align 4
  %call5 = call i32 @nilfs_transaction_begin(ptr noundef %9, ptr noundef nonnull %ti, i32 noundef 0) #10
  %call6 = call i32 @__nilfs_mark_inode_dirty(ptr noundef %inode, i32 noundef %flags)
  %10 = ptrtoint ptr %i_sb4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb4, align 4
  %call8 = call i32 @nilfs_transaction_commit(ptr noundef %11) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.i, %if.then2.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %len.addr = alloca i64, align 8
  %delalloc_blkoff = alloca i64, align 8
  %blkphy = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %len, ptr %len.addr, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %delalloc_blkoff) #10
  %5 = ptrtoint ptr %delalloc_blkoff to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %delalloc_blkoff, align 8, !annotation !35
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %6 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %7 to i32
  %call = call i32 @fiemap_prep(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, ptr noundef nonnull %len.addr, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup117_crit_edge

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup117

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #10
  %call1 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %sh_prom = zext i8 %7 to i64
  %shr = lshr i64 %start, %sh_prom
  %8 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len.addr, align 8
  %add = add i64 %start, -1
  %sub = add i64 %add, %9
  %shr3 = lshr i64 %sub, %sh_prom
  %call4 = call i32 @nilfs_find_uncommitted_extent(ptr noundef %inode, i64 noundef %shr, ptr noundef nonnull %delalloc_blkoff) #10
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %4, i32 0, i32 29
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  br label %do.body

do.body:                                          ; preds = %cleanup109.do.body_crit_edge, %if.end
  %logical.0 = phi i64 [ 0, %if.end ], [ %logical.3, %cleanup109.do.body_crit_edge ]
  %phys.0 = phi i64 [ 0, %if.end ], [ %phys.3, %cleanup109.do.body_crit_edge ]
  %size.0 = phi i64 [ 0, %if.end ], [ %size.5, %cleanup109.do.body_crit_edge ]
  %flags.0 = phi i32 [ 0, %if.end ], [ %flags.6, %cleanup109.do.body_crit_edge ]
  %blkoff.0 = phi i64 [ %shr, %if.end ], [ %blkoff.3, %cleanup109.do.body_crit_edge ]
  %delalloc_blklen.0 = phi i32 [ %call4, %if.end ], [ %delalloc_blklen.1, %cleanup109.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blkphy) #10
  %10 = ptrtoint ptr %blkphy to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %blkphy, align 8, !annotation !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delalloc_blklen.0)
  %tobool5.not = icmp eq i32 %delalloc_blklen.0, 0
  br i1 %tobool5.not, label %do.body.if.end33_crit_edge, label %land.lhs.true

do.body.if.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.lhs.true:                                    ; preds = %do.body
  %11 = ptrtoint ptr %delalloc_blkoff to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %delalloc_blkoff, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %blkoff.0)
  %cmp = icmp eq i64 %12, %blkoff.0
  br i1 %cmp, label %if.then7, label %if.then27.critedge

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size.0)
  %tobool8.not = icmp eq i64 %size.0, 0
  br i1 %tobool8.not, label %if.then7.if.end14_crit_edge, label %if.then9

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then9:                                         ; preds = %if.then7
  %call10 = call i32 @fiemap_fill_next_extent(ptr noundef %fieinfo, i64 noundef %logical.0, i64 noundef %phys.0, i64 noundef %size.0, i32 noundef %flags.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.do.end_crit_edge

if.then9.do.end_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.then7.if.end14_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %blkoff.0, i64 %shr3)
  %cmp15 = icmp ugt i64 %blkoff.0, %shr3
  br i1 %cmp15, label %if.end14.do.end.thread232_crit_edge, label %if.end18

if.end14.do.end.thread232_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.thread232

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i64 %blkoff.0, %sh_prom
  %shl20 = shl i32 %delalloc_blklen.0, %conv
  %conv21 = zext i32 %shl20 to i64
  %13 = ptrtoint ptr %delalloc_blkoff to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %delalloc_blkoff, align 8
  %conv22 = zext i32 %delalloc_blklen.0 to i64
  %add23 = add i64 %14, %conv22
  %call24 = call i32 @nilfs_find_uncommitted_extent(ptr noundef %inode, i64 noundef %add23, ptr noundef nonnull %delalloc_blkoff) #10
  br label %cleanup109

if.then27.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %sub28 = sub i64 %12, %blkoff.0
  %15 = call i64 @llvm.umin.i64(i64 %sub28, i64 2147483647)
  %16 = trunc i64 %15 to i32
  br label %if.end33

if.end33:                                         ; preds = %if.then27.critedge, %do.body.if.end33_crit_edge
  %maxblocks.0 = phi i32 [ %16, %if.then27.critedge ], [ 2147483647, %do.body.if.end33_crit_edge ]
  %17 = ptrtoint ptr %blkphy to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %blkphy, align 8
  %18 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ns_dat, align 4
  %i_private.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 54
  %20 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_private.i, align 4
  call void @down_read(ptr noundef %21) #10
  %22 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_bmap, align 8
  %call36 = call i32 @nilfs_bmap_lookup_contig(ptr noundef %23, i64 noundef %blkoff.0, ptr noundef nonnull %blkphy, i32 noundef %maxblocks.0) #10
  %24 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ns_dat, align 4
  %i_private.i209 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 54
  %26 = ptrtoint ptr %i_private.i209 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_private.i209, align 4
  call void @up_read(ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp40 = icmp slt i32 %call36, 0
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call36)
  %cmp43.not = icmp eq i32 %call36, -2
  br i1 %cmp43.not, label %if.end48, label %if.then42.do.end.thread232_crit_edge, !prof !29

if.then42.do.end.thread232_crit_edge:             ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.thread232

if.end48:                                         ; preds = %if.then42
  %inc = add i64 %blkoff.0, 1
  %shl50 = shl i64 %inc, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl50, i64 %call1)
  %cmp51.not = icmp uge i64 %shl50, %call1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size.0)
  %tobool53.not = icmp eq i64 %size.0, 0
  br i1 %tobool53.not, label %if.end48.cleanup_crit_edge, label %if.then54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then54:                                        ; preds = %if.end48
  %or = zext i1 %cmp51.not to i32
  %spec.select = or i32 %flags.0, %or
  %call58 = call i32 @fiemap_fill_next_extent(ptr noundef %fieinfo, i64 noundef %logical.0, i64 noundef %phys.0, i64 noundef %size.0, i32 noundef %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then54.cleanup_crit_edge, label %if.then54.do.end_crit_edge

if.then54.do.end_crit_edge:                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.then54.cleanup_crit_edge, %if.end48.cleanup_crit_edge
  %flags.2 = phi i32 [ %spec.select, %if.then54.cleanup_crit_edge ], [ %flags.0, %if.end48.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %shr3)
  %cmp63 = icmp ugt i64 %inc, %shr3
  %brmerge = select i1 %cmp63, i1 true, i1 %cmp51.not
  br i1 %brmerge, label %cleanup.cleanup109_crit_edge, label %cleanup.if.end106_crit_edge

cleanup.if.end106_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

cleanup.cleanup109_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size.0)
  %tobool68.not = icmp eq i64 %size.0, 0
  br i1 %tobool68.not, label %if.else96, label %if.then69

if.then69:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %phys.0)
  %tobool70.not = icmp eq i64 %phys.0, 0
  br i1 %tobool70.not, label %if.then69.if.else81_crit_edge, label %land.lhs.true71

if.then69.if.else81_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else81

land.lhs.true71:                                  ; preds = %if.then69
  %28 = ptrtoint ptr %blkphy to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %blkphy, align 8
  %shl73 = shl i64 %29, %sh_prom
  %add74 = add i64 %size.0, %phys.0
  call void @__sanitizer_cov_trace_cmp8(i64 %shl73, i64 %add74)
  %cmp75 = icmp eq i64 %shl73, %add74
  br i1 %cmp75, label %if.then77, label %land.lhs.true71.if.else81_crit_edge

land.lhs.true71.if.else81_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else81

if.then77:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  %shl78 = shl i32 %call36, %conv
  %conv79 = sext i32 %shl78 to i64
  %add80 = add i64 %size.0, %conv79
  br label %if.end103

if.else81:                                        ; preds = %land.lhs.true71.if.else81_crit_edge, %if.then69.if.else81_crit_edge
  %call82 = call i32 @fiemap_fill_next_extent(ptr noundef %fieinfo, i64 noundef %logical.0, i64 noundef %phys.0, i64 noundef %size.0, i32 noundef %flags.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp ne i32 %call82, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %blkoff.0, i64 %shr3)
  %cmp85 = icmp ugt i64 %blkoff.0, %shr3
  %or.cond = select i1 %tobool83.not, i1 true, i1 %cmp85
  br i1 %or.cond, label %if.else81.do.end_crit_edge, label %if.end88

if.else81.do.end_crit_edge:                       ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end88:                                         ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #12
  %shl90 = shl i64 %blkoff.0, %sh_prom
  %30 = ptrtoint ptr %blkphy to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %blkphy, align 8
  %shl92 = shl i64 %31, %sh_prom
  %shl93 = shl i32 %call36, %conv
  %conv94 = sext i32 %shl93 to i64
  br label %if.end103

if.else96:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %shl98 = shl i64 %blkoff.0, %sh_prom
  %32 = ptrtoint ptr %blkphy to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %blkphy, align 8
  %shl100 = shl i64 %33, %sh_prom
  %shl101 = shl i32 %call36, %conv
  %conv102 = sext i32 %shl101 to i64
  br label %if.end103

if.end103:                                        ; preds = %if.else96, %if.end88, %if.then77
  %logical.1 = phi i64 [ %logical.0, %if.then77 ], [ %shl90, %if.end88 ], [ %shl98, %if.else96 ]
  %phys.1 = phi i64 [ %phys.0, %if.then77 ], [ %shl92, %if.end88 ], [ %shl100, %if.else96 ]
  %size.3 = phi i64 [ %add80, %if.then77 ], [ %conv94, %if.end88 ], [ %conv102, %if.else96 ]
  %flags.4 = phi i32 [ %flags.0, %if.then77 ], [ 4096, %if.end88 ], [ 4096, %if.else96 ]
  %conv104228 = zext i32 %call36 to i64
  %add105 = add i64 %blkoff.0, %conv104228
  br label %if.end106

if.end106:                                        ; preds = %if.end103, %cleanup.if.end106_crit_edge
  %logical.2 = phi i64 [ %logical.0, %cleanup.if.end106_crit_edge ], [ %logical.1, %if.end103 ]
  %phys.2 = phi i64 [ %phys.0, %cleanup.if.end106_crit_edge ], [ %phys.1, %if.end103 ]
  %size.4 = phi i64 [ 0, %cleanup.if.end106_crit_edge ], [ %size.3, %if.end103 ]
  %flags.5 = phi i32 [ %flags.2, %cleanup.if.end106_crit_edge ], [ %flags.4, %if.end103 ]
  %blkoff.2 = phi i64 [ %inc, %cleanup.if.end106_crit_edge ], [ %add105, %if.end103 ]
  call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 1109, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  br label %cleanup109

cleanup109:                                       ; preds = %if.end106, %cleanup.cleanup109_crit_edge, %if.end18
  %logical.3 = phi i64 [ %shl, %if.end18 ], [ %logical.2, %if.end106 ], [ %logical.0, %cleanup.cleanup109_crit_edge ]
  %phys.3 = phi i64 [ 0, %if.end18 ], [ %phys.2, %if.end106 ], [ %phys.0, %cleanup.cleanup109_crit_edge ]
  %size.5 = phi i64 [ %conv21, %if.end18 ], [ %size.4, %if.end106 ], [ 0, %cleanup.cleanup109_crit_edge ]
  %flags.6 = phi i32 [ 4100, %if.end18 ], [ %flags.5, %if.end106 ], [ %flags.2, %cleanup.cleanup109_crit_edge ]
  %blkoff.3 = phi i64 [ %add23, %if.end18 ], [ %blkoff.2, %if.end106 ], [ %inc, %cleanup.cleanup109_crit_edge ]
  %delalloc_blklen.1 = phi i32 [ %call24, %if.end18 ], [ %delalloc_blklen.0, %if.end106 ], [ %delalloc_blklen.0, %cleanup.cleanup109_crit_edge ]
  %switch = phi i1 [ false, %if.end18 ], [ false, %if.end106 ], [ true, %cleanup.cleanup109_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkphy) #10
  br i1 %switch, label %cleanup109.do.end.thread_crit_edge, label %cleanup109.do.body_crit_edge

cleanup109.do.body_crit_edge:                     ; preds = %cleanup109
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cleanup109.do.end.thread_crit_edge:               ; preds = %cleanup109
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.thread

do.end.thread232:                                 ; preds = %if.then42.do.end.thread232_crit_edge, %if.end14.do.end.thread232_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkphy) #10
  br label %do.end.thread

do.end:                                           ; preds = %if.else81.do.end_crit_edge, %if.then54.do.end_crit_edge, %if.then9.do.end_crit_edge
  %ret.6.ph = phi i32 [ %call82, %if.else81.do.end_crit_edge ], [ %call10, %if.then9.do.end_crit_edge ], [ %call58, %if.then54.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blkphy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.6.ph)
  %cmp113 = icmp eq i32 %ret.6.ph, 1
  %spec.select235 = select i1 %cmp113, i32 0, i32 %ret.6.ph
  br label %do.end.thread

do.end.thread:                                    ; preds = %do.end, %do.end.thread232, %cleanup109.do.end.thread_crit_edge
  %34 = phi i32 [ 0, %do.end.thread232 ], [ %spec.select235, %do.end ], [ 0, %cleanup109.do.end.thread_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i) #10
  br label %cleanup117

cleanup117:                                       ; preds = %do.end.thread, %entry.cleanup117_crit_edge
  %retval.0 = phi i32 [ %34, %do.end.thread ], [ %call, %entry.cleanup117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %delalloc_blkoff) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_prep(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_find_uncommitted_extent(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_fill_next_extent(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_clear_dirty_page(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_construct_segment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_flush_segment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_clear_dirty_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_construct_dsync_segment(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_page_count_clean_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked4(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_palloc_block_get_entry(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_last_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_truncate(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_relax_pressure_in_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_mdt_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_bmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_btnode_cache_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_put_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/inode.c", i32 107, i32 5}
!2 = !{ptr @__func__.nilfs_get_block, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nilfs_aops, !4, !"nilfs_aops", i1 false, i1 false}
!4 = !{!"../fs/nilfs2/inode.c", i32 298, i32 39}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/nilfs2/inode.c", i32 924, i32 4}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nilfs2/inode.c", i32 947, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/nilfs2/inode.c", i32 975, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nilfs2/inode.c", i32 1109, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/nilfs2/inode.c", i32 710, i32 2}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2151060880, i64 2151061371, i64 2151060917, i64 2151060973, i64 2151061007, i64 2151061031, i64 2151061072, i64 2151061093, i64 2151061121, i64 2151061155}
!33 = !{i64 2154967057, i64 2154967539, i64 2154967094, i64 2154967150, i64 2154967184, i64 2154967208, i64 2154967249, i64 2154967270, i64 2154967298, i64 2154967332}
!34 = !{i8 0, i8 2}
!35 = !{!"auto-init"}
!36 = !{i64 2148694959, i64 2148694991, i64 2148695020, i64 2148695054, i64 2148695085, i64 2148695108}
!37 = !{i64 2148693429, i64 2148693455, i64 2148693484, i64 2148693518, i64 2148693549, i64 2148693572}
!38 = !{i64 2154977333, i64 2154977815, i64 2154977370, i64 2154977426, i64 2154977460, i64 2154977484, i64 2154977525, i64 2154977546, i64 2154977574, i64 2154977608}
!39 = !{i64 1098109, i64 1098170}
!40 = !{i64 1100841}
!41 = !{i64 1101126}
!42 = !{i64 2152536260}
!43 = !{i64 2152536102}
!44 = !{i64 2152536430}
!45 = !{i64 2150122244}
